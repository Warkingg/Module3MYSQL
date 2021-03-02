CREATE TABLE KHOA (
    makhoa CHAR(10) PRIMARY KEY,
    tenkhoa CHAR(30),
    dienthoai CHAR(10)
);
CREATE TABLE GiangVien (
    magv INT PRIMARY KEY,
    hotengv CHAR(30),
    luong DECIMAL(5 , 2 ),
    makhoa CHAR(10),
    FOREIGN KEY (makhoa)
        REFERENCES KHOA (makhoa)
);
CREATE TABLE SinhVien (
    masv INT PRIMARY KEY,
    hotensv CHAR(30),
    makhoa CHAR(10),
    namsinh INT,
    quequan CHAR(30),
    FOREIGN KEY (makhoa)
        REFERENCES KHOA (makhoa)
);
CREATE TABLE DeTai (
    madt CHAR(10) PRIMARY KEY,
    tendt CHAR(30),
    kinhphi INT,
    NoiThucTap CHAR(30)
);
CREATE TABLE HuongDan (
    masv INT,
    madt CHAR(10),
    magv INT,
    ketqua DECIMAL(5 , 2 ),
    FOREIGN KEY (masv)
        REFERENCES SinhVien (masv),
    FOREIGN KEY (madt)
        REFERENCES DeTai (madt),
    FOREIGN KEY (magv)
        REFERENCES GiangVien (magv)
);
insert into khoa values
(1, 'Dia Ly va QLTN', '0987256745'),
(2, 'Toan', '0356764512'),
(3, 'Vat Ly', '0863124678'),
(4, 'Cong Nghe Sinh Hoc', '0987467214'),
(5, 'Ki Su', '0172836579');

insert into giangvien values
(1, 'Mai Cong Son', 30.00, 1),
(2, 'Kieu Anh', 31.00, 2),
(3, 'The', 29.00, 2),
(4, 'John Toan', 15.00, 5),
(5, 'Quan', 14.00, 4),
(6, 'Chau Le', 50.00, 3),
(7, 'La Thi Cuc Thuy', 20.00, 5),
(8, 'Nguyen Thi Kim Oanh', 20.00, 3),
(9, 'Dung', 21.00, 4),
(10, 'Nhan', 60.00, 5);

insert into sinhvien values
(1, 'Tung', 1, 1998, 'Ha Noi'),
(2, 'Thong', 1, 1999, 'Ha Noi'),
(3, 'Thai', 1, 2000, 'Ha Noi'),
(4, 'Toan', 2, 2001, 'Ha Noi'),
(5, 'Tam', 2, 1997, 'Ha Noi'),
(6, 'Tien', 2, 1996, 'Ha Noi'),
(7, 'Hiep', 3, 1995, 'Ha Noi'),
(8, 'Bao', 3, 1994, 'Ha Noi'),
(9, 'Hang', 3, 2002, 'Ha Noi'),
(10, 'Minh', 4, 1990, 'Ha Noi'),
(11, 'Hien', 4, 1990, 'Ha Noi'),
(12, 'Duy', 4, 1991, 'Ha Noi'),
(13, 'Tus', 5, 1992, 'Ha Noi'),
(14, 'Phuc', 5, 1993, 'Ha Noi'),
(15, 'Sang', 5, 1995, 'Ha Noi'),
(16, 'Thao', 1, 1996, 'Ha Noi'),
(17, 'Thien', 2, 2000, 'Ha Noi'),
(18, 'Tai', 3, 2001, 'Ha Noi'),
(19, 'Van', 4, 2003, 'Ha Noi'),
(20, 'Viet Anh', 5, 1998, 'Ha Noi'),
(21, 'Le Van Son', 3, 1999, 'Vinh');

insert into detai values
(1, 'De Tai 1', 700, 'FPT'),
(2, 'De Tai 2', 200, 'Facebook'),
(3, 'De Tai 3', 900, 'Google'),
(4, 'De Tai 4', 400, 'Amazon'),
(5, 'De Tai 5', 500, 'Tesla');

insert into huongdan values
(1, 5, 1, 10.00),
(9, 4, 1, 9.00),
(3, 3, 1, 10.00),
(7, 2, 1, 8.00),
(2, 1, 1, 10.00),
(6, 1, 1, 8.00),
(11, 3, 3, 9.00),
(13, 5, 2, 10.00),
(15, 2, 4, 10.00),
(10, 4, 5, 8.00),
(13, 2, 2, 10.00),
(5, 3, 3, 10.00),
(18, 4, 4, 10.00);