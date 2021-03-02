SELECT 
    *
FROM
    baitap1module3.dongxe
WHERE
    SoChoNgoi > 5;
SELECT 
    HangXe
FROM
    baitap1module3.dongxe
GROUP BY HangXe;
SELECT 
    NCC.MaNhaCC, NCC.TenNhaCC
FROM
    nhacungcap AS NCC
        JOIN
    dangkycungcap AS DKCC ON NCC.MaNhaCC = DKCC.MaNhaCC
        JOIN
    mucphi AS MP ON MP.MaMP = DKCC.MaMP
        JOIN
    DongXe AS DX ON DX.DongXe = DKCC.DongXe
WHERE
    (DX.Hangxe = 'Toyota'
        AND MP.DonGia = '15000')
        OR (DX.Hangxe = 'KIA'
        AND MP.DonGia = '20000');