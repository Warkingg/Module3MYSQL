CREATE TABLE DANGKYCUNGCAP (
    MaDKCC VARCHAR(50) PRIMARY KEY,
    MaNhaCC VARCHAR(50) NOT NULL,
    MaLoaiDV VARCHAR(50) NOT NULL,
    DongXe VARCHAR(100) NOT NULL,
    MaMP VARCHAR(50) NOT NULL,
    NgayBatDauCungCap VARCHAR(50),
    NgayKetThucCungCap VARCHAR(50),
    SoLuongXeDangKy VARCHAR(50)
);
CREATE TABLE NHACUNGCAP (
    MaNhaCC VARCHAR(50) PRIMARY KEY,
    TenNhaCC VARCHAR(50),
    DiaChi VARCHAR(50),
    SoDT VARCHAR(50),
    MaSoThue VARCHAR(50)
);
CREATE TABLE LOAIDICHVU (
    MaLoaiDV VARCHAR(50) PRIMARY KEY,
    TenLoaiDV VARCHAR(50)
);
CREATE TABLE MUCPHI (
    MaMP VARCHAR(50) PRIMARY KEY,
    DonGia VARCHAR(50),
    MoTa VARCHAR(100)
);
CREATE TABLE DONGXE (
    DongXe VARCHAR(100) PRIMARY KEY,
    Hangxe VARCHAR(50),
    SoChoNgoi VARCHAR(50)
);

alter table DANGKYCUNGCAP
add foreign key (DongXe) references DONGXE(DongXe);

Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue) Values 
('NCC001', N'Cty TNHH Toàn Phát', 'Hai Chau', '051133999888', '568941'),
('NCC002', N'Cty Cổ Phần Đông Du', 'Lien Chieu', '051133999889', '456789'),
('NCC003', N'Ông Nguyễn Văn A', 'Hoa Thuan', '051133999890', '321456'),
('NCC004', N'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '05113658945', '513364'),
('NCC005', N'Cty TNHH AMA', 'Thanh Khe', '051103875466', '546546'),
('NCC006', N'Bà Trần Thị Bích Vân', 'Lien Chieu', '05113587469', '524545'),
('NCC007', N'Cty TNHH Phan Thành', 'Thanh Khe', '05113987456', '113021'),
('NCC008', N'Ông Phan Đình Nam', 'Hoa Thuan', '05113532456', '121230'),
('NCC009', N'Tập đoàn Đông Nam Á', 'Lien Chieu', '05113987121', '533654'),
('NCC010', N'Cty Cổ Phần Rạng đông', 'Lien Chieu', '05113569654', '187864');

Insert Into LOAIDICHVU (MaLoaiDV, TenLoaiDV) Values 
('DV01', N'Dịch vụ xe taxi'),
('DV02', N'Dịch vụ xe buýt công cộng theo tuyến cố định'),
('DV03', N'Dịch vụ cho thuê xe theo hợp đồng');

Insert Into MUCPHI (MaMP,DonGia,MoTa) Values 
('MP01', '10000', N'Áp dụng từ ngày 1/2015'),
('MP02', '15000', N'Áp dụng từ ngày 2/2015'),
('MP03', '20000', N'Áp dụng từ ngày 1/2010'),
('MP04', '25000', N'Áp dụng từ ngày 2/2011');

Insert Into DONGXE (DongXe,HangXe,SoChoNgoi) Values
('Hiace', 'Toyota', 16),
('Vios', 'Toyota', 5),
('Escape', 'Ford', 5),
('Cerato', 'KIA', 7),
('Forte', 'KIA', 5),
('Starex', 'Huyndai', 7),
('Grand-i10', 'Huyndai', 7);
 


Insert Into DANGKYCUNGCAP (MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap) Values 
('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015/11/20', '2016/11/20'),
('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015/11/20', '2017/11/20'),
('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017/11/20', '2018/11/20'),
('DK004', 'NCC005', 'DV01', 'Cerato', 'MP04', '2015/11/20', '2019/11/20'),
('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019/11/20', '2020/11/20'),
('DK006', 'NCC004', 'DV03', 'Starex', 'MP04', '2016/11/10', '2021/11/20'),
('DK007', 'NCC005', 'DV01', 'Cerato', 'MP03', '2015/11/30', '2016/01/25'),
('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016/02/28', '2016/08/15'),
('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016/04/27', '2017/04/30'),
('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2016/11/21', '2016/02/22'),
('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016/12/25', '2017/02/20'),
('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016/04/14', '2017/12/20'),
('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015/12/21', '2016/12/21'),
('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016/05/20', '2016/12/30'),
('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018/04/24', '2019/11/20'),
('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016/06/22', '2016/12/21'),
('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016/09/30', '2019/09/30'),
('DK018', 'NCC008', 'DV03', 'Escape', 'MP04', '2017/12/13', '2018/09/30'),
('DK019', 'NCC003', 'DV03', 'Escape', 'MP03', '2016/01/24', '2016/12/30'),
('DK020', 'NCC002', 'DV03', 'Cerato', 'MP04', '2016/05/03', '2017/10/21'),
('DK021', 'NCC006', 'DV01', 'Forte', 'MP02', '2015/01/30', '2016/12/30'),
('DK022', 'NCC002', 'DV02', 'Cerato', 'MP04', '2016/07/25', '2017/12/30'),
('DK023', 'NCC002', 'DV01', 'Forte', 'MP03', '2017/11/30', '2018/05/20'),
('DK024', 'NCC003', 'DV03', 'Forte', 'MP04', '2017/12/23', '2019/11/30'),
('DK025', 'NCC003', 'DV03', 'Hiace', 'MP02', '2016/08/24', '2017/10/25');
