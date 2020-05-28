SET FOREIGN_KEY_CHECKS=0;
create database quanlybanhang;
use quanlybanhang;
-- ----------------------------
-- Table structure for `chitietdathang`
-- ----------------------------
DROP TABLE IF EXISTS `chitietdathang`;
CREATE TABLE `chitietdathang` (
  `ID` int(11) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `MUCGIAMGIA` float DEFAULT NULL,
  `DONDATHANG_SOHOADON` int(11) NOT NULL,
  `MATHANG_MAHANG` char(4) NOT NULL,
  `GIABAN` float DEFAULT NULL,
  PRIMARY KEY (`ID`,`DONDATHANG_SOHOADON`,`MATHANG_MAHANG`),
  KEY `fk_CHITIETDATHANG_DONDATHANG1_idx` (`DONDATHANG_SOHOADON`),
  KEY `fk_CHITIETDATHANG_MATHANG1_idx` (`MATHANG_MAHANG`),
  CONSTRAINT `fk_CHITIETDATHANG_DONDATHANG1` FOREIGN KEY (`DONDATHANG_SOHOADON`) REFERENCES `dondathang` (`SOHOADON`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CHITIETDATHANG_MATHANG1` FOREIGN KEY (`MATHANG_MAHANG`) REFERENCES `mathang` (`MAHANG`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chitietdathang
-- ----------------------------
INSERT INTO `chitietdathang` VALUES ('1', '1000', '0', '9', 'DC01', '248000');
INSERT INTO `chitietdathang` VALUES ('2', '1000', '0', '9', 'DC02', '2000');
INSERT INTO `chitietdathang` VALUES ('3', '1000', '0', '9', 'DC03', '7500');
INSERT INTO `chitietdathang` VALUES ('4', '2', '1000000', '8', 'DT04', '20000000');
INSERT INTO `chitietdathang` VALUES ('5', '200', '0', '7', 'TP03', '3000');
INSERT INTO `chitietdathang` VALUES ('6', '3000', '1000000', '4', 'MM01', '18000000');
INSERT INTO `chitietdathang` VALUES ('7', '5', '0', '1', 'TP01', '4000');
INSERT INTO `chitietdathang` VALUES ('8', '30', '10000', '3', 'MM01', '340000');
INSERT INTO `chitietdathang` VALUES ('9', '30', '20000', '3', 'MM02', '500000');

-- ----------------------------
-- Table structure for `dondathang`
-- ----------------------------
DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE `dondathang` (
  `SOHOADON` int(11) NOT NULL,
  `NGAYDATHANG` date DEFAULT NULL,
  `NGAYGIAOHANG` date DEFAULT NULL,
  `NGAYCHUYENHANG` date DEFAULT NULL,
  `NOIGIAOHANG` varchar(45) DEFAULT NULL,
  `KHACHHANG_MAKHACHHANG` int(11) NOT NULL,
  `NHANVIEN_MANHANVIEN` char(4) NOT NULL,
  PRIMARY KEY (`SOHOADON`),
  KEY `fk_DONDATHANG_KHACHHANG_idx` (`KHACHHANG_MAKHACHHANG`),
  KEY `fk_DONDATHANG_NHANVIEN1_idx` (`NHANVIEN_MANHANVIEN`),
  CONSTRAINT `fk_DONDATHANG_KHACHHANG` FOREIGN KEY (`KHACHHANG_MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DONDATHANG_NHANVIEN1` FOREIGN KEY (`NHANVIEN_MANHANVIEN`) REFERENCES `nhanvien` (`MANHANVIEN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dondathang
-- ----------------------------
INSERT INTO `dondathang` VALUES ('1', '2006-04-02', '2007-02-02', '2007-02-06', 'huế', '1', 'A001');
INSERT INTO `dondathang` VALUES ('3', '2006-04-02', '2007-02-02', '2007-02-06', 'sài gòn', '2', 'H003');
INSERT INTO `dondathang` VALUES ('4', '2006-04-02', '2007-02-02', '2007-02-06', 'đà nẵng', '3', 'H002');
INSERT INTO `dondathang` VALUES ('5', '2006-04-02', '2007-02-02', '2007-02-06', 'huế', '5', 'D001');
INSERT INTO `dondathang` VALUES ('6', '2006-04-02', '2007-02-02', '2007-02-06', 'quảng nam', '6', 'T001');
INSERT INTO `dondathang` VALUES ('7', '2006-04-02', '2007-02-02', '2007-02-06', 'đà nẵng', '4', 'M001');
INSERT INTO `dondathang` VALUES ('8', '2006-04-02', '2007-02-02', '2007-02-06', 'đà nẵng', '6', 'P001');
INSERT INTO `dondathang` VALUES ('9', '2006-04-02', '2007-02-02', '2007-02-06', 'hà nội', '3', 'H003');

-- ----------------------------
-- Table structure for `khachhang`
-- ----------------------------
DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE `khachhang` (
  `MAKHACHHANG` int(11) NOT NULL,
  `TENCONGTY` varchar(255) DEFAULT NULL,
  `TENGIAODICH` varchar(255) DEFAULT NULL,
  `DIACHI` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `DIENTHOAI` varchar(45) DEFAULT NULL,
  `FAX` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MAKHACHHANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of khachhang
-- ----------------------------
INSERT INTO `khachhang` VALUES ('1', 'Công ty sữa Việt Nam', 'VINAMILK', 'Hà Nội', 'vinamilk@vietnam.com', '04-891135', '');
INSERT INTO `khachhang` VALUES ('2', 'Công ty may mặc Việt Tiến', 'VIETTIEN', 'Sài Gòn', 'viettien@vietnam.com', '08-808803', '');
INSERT INTO `khachhang` VALUES ('3', 'Tổng công ty thực phẩm dinh dưỡng NUTRIFOOD', 'NUTRIFOOD', 'Sài Gòn', 'nutrifood@vietnam.com', '08-809890', '');
INSERT INTO `khachhang` VALUES ('4', 'Công ty điện máy Hà Nội', 'MACHANOI', 'Hà Nội', 'machanoi@vietnam.om', '04-898399', '');
INSERT INTO `khachhang` VALUES ('5', 'Hãng hàng không Việt Nam', 'VIETNAMAIRLINES', 'Sài Gòn', 'vietnamairlines@vietnam.com', '08-888888', '');
INSERT INTO `khachhang` VALUES ('6', 'Công ty dụng cụ học sinh MIC', 'MIC', 'Hà Nội', 'mic@vietnam.com', '04-804408', '');

-- ----------------------------
-- Table structure for `loaihang`
-- ----------------------------
DROP TABLE IF EXISTS `loaihang`;
CREATE TABLE `loaihang` (
  `MALOAIHANG` char(4) NOT NULL,
  `TENLOAIHANG` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MALOAIHANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loaihang
-- ----------------------------
INSERT INTO `loaihang` VALUES ('DC', 'Dụng cụ học tập');
INSERT INTO `loaihang` VALUES ('DT', 'Ðiện tử');
INSERT INTO `loaihang` VALUES ('MM', 'May mặc');
INSERT INTO `loaihang` VALUES ('NT', 'Nội thất');
INSERT INTO `loaihang` VALUES ('TP', 'Thực phẩm');

-- ----------------------------
-- Table structure for `mathang`
-- ----------------------------
DROP TABLE IF EXISTS `mathang`;
CREATE TABLE `mathang` (
  `MAHANG` char(4) NOT NULL,
  `TENHANG` varchar(255) DEFAULT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `LOAIHANG_MALOAIHANG` char(4) NOT NULL,
  `NHACUNGCAP_MACONGTY` char(4) NOT NULL,
  `GIAHANG` float DEFAULT NULL,
  PRIMARY KEY (`MAHANG`,`LOAIHANG_MALOAIHANG`,`NHACUNGCAP_MACONGTY`),
  KEY `fk_MATHANG_LOAIHANG1_idx` (`LOAIHANG_MALOAIHANG`),
  KEY `fk_MATHANG_NHACUNGCAP1_idx` (`NHACUNGCAP_MACONGTY`),
  CONSTRAINT `fk_MATHANG_LOAIHANG1` FOREIGN KEY (`LOAIHANG_MALOAIHANG`) REFERENCES `loaihang` (`MALOAIHANG`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MATHANG_NHACUNGCAP1` FOREIGN KEY (`NHACUNGCAP_MACONGTY`) REFERENCES `nhacungcap` (`MACONGTY`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mathang
-- ----------------------------
INSERT INTO `mathang` VALUES ('DC01', 'VO HOC SINH CAO CAP', '20', 'DC', 'GOL', '48000');
INSERT INTO `mathang` VALUES ('DC02', 'HOP MAU VE', '20', 'DC', 'GOL', '2000');
INSERT INTO `mathang` VALUES ('DC03', 'VIET BI HOC SINH ', '20', 'DC', 'GOL', '7500');
INSERT INTO `mathang` VALUES ('DC04', 'VIET CHI 2B', '2000', 'DC', 'GOL', '3000');
INSERT INTO `mathang` VALUES ('DC05', 'VIET MUC CAO CAP', '200', 'DC', 'GOL', '2000');
INSERT INTO `mathang` VALUES ('DC06', 'VIET CHI 4B ', '2000', 'DC', 'GOL', '6000');
INSERT INTO `mathang` VALUES ('DT01', 'LCD NEC', '10', 'DT', 'DQV', '3100000');
INSERT INTO `mathang` VALUES ('DT02', 'O CUNG 80GB', '10', 'DT', 'DQV', '800000');
INSERT INTO `mathang` VALUES ('DT03', 'BAN PHIM MITSUMI', '20', 'DT', 'DQV', '150000');
INSERT INTO `mathang` VALUES ('DT04', 'TV LCD', '10', 'DT', 'DQV', '20000000');
INSERT INTO `mathang` VALUES ('DT05', 'LAPTOP NEC', '60', 'DT', 'DQV', '18000000');
INSERT INTO `mathang` VALUES ('MM01', 'DONG PHUC NU', '240', 'MM', 'MVT', '340000');
INSERT INTO `mathang` VALUES ('MM02', 'VESTON NAM', '30', 'MM', 'MVT', '500000');
INSERT INTO `mathang` VALUES ('MM03', 'AO SO MI NAM', '20', 'MM', 'MVT', '75000');
INSERT INTO `mathang` VALUES ('NT01', 'Bàn ghế ăn', '20', 'NT', 'DAF', '1000000');
INSERT INTO `mathang` VALUES ('NT02', 'BAN GHE SALON', '20', 'NT', 'DAF', '150000');
INSERT INTO `mathang` VALUES ('TP01', 'SUA HOP', '10', 'TP', 'VNM', '4000');
INSERT INTO `mathang` VALUES ('TP02', 'SUA XO', '12', 'TP', 'VNM', '180000');
INSERT INTO `mathang` VALUES ('TP03', 'SUA KHONG DUONG', '5000', 'TP', 'VNM', '3500');
INSERT INTO `mathang` VALUES ('TP04', 'TAO', '15', 'TP', 'SCM', '12000');
INSERT INTO `mathang` VALUES ('TP05', 'CA CHUA ', '15', 'TP', 'SCM', '5000');
INSERT INTO `mathang` VALUES ('TP06', 'BANH AFC', '100', 'TP', 'SCM', '3000');
INSERT INTO `mathang` VALUES ('TP07', 'MI TOM A-ONE', '100', 'TP', 'SCM', '40000');

-- ----------------------------
-- Table structure for `nhacungcap`
-- ----------------------------
DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE `nhacungcap` (
  `MACONGTY` char(4) NOT NULL,
  `TENCONGTY` varchar(255) DEFAULT NULL,
  `TENGIAODICH` varchar(255) DEFAULT NULL,
  `DIACHI` varchar(45) DEFAULT NULL,
  `DIENTHOAI` varchar(45) DEFAULT NULL,
  `FAX` varchar(45) DEFAULT NULL,
  `email` tinytext,
  PRIMARY KEY (`MACONGTY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nhacungcap
-- ----------------------------
INSERT INTO `nhacungcap` VALUES ('DAF', 'Nội thất Đài Loan Dafuco', 'DAFUCO', 'Quy Nhơn', '056-888111', '', 'dafuco@vietnam.com');
INSERT INTO `nhacungcap` VALUES ('DQV', 'Công ty máy tính Quang Vũ', 'QUANGVU', 'Quy Nhơn', '056-888777', '', 'quangvu@vietnam.com');
INSERT INTO `nhacungcap` VALUES ('GOL', 'Công ty sản xuất dụng cụ học sinh Golden', 'GOLDEN', 'Quy Nhơn', '056-891135', '', 'golden@vietnam.com');
INSERT INTO `nhacungcap` VALUES ('MVT', 'Công ty may mặc Việt Tiến', 'VIETTIEN', 'Sài Gòn', '08-808803', '', 'viettien@vietnam.com');
INSERT INTO `nhacungcap` VALUES ('SCM', 'Siêu thị Coop-mart', 'COOPMART', 'Quy Nhơn', '056-888666', '', 'coopmart@vietnam.com');
INSERT INTO `nhacungcap` VALUES ('VNM', 'Công ty sữa Việt Nam', 'VINAMILK', 'Hà Nội', '04-891135', '', 'vinamilk@vietnam.com');

-- ----------------------------
-- Table structure for `nhanvien`
-- ----------------------------
DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE `nhanvien` (
  `MANHANVIEN` char(4) NOT NULL,
  `HO` varchar(45) DEFAULT NULL,
  `TEN` varchar(45) DEFAULT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `NGAYLAMVIEC` date DEFAULT NULL,
  `DIACHI` varchar(45) DEFAULT NULL,
  `DIENTHOAI` varchar(45) DEFAULT NULL,
  `LUONGCOBAN` float DEFAULT NULL,
  `LUONGPHUCAP` float DEFAULT NULL,
  PRIMARY KEY (`MANHANVIEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nhanvien
-- ----------------------------
INSERT INTO `nhanvien` VALUES ('A001', 'Đậu Tố', 'Anh', '1987-10-02', '2015-05-05', 'Quy Nhơn', '056-647995', '10000000', '1000000');
INSERT INTO `nhanvien` VALUES ('D001', 'Nguyễn Minh', 'Đăng', '1987-10-02', '2015-05-05', 'Quy Nhơn', '0905-779919', '14000000', '0');
INSERT INTO `nhanvien` VALUES ('H001', 'Lê Thị Bích', 'Hoa', '1987-10-02', '2015-05-05', 'An Khê', '', '9000000', '1000000');
INSERT INTO `nhanvien` VALUES ('H002', 'Ông Hoàng', 'Hải', '1987-10-02', '2015-05-05', 'Đà Nẵng', '0905-611725', '12000000', '0');
INSERT INTO `nhanvien` VALUES ('H003', 'Trần Nguyễn Đức', 'Hoàng', '1986-10-05', '2015-05-05', 'Quy Nhơn', '', '11000000', '0');
INSERT INTO `nhanvien` VALUES ('M001', 'Hồ Thị Phương', 'Mai', '1986-11-02', '2015-05-05', 'Tây Sơn', '', '9000000', '500000');
INSERT INTO `nhanvien` VALUES ('P001', 'Nguyễn Hoài', 'Phong', '1986-11-02', '2015-05-05', 'Quy Nhơn', '056-891135', '13000000', '0');
INSERT INTO `nhanvien` VALUES ('Q001', 'Trương Thị Thế', 'Quang', '1990-07-02', '2015-05-05', 'Ayunpa', '0979-792176', '10000000', '500000');
INSERT INTO `nhanvien` VALUES ('T001', 'Nguyễn Đức', 'Thắng', '1989-01-02', '2015-05-05', 'Phù Mỹ', '0955-593893', '1200000', '0');

 -- 1.Cho biet danh sách các đối tác cung cap hàng cho công ty
 select * from quanlybanhang.nhacungcap;
 
 -- 2.Mã hàng, tên hàng và so  luong caa các mat hàng hien có trong công ty
 select MAHANG, TENHANG, SOLUONG from quanlybanhang.mathang;
 
--  3.Ho tên, đia chi  và năm bat đau làm viec cua các nhân viên trong cty
select HO, TEN, YEAR(NGAYLAMVIEC) as NAMLAMVIEC from quanlybanhang.nhanvien;

-- 4. DIa chi, dien thoai cua nha cung cap co ten giao dich VINAMILK
select DIACHI, DIENTHOAI from quanlybanhang.nhacungcap ncc
where ncc.TENGIAODICH='VINAMILK';

-- 5.Mã và ten cua cac mat hang co gia tri lon hon 100000 va so luong hien co it hon 50
select MAHANG, TENHANG from quanlybanhang.mathang
where GIAHANG > 100000 and SOLUONG < 50 ;

-- 6. Cho biet moi mat hang trong cong ty do ai cung cap 
select TENHANG, TENCONGTY from quanlybanhang.mathang mh
inner join quanlybanhang.nhacungcap ncc
on mh.NHACUNGCAP_MACONGTY = ncc.MACONGTY;

-- 7. Công ty Viet Tien đã cung cap nhung mat hàng nào
select TENHANG, TENCONGTY,SOLUONG from quanlybanhang.mathang mh
inner join quanlybanhang.nhacungcap ncc
on mh.NHACUNGCAP_MACONGTY = ncc.MACONGTY
where ncc.TENCONGTY='Công ty may mặc Việt Tiến';

-- 8. Loai hang thuc pham do nhung cong ty nao cung cap, dia chi cua cong ty do
select DISTINCT TENLOAIHANG, TENCONGTY,TENGIAODICH, DIACHI from quanlybanhang.loaihang lh
inner join quanlybanhang.mathang mh
on lh.MALOAIHANG = mh.LOAIHANG_MALOAIHANG
inner join quanlybanhang.nhacungcap ncc
on mh.NHACUNGCAP_MACONGTY = ncc.MACONGTY
where lh.TENLOAIHANG = 'Thực phẩm';

-- 9.Nhung khac hang nao (ten giao dich) da dat mua mat hang sua hop cua cong ty do 
select TENGIAODICH, TENHANG from quanlybanhang.khachhang kh
inner join quanlybanhang.dondathang ddh
on kh.MAKHACHHANG = ddh.KHACHHANG_MAKHACHHANG
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG
where TENHANG = 'SUA HOP';

-- 10. Don dat hang so 1 do ai dat va do nhan vien nao lap, thoi gian va dia diem giao hang la o dau;
select SOHOADON,MAKHACHHANG,TENGIAODICH, HO, TEN, NGAYCHUYENHANG, NOIGIAOHANG from quanlybanhang.nhanvien nv
inner join quanlybanhang.dondathang ddh
on nv.MANHANVIEN = ddh.NHANVIEN_MANHANVIEN
inner join quanlybanhang.khachhang kh
on ddh.KHACHHANG_MAKHACHHANG = kh.MAKHACHHANG
where SOHOADON = 1;

-- 11.Hay cho biet so tien luong ma cong ty phai tra cho moi nhan vien la bao nhieu( luong = luong co ban + phu cap)
select MANHANVIEN, HO, TEN, LUONGCOBAN + LUONGPHUCAP as LUONG from quanlybanhang.nhanvien;
 
--  12. Trong don dat hang so 3 dat mua nhung mat hang nao va so tien ma khach hang phai tra cho moi mat hang la bao nhieu (
--  so tien phai tra = so luong x gia ban - so luong x gia ban x muc giamr gia/100)
select SOHOADON, MAHANG, TENHANG,ctdh.SOLUONG as soluong,GIABAN,MUCGIAMGIA,(ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG) as sotienphaitra 
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG
where SOHOADON = 3;

-- 13.Hay cho biet co nhung khach hang nao lai chinh la doi tac cung cap hang cho cong ty ( tuc la co cung ten giao dich)
-- select distinct	MAKHACHHANG, kh.TENGIAODICH as TENGIAODICH, kh.DIACHI, kh.EMAIL from quanlybanhang.khachhang kh
-- inner join quanlybanhang.dondathang ddh
-- on kh.MAKHACHHANG = ddh.KHACHHANG_MAKHACHHANG
-- inner join quanlybanhang.chitietdathang ctdh
-- on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
-- inner join quanlybanhang.mathang mh
-- on ctdh.MATHANG_MAHANG = mh.MAHANG
-- inner join quanlybanhang.nhacungcap ncc
-- on mh.NHACUNGCAP_MACONGTY = ncc.MACONGTY
-- where ncc.TENGIAODICH = kh.TENGIAODICH;

SELECT *
FROM quanlybanhang.khachhang,quanlybanhang.nhacungcap
WHERE khachhang.TENGIAODICH=nhacungcap.TENGIAODICH;

-- 14. Trong cong ty co nhung nhan vien nao co cung ngay sinh
select * from nhanvien 
where nhanvien.NGAYSINH IN (
select nhanvien.NGAYSINH as monthnv from nhanvien
group by nhanvien.NGAYSINH
having count(monthnv) > 1
);

-- 15.Nhung don hang nao yeu cau giao hang ngay tai cong ty dat hang va nhung don do la cua cong ty nao
select distinct ddh.SOHOADON,ddh.KHACHHANG_MAKHACHHANG,ddh.NHANVIEN_MANHANVIEN,ddh.NOIGIAOHANG,ncc.tencongty from dondathang ddh
inner join chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join mathang mh
on ctdh.MATHANG_MAHANG =mh.MAHANG
inner join nhacungcap ncc
on mh.NHACUNGCAP_MACONGTY = ncc.MACONGTY
where ncc.DIACHI =ddh.NOIGIAOHANG;	

-- 16.Cho biet ten cong ty, ten giao dich, dia chi va dien thoai cua cac khach hang va nha cung cap hang cho cong ty
select 	 kh.TENGIAODICH as TENGIAODICH, kh.DIACHI as diachi, kh.DIENTHOAI as dienthoai, kh.TENCONGTY as tencongty from khachhang kh
union 
select 	 ncc.TENGIAODICH as TENGIAODICH, ncc.DIACHI as diachi, ncc.DIENTHOAI as dienthoai, ncc.TENCONGTY as tencongty from nhacungcap ncc;

-- 17. Nhung mat hang nao chua tung duoc khach hang dat mua
select 	 kh.MAKHACHHANG,ddh.SOHOADON,mh.MAHANG as mahang, mh.TENHANG as tenhang from quanlybanhang.khachhang kh
inner join quanlybanhang.dondathang ddh
on kh.MAKHACHHANG = ddh.KHACHHANG_MAKHACHHANG
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
right join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG
where ddh.SOHOADON is null;

-- 18.Nhung nhan vien nao cua cong ty chua tung lap hoa don dat hang nao
select ddh.SOHOADON,nv.MANHANVIEN,nv.HO,nv.TEN from quanlybanhang.dondathang ddh
right join quanlybanhang.nhanvien nv
on ddh.NHANVIEN_MANHANVIEN = nv.MANHANVIEN
where ddh.SOHOADON is null;

-- 19.Nhung nhan vien nao cua cong ty cos luong co ban cao nhat
select * from quanlybanhang.nhanvien nv where nv.LUONGCOBAN in (
select max(LUONGCOBAN) from nhanvien
);

-- 20. Tong so tien ma khach hang phai tra cho moi don dat hang la bao nhieu
select kh.MAKHACHHANG,kh.TENGIAODICH,ddh.SOHOADON,ctdh.SOLUONG as soluong,MUCGIAMGIA,GIABAN,(ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG) as sotienphaitra 
from quanlybanhang.khachhang kh
inner join quanlybanhang.dondathang ddh
on kh.MAKHACHHANG = ddh.KHACHHANG_MAKHACHHANG
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON;

-- 21.Trong nam 2006 nhung mat hang nao dt mua dung mot lan

select mh.tenhang from dondathang ddh
inner join chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join mathang mh
on ctdh.MATHANG_MAHANG =mh.MAHANG
where year(ddh.ngaydathang) = 2006
group by tenhang
having count(tenhang) = 1;

-- 22.Moi khach hang phai bo ra bao nhieu tien de dat mua hang cua cong ty
select distinct	MAKHACHHANG ,sum((ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG)) as sotienbora  from quanlybanhang.khachhang kh
inner join quanlybanhang.dondathang ddh
on kh.MAKHACHHANG = ddh.KHACHHANG_MAKHACHHANG
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG
inner join quanlybanhang.nhacungcap ncc
on mh.NHACUNGCAP_MACONGTY = ncc.MACONGTY
group by MAKHACHHANG;

-- 23. Moi nhan vien cua cong ty da lap bao nhieu don dat hang(neu chua he lap hoa don nao thi cho ket qua la 0)
select ho,ten,count(dondathang.NHANVIEN_MANHANVIEN) as tongdonhangdanhan from dondathang
right join nhanvien
on dondathang.NHANVIEN_MANHANVIEN = nhanvien.manhanvien
group by nhanvien.manhanvien;

-- 24.Tong so tien hang ma cong ty thu duoc trong moi thang cua nam 2006( thoi gian duoc tinh theo ngay dat hang)
select month(ddh.NGAYDATHANG) as monthReceipts,sum((ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG)) as doanhthuthang
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
group by monthReceipts;

-- 25.Tong so tien loi ma cong ty thu duoc tu moi mat hang trong nam 2006
select TENHANG,sum((ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG))-sum(ctdh.SOLUONG*GIAHANG) as doanhthunam
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG
where year(ddh.ngaydathang) = 2006
group by TENHANG;

-- 26. Số lượng hàng còn lại của mỗi mặt hàng mà công ty đã có ( tổng số lượng hàng đã bán và hiện có )
select distinct TENHANG,mh.SOLUONG as soluonghienco
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG;

-- 27. Nhân viên nào của công ty bán được số lượng hàng nhiều nhất và 
-- số lượng hàng bán được của những nhân viên này là bao nhiêu
select ho,ten,sum(ctdh.SOLUONG) as tongsoluonghangban  from quanlybanhang.nhanvien
inner join quanlybanhang.dondathang ddh
on ddh.NHANVIEN_MANHANVIEN = nhanvien.manhanvien
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
group by nhanvien.manhanvien;

-- 28. Đơn đặt hàng nào có số lượng hàng được mua ít nhất
select distinct ddh.SOHOADON, ctdh.SOLUONG, ddh.KHACHHANG_MAKHACHHANG,ddh.NHANVIEN_MANHANVIEN 
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
order by ctdh.SOLUONG desc
limit 1;

-- 29.Số tiền nhiều nhất mà khách hàng đã từng bỏ ra để đặt hàng trong các đơn đặt hàng là bao nhiêu
select distinct ddh.SOHOADON, ddh.KHACHHANG_MAKHACHHANG,(ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG) as sotienphaitra
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
order by sotienphaitra desc
limit 1;

-- 30. Mỗi một đơn đặt hàng đặt mua những mặt hàng nào và tổng số tiền của đơn đặt hàng.
select distinct ddh.SOHOADON, ddh.KHACHHANG_MAKHACHHANG,mh.TENHANG,(ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG) as sotienphaitra
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG;

-- 31.Mỗi một loại hàng bao gồm những mặt hàng nào, tổng số lượng của mỗi loại
--  và tổng số lượng của tất cả các mặt hàng hiện có trong công ty
select lh.MALOAIHANG,lh.TENLOAIHANG, mh.TENHANG
 from quanlybanhang.mathang mh
inner join quanlybanhang.loaihang lh
on mh.LOAIHANG_MALOAIHANG = lh.MALOAIHANG
order by lh.MALOAIHANG;

select lh.MALOAIHANG,lh.TENLOAIHANG,sum(mh.SOLUONG) as soluongmoiloai
from quanlybanhang.mathang mh
inner join quanlybanhang.loaihang lh
on mh.LOAIHANG_MALOAIHANG = lh.MALOAIHANG
group by MALOAIHANG,TENLOAIHANG;

select sum(mh.SOLUONG) as soluongmoiloai
from mathang mh;
-- 32.Thống kê trong năm 2006 mỗi một mặt hàng trong mỗi tháng và trong cả năm bán được với số lượng bao nhiêu (Yêu cầu kết quá hiển
-- thị dưới dạng bảng, hai cột đầu là mã hàng, tên hàng, các cột còn lại tương ứng từ tháng 1 đến tháng 12 và cả năm.
-- Như vậy mỗi dòng trong kết quả cho biết số lượng hàng bán được mỗi tháng và trong cả năm của mỗi mặt hàng

select mh.MAHANG,mh.TENHANG,
sum(case month(ddh.NGAYDATHANG) when 1 then ctdh.SOLUONG else 0 end) as Thang1,
sum(case month(ddh.NGAYDATHANG) when 2 then ctdh.SOLUONG else 0 end) as Thang2,
sum(case month(ddh.NGAYDATHANG) when 3 then ctdh.SOLUONG else 0 end) as Thang3,
sum(case month(ddh.NGAYDATHANG) when 4 then ctdh.SOLUONG else 0 end) as Thang4,
sum(case month(ddh.NGAYDATHANG) when 5 then ctdh.SOLUONG else 0 end) as Thang5,
sum(case month(ddh.NGAYDATHANG) when 6 then ctdh.SOLUONG else 0 end) as Thang6,
sum(case month(ddh.NGAYDATHANG) when 7 then ctdh.SOLUONG else 0 end) as Thang7,
sum(case month(ddh.NGAYDATHANG) when 8 then ctdh.SOLUONG else 0 end) as Thang8,
sum(case month(ddh.NGAYDATHANG) when 9 then ctdh.SOLUONG else 0 end) as Thang9,
sum(case month(ddh.NGAYDATHANG) when 10 then ctdh.SOLUONG else 0 end) as Thang10,
sum(case month(ddh.NGAYDATHANG) when 11 then ctdh.SOLUONG else 0 end) as Thang11,
sum(case month(ddh.NGAYDATHANG) when 12 then ctdh.SOLUONG else 0 end) as Thang12,
sum(ctdh.SOLUONG) as CaNam
from quanlybanhang.dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
inner join quanlybanhang.mathang mh
on ctdh.MATHANG_MAHANG = mh.MAHANG
where year(ddh.NGAYDATHANG) = 2006
group by mh.MAHANG,mh.TENHANG;

-- 33. Cập nhật lại giá trị trường NGAYCHUYENHANG của những bản ghi có NGAYCHUYENHANG chưa xác định (NULL) trong bảng 
-- DONDATHANG bằng với giá trị của trường NGAYDATHANG.
SET SQL_SAFE_UPDATES = 0;
update dondathang 
set dondathang.NGAYCHUYENHANG = dondathang.NGAYDATHANG
where dondathang.NGAYCHUYENHANG is null;

-- 34.Tăng số lượng hàng của những mặt hàng do công ty NINAMILK cung cấp lên gấp đôi 
update mathang
set mathang.SOLUONG = mathang.SOLUONG*2
where mathang.NHACUNGCAP_MACONGTY = 'VNM';

-- 35.Cập nhật giá trị của trường NOIGIAOHANG trong bảng DONDATHANG bằng địa chỉ của khách hàng đối với những đơn đặt hàng chưa xác 
-- định được nơi giao hàng(giá trị trường NOIGIAOHANG bằng NULL)
update dondathang
set dondathang.NOIGIAOHANG = (select khachhang.DIACHI 
from khachhang where dondathang.KHACHHANG_MAKHACHHANG = khachhang.MAKHACHHANG)
where dondathang.NGAYCHUYENHANG is null;

-- 36. Cập nhật lại dữ liệu trong bảng KHACHHANG sao cho nếu tên công ty và tên giao dịch của khách hàng trùng với tên công ty
-- và tên giao dịch của một nhà cung cấp nào đố thì địa chỉ , điện thoại, fax và email phải giống nhau.

update khachhang,nhacungcap
set khachhang.DIACHI = nhacungcap.DIACHI,
khachhang.DIENTHOAI = nhacungcap.DIENTHOAI,
khachhang.FAX = nhacungcap.FAX,
khachhang.EMAIL = nhacungcap.email
where khachhang.TENCONGTY = nhacungcap.TENCONGTY AND khachhang.TENGIAODICH = nhacungcap.TENGIAODICH;

-- 37.Tăng lương lên gấp rưỡi cho những nhân viên bán được số lượng hàng nhiều hơn 100 trong năm 2006
update nhanvien
set nhanvien.LUONGCOBAN = nhanvien.LUONGCOBAN*1.5
where nhanvien.MANHANVIEN in (
select dondathang.NHANVIEN_MANHANVIEN from dondathang
inner join chitietdathang
on dondathang.SOHOADON = chitietdathang.DONDATHANG_SOHOADON
where year(dondathang.NGAYDATHANG) = 2006 and MANHANVIEN = nhanvien.MANHANVIEN
group by NHANVIEN_MANHANVIEN
having sum(chitietdathang.SOLUONG) > 100
);

-- 38.Tăng phụ cấp lên bằng 50% lương cho những nhân viên bán được hàng nhiều nhất
update nhanvien
set nhanvien.LUONGPHUCAP = nhanvien.LUONGCOBAN*0.5
where nhanvien.MANHANVIEN = (
select dondathang.NHANVIEN_MANHANVIEN from dondathang
inner join chitietdathang
on dondathang.SOHOADON = chitietdathang.DONDATHANG_SOHOADON
where MANHANVIEN = nhanvien.MANHANVIEN
group by dondathang.NHANVIEN_MANHANVIEN
order by sum(chitietdathang.SOLUONG) desc
limit 1
);
-- 39.Giảm 25% lương của những nhân viên trong năm 2006 không lâp được bất kỳ đơn đặt hàng nào
update nhanvien,dondathang
set nhanvien.LUONGCOBAN = nhanvien.LUONGCOBAN*0.25
where nhanvien.MANHANVIEN != dondathang.NHANVIEN_MANHANVIEN
;
-- 40.Giả sử trong bảng DONDATHANG có thêm trường SOTIEN cho biết số tiền mà khách hàng phải trả trong mỗi đơn đặt hàng
-- .Hãy tính giá trị cho trường này.
update dondathang
set dondathang.SOTIEN = (
select (ctdh.SOLUONG*GIABAN - MUCGIAMGIA*ctdh.SOLUONG) as sotienphaitra
from dondathang ddh
inner join quanlybanhang.chitietdathang ctdh
on ddh.SOHOADON = ctdh.DONDATHANG_SOHOADON
);

-- test
 update nhanvien
 set nhanvien.NGAYLAMVIEC ='1970-12-24'
 where nhanvien.TEN = 'MAI';
--  41. Xóa khỏi bảng NHANVIEN những nhân viên đã làm việc trong cong ty quá 40 năm 
SET FOREIGN_KEY_CHECKS=0;
delete from nhanvien
where datediff(current_Date(),nhanvien.NGAYLAMVIEC) > 40*365;

-- 42.Xóa những đơn đặt hàng trước năm 2000 ra khỏi cơ sở dữ liệu 
delete from dondathang
where year(dondathang.NGAYDATHANG) < 2000;

-- 43.Xóa khỏi bảng LOAIHOANG những loại hàng hiện không có mặt hàng
delete from loaihang
where loaihang.MALOAIHANG not in (
select mathang.LOAIHANG_MALOAIHANG from mathang
where mathang.LOAIHANG_MALOAIHANG = loaihang.MALOAIHANG
);

-- 44.Xóa khỏi bảng KHACHHANG những khách hàng hiện không có bất kỳ đơn đặt hàng nào cho công ty
delete from khachhang
where khachhang.MAKHACHHANG not in (
select KHACHHANG_MAKHACHHANG from dondathang
where khachhang.MAKHACHHANG = dondathang.KHACHHANG_MAKHACHHANG);

-- 45.Xoá khỏi bảng MATHANG những mặt hàng có số lượng bằng 0 và không được đặt mua trong bất kỳ đơn đặt hàng nào
delete from mathang 
where mathang.SOLUONG = 0 and mathang.MAHANG not in (
select MATHANG_MAHANG from chitietdathang 
where mathang.MAHANG = chitietdathang.MATHANG_MAHANG
 );


