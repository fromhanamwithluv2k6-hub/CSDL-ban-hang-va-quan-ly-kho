create table Danh_muc(
ma_DM INT,
ten_DM VARCHAR(50),
ma_DM_cha INT,
primary key (ma_DM)
);
create table NSX(
ten_NSX VARCHAR(50),
quoc_gia VARCHAR(50),
primary key(ten_NSX)
);
create table San_pham(
ma_SP VARCHAR(20),
ten_SP VARCHAR(100),
ma_DM INT,
ten_NSX VARCHAR(50),
primary  key(ma_SP)
);
create table Bien_the(
SKU VARCHAR(50),
ma_SP VARCHAR(20),
gia_nhap INT check(gia_nhap > 0),
gia_ban INT check(gia_ban > gia_nhap),
ton_kho INT check(ton_kho >= 0),
primary key(SKU)
);
create table BT_Dien_thoai(
SKU VARCHAR(50),
mau_sac VARCHAR(10),
man_hinh VARCHAR(20),
chip VARCHAR(20),
bo_nho VARCHAR(10),
primary key(SKU)
);
create table BT_Laptop(
SKU VARCHAR(50),
mau_sac VARCHAR(10),
man_hinh VARCHAR(20),
CPU VARCHAR(20),
bo_nho VARCHAR(10),
primary key(SKU)
);
create table BT_TV(
SKU VARCHAR(50),
man_hinh VARCHAR(20),
kich_thuoc INT,
primary key(SKU)
);
create table BT_May_giat(
SKU VARCHAR(50),
dung_tich INT,
cong_suat INT,
dien_nang_tieu_thu INT,
tiet_kiem_dien FLOAT,
primary key(SKU)
);
create table BT_Tu_lanh(
SKU VARCHAR(50),
dung_tich INT,
cong_suat INT,
dien_nang_tieu_thu INT,
tiet_kiem_dien FLOAT,
primary key(SKU)
);
create table BT_Dieu_hoa(
SKU VARCHAR(50),
cong_suat INT,
dien_nang_tieu_thu INT,
tiet_kiem_dien FLOAT,
primary key(SKU)
);
create table Khach_hang(
ma_KH VARCHAR(10),
ten_KH VARCHAR(50),
dia_chi VARCHAR(100),
sdt CHAR(10),
primary key(ma_KH)
);
create table Don_hang(
ma_DH VARCHAR(10),
ma_KH VARCHAR(10),
tinh_trang_xac_nhan VARCHAR(20),
ma_DV VARCHAR(10),
ngay_dat DATE,
ngay_nhan DATE check (ngay_dat < ngay_nhan),
tinh_trang_van_chuyen VARCHAR(10),
ma_GG VARCHAR(10),
primary key(ma_DH)
);
create table Chi_tiet_don_hang(
ma_DH VARCHAR(10),
SKU VARCHAR(50),
so_luong INT check (so_luong > 0),
primary key(ma_DH,SKU)
);
create table Danh_gia(
ma_DG VARCHAR(10),
ma_DH VARCHAR(10),
SKU VARCHAR(50),
noi_dung TEXT,
so_sao FLOAT check(so_sao >= 0 and so_sao <= 5),
primary key(ma_DG),
unique (ma_DH,SKU)
);
create table Don_thanh_toan(
ma_TT VARCHAR(10),
ma_DH VARCHAR(10),
ngay_tao DATE,
ngay_TT DATE check (ngay_TT >= ngay_tao),
tinh_trang VARCHAR(20),
ma_NV VARCHAR(10),
primary key (ma_TT),
unique (ma_DH)
);
create table Giam_gia(
ma_GG VARCHAR(10),
phan_tram INT CHECK(phan_tram >= 0 and phan_tram <= 100),
so_tien_yeu_cau INT,
ngay_het_han DATE,
primary key(ma_GG)
);
create table Nguoi_ban(
ma_NV VARCHAR(10),
ten_NV VARCHAR(50),
primary key(ma_NV)
);
create table DV_van_chuyen(
ma_DV VARCHAR(10),
ten_DV VARCHAR(50),
primary key(ma_DV)
);
alter table  san_pham 
add constraint fk 
foreign key (ma_DM) 
references danh_muc(ma_DM);
alter table bien_the
add constraint fk
foreign key(ma_SP)
references san_pham(ma_SP);
alter table bt_dien_thoai 
add constraint fk
foreign key (SKU)
references bien_the(SKU);
alter table bt_laptop  
add constraint fk
foreign key (SKU)
references bien_the(SKU);
alter table bt_tv 
add constraint fk
foreign key (SKU)
references bien_the(SKU);
alter table bt_may_giat
add constraint fk
foreign key (SKU)
references bien_the(SKU);
alter table bt_tu_lanh 
add constraint fk
foreign key (SKU)
references bien_the(SKU);
alter table bt_dieu_hoa  
add constraint fk
foreign key (SKU)
references bien_the(SKU);
alter table chi_tiet_don_hang 
add constraint fk
foreign key(ma_DH)
references don_hang(ma_DH);
alter table chi_tiet_don_hang 
add constraint fk_2
foreign key(SKU)
references bien_the(SKU);
alter table danh_gia 
add constraint fk
foreign key(ma_DH,SKU)
references chi_tiet_don_hang (ma_DH,SKU);
alter table don_hang  
add constraint fk
foreign key(ma_KH)
references khach_hang(ma_KH);
alter table don_hang  
add constraint fk_2
foreign key(ma_DV)
references DV_van_chuyen(ma_DV);
alter table don_hang  
add constraint fk_3
foreign key(ma_GG)
references giam_gia(ma_GG);
alter table don_thanh_toan 
add constraint fk
foreign key (ma_DH)
references don_hang(ma_DH);
alter table don_thanh_toan 
add constraint fk_2
foreign key (ma_NV)
references nguoi_ban(ma_NV);
alter table san_pham 
add constraint fk_2
foreign key (ten_NSX)
references NSX(ten_NSX);
alter table danh_muc 
add constraint fk_2
foreign key(ma_DM_cha)
references danh_muc (ma_DM);
alter table khach_hang
add column ngay_tao date;
alter table don_thanh_toan drop constraint fk_2;
alter table don_thanh_toan drop column ma_NV;
alter table don_hang add column ma_NV VARCHAR(10);
alter table don_hang 
add constraint fk_4
foreign key(ma_NV) references nguoi_ban(ma_NV);
alter table don_hang 
add column ngay_tao_don date;