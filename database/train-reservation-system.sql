-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2026 lúc 03:30 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `train-reservation-system`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `Id` bigint(20) NOT NULL,
  `InvoiceNo` bigint(20) DEFAULT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `trainId` bigint(20) DEFAULT NULL,
  `trainName` varchar(225) DEFAULT NULL,
  `bookingDate` date DEFAULT NULL,
  `travelDate` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `totalMember` int(11) DEFAULT NULL,
  `ticketPrice` varchar(225) DEFAULT NULL,
  `totalAmount` varchar(225) DEFAULT NULL,
  `Status` varchar(225) DEFAULT NULL,
  `created_by` varchar(225) DEFAULT NULL,
  `modified_by` varchar(225) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT NULL,
  `modified_datetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`Id`, `InvoiceNo`, `Name`, `trainId`, `trainName`, `bookingDate`, `travelDate`, `adult`, `child`, `totalMember`, `ticketPrice`, `totalAmount`, `Status`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 1000001, 'Imelda Ramirez', 1, 'Cecilia Ayala', '1970-01-01', '1970-01-01', 3, 2, 5, '2500', '7500', 'Booked', 'qamizekev', 'qamizekev', '2021-11-22 09:09:23', '2021-11-22 09:09:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `train`
--

CREATE TABLE `train` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `trainNO` varchar(225) DEFAULT NULL,
  `rate` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fromcity` varchar(225) DEFAULT NULL,
  `tocity` varchar(225) DEFAULT NULL,
  `maxSeat` varchar(225) DEFAULT NULL,
  `created_by` varchar(225) DEFAULT NULL,
  `modified_by` varchar(225) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT NULL,
  `modified_datetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `train`
--

INSERT INTO `train` (`Id`, `Name`, `trainNO`, `rate`, `date`, `fromcity`, `tocity`, `maxSeat`, `created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Cecilia Ayala', '1010101', '2500', '1970-01-01', 'Consectetur voluptas', 'xdfbfdsv', '36', 'Admin123', 'Admin123', '2021-11-20 03:43:04', '2021-11-20 03:43:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `train_type`
--

CREATE TABLE `train_type` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `Description` varchar(1500) DEFAULT NULL,
  `Created_by` varchar(225) DEFAULT NULL,
  `modified_by` varchar(225) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT NULL,
  `modified_datetime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `train_type`
--

INSERT INTO `train_type` (`Id`, `Name`, `Description`, `Created_by`, `modified_by`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Rajdhani Express', 'Rajdhani Express trains connect the national capital, New Delhi to various state capitals or the largest cities of several states.', 'Admin123', 'Admin123', '2021-10-26 01:50:43', '2021-10-26 01:50:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `Id` bigint(20) NOT NULL,
  `NAME` varchar(225) DEFAULT NULL,
  `USER_NAME` varchar(225) DEFAULT NULL,
  `PASSWORD` varchar(225) DEFAULT NULL,
  `EMAIL` varchar(225) DEFAULT NULL,
  `CONTACT_NO` varchar(225) DEFAULT NULL,
  `GENDER` varchar(225) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ROLE_ID` bigint(20) DEFAULT NULL,
  `ROLE_NAME` varchar(225) DEFAULT NULL,
  `CREATED_BY` varchar(225) DEFAULT NULL,
  `MODIFIED_BY` varchar(225) DEFAULT NULL,
  `CREATED_DATETIME` timestamp NULL DEFAULT NULL,
  `MODIFIED_DATETIME` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`Id`, `NAME`, `USER_NAME`, `PASSWORD`, `EMAIL`, `CONTACT_NO`, `GENDER`, `DOB`, `ROLE_ID`, `ROLE_NAME`, `CREATED_BY`, `MODIFIED_BY`, `CREATED_DATETIME`, `MODIFIED_DATETIME`) VALUES
(1, 'Margaret Albert', 'Admin123', '321', 'pugyqo@mailinator.com', '9685456585', 'Female', '1997-10-10', 1, 'User', 'root', 'root', '2021-10-23 01:46:07', '2021-10-23 01:46:07'),
(2, 'Imelda Ramirez', 'qamizekev', 'Pa$$w0rd!', 'welyros@mailinator.com', '9685456586', NULL, '2021-11-23', 2, 'User', 'root', 'root', '2021-11-22 07:49:28', '2021-11-22 07:49:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `train_type`
--
ALTER TABLE `train_type`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
