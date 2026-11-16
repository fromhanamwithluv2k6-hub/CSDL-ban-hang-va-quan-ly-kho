
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


-- 8. Don_hang
insert into Don_hang (ma_DH, ma_KH, tinh_trang_xac_nhan, ma_DV, ngay_dat, ngay_nhan, tinh_trang_van_chuyen, ma_GG) values
('DH01', 'KH01', 'chua xac nhan', 'DV01', '2026-01-05', '2026-01-10', null,          null),
('DH02', 'KH02', 'chua xac nhan', 'DV02', '2026-01-06', '2026-01-12', null,          null),
('DH03', 'KH03', 'chua xac nhan', 'DV03', '2026-01-07', '2026-01-15', null,          null),
('DH04', 'KH04', 'chua xac nhan', 'DV04', '2026-01-08', '2026-01-14', null,          null),
('DH05', 'KH05', 'chua xac nhan', 'DV01', '2026-01-09', '2026-01-16', null,          null),
('DH06', 'KH01', 'chua xac nhan', 'DV02', '2026-01-10', '2026-01-18', null,          null),
('DH07', 'KH02', 'chua xac nhan', 'DV03', '2026-01-11', '2026-01-20', null,          null),
('DH08', 'KH03', 'chua xac nhan', 'DV04', '2026-01-12', '2026-01-19', null,          null),

('DH09', 'KH01', 'chua xac nhan', 'DV01', '2026-01-13', '2026-01-19', null, null),
('DH10', 'KH02', 'chua xac nhan', 'DV02', '2026-01-14', '2026-01-21', null, null),
('DH11', 'KH03', 'chua xac nhan', 'DV03', '2026-01-15', '2026-01-23', null, null),
('DH12', 'KH04', 'chua xac nhan', 'DV04', '2026-01-16', '2026-01-22', null, null),
('DH13', 'KH05', 'chua xac nhan', 'DV01', '2026-01-17', '2026-01-25', null, null),
('DH14', 'KH01', 'chua xac nhan', 'DV02', '2026-01-18', '2026-01-26', null, null),
('DH15', 'KH02', 'chua xac nhan', 'DV03', '2026-01-19', '2026-01-27', null, null),
('DH16', 'KH03', 'chua xac nhan', 'DV04', '2026-01-20', '2026-01-28', null, null),

('DH17', 'KH04', 'chua xac nhan', 'DV01', '2026-01-21', '2026-01-29', null, null),
('DH18', 'KH05', 'chua xac nhan', 'DV02', '2026-01-22', '2026-01-30', null, null),
('DH19', 'KH01', 'chua xac nhan', 'DV03', '2026-01-23', '2026-02-01', null, null),
('DH20', 'KH02', 'chua xac nhan', 'DV04', '2026-01-24', '2026-02-02', null, null),

('DH21', 'KH03', 'chua xac nhan', 'DV01', '2026-01-25', '2026-02-03', null, null),
('DH22', 'KH04', 'chua xac nhan', 'DV02', '2026-01-26', '2026-02-04', null, null),
('DH23', 'KH05', 'chua xac nhan', 'DV03', '2026-01-27', '2026-02-05', null, null),
('DH24', 'KH01', 'chua xac nhan', 'DV04', '2026-01-28', '2026-02-06', null, null),
('DH25', 'KH02', 'chua xac nhan', 'DV01', '2026-01-29', '2026-02-07', null, null),

('DH26', 'KH03', 'chua xac nhan', 'DV02', '2026-01-30', '2026-02-08', null, null),
('DH27', 'KH04', 'chua xac nhan', 'DV03', '2026-01-31', '2026-02-09', null, null),
('DH28', 'KH05', 'chua xac nhan', 'DV04', '2026-02-01', '2026-02-10', null, null),
('DH29', 'KH01', 'chua xac nhan', 'DV01', '2026-02-02', '2026-02-11', null, null),
('DH30', 'KH02', 'chua xac nhan', 'DV02', '2026-02-03', '2026-02-12', null, null);

-- 9. Chi_tiet_don_hang
insert into Chi_tiet_don_hang (ma_DH, SKU, so_luong) values
-- DH01: iPhone 16 128GB + Samsung S25
('DH01', 'IP16-128-BLK',   1),
('DH01', 'SS-S25-256-BLK', 1),
-- DH02: Laptop Dell XPS + MacBook Air
('DH02', 'XPS13-16-SLV',   1),
('DH02', 'MBA-M3-16-MID',  1),
-- DH03: TV Samsung 55 + TV Sony 65
('DH03', 'SSTV-55-4K',     2),
('DH03', 'SONY-X75-65',    1),
-- DH04: Máy giặt LG 10kg + Tủ lạnh Panasonic
('DH04', 'LGWM-10KG-WHT',  1),
('DH04', 'PANFR-322-SLV',  1),
-- DH05: Điều hòa Daikin 1.5HP + Điều hòa LG 1HP
('DH05', 'DKAC-15HP-WHT',  2),
('DH05', 'LGAC-10HP-WHT',  1),
-- DH06: Xiaomi 14T
('DH06', 'XM14T-256-GRY',  3),
-- DH07: Tủ lạnh LG 635L + Máy giặt Samsung 12kg
('DH07', 'LGFR-635-SLV',   1),
('DH07', 'SSWM-12KG-BLK',  1),
-- DH08: Asus Vivobook + HP Pavilion
('DH08', 'ASUS-VB15-8-SLV', 2),
('DH08', 'HP-PAV14-16-SLV', 1),
-- DH09: iPhone 16 256GB + Xiaomi 14T
('DH09', 'IP16-256-WHT',   1),
('DH09', 'XM14T-512-BLK',  2),
-- DH10: MacBook Air M3 + Asus Vivobook
('DH10', 'MBA-M3-16-SLV',  1),
('DH10', 'ASUS-VB15-16-GRY', 1),
-- DH11: TV Samsung 65 + TV LG OLED 55
('DH11', 'SSTV-65-4K',     1),
('DH11', 'LGOLED-55',      1),
-- DH12: Máy giặt Samsung 10kg + Tủ lạnh Samsung 307L
('DH12', 'SSWM-10KG-SLV',  2),
('DH12', 'SSFR-307-SLV',   1),
-- DH13: Điều hòa Panasonic 1HP + Điều hòa Daikin 2HP
('DH13', 'PAAC-10HP-WHT',  2),
('DH13', 'DKAC-20HP-WHT',  1),
-- DH14: HP Pavilion 14 8GB + Dell XPS 13 32GB
('DH14', 'HP-PAV14-8-BLU', 2),
('DH14', 'XPS13-32-BLK',   1),
-- DH15: Samsung Galaxy S25 512GB + iPhone 16 512GB
('DH15', 'SS-S25-512-BLU', 1),
('DH15', 'IP16-512-PNK',   1),
-- DH16: LG OLED 65 + Sony Bravia 55
('DH16', 'LGOLED-65',      1),
('DH16', 'SONY-X75-55',    1),
-- DH17: Máy giặt LG 11kg + Tủ lạnh LG 519L
('DH17', 'LGWM-11KG-GRY',  1),
('DH17', 'LGFR-519-BLK',   1),
-- DH18: Điều hòa LG 1.5HP + Điều hòa Panasonic 1.5HP
('DH18', 'LGAC-15HP-WHT',  2),
('DH18', 'PAAC-15HP-WHT',  1),
-- DH19: Xiaomi 14T 256GB
('DH19', 'XM14T-256-GRY',  4),
-- DH20: Samsung Smart TV 75 + Sony Bravia 65
('DH20', 'SSTV-75-4K',     1),
('DH20', 'SONY-X75-65',    1),
-- DH21: Asus Vivobook 8GB + HP Pavilion 16GB
('DH21', 'ASUS-VB15-8-SLV', 1),
('DH21', 'HP-PAV14-16-SLV', 1),
-- DH22: Máy giặt Electrolux 9kg + Tủ lạnh Panasonic 380L
('DH22', 'ELWM-9KG-WHT',   2),
('DH22', 'PANFR-380-BLK',  1),
-- DH23: iPhone 16 128GB
('DH23', 'IP16-128-BLK',   2),
-- DH24: TV Samsung 55 + TV Samsung 65
('DH24', 'SSTV-55-4K',     1),
('DH24', 'SSTV-65-4K',     1),
-- DH25: Điều hòa Daikin 1HP + Điều hòa LG 1HP
('DH25', 'DKAC-10HP-WHT',  2),
('DH25', 'LGAC-10HP-WHT',  1),
-- DH26: Đơn giá trị lớn - MacBook + Dell XPS + iPhone
('DH26', 'MBA-M3-16-MID',  1),
('DH26', 'XPS13-32-BLK',   1),
('DH26', 'IP16-512-PNK',   1),
-- DH27: Đơn giá trị lớn - TV LG OLED 65 + Tủ lạnh LG 635L + Máy giặt Samsung 12kg
('DH27', 'LGOLED-65',      1),
('DH27', 'LGFR-635-SLV',   1),
('DH27', 'SSWM-12KG-BLK',  1),
-- DH28: Đơn giá trị lớn - iPhone 16 512 + Samsung S25 512 + Xiaomi 14T 512
('DH28', 'IP16-512-PNK',   1),
('DH28', 'SS-S25-512-BLU', 1),
('DH28', 'XM14T-512-BLK',  1),
-- DH29: Laptop Asus 16GB + HP 16GB
('DH29', 'ASUS-VB15-16-GRY', 1),
('DH29', 'HP-PAV14-16-SLV',  1),
-- DH30: Máy giặt LG 10kg + Tủ lạnh Samsung 380L + Điều hòa Daikin 2HP
('DH30', 'LGWM-10KG-WHT',  1),
('DH30', 'SSFR-380-BLK',   1),
('DH30', 'DKAC-20HP-WHT',  1);

-- 10. Xác nhận một số đơn hàng
update Don_hang set tinh_trang_xac_nhan = 'da xac nhan' where ma_DH in (
  'DH01','DH02','DH03','DH04','DH05',
  'DH09','DH10','DH11','DH12','DH13','DH14','DH15','DH16',
  'DH17','DH18','DH19','DH20'
);
-- 11. Cập nhật trạng thái vận chuyển
update Don_hang set tinh_trang_van_chuyen = 'da_giao'
where ma_DH in ('DH01','DH02','DH04','DH09','DH10','DH11','DH12','DH13','DH14');
-- Nhóm đang giao
update Don_hang set tinh_trang_van_chuyen = 'dang_giao'
where ma_DH in ('DH03','DH05','DH15','DH16','DH17','DH18');
-- Nhóm chờ giao
update Don_hang set tinh_trang_van_chuyen = 'cho_giao'
where ma_DH in ('DH19','DH20');
-- 12. Danh_gia
insert into Danh_gia (ma_DG, ma_DH, SKU, noi_dung, so_sao) values
-- DH01 (đã giao)
('DG01', 'DH01', 'IP16-128-BLK',   'Máy đẹp, pin trâu, giao hàng nhanh.',              5),
('DG02', 'DH01', 'SS-S25-256-BLK', 'Màn hình sáng, hiệu năng tốt, hơi nóng khi chơi game.', 4),
-- DH02 (đã giao)
('DG03', 'DH02', 'XPS13-16-SLV',   'Thiết kế sang, bàn phím êm, nhưng hơi nặng.',      4),
('DG04', 'DH02', 'MBA-M3-16-MID',  'Mỏng nhẹ, pin lâu, rất đáng tiền.',                5),
-- DH04 (đã giao)
('DG05', 'DH04', 'LGWM-10KG-WHT',  'Giặt sạch, tiết kiệm điện, vận hành êm.',          5),
('DG06', 'DH04', 'PANFR-322-SLV',  'Tủ lạnh chạy êm, dung tích hợp lý.',               4),
-- DH09 (đã giao)
('DG07', 'DH09', 'IP16-256-WHT',   'Màu trắng đẹp, dung lượng 256GB thoải mái.',       5),
('DG08', 'DH09', 'XM14T-512-BLK',  'Xiaomi chụp ảnh tốt, pin ổn, giá hợp lý.',         4),
-- DH10 (đã giao)
('DG09', 'DH10', 'MBA-M3-16-SLV',  'MacBook Air nhẹ, pin trâu, màu bạc sang.',         5),
('DG10', 'DH10', 'ASUS-VB15-16-GRY','Asus chạy êm, nhưng quạt hơi ồn khi tải nặng.',   3),
-- DH11 (đã giao)
('DG11', 'DH11', 'SSTV-65-4K',     'TV 65 inch xem phim rất đã, màu sắc trung thực.',  5),
('DG12', 'DH11', 'LGOLED-55',      'OLED đen sâu, nhưng giá hơi cao.',                  4),
-- DH12 (đã giao)
('DG13', 'DH12', 'SSWM-10KG-SLV',  'Máy giặt Samsung sạch, tiết kiệm điện.',           5),
('DG14', 'DH12', 'SSFR-307-SLV',   'Tủ lạnh nhỏ gọn, phù hợp gia đình 3 người.',       4),
-- DH13 (đã giao)
('DG15', 'DH13', 'PAAC-10HP-WHT',  'Điều hòa Panasonic mát nhanh, êm.',                5),
('DG16', 'DH13', 'DKAC-20HP-WHT',  'Daikin 2HP làm lạnh sâu, hơi tốn điện.',           4),
-- DH14 (đã giao)
('DG17', 'DH14', 'HP-PAV14-8-BLU', 'HP Pavilion ổn trong tầm giá, màn hình đẹp.',      4),
('DG18', 'DH14', 'XPS13-32-BLK',   'Dell XPS 32GB cực mạnh, nhưng hơi nặng.',          5);
-- 13. Don_thanh_toan
insert into Don_thanh_toan (ma_TT, ma_DH, ngay_tao, ngay_TT, tinh_trang, ma_NV) values
('TT01', 'DH01', '2026-01-05', '2026-01-05', 'da thanh toan', 'NV01'),
('TT02', 'DH02', '2026-01-06', '2026-01-06', 'da thanh toan', 'NV02'),
('TT03', 'DH03', '2026-01-07', '2026-01-08', 'da thanh toan', 'NV03'),
('TT04', 'DH04', '2026-01-08', '2026-01-08', 'da thanh toan', 'NV04'),
('TT05', 'DH05', '2026-01-09', '2026-01-11', 'da thanh toan', 'NV01'),
('TT06', 'DH09', '2026-01-13', '2026-01-13', 'da thanh toan', 'NV02'),
('TT07', 'DH10', '2026-01-14', '2026-01-15', 'da thanh toan', 'NV03'),
('TT08', 'DH11', '2026-01-15', '2026-01-15', 'da thanh toan', 'NV04'),
('TT09', 'DH12', '2026-01-16', '2026-01-17', 'da thanh toan', 'NV01'),
('TT10', 'DH13', '2026-01-17', '2026-01-17', 'da thanh toan', 'NV02'),
('TT11', 'DH14', '2026-01-18', '2026-01-19', 'da thanh toan', 'NV03'),
('TT12', 'DH15', '2026-01-19', '2026-01-20', 'da thanh toan', 'NV04'),
('TT13', 'DH16', '2026-01-20', '2026-01-20', 'da thanh toan', 'NV01'),
('TT14', 'DH17', '2026-01-21', '2026-01-22', 'da thanh toan', 'NV02'),
('TT15', 'DH18', '2026-01-22', '2026-01-22', 'da thanh toan', 'NV03'),
('TT16', 'DH19', '2026-01-23', null,          'cho thanh toan', 'NV04'),
('TT17', 'DH20', '2026-01-24', null,          'cho thanh toan', 'NV01');
-- 14. Huy_don_hang
insert into Don_hang (ma_DH, ma_KH, tinh_trang_xac_nhan, ma_DV, ngay_dat, ngay_nhan, tinh_trang_van_chuyen, ma_GG) values
-- Nhóm sẽ xác nhận rồi hủy (test hoàn kho)
('DH43', 'KH01', 'chua xac nhan', 'DV01', '2026-03-01', '2026-03-09', null, null),
('DH44', 'KH02', 'chua xac nhan', 'DV02', '2026-03-02', '2026-03-10', null, null),
('DH45', 'KH03', 'chua xac nhan', 'DV03', '2026-03-03', '2026-03-11', null, null),
('DH46', 'KH04', 'chua xac nhan', 'DV04', '2026-03-04', '2026-03-12', null, null),
('DH47', 'KH05', 'chua xac nhan', 'DV01', '2026-03-05', '2026-03-13', null, null),
('DH48', 'KH01', 'chua xac nhan', 'DV02', '2026-03-06', '2026-03-14', null, null),
-- Nhóm sẽ hủy ngay khi chưa xác nhận (trigger không chạy)
('DH49', 'KH02', 'chua xac nhan', 'DV03', '2026-03-07', '2026-03-15', null, null),
('DH50', 'KH03', 'chua xac nhan', 'DV04', '2026-03-08', '2026-03-16', null, null),
('DH51', 'KH04', 'chua xac nhan', 'DV01', '2026-03-09', '2026-03-17', null, null),
('DH52', 'KH05', 'chua xac nhan', 'DV02', '2026-03-10', '2026-03-18', null, null),
-- Nhóm giữ nguyên 'chua xac nhan' (đối chứng)
('DH53', 'KH01', 'chua xac nhan', 'DV03', '2026-03-11', '2026-03-19', null, null),
('DH54', 'KH02', 'chua xac nhan', 'DV04', '2026-03-12', '2026-03-20', null, null);

insert into Chi_tiet_don_hang (ma_DH, SKU, so_luong) values
-- DH43: iPhone 16 256GB + Xiaomi 14T 256GB
('DH43', 'IP16-256-WHT',   1),
('DH43', 'XM14T-256-GRY',  1),
-- DH44: MacBook Air M3 + Dell XPS 13 16GB
('DH44', 'MBA-M3-16-MID',  1),
('DH44', 'XPS13-16-SLV',   1),
-- DH45: TV Samsung 65 + TV LG OLED 55
('DH45', 'SSTV-65-4K',     1),
('DH45', 'LGOLED-55',      1),
-- DH46: Máy giặt Samsung 10kg + Tủ lạnh Samsung 307L
('DH46', 'SSWM-10KG-SLV',  1),
('DH46', 'SSFR-307-SLV',   1),
-- DH47: Điều hòa Daikin 1.5HP
('DH47', 'DKAC-15HP-WHT',  2),
-- DH48: HP Pavilion 16GB + Asus Vivobook 16GB
('DH48', 'HP-PAV14-16-SLV', 1),
('DH48', 'ASUS-VB15-16-GRY', 1),
-- DH49: Samsung S25 256GB
('DH49', 'SS-S25-256-BLK', 1),
-- DH50: TV Sony 55
('DH50', 'SONY-X75-55',    1),
-- DH51: Máy giặt LG 9kg + Tủ lạnh Panasonic 322L
('DH51', 'LGWM-9KG-WHT',   1),
('DH51', 'PANFR-322-SLV',  1),
-- DH52: Xiaomi 14T 512GB
('DH52', 'XM14T-512-BLK',  2),
-- DH53: iPhone 16 128GB
('DH53', 'IP16-128-BLK',   1),
-- DH54: Điều hòa LG 1HP + Điều hòa Panasonic 1HP
('DH54', 'LGAC-10HP-WHT',  1),
('DH54', 'PAAC-10HP-WHT',  1);

update Don_hang
set tinh_trang_xac_nhan = 'da xac nhan'
where ma_dh = 'DH54';
with tien_dh as(
select dh.ma_dh as ma,sum(bt.gia_ban * ctdh.so_luong * gg.phan_tram / 100) as tien_phai_tra 
from don_hang dh,chi_tiet_don_hang ctdh ,bien_the bt, giam_gia gg 
where dh.ma_dh = ctdh.ma_dh and ctdh.sku = bt.sku and dh.ma_gg is not null and dh.ma_gg = gg.ma_gg 
group by dh.ma_dh
),
with tien_theo_ngay as(
select dtt.ngay_tt , sum(tien_dh.tien_phai_tra)  from tien_dh,don_thanh_toan dtt
where tien_dh.ma = dtt.ma_dh and dtt.ngay_tt is not null
group by ngay_tt)
