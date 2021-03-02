SELECT 
    NCC.TenNhaCC,
    NCC.DiaChi,
    NCC.SoDT,
    DKCC.NgayBatDauCungCap,
    COUNT(*) AS SoLan
FROM
    dangkycungcap AS DKCC
        JOIN
    nhacungcap AS NCC ON DKCC.MaNhaCC = NCC.MaNhaCC
WHERE
    DKCC.NgayBatDauCungCap = '2015/11/20'
GROUP BY NCC.TenNhaCC;
SELECT 
    NCC.TenNhaCC,
    NCC.DiaChi,
    NCC.SoDT,
    NCC.MaSoThue,
    DKCC.DongXe
FROM
    nhacungcap AS NCC
        JOIN
    dangkycungcap AS DKCC ON NCC.MaNhaCC = DKCC.MaNhaCC
WHERE
    DKCC.DongXe = 'Cerato'
        OR DKCC.DongXe = 'Hiace';
SELECT 
    *
FROM
    nhacungcap AS NCC
        LEFT JOIN
    dangkycungcap AS DKCC ON ncc.MaNhaCC = dkcc.MaNhaCC
WHERE
    dkcc.MaNhaCC IS NULL;
SELECT 
    DKCC.MaDKCC,
    NCC.MaNhaCC,
    NCC.TenNhaCC,
    NCC.DiaChi,
    NCC.MaSoThue,
    LDV.TenLoaiDV,
    MP.DonGia,
    DX.Hangxe,
    DKCC.NgayBatDauCungCap,
    DKCC.NgayKetThucCungCap
FROM
    nhacungcap AS NCC
        LEFT JOIN
    dangkycungcap AS DKCC ON NCC.MaNhaCC = DKCC.MaNhaCC
        LEFT JOIN
    mucphi AS MP ON DKCC.MaMP = MP.MaMP
        LEFT JOIN
    loaidichvu AS LDV ON DKCC.MaLoaiDV = LDV.MaLoaiDV
        LEFT JOIN
    dongxe AS DX ON DKCC.DongXe = DX.DongXe;
