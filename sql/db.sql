-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 03:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` int(11) NOT NULL,
  `phanquyen` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `email`, `matkhau`, `phanquyen`) VALUES
(1, 'hoa123@gmail.com', 1111, 'quanlisanpham');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idchitiethoadon` int(11) NOT NULL,
  `idhoadon` int(11) NOT NULL,
  `idmaytinh` int(11) NOT NULL,
  `soluongsp` int(11) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idchitiethoadon`, `idhoadon`, `idmaytinh`, `soluongsp`, `giasanpham`, `thanhtien`) VALUES
(14, 10, 3, 3, 27890000, 83670000),
(15, 10, 58, 1, 32890000, 32890000),
(16, 10, 4, 1, 23590000, 23590000),
(17, 10, 59, 1, 22999000, 22999000),
(18, 10, 11, 1, 69999000, 69999000),
(19, 15, 58, 5, 32890000, 164450000),
(20, 15, 3, 2, 27890000, 55780000),
(21, 15, 1, 1, 22890000, 22890000),
(22, 15, 4, 13, 23590000, 306670000),
(23, 15, 43, 4, 16790000, 67160000),
(24, 17, 3, 1, 27890000, 27890000),
(28, 18, 43, 8, 16790000, 134320000),
(29, 18, 24, 2, 21990000, 43980000),
(30, 18, 13, 11, 47990000, 527890000),
(31, 18, 20, 2, 36990000, 73980000),
(32, 18, 2, 15, 28490000, 427350000),
(33, 18, 1, 10, 22890000, 228900000),
(34, 18, 1, 1, 22890000, 22890000),
(35, 18, 1, 1, 22890000, 22890000),
(36, 18, 1, 1, 22890000, 22890000),
(37, 23, 1, 1, 22890000, 22890000),
(38, 24, 1, 5, 22890000, 114450000),
(40, 26, 1, 5, 22890000, 114450000),
(41, 26, 2, 5, 28490000, 142450000),
(42, 27, 2, 10, 28490000, 284900000),
(45, 29, 1, 5, 22890000, 114450000),
(46, 30, 4, 1, 23590000, 23590000),
(47, 30, 5, 1, 23290000, 23290000),
(49, 31, 1, 10, 22890000, 228900000),
(50, 32, 41, 1, 13290000, 13290000),
(51, 32, 24, 2, 21990000, 43980000),
(52, 33, 43, 2, 16790000, 33580000);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(20) NOT NULL,
  `diachi` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sdt` int(50) DEFAULT NULL,
  `makh` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 0,
  `tenkh` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` char(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tongtien` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `diachi`, `sdt`, `makh`, `trangthai`, `tenkh`, `email`, `tongtien`) VALUES
(10, NULL, NULL, 60, 0, '', '', 0),
(15, NULL, NULL, 64, 0, '', '', 0),
(17, '', 0, 70, 1, '', '', 27890000),
(18, 'cần thơ', 973731800, 70, 1, 'Huệ', 'xh@gmail.com', 1207520000),
(23, '123123123', 12312312, 70, 1, '3123123', '123123123', 22890000),
(24, '312321', 12312312, 70, 1, '123123', '12312312', 114450000),
(26, '312312', 123123, 70, 1, '123123', '123213', 256900000),
(27, '534543534', 2147483647, 70, 1, '44334234', '345345', 284900000),
(29, 'qưeqưeqưewqe', 0, 70, 1, 'qeqưewew', 'ưqeqưeqưeqư', 114450000),
(30, 'ssss', 76543, 70, 1, 'hhhh', 'xh@gmail.com', 46880000),
(31, 'sdb', 3456, 70, 1, 'sdf', 'sdfg', 228900000),
(32, NULL, NULL, 70, 0, '', '', 0),
(33, NULL, NULL, 81, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `hoten` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `matkhau` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sdt` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `kichhoat` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `hoten`, `email`, `matkhau`, `sdt`, `hinhanh`, `kichhoat`) VALUES
(60, 'Phạm Như Ý', 'nhuy@gmail.com', '1234', '0924408068', 'medal.png', 1),
(64, 'Thanh Hà', '', '1234', '0939080681', 'checked.png', 1),
(70, 'Xuân Hương', 'xh@gmail.com', '123412', '0123424242', 'att1.jpg', 1),
(76, 'Nguyễn Văn A', 'as@gmail.com', '123', '0922006780', '', 0),
(81, 'Xuân Huệ', 'xuanhue@gmail.com', '123', '0924408068', 'att2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `maytinh`
--

CREATE TABLE `maytinh` (
  `mamt` int(10) NOT NULL,
  `maloai` int(10) NOT NULL,
  `tenmaytinh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cpu` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ram` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ocung` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `manhinh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cardmanhinh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hedieuhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `hinhanh` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `soluong` int(100) DEFAULT NULL,
  `xoa` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `maytinh`
--

INSERT INTO `maytinh` (`mamt`, `maloai`, `tenmaytinh`, `cpu`, `ram`, `ocung`, `manhinh`, `cardmanhinh`, `hedieuhanh`, `gia`, `hinhanh`, `soluong`, `xoa`) VALUES
(1, 1, 'HP Envy 13 ba1027TU i5', 'Intel Core i5-1135G7', '8 GB, LPDDR4, 3200 MHz', 'SSD 256 GB', '13.3\", 1920 x 1080 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 22890000, 'hp1.jpg', 0, 0),
(2, 1, 'HP Envy 13 aq1047TU i7', 'Intel Core i7-10510U', '8 GB, DDR4, 2400 MHz', 'SSD 512 GB', '13.3\", 1920 x 1080 Pixel', 'Intel UHD Graphics', 'Windows 10', 28490000, 'hp2.jpg', 0, 0),
(3, 1, 'HP Envy 13 aq1023TU i7', 'Intel Core i7-10510U', '8 GB, DDR4, 2400 MHz', 'SSD 512 GB', '13.3\", 1920 x 1080 Pixel', 'Intel UHD Graphics', 'Windows 10', 27890000, 'hp3.jpg', 20, 0),
(4, 1, 'HP Envy 13 ba1028TU i5', 'Intel Core i5-1135G7', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '13.3\", 1920 x 1080 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 23590000, 'hp4.jpg', 4, 0),
(5, 1, 'HP Envy x360 13 ay0067AU R5', 'AMD Ryzen 5-4500U', '8 GB, DDR4, 3200 MHz', 'SSD 256 GB', '13.3\", 1920 x 1080 Pixels', 'AMD Radeon Graphics Vega 6', 'Windows 10 Home', 23290000, 'hp5.jpg', 19, 0),
(6, 1, 'HP Envy 15-ep0145TX i7', 'Intel Core i7-10750H', '16 GB, DDR4, 2933 MHz', 'SSD 1 TB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1660Ti Max-Q 6 GB & Intel UHD Graphics', 'Windows 10', 49990000, 'hp6.jpg', 20, 0),
(7, 1, 'HP Envy 13 ba0045TU i5 1035G4', 'Intel Core i5-1035G4', '8 GB, DDR4, 3200 MHz', 'SSD 256 GB', '13.3\", 1920 x 1080 Pixel', 'Intel Iris Plus Graphics', 'Windows 10', 21990000, 'hp7.jpg', 25, 0),
(8, 1, 'Laptop HP 15s fq1109TU i3 1005G1', 'Intel Core i3-1005G1', '4 GB, DDR4, 2666 MHz', 'SSD 512 GB', '15.6\", 1366 x 768 Pixel', 'Intel UHD Graphics', 'Windows 10', 11890000, 'hp8.jpg', 25, 0),
(9, 1, 'Laptop HP 15s fq2029TU i7 1165G7', 'Laptop HP 15s fq2029TU i7 1165G7', '8 GB, DDR4, 2666 MHz', 'SSD 512 GB', '15.6\", 1366 x 768 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 18990000, 'hp9.jpg', 25, 0),
(10, 1, 'Laptop HP 15s fq1116TU i3 1005G1', 'Intel Core i3-1005G1', '8 GB, DDR4, 2666 MHz', 'SSD 512 GB', '15.6\", 1366 x 768 Pixel', 'Intel UHD Graphics', 'Windows 10', 13190000, 'hp10.jpg', 20, 0),
(11, 5, 'MacBook Pro 16\" 2019 Touch Bar 2.3GHz Core i9 1TB', 'Intel Core i9-9th-gen', '16 GB, DDR4, 2666 MHz', 'SSD 1 TB', '16.0\", 3072 x 1920 Pixel', 'AMD Radeon Pro 5500M 4 GB & Intel UHD Graphics 630', 'Mac OS', 69999000, 'mb1.jpg', 10, 0),
(12, 5, 'MacBook Pro 16\" 2019 Touch Bar 2.6GHz Core i7 512GB', 'Intel Core i7-9th-gen', '16 GB, DDR4, 2666 MHz', 'SSD 512 GB', '16.0\", 3072 x 1920 Pixel', 'AMD Radeon Pro 5300M 4 GB & Intel UHD Graphics 630', 'Mac OS', 59890000, 'mb2.jpg', 5, 0),
(13, 5, 'MacBook Pro 13\" 2020 Touch Bar 2.0GHz Core i5 512GB', 'Intel Core i5-10th-gen', '16 GB, LPDDR4X, 3733 MHz', 'SSD 512 GB', '13.3\", 2560 x 1600 Pixel', 'Intel Iris Plus Graphics', 'Mac OS', 47990000, 'mb3.jpg', 10, 0),
(14, 5, 'MacBook Pro 13\" 2020 Touch Bar M1 16GB/256GB', 'Apple M1', '16 GB, LPDDR4', 'SSD 256 GB', '13.3\", 2560 x 1600 Pixel', 'Apple M1 GPU 8 nhân', 'Mac OS', 39990000, 'mb4.jpg', 5, 0),
(15, 5, 'MacBook Pro 13\" 2020 Touch Bar M1 256GB', 'Apple M1', '8 GB, LPDDR4', 'SSD 256 GB', '13.3\", 2560 x 1600 Pixel', 'Apple M1 GPU 8 nhân', 'Mac OS', 32890000, 'mb5.jpg', 5, 0),
(16, 5, 'MacBook Air 13\" 2020 1.1GHz Core i5 512GB', 'Intel Core i5-10th-gen', '8 GB, LPDDR4, 3733 MHz', 'SSD 512 GB', '13.3\", 2560 x 1600 Pixel', 'Intel Iris Plus Graphics', 'Mac OS', 29990000, 'mb6.jpg', 5, 0),
(17, 5, 'MacBook Air 13\" 2020 1.1GHz Core i3 256GB', 'Intel Core i3-10th-gen', '8 GB, LPDDR4, 3733 MHz', 'SSD 256 GB', '13.3\", 2560 x 1600 Pixel', 'Intel Iris Plus Graphics', 'Mac OS', 24660000, 'mb7.jpg', 5, 0),
(18, 5, 'MacBook Air 13\" 2017 1.8GHz Core i5 128GB', 'Intel Core i5-5th-gen', '8 GB, LPDDR3, 1600 MHz', 'SSD 128 GB', '13.3\", 1440 x 900 Pixel', 'Intel HD Graphics 6000', 'Mac OS', 17990000, 'mb8.jpg', 5, 0),
(19, 5, 'MacBook Pro 13″ – M1 256GB 2020', 'Apple M1\r\n\r\n', '8 GB', NULL, '13.3 inch, Retina (2560 x 1600)\r\n\r\n', 'Card đồ họa tích hợp, 8 nhân GPU\r\n\r\n', 'MacOS\r\n\r\n', 31890000, 'mb9.png', 5, 0),
(20, 5, 'MacBook Pro 13″ – M1 512GB 2020', 'Apple M1\r\n\r\n', '8 GB', NULL, '13.3 inch, Retina (2560 x 1600)', 'Card đồ họa tích hợp, 8 nhân GPU', 'MacOS\r\n\r\n', 36990000, 'mb10.png', 5, 0),
(21, 4, 'Asus Zenbook UX425EA BM069T i5', 'Intel Core i5-1135G7', '8 GB, LPDDR4, 4266 MHz', 'SSD 512 GB', '14.0\", 1920 x 1080 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 22999000, '	\r\nas1.jpg', 5, 0),
(22, 4, 'Asus Zenbook Flip UX371EA-HL701TS i7', 'Intel Core i7-1165G7', '16 GB, LPDDR4X, 4266 MHz', 'SSD 1 TB', '13.3\", 3840 x 2160 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 39990000, 'a2.jpg', 5, 0),
(23, 4, 'Asus Zenbook UX334FLC A4096T i5', 'Intel Core i5-10210U', '8 GB, LPDDR3, 2133 MHz', 'SSD 512 GB', '13.3\", 1920 x 1080 Pixel', 'NVIDIA GeForce MX250 2 GB & Intel UHD Graphics', 'Windows 10', 25880000, 'a3.jpg', 5, 0),
(24, 4, 'Asus Zenbook UX325EA-EG079T i5', 'Intel Core i5-1135G7', '8 GB, LPDDR4X, 3200 MHz', 'SSD 256 GB', '13.3\", 1920 x 1080 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 21990000, 'a4.jpg', 5, 0),
(25, 4, 'Laptop Asus TUF FX506LI HN096T i7', 'Intel Core i7-10870H', '8 GB, DDR4, 2933 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650Ti 4 GB & Intel HD Graphics 630', 'Windows 10', 25990000, 'a5.jpg', 5, 0),
(26, 4, 'Laptop Asus TUF FX505GT HN111T i5', 'Intel Core i5-9300H', '8 GB, DDR4, 2666 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650 4 GB & Intel UHD Graphics 630', 'Windows 10', 20490000, 'a6.jpg', 5, 0),
(27, 4, 'Laptop Asus TUF FX505DT HN478T R7', 'AMD Ryzen 7-3750H', '8 GB, DDR4, 2400 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650 4 GB & AMD Radeon Graphics', 'Windows 10', 19000000, 'a7.jpg', 5, 0),
(28, 4, 'Laptop Asus TUF FA506II AL016T R7', 'AMD Ryzen 7-4800H', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650Ti 4 GB & AMD Radeon Graphics', 'Windows 10', 23190000, 'a8.jpg', 5, 0),
(29, 4, 'Laptop Asus TUF FX505DT HN478T R7', 'AMD Ryzen 7-3750H', '8 GB, DDR4, 2400 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650 4 GB & AMD Radeon Graphics', 'Windows 10', 19090000, 'a9.jpg', 5, 0),
(30, 4, 'Asus Gaming ROG Strix G512-IHN281T i7', 'Intel Core i7-10870H', '8 GB, DDR4, 2933 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650Ti 4 GB & Intel UHD Graphics 630', 'Windows 10', 27990000, 'a10.jpg', 5, 0),
(31, 3, 'Laptop Dell XPS 13 9310 i5 ', 'Intel Core i5-1135G7', 'RAM	8 GB, LPDDR4, 4266 MHz', 'SSD 256 GB', '13.4\", 1920 x 1080 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 40790000, 'mt1.2.jpg', 5, 0),
(32, 3, 'Laptop Dell XPS 13 9310 i5 ', 'Intel Core i5-1135G7', '8 GB, LPDDR4X, 4266 MHz', 'SSD 512 GB', '13.3\", 1920 x 1200 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 37000000, 'mt2.3.jpg', 5, 0),
(33, 3, 'Laptop Dell G3 15 i7', 'Intel Core i5-10300H', '8 GB, DDR4, 2933 MHz', 'HDD 1000 GB & SSD 256 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650 4 GB & Intel UHD Graphics', 'Windows 10', 22440000, 'mt3.jpg', 5, 0),
(34, 3, 'Dell G3 15 3500A i7', 'Intel Core i7-10750H', '8 GB, DDR4, 2933 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650Ti 4 GB & Intel UHD Graphics', 'Windows 10', 27000000, 'mt4.jpg', 5, 0),
(35, 3, 'Laptop Dell Inspiron N7501 i7', 'Intel Core i7-10750H', '8 GB, DDR4, 2933 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650Ti 4 GB & Intel UHD Graphics', 'Windows 10', 30290000, 'mt5.jpg', 5, 0),
(36, 3, 'Dell G3 15 3500B i7 10750H/16GB/512GB', 'Intel Core i7-10750H', '16 GB, DDR4, 2933 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1660Ti 6 GB & Intel UHD Graphics', 'Windows 10', 31990000, 'mt6,2.jpg', 5, 0),
(37, 3, 'Laptop Dell Vostro V3491 i5 1035G', 'Intel Core i5-1035G1', '8 GB, DDR4, 2666 MHz', 'SSD 256 GB', '14.0\", 1920 x 1080 Pixel', 'Intel UHD Graphics', 'Windows 10', 15590000, 'mt7.jpg', 5, 0),
(38, 3, 'Laptop Dell XPS 13 9310 i5 1135G7', 'Intel Core i5-1135G7', '8 GB, LPDDR4X, 4266 MHz', 'SSD 512 GB', '13.3\", 1920 x 1200 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 38990000, 'mt8.jpg', 5, 0),
(39, 3, 'Laptop Dell G5 15 5500 i7 10750H', 'Intel Core i7-10750H', '16 GB, DDR4, 2933 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce RTX 2060 6 GB & Intel UHD Graphics', 'Windows 10', 33990000, 'mt9.jpg', 5, 0),
(40, 3, 'Laptop Dell Insprion N5406 i5 1135G7', 'Intel Core i5-1135G7', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '14.0\", 1920 x 1080 Pixel', 'NVIDIA GeForce MX330 2 GB & Intel Iris Xe Graphics', 'Windows 10', 23990000, 'mt10.jpg', 5, 0),
(41, 2, 'Laptop Lenovo IdeaPad Slim 3 15ITL6 i3', 'Intel Core i3-1115G4', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'Intel UHD Graphics', 'Windows 10', 13290000, '1.jpg', 5, 0),
(42, 2, 'Laptop Lenovo Ideapad S145 14API R3 3200U\r\n\r\n', 'AMD Ryzen 3-3200U', '4 GB, DDR4, 2400 MHz', 'SSD 256 GB', '14.0\", 1920 x 1080 Pixels', 'AMD Radeon Graphics', 'Windows 10', 9990000, 'l2.jpg', 5, 0),
(43, 2, 'Laptop Lenovo ThinkBook 14 G2 ARE', 'AMD Ryzen 7-4700U', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '14.0\", 1920 x 1080 Pixel', 'AMD Radeon Graphics', 'Windows 10', 16790000, '3.jpg', 5, 0),
(44, 2, 'Laptop Lenovo Yoga Slim 7 14ITL05 i5 1135G7', 'Intel Core i5-1135G7', '16 GB, DDR4, 3200 MHz', 'SSD 512 GB', '14.0\", 1920 x 1080 Pixel', 'Intel Iris Xe Graphics', 'Windows 10', 24290000, 'l2.webp', 5, 0),
(45, 2, 'Laptop Lenovo ThinkBook 15 G2 ITL i7 1165G7', 'Intel Core i7-1165G7', '8 GB, DDR4, 3200 MHz', NULL, '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce MX450 2GB & Intel Iris Xe Graphics', 'Windows 10', 23790000, '5.jpg', 5, 0),
(46, 2, 'Laptop Lenovo Legion 5 Pro 16ACH6H R7 5800H', 'AMD Ryzen 7-5800H', '16 GB, DDR4, 3200 MHz', 'SSD 1 TB', 'N16.0\", 2560 x 1600 Pixel', 'NVIDIA GeForce RTX 3070 8GB & AMD Radeon Graphics', 'Windows 10', 48990000, '6.jpg', 5, 0),
(47, 2, 'Laptop Lenovo Legion Y540 15IRH i7 9750H', 'Intel Core i7-9750H', '8 GB, DDR4, 2666 MHz', 'SSD 1000 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650 4 GB & Intel UHD Graphics 630', 'Windows 10', 25990000, '7.jpg', 5, 0),
(48, 2, 'Laptop Lenovo IdeaPad Flex 5 14ARE05 R7 4700U', 'AMD Ryzen 7-4700U', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '14\", 1920 x 1080 Pixel', 'AMD Radeon Graphics Vega 6', 'Windows 10', 18790000, '8.jpg', 5, 0),
(49, 2, 'Laptop Lenovo IdeaPad Slim 3 15IIL05 i5 1035G1', 'Intel Core i5-1035G1', '8 GB, DDR4, 2666 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'Intel UHD Graphics', 'Windows 10', 15290000, '9.jpg', 5, 0),
(50, 2, 'Laptop Lenovo IdeaPad Gaming 3 15ARH05 R5 4600H', 'AMD Ryzen 5-4600H', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel', 'NVIDIA GeForce GTX 1650 4 GB & AMD Radeon Graphics', 'Windows 10', 19290000, '10.jpg', 5, 0),
(56, 6, 'Laptop Dell XPS 13 9310 i5 ', 'Intel Core i5-1135G7', '8 GB, LPDDR4, 4266 MHz', 'SSD 256 GB', '13.4\", 1920 x 1080 Pixel, WVA, 60 Hz, 400 nits, LED-backlit', 'Intel Iris Xe Graphics', 'Windows 10', 40790000, 'mt12.jpg', 10, 0),
(57, 6, 'Laptop Lenovo IdeaPad Gaming 3 15ARH05 R5 4600H', 'AMD Ryzen 5-4600H', '8 GB, DDR4, 3200 MHz', 'SSD 512 GB', '15.6\", 1920 x 1080 Pixel, IPS, 120 Hz, 250 nits, IPS LCD LED Backlit, True Tone', 'NVIDIA GeForce GTX 1650 4 GB & AMD Radeon Graphics', 'Windows 10', 19290000, '10.jpg', 10, 0),
(58, 6, 'MacBook Pro 13\" 2020 Touch Bar M1 256GB', 'Apple M1', '8 GB, LPDDR4', 'SSD 256 GB', '13.3\", 2560 x 1600 Pixel, IPS, IPS LCD LED Backlit, True Tone', 'Apple M1 GPU 8 nhân', 'Mac OS', 32890000, 'mb5.jpg', 10, 0),
(59, 6, 'Asus Zenbook UX425EA BM069T i5', 'Intel Core i5-1135G7', '8 GB, LPDDR4, 4266 MHz', 'SSD 512 GB', '14.0\", 1920 x 1080 Pixel, IPS, 60 Hz, 300 nits, Anti-glare LED-backlit', 'Intel Iris Xe Graphics', 'Windows 10', 22999000, 'a3.jpg', 10, 0),
(60, 6, 'Laptop HP 15s du2049TX i3 1005G1', 'Intel Core i3-1005G1', '4 GB, DDR4, 2666 MHz', 'SSD 256 GB', '15.6\", 1366 x 768 Pixel, SVA, 60 Hz, 220 nits, Micro-edge WLED-backlit', 'NVIDIA GeForce MX130 2 GB & Intel UHD Graphics', 'Windows 10', 12890000, 'hp11.jpg', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phanloai`
--

CREATE TABLE `phanloai` (
  `maloai` int(10) NOT NULL,
  `tenloai` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phanloai`
--

INSERT INTO `phanloai` (`maloai`, `tenloai`) VALUES
(1, 'HP'),
(2, 'LENOVO'),
(3, 'DELL'),
(4, 'ASUS'),
(5, 'MACBOOK'),
(6, 'SẢN PHẨM NỔI BẬC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD KEY `idadmin` (`idadmin`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`idchitiethoadon`),
  ADD KEY `idhoadon` (`idhoadon`),
  ADD KEY `idmaytinh` (`idmaytinh`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `makh` (`makh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `maytinh`
--
ALTER TABLE `maytinh`
  ADD PRIMARY KEY (`mamt`),
  ADD KEY `maloai` (`maloai`);

--
-- Indexes for table `phanloai`
--
ALTER TABLE `phanloai`
  ADD PRIMARY KEY (`maloai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `idchitiethoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `maytinh`
--
ALTER TABLE `maytinh`
  MODIFY `mamt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `phanloai`
--
ALTER TABLE `phanloai`
  MODIFY `maloai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`idadmin`) REFERENCES `maytinh` (`mamt`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`idhoadon`) REFERENCES `hoadon` (`mahd`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`idmaytinh`) REFERENCES `maytinh` (`mamt`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Constraints for table `maytinh`
--
ALTER TABLE `maytinh`
  ADD CONSTRAINT `maytinh_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `phanloai` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
