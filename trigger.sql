create or replace function f_kiem_tra_danh_gia()
returns trigger 
as $$
begin
	if not exists(
	select 1 from don_hang
	where ma_DH = new.ma_DH and tinh_trang_van_chuyen is not null and tinh_trang_van_chuyen = 'da_giao' 
	)
	then
        RAISE EXCEPTION 'Chi duoc danh gia khi don hang da giao'
			using errcode = '45000';
	end if;
	return new;
	
end;
$$ language plpgsql;

create or replace trigger tr_kiem_tra_danh_gia
before insert or update on danh_gia
for each row
execute function f_kiem_tra_danh_gia();
create or replace function chon_ma_gg(
tong_tien INT,
ngay_xac_nhan date)
returns giam_gia.ma_GG%type
as $$
	select ma_GG from giam_gia
	where coalesce(so_tien_yeu_cau, 0) <= tong_tien
	and (ngay_het_han is null or ngay_het_han >= ngay_xac_nhan)
	and phan_tram is not null
	order by phan_tram desc
	limit 1;
$$
language sql stable;
create or replace function f_xac_nhan_don_hang()
returns trigger
as $$
declare
	r record;
	gia int;
	tong int := 0;
	dem int := 0;
begin
	if new.tinh_trang_xac_nhan = 'da xac nhan'
	and old.tinh_trang_xac_nhan is distinct from 'da xac nhan'
	then 
		for r in 
			select SKU,so_luong
			from chi_tiet_don_hang
			where ma_dh = new.ma_dh
			order by SKU
		loop 
			dem := dem + 1;
			
			update bien_the
			set ton_kho = ton_kho - r.so_luong
			where sku = r.sku and ton_kho >= r.so_luong
			returning gia_ban into gia;
		
			if not found then
				raise exception 'San pham % khong du ton kho',r.SKU
					using errcode = '67000';
			end if;
			
			tong := tong + gia * r.so_luong;
		end loop;
		if dem = 0 then
			raise exception 'Don hang % khong co mat hang nao',new.ma_DH;
		end if;
		new.ma_gg := chon_ma_gg(tong,new.ngay_dat :: date);
	elseif old.tinh_trang_xac_nhan = 'da xac nhan'
	and new.tinh_trang_xac_nhan is distinct from 'da xac nhan' then
		update bien_the b
		set ton_kho = b.ton_kho + ct.so_luong
		from chi_tiet_don_hang ct
		where ct.ma_dh = new.ma_dh and b.sku = ct.sku;
		
		new.ma_gg := null;
	end if;
	return new;	
end;
$$ language plpgsql;
create trigger tr_xac_nhan_don_hang
before update of tinh_trang_xac_nhan on don_hang
for each row
when(old.tinh_trang_xac_nhan is distinct from new.tinh_trang_xac_nhan)
execute function f_xac_nhan_don_hang();
create or replace function f_khoa_don()
returns trigger
as $$
declare 
	v_ma_DH don_hang.ma_DH%type;
begin 
	if tg_op = 'DELETE'
	then
		v_ma_DH := old.ma_DH;
	else
		v_ma_DH := new.ma_DH;
	end if;
	if exists (
	select 1 from don_hang
	where ma_DH = v_ma_DH and tinh_trang_xac_nhan = 'da xac nhan'
	)then
		raise exception 'Don hang da xac nhan, khong duoc chinh sua chi tiet!'
			using errcode = '36000';
	end if;
	return case when tg_op = 'DELETE' then old else new end;
end;
$$ language plpgsql;
create or replace trigger tr_khoa_don
before insert or update or delete on chi_tiet_don_hang
for each row
execute function f_khoa_don();


















