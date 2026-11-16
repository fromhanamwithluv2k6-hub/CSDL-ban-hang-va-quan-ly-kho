
insert into Danh_muc (ma_DM, ten_DM, ma_DM_cha) values
(1,'Danh mục', NULL),
(2, 'Điện tử', 1),
(3, 'Điện thoại', 2),
(4, 'Laptop', 2),
(5, 'TV', 2),
(6, 'Điện gia dụng', 1),
(7, 'Máy giặt', 6),
(8, 'Tủ lạnh', 6),
(9, 'Điều hòa', 6);

-- 1. NSX
insert into NSX (ten_NSX, quoc_gia) values
('Apple', 'Mỹ'),
('Samsung', 'Hàn Quốc'),
('Dell', 'Mỹ'),
('LG', 'Hàn Quốc'),
('Panasonic', 'Nhật Bản'),
('Daikin', 'Nhật Bản'),
('Xiaomi', 'Trung Quốc'),
('Asus', 'Đài Loan'),
('HP', 'Mỹ'),
('Sony', 'Nhật Bản'),
('Electrolux', 'Thụy Điển');

-- 2. San_pham
insert into San_pham (ma_SP, ten_SP, ma_DM, ten_NSX) values
('SP01', 'iPhone 16', 3, 'Apple'),
('SP02', 'Dell XPS 13', 4, 'Dell'),
('SP03', 'Samsung Smart TV 4K', 5, 'Samsung'),
('SP04', 'LG Inverter 9kg', 7, 'LG'),
('SP05', 'Panasonic Inverter 322L', 8, 'Panasonic'),
('SP06', 'Daikin Inverter 1.5HP', 9, 'Daikin'),
('SP07', 'Samsung Galaxy S25', 3, 'Samsung'),
('SP08', 'Xiaomi 14T', 3, 'Xiaomi'),
('SP09', 'MacBook Air M3', 4, 'Apple'),
('SP10', 'Asus Vivobook 15', 4, 'Asus'),
('SP11', 'HP Pavilion 14', 4, 'HP'),
('SP12', 'Sony Bravia X75', 5, 'Sony'),
('SP13', 'LG OLED evo', 5, 'LG'),
('SP14', 'Samsung Bespoke AI Giặt', 7, 'Samsung'),
('SP15', 'Electrolux UltimateCare 500', 7, 'Electrolux'),
('SP16', 'Samsung Inverter 2 cửa', 8, 'Samsung'),
('SP17', 'LG Inverter Multi Door', 8, 'LG'),
('SP18', 'Panasonic Inverter 1 chiều', 9, 'Panasonic'),
('SP19', 'LG DualCool Inverter', 9, 'LG');

-- 3. Bien_the (43 biến thể: mỗi sản phẩm có 1-3 biến thể)
insert into Bien_the (SKU, ma_SP, gia_nhap, gia_ban, ton_kho) values
('IP16-128-BLK',  'SP01', 19000000, 22990000, 50),
('XPS13-16-SLV',  'SP02', 28000000, 33490000, 20),
('SSTV-55-4K',    'SP03', 9500000,  12490000, 35),
('LGWM-9KG-WHT',  'SP04', 6500000,  8290000,  25),
('PANFR-322-SLV', 'SP05', 10500000, 13990000, 15),
('DKAC-15HP-WHT', 'SP06', 11000000, 14590000, 30),
-- Điện thoại
('IP16-256-WHT',   'SP01', 22000000, 26490000, 40),
('IP16-512-PNK',   'SP01', 27500000, 32490000, 18),
('SS-S25-256-BLK', 'SP07', 17500000, 21990000, 45),
('SS-S25-256-SLV', 'SP07', 17500000, 21990000, 38),
('SS-S25-512-BLU', 'SP07', 21000000, 25990000, 22),
('XM14T-256-GRY',  'SP08', 9000000,  11490000, 60),
('XM14T-512-BLK',  'SP08', 11000000, 13490000, 35),
-- Laptop
('XPS13-32-BLK',     'SP02', 34000000, 39990000, 12),
('MBA-M3-16-MID',    'SP09', 23000000, 27990000, 28),
('MBA-M3-16-SLV',    'SP09', 23000000, 27990000, 30),
('ASUS-VB15-8-SLV',  'SP10', 10500000, 12990000, 55),
('ASUS-VB15-16-GRY', 'SP10', 12500000, 15490000, 40),
('HP-PAV14-16-SLV',  'SP11', 14500000, 17990000, 26),
('HP-PAV14-8-BLU',   'SP11', 11500000, 14290000, 32),
-- TV
('SSTV-65-4K',  'SP03', 14500000, 18490000, 22),
('SSTV-75-4K',  'SP03', 22000000, 27990000, 10),
('SONY-X75-55', 'SP12', 13000000, 16490000, 20),
('SONY-X75-65', 'SP12', 18000000, 22490000, 14),
('LGOLED-55',   'SP13', 24000000, 29990000, 12),
('LGOLED-65',   'SP13', 36000000, 43990000, 8),
-- Máy giặt
('LGWM-10KG-WHT', 'SP04', 7500000, 9490000,  22),
('LGWM-11KG-GRY', 'SP04', 9500000, 11990000, 16),
('SSWM-10KG-SLV', 'SP14', 7800000, 9990000,  20),
('SSWM-12KG-BLK', 'SP14', 11000000, 13990000, 12),
('ELWM-9KG-WHT',  'SP15', 6800000, 8590000,  24),
('ELWM-10KG-WHT', 'SP15', 7800000, 9890000,  18),
-- Tủ lạnh
('PANFR-380-BLK', 'SP05', 13500000, 16990000, 10),
('LGFR-635-SLV',  'SP17', 19000000, 23990000, 9),
('LGFR-519-BLK',  'SP17', 15500000, 19490000, 13),
('SSFR-307-SLV',  'SP16', 8500000,  10990000, 27),
('SSFR-380-BLK',  'SP16', 11500000, 14490000, 17),
-- Điều hòa
('DKAC-10HP-WHT', 'SP06', 7500000,  9990000,  45),
('DKAC-20HP-WHT', 'SP06', 14500000, 18990000, 18),
('PAAC-10HP-WHT', 'SP18', 7000000,  9290000,  33),
('PAAC-15HP-WHT', 'SP18', 9500000,  12490000, 28),
('LGAC-10HP-WHT', 'SP19', 6800000,  8990000,  36),
('LGAC-15HP-WHT', 'SP19', 9000000,  11990000, 30);


insert into BT_Dien_thoai (SKU, mau_sac, man_hinh, chip, bo_nho) values
('IP16-128-BLK',   'Đen',   '6.1 inch OLED',   'Apple A18',          '128GB'),
('IP16-256-WHT',   'Trắng', '6.1 inch OLED',   'Apple A18',          '256GB'),
('IP16-512-PNK',   'Hồng',  '6.1 inch OLED',   'Apple A18',          '512GB'),
('SS-S25-256-BLK', 'Đen',   '6.2 inch AMOLED', 'Snapdragon 8 Elite', '256GB'),
('SS-S25-256-SLV', 'Bạc',   '6.2 inch AMOLED', 'Snapdragon 8 Elite', '256GB'),
('SS-S25-512-BLU', 'Xanh',  '6.2 inch AMOLED', 'Snapdragon 8 Elite', '512GB'),
('XM14T-256-GRY',  'Xám',   '6.67 inch AMOLED','Dimensity 8300',     '256GB'),
('XM14T-512-BLK',  'Đen',   '6.67 inch AMOLED','Dimensity 8300',     '512GB');

insert into BT_Laptop (SKU, mau_sac, man_hinh, CPU, bo_nho) values
('XPS13-16-SLV',     'Bạc',      '13.4 inch FHD+',   'Intel Core Ultra 7', '16GB/512GB'),
('XPS13-32-BLK',     'Đen',      '13.4 inch FHD+',   'Intel Core Ultra 7', '32GB/1TB'),
('MBA-M3-16-MID',    'Xanh đen', '13.6 inch Retina', 'Apple M3',           '16GB/512GB'),
('MBA-M3-16-SLV',    'Bạc',      '13.6 inch Retina', 'Apple M3',           '16GB/512GB'),
('ASUS-VB15-8-SLV',  'Bạc',      '15.6 inch FHD',    'Core i5-13420H',     '8GB/512GB'),
('ASUS-VB15-16-GRY', 'Xám',      '15.6 inch FHD',    'Core i7-13620H',     '16GB/512GB'),
('HP-PAV14-16-SLV',  'Bạc',      '14 inch FHD',      'Ryzen 5 7530U',      '16GB/512GB'),
('HP-PAV14-8-BLU',   'Xanh',     '14 inch FHD',      'Ryzen 5 7530U',      '8GB/256GB');

insert into BT_TV (SKU, man_hinh, kich_thuoc) values
('SSTV-55-4K',  'LED 4K UHD', 55),
('SSTV-65-4K',  'LED 4K UHD', 65),
('SSTV-75-4K',  'LED 4K UHD', 75),
('SONY-X75-55', 'LED 4K UHD', 55),
('SONY-X75-65', 'LED 4K UHD', 65),
('LGOLED-55',   'OLED 4K',    55),
('LGOLED-65',   'OLED 4K',    65);

insert into BT_May_giat (SKU, dung_tich, cong_suat, dien_nang_tieu_thu, tiet_kiem_dien) values
('LGWM-9KG-WHT',  9,  500, 150, 30.5),
('LGWM-10KG-WHT', 10, 520, 160, 32.0),
('LGWM-11KG-GRY', 11, 550, 175, 33.5),
('SSWM-10KG-SLV', 10, 500, 155, 31.0),
('SSWM-12KG-BLK', 12, 600, 185, 34.0),
('ELWM-9KG-WHT',  9,  480, 145, 29.5),
('ELWM-10KG-WHT', 10, 500, 155, 30.0);

insert into BT_Tu_lanh (SKU, dung_tich, cong_suat, dien_nang_tieu_thu, tiet_kiem_dien) values
('PANFR-322-SLV', 322, 100, 330, 35.0),
('PANFR-380-BLK', 380, 110, 360, 36.0),
('LGFR-635-SLV',  635, 150, 520, 38.5),
('LGFR-519-BLK',  519, 140, 480, 37.0),
('SSFR-307-SLV',  307, 95,  310, 34.0),
('SSFR-380-BLK',  380, 105, 350, 35.5);

insert into BT_Dieu_hoa (SKU, cong_suat, dien_nang_tieu_thu, tiet_kiem_dien) values
('DKAC-15HP-WHT', 1100, 600, 55.0),
('DKAC-10HP-WHT', 800,  430, 52.0),
('DKAC-20HP-WHT', 1500, 780, 57.5),
('PAAC-10HP-WHT', 780,  420, 50.0),
('PAAC-15HP-WHT', 1120, 610, 53.5),
('LGAC-10HP-WHT', 790,  410, 58.0),
('LGAC-15HP-WHT', 1090, 590, 60.5);

-- 4. Khach_hang
insert into Khach_hang (ma_KH, ten_KH, dia_chi, sdt) values
('KH01', 'Nguyễn Văn A', '12 Trần Phú, Hà Đông, Hà Nội', '0901234567'),
('KH02', 'Trần Thị B',   '5 Lê Lợi, Quận 1, TP.HCM',    '0912345678'),
('KH03', 'Lê Văn C',     '88 Nguyễn Huệ, Huế',          '0987654321'),
('KH04', 'Phạm Thị D',   '9 Hùng Vương, Đà Nẵng',       '0933456789'),
('KH05', 'Hoàng Văn E',  '21 Lý Thường Kiệt, Hải Phòng','0977123456');

-- 5. Giam_gia
insert into Giam_gia (ma_GG, phan_tram, so_tien_yeu_cau, ngay_het_han) values
('GG01', 5,  5000000,  '2026-12-31'),
('GG02', 10, 10000000, '2026-12-31'),
('GG03', 15, 20000000, '2026-11-30'),
('GG04', 20, 30000000, '2026-06-30');   

-- 6. Nguoi_ban
insert into Nguoi_ban (ma_NV, ten_NV) values
('NV01', 'Cửa hàng TechWorld'),
('NV02', 'Cửa hàng Điện máy Xanh Mini'),
('NV03', 'Cửa hàng HomeAppliance'),
('NV04', 'Cửa hàng Digital Plaza');

-- 7. DV_van_chuyen
insert into DV_van_chuyen (ma_DV, ten_DV) values
('DV01', 'Giao Hàng Nhanh'),
('DV02', 'Giao Hàng Tiết Kiệm'),
('DV03', 'Viettel Post'),
('DV04', 'J&T Express');