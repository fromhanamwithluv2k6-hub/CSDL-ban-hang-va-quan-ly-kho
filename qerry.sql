--1: Cơ bản: Tìm các sản phẩm thuộc danh mục "Điện thoại" có lượt đánh giá trung bình từ 4.5 sao trở lên.
SELECT sp.ma_SP, sp.ten_SP, AVG(dg.so_sao) AS trung_binh_sao
FROM San_pham sp
JOIN Danh_muc dm ON sp.ma_DM = dm.ma_DM
JOIN Bien_the bt ON sp.ma_SP = bt.ma_SP
JOIN Danh_gia dg ON bt.SKU = dg.SKU
WHERE dm.ten_DM = 'Điện thoại'
GROUP BY sp.ma_SP, sp.ten_SP
HAVING AVG(dg.so_sao) >= 4.5;

--2: Inner Join: Hiển thị chi tiết đơn hàng (Tên sản phẩm, màu sắc, size, số lượng, giá bán) của khách hàng "Nguyễn Văn A".
SELECT dh.ma_DH,sp.ten_SP,dm.ten_DM,
bt.gia_nhap,bt.gia_ban,ct.so_luong,sp.ten_nsx,n.quoc_gia
from khach_hang kh 
join don_hang dh on kh.ma_kh = dh.ma_kh 
join chi_tiet_don_hang ct on ct.ma_dh = dh.ma_dh 
join bien_the bt  on bt.sku = ct.sku 
join san_pham sp on sp.ma_sp = bt.ma_sp 
join nsx n on sp.ten_nsx = n.ten_nsx 
join danh_muc dm on sp.ma_dm = dm.ma_dm 
where kh.ten_kh is not null and kh.ten_kh = 'Nguyễn Văn A';


--3: Group By & Aggregate: Tính tổng doanh thu thuần (đã trừ Voucher) của từng gian hàng trong tháng 10/2026.

select nb.ma_nv, nb.ten_nv, SUM(ct.so_luong * bt.gia_ban * (1-(gg.phan_tram)/100.0))
from don_hang dh 
join chi_tiet_don_hang ct on ct.ma_dh = dh.ma_dh 
join giam_gia gg on gg.ma_gg = dh.ma_gg 
join don_thanh_toan dtt on dtt.ma_dh = dh.ma_dh 
join nguoi_ban nb on nb.ma_nv = dh.ma_nv 
join bien_the bt on ct.sku = bt.sku
where EXTRACT(MONTH FROM dtt.ngay_tt) = 1 and EXTRACT(YEAR FROM dtt.ngay_tt) = 2026
and dtt.tinh_trang = 'da thanh toan'
GROUP BY nb.ma_nv, nb.ten_nv;

--4: Having: Tìm các gian hàng có tổng số đơn bị hủy (Status = 'Cancelled') chiếm trên 10% tổng số đơn hàng nhận được trong tháng.


select nb.ma_nv,
nb.ten_nv, COUNT (*) as tong_don,
SUM(case when dh.tinh_trang_xac_nhan = 'da huy' then 1 else 0 end) as so_don_huy,
ROUND (100.0 * SUM(case when dh.tinh_trang_xac_nhan = 'da huy' then 1 else 0 end)/ COUNT(*),2) as ty_luot_huy
from don_hang dh
join nguoi_ban nb on nb.ma_nv = dh.ma_nv 
where EXTRACT(MONTH FROM dh.ngay_dat ) = 3 and EXTRACT(YEAR FROM dh.ngay_dat) = 2026
group by nb.ma_nv,nb.ten_nv
HAVING SUM(CASE WHEN dh.tinh_trang_xac_nhan = 'da huy' THEN 1 ELSE 0 END) * 1.0
       / COUNT(*) > 0.10;



--5: Outer Join: Hiển thị toàn bộ danh mục sản phẩm cấp 1 và số lượng sản phẩm tồn kho tương ứng (kể cả danh mục chưa có sản phẩm nào).

select dm1.ma_DM,dm1.ten_DM,
Count(sp.ma_sp) as so_san_pham,SUM(bt.ton_kho) as tong_ton_kho
FROM danh_muc dm1
LEFT JOIN danh_muc dm2 ON dm1.ma_dm = dm2.ma_dm_cha
LEFT JOIN San_pham sp  ON sp.ma_dm  = dm2.ma_dm
LEFT JOIN Bien_the bt  ON bt.ma_sp = sp.ma_sp
WHERE dm1.ma_dm_cha = 1
GROUP BY dm1.ma_DM, dm1.ten_DM;

--6: Subquery với NOT EXISTS: Tìm các khách hàng đăng ký tài khoản trên 1 năm nhưng chưa từng đặt bất kỳ đơn hàng nào.


select kh.ma_kh,kh.ten_kh,kh.sdt,kh.dia_chi,kh.ngay_tao 
from khach_hang kh
where kh.ngay_tao <= CURRENT_DATE - INTERVAL '1 YEAR' 
and not exists(select 1 from don_hang dh where dh.ma_kh=kh.ma_kh);


--7: Complex Subquery: Tìm danh sách các mặt hàng có giá bán cao hơn tất cả các mặt hàng thuộc cùng nhà cung cấp X.

select bt.sku,sp.ten_sp,sp.ma_sp, bt.gia_ban, sp.ten_nsx
from san_pham sp 
join bien_the bt on sp.ma_sp = bt.ma_sp
where bt.gia_ban > ALL( select bt1.gia_ban from bien_the bt1
						join san_pham s on s.ma_sp = bt1.ma_sp 
						where s.ten_nsx = 'Samsung');

--8: Window Functions & CTE: Sử dụng SUM() OVER(PARTITION BY ... ORDER BY ...) để tính doanh thu lũy kế từng ngày trong tháng của sàn và xác định mốc ngày đạt mốc doanh thu 1 tỷ VNĐ.


with tien_dh as(
select dh.ma_dh as ma,sum(bt.gia_ban * ctdh.so_luong * gg.phan_tram / 100) as tien_phai_tra 
from don_hang dh,chi_tiet_don_hang ctdh ,bien_the bt, giam_gia gg 
where dh.ma_dh = ctdh.ma_dh and ctdh.sku = bt.sku and dh.ma_gg is not null and dh.ma_gg = gg.ma_gg 
group by dh.ma_dh
),
doanh_thu_theo_ngay as(
select dtt.ngay_tt as ngay , sum(tien_dh.tien_phai_tra) as doanh_thu_ngay  from tien_dh,don_thanh_toan dtt
where tien_dh.ma = dtt.ma_dh and dtt.ngay_tt is not null and dtt.ngay_tt between '2026-01-01' and '2026-01-30'
group by dtt.ngay_tt
order by ngay_tt),
doanh_thu_luy_ke as(
select ngay,doanh_thu_ngay, sum(doanh_thu_ngay) over(order by ngay) as doanh_thu_luy_ke
from doanh_thu_theo_ngay)
select lk.ngay, lk.doanh_thu_luy_ke  from doanh_thu_luy_ke as lk
where lk.doanh_thu_luy_ke >= 100000000
limit 1;



