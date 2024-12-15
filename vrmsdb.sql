-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 07:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vrmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktb`
--

CREATE TABLE `feedbacktb` (
  `fullname` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacktb`
--

INSERT INTO `feedbacktb` (`fullname`, `phone`, `email`, `message`) VALUES
('Reuben Serrao', 9380057445, 'reubenserrao48@gmail.com', 'i love cars');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898911, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-03-24 06:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookingcar`
--

CREATE TABLE `tblbookingcar` (
  `ID` int(10) NOT NULL,
  `VehicleID` varchar(20) DEFAULT NULL,
  `Userid` varchar(20) NOT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Location` mediumtext DEFAULT NULL,
  `BookingDate` varchar(120) DEFAULT NULL,
  `ReturnDate` varchar(120) DEFAULT NULL,
  `BookingNumber` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `TotalCost` varchar(120) NOT NULL,
  `Remark` varchar(120) NOT NULL,
  `Status` varchar(120) NOT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbookingcar`
--

INSERT INTO `tblbookingcar` (`ID`, `VehicleID`, `Userid`, `FullName`, `Email`, `MobileNumber`, `Location`, `BookingDate`, `ReturnDate`, `BookingNumber`, `CreationDate`, `TotalCost`, `Remark`, `Status`, `RemarkDate`) VALUES
(11, '1', '9', 'Clyde Charles', 'clyde420@gmail.com', 7348933764, 'Mangalore', '2024-03-29', '2024-04-04', '213483376', '2024-03-24 06:37:29', '3000', 'Booking confirmed', 'Approved', NULL),
(12, '1', '9', 'Clyde Charles', 'clyde420@gmail.com', 7348933764, 'mffg', '2024-05-29', '2024-05-31', '393853832', '2024-03-28 07:19:47', '1000', 'booked', 'Approved', NULL),
(13, '2', '9', 'Clyde Charles', 'clyde420@gmail.com', 7348933764, 'managlore', '2024-06-28', '2024-06-30', '233936217', '2024-04-12 06:22:36', '1200', 'Approved', 'Approved', NULL),
(14, '1', '10', 'Reuben Serrao', 'reubenserrao48@gmail.com', 9380057445, 'Mangalore', '2024-06-01', '2024-06-06', '493377469', '2024-04-12 14:40:54', '', '', '', NULL),
(15, '6', '9', 'Clyde Charles', 'clyde420@gmail.com', 7348933764, 'Mangaluru', '2024-05-13', '2024-04-23', '212735688', '2024-04-29 03:50:56', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookingtwowheeler`
--

CREATE TABLE `tblbookingtwowheeler` (
  `ID` int(10) NOT NULL,
  `VehicleID` varchar(20) DEFAULT NULL,
  `Userid` varchar(20) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Location` mediumtext DEFAULT NULL,
  `BookingDate` varchar(120) DEFAULT NULL,
  `ReturnDate` varchar(120) DEFAULT NULL,
  `BookingNumber` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `TotalCost` varchar(120) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(120) NOT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbookingtwowheeler`
--

INSERT INTO `tblbookingtwowheeler` (`ID`, `VehicleID`, `Userid`, `FullName`, `Email`, `MobileNumber`, `Location`, `BookingDate`, `ReturnDate`, `BookingNumber`, `CreationDate`, `TotalCost`, `Remark`, `Status`, `RemarkDate`) VALUES
(8, '2', '9', 'Clyde Charles', 'clyde420@gmail.com', 7348933764, 'vamanjoor', '2024-04-29', '2024-05-05', '175014608', '2024-03-26 17:39:38', '1200', 'gwwg', 'Approved', NULL),
(9, '1', '9', 'Clyde Charles', 'clyde420@gmail.com', 7348933764, 'valencia', '2024-03-28', '2024-03-30', '189510081', '2024-03-28 02:59:51', '1000', 'Booked', 'Approved', NULL),
(10, '2', '9', 'Clyde Charles', 'clyde420@gmail.com', 7348933764, 'mangalore', '2024-05-31', '2025-05-31', '596497136', '2024-03-28 07:28:18', '73000', 'confrim', 'Approved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

CREATE TABLE `tblbrand` (
  `ID` int(10) NOT NULL,
  `BrandName` varchar(200) DEFAULT NULL,
  `BrandLogo` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`ID`, `BrandName`, `BrandLogo`, `CreationDate`) VALUES
(1, 'Honda', '55ccf27d26d7b23839986b6ae2e447ab.jpg', '2024-03-24 06:00:01'),
(3, 'Bajaj', '7fdc1a630c238af0815181f9faa190f5.jpg', '2024-03-24 06:01:11'),
(4, 'Yamaha', '5c642ec854a6a92a56d7ebf0b9648eea.jpg', '2024-03-24 06:03:11'),
(5, 'TVS', 'c26be60cfd1ba40772b5ac48b95ab19b.png', '2024-03-24 06:05:26'),
(6, 'Mahindra', 'b64810fde7027715e614449aff1d595f.png', '2024-03-24 06:07:20'),
(7, 'Hyundai', '37e2b52f19da778fba43ab3c1897f840.png', '2024-03-24 06:09:39'),
(8, 'Renault', 'e76de47f621d84adbab3266e3239baee.png', '2024-03-24 06:10:08'),
(10, 'Skoda', '4389d9b5e3ba297410a11afc0b8e101b.png', '2024-03-24 06:12:11'),
(11, 'Maruti Suzuki', '1f868f31d7bb9b00f86cad27759faf95.png', '2024-03-24 06:13:16'),
(13, 'Toyoto', '2122001dca390ac45fd38a57fa8c51ea.png', '2024-03-24 06:20:10'),
(16, 'Tata', 'f63e5c9371f271d353977bea0fdc62c5jpeg', '2024-04-27 04:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(50) DEFAULT NULL,
  `UpdateDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `UpdateDate`) VALUES
(1, 'Two Wheeler', '2019-09-17 11:18:40'),
(2, 'Four Wheeler', '2019-09-17 11:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<font color=\"#444444\" face=\"arial\"><span style=\"font-size: 14px;\">We at Jeevika Rentals provide high-quality service to the ones looking for reliable cars and motorcycle and it’s quite easy and convenient to rent a car or a bike for travel.Currently, we offer bikes and cars on rent , we are here to come up with your passion for riding with our whole new range of bikes and cars up on rent and enjoy with our best services. We provide high-quality service to everyone who is looking for reliable car and motorcycle rentals. . We are very reasonable and provide bikes at very affordable cost. You can enjoy our services.</span></font><br>', NULL, NULL, '2024-04-12 14:15:09'),
(2, 'contactus', 'Contact Us', 'Saptagiri Complex, Kavoor, Mangaluru 575015', 'jeevika@gmail.com', 8073820583, '2024-03-22 15:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `dlno` int(25) DEFAULT NULL,
  `dlphoto` varchar(25) DEFAULT NULL,
  `aadhar` varchar(25) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `dlno`, `dlphoto`, `aadhar`, `Password`, `RegDate`) VALUES
(8, 'Daniel', 'Austin', 'danausty@gmail.com', 1234567891, 0, '', NULL, 'b007a74ec8744744fdcef9335995a7e3', '2024-03-24 06:33:39'),
(9, 'Clyde', 'Charles', 'clyde420@gmail.com', 7348933764, 1234567891, '37427_Hyundai_Verna_2017-', '1234 1234 1234', '1a26a35b4d9884d706fa64e5b5868efa', '2024-03-24 06:35:02'),
(10, 'Reuben', 'Serrao', 'reubenserrao48@gmail.com', 9380057445, 0, '', NULL, '35fc7094500b59432b300c4dd1cb2230', '2024-04-12 14:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `VehicleName` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `RentalPrice` varchar(120) DEFAULT NULL,
  `VehicleModel` varchar(120) DEFAULT NULL,
  `VehicleDescription` mediumtext DEFAULT NULL,
  `SeatingCapacity` int(10) NOT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Image1` varchar(200) DEFAULT NULL,
  `Image2` varchar(200) DEFAULT NULL,
  `Image3` varchar(200) DEFAULT NULL,
  `Image4` varchar(200) DEFAULT NULL,
  `Image5` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`ID`, `CategoryName`, `BrandName`, `VehicleName`, `RegistrationNumber`, `RentalPrice`, `VehicleModel`, `VehicleDescription`, `SeatingCapacity`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `CreationDate`) VALUES
(4, 'Two Wheeler', 'TVS', 'Jupiter', 'KA 19 EM 2134', '500', '2022', 'TVS Jupiter is a mileage scooter available in 7 variants and 17 colours. The TVS Jupiter is powered by 109.7cc BS6 engine which develops a power of 7.77 bhp and a torque of 8.8 Nm. With both front and rear drum brakes, TVS Jupiter comes up with combined braking system of both wheels. This Jupiter scooter weighs 107 kg and has a fuel tank capacity of 5.8 liters.', 2, 'bdc05097fef09c69c5eccaeb9abab1ba1714193157jpeg', 'a228fa8b0be1d6b0b0334f229e4b52c31714193157jpeg', '44400960b311555145362f696a783ec21714193157webp', 'e05ebf1067f6d3516b35957ae7b3bbca1714193157jpeg', '6860787407ae9809046a94f4961804471714193157.jpg', 'd7f93536086c5791d34c86d2112dd0f21714193157.jpg', '2024-04-27 04:45:57'),
(5, 'Two Wheeler', 'TVS', 'Apache RTR', 'KA 19 EL 2341', '800', '2020', 'TVS Apache RTR 160 is a street bike available in 3 variants and 5 colours. The TVS Apache RTR 160 is powered by 159.7cc BS6 engine which develops a power of 15.82 bhp and a torque of 13.85 Nm. With both front and rear disc brakes, TVS Apache RTR 160 comes up with anti-locking braking system. This Apache RTR 160 bike weighs 138 kg and has a fuel tank capacity of 12 liters.', 2, 'ecee780b3bb41594e495bbd29651aad51714193466.png', 'c2e519933616a94f8d04b9d02a910de01714193466.jpg', '1155998f17cda8a8220a7a6800b54e131714193466.jpg', '42904420f02803d1df76f374a37b8c301714193466.jpg', 'c6e11c07baf3be620847cfaa144a260f1714193466.jpg', '94c62e119aecaccde0870ded588265821714193466.jpg', '2024-04-27 04:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehiclecar`
--

CREATE TABLE `tblvehiclecar` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `BrandName` varchar(120) DEFAULT NULL,
  `VehicleName` varchar(200) DEFAULT NULL,
  `RegistrationNumber` varchar(100) DEFAULT NULL,
  `RentalPrice` varchar(50) DEFAULT NULL,
  `VehicleModel` varchar(50) DEFAULT NULL,
  `VehicleDescription` mediumtext DEFAULT NULL,
  `SeatingCapacity` int(10) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `Fuel` varchar(50) DEFAULT NULL,
  `Doors` varchar(50) DEFAULT NULL,
  `GearBox` varchar(50) DEFAULT NULL,
  `AirCondition` varchar(50) DEFAULT NULL,
  `ABS` varchar(50) DEFAULT NULL,
  `AirBags` varchar(50) DEFAULT NULL,
  `Bluetooth` varchar(50) DEFAULT NULL,
  `CarKit` varchar(50) DEFAULT NULL,
  `GPS` varchar(50) DEFAULT NULL,
  `Music` varchar(50) DEFAULT NULL,
  `CenterLocking` varchar(50) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `Image1` varchar(120) DEFAULT NULL,
  `Image2` varchar(120) DEFAULT NULL,
  `Image3` varchar(120) DEFAULT NULL,
  `Image4` varchar(120) DEFAULT NULL,
  `Image5` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehiclecar`
--

INSERT INTO `tblvehiclecar` (`ID`, `CategoryName`, `BrandName`, `VehicleName`, `RegistrationNumber`, `RentalPrice`, `VehicleModel`, `VehicleDescription`, `SeatingCapacity`, `Class`, `Fuel`, `Doors`, `GearBox`, `AirCondition`, `ABS`, `AirBags`, `Bluetooth`, `CarKit`, `GPS`, `Music`, `CenterLocking`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `CreationDate`) VALUES
(5, 'Four Wheeler', 'Maruti Suzuki', 'Alto 800', 'KA 19 MA 3241', '1200', '2020', 'Maruti Alto 800 is a 4 seater Hatchback with the last recorded price of Rs. 3.25 - 5.12 Lakh. It is available in 10 variants, 796 cc engine option and 1 transmission option : Manual. Other key specifications of the Alto 800 include a ground clearance of 160 mm. and The Alto 800 is available in 6 colours. Maruti Alto 800 mileage ranges from 22.03 kmpl to 26.8 kmpl.', 4, '4', 'Petrol', '4', '5', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '1eaa8f28e0e642f805808e74b6d837531714190568.jpg', 'f61a4a3b56b11ec190226d6c4299089b1714190568webp', 'b34ada347c7a24250ad9a2bb40f3aa6e1714190568jpeg', '30ef949b616b1ca6449774e5dca0bd6e1714190568.jpg', 'efb1ef4231c62cfcddd525d0446101611714190568jpeg', '16fa88afdb9878d8bfde32ab764719051714190568jpeg', '2024-04-27 04:02:48'),
(6, 'Four Wheeler', 'Maruti Suzuki', 'Alto k10', 'KA19 WA 1243', '1300', '2019', '\"The Maruti Alto K10 has 1 Petrol Engine and 1 CNG Engine on offer. The Petrol engine is 998 cc while the CNG engine is 998 cc . It is available with Manual & Automatic transmission.Depending upon the variant and fuel type the Alto K10 has a mileage of 24.39 kmpl to 33.85 km/kg . The Alto K10 is a 4 seater 3 cylinder car and has length of 3530 mm, width of 1490 mm and a wheelbase of 2740 mm\"', 4, '3', 'Petrol', '4', '5', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '7714fdecaafae3ed0a16d99267c808301714190889.png', '7714fdecaafae3ed0a16d99267c808301714190889.png', '8175cd571a94940965fc722243a8e07b1714190889.jpg', '8cc9dc64676e691ffc762a07b9956e6a1714190889.png', '9884a65c1f1fd6e8416fe25593f1e82e1714190889jpeg', '16fa88afdb9878d8bfde32ab764719051714190889jpeg', '2024-04-27 04:08:09'),
(7, 'Four Wheeler', 'Renault', 'Kwid', 'KA 19 ME 1213', '1400', '2021', 'The price of Renault Kwid, a 5 seater Hatchback, ranges from Rs. 4.70 - 6.45 Lakh. It is available in 9 variants, with an engine of 999 cc and a choice of 2 transmissions: Manual and Automatic. Kwid has an NCAP rating of 1 stars and comes with 2 airbags. Renault Kwid has a ground clearance of 184 mm and is available in 10 colours. Users have reported a mileage of 21.7 to 22 kmpl for Kwid.', 5, '4', 'Petrol', '4', '5', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '46f3695fb11380390e519b3c946a1ef11714191529.png', '44ccdcc230673cb9040ecd1ad40ed4661714191529.png', 'c565964832f11ec9f214f8bdfdf5afb51714191529.png', '44ccdcc230673cb9040ecd1ad40ed4661714191529.png', '80fef5280e095aca27ae14b1403a7da81714191529.png', 'e5d3e7521187c69dad9c3527141fa3a71714191529.png', '2024-04-27 04:18:49'),
(8, 'Four Wheeler', 'Tata', 'Altroz', 'KA19 VU 2412', '2000', '2022', 'The price of Tata Altroz, a 5 seater Hatchback, ranges from Rs. 6.65 - 10.80 Lakh. It is available in 33 variants, with engine options ranging from 1199 to 1497 cc and a choice of 2 transmissions: Manual and Automatic. Altroz has an NCAP rating of 5 stars and comes with 2 airbags. Tata Altroz has a ground clearance of 165 mm and is available in 6 colours. Users have reported a mileage of 19.14 to 26.2 kmpl for Altroz.', 5, '5', 'Petrol', '4', '5', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '42098c4a488faa7afb2f66603c84e6851714192030.jpg', '53ffb3b52c83d1438235f2d5228f628d1714192030.jpg', '1d868574d207d8d83c041d74bf0bff301714192030.jpg', '07b373859376725941b0c0a88d56d4441714192030jpeg', '1d868574d207d8d83c041d74bf0bff301714192030.jpg', '07b373859376725941b0c0a88d56d4441714192030jpeg', '2024-04-27 04:27:10'),
(9, 'Four Wheeler', 'Hyundai', 'Venue', 'KA 19 EL 2380', '2500', '2022', 'The price of Hyundai Venue, a 5 seater Compact SUV, ranges from Rs. 7.94 - 13.48 Lakh. It is available in 24 variants, with engine options ranging from 998 to 1493 cc and a choice of 2 transmissions: Manual and Automatic. Venue comes with 6 airbags. Hyundai Venue has a ground clearance of 195 mm and is available in 7 colours. Users have reported a mileage of 17.5 to 23.4 kmpl for Venue.', 5, '5', 'Petrol', '4', '5', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '865b06be00af2b54bd162a8f0a29694e1714192478.jpg', '99693dd3750ee24b91d5197f0c5e30261714192478webp', 'e6b5332dac624085977ad52c0f89e44c1714192478.jpg', '0be3756a144781dbe607549f8f80af4a1714192478jpeg', 'd4fc9a9d9054959b70c4d040fd4d0cfb1714192478jpeg', '4bf25a7617ed52a9a25a324b1a1c6db31714192478jpeg', '2024-04-27 04:34:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookingcar`
--
ALTER TABLE `tblbookingcar`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookingtwowheeler`
--
ALTER TABLE `tblbookingtwowheeler`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbrand`
--
ALTER TABLE `tblbrand`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BrandName` (`BrandName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvehiclecar`
--
ALTER TABLE `tblvehiclecar`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbookingcar`
--
ALTER TABLE `tblbookingcar`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbookingtwowheeler`
--
ALTER TABLE `tblbookingtwowheeler`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbrand`
--
ALTER TABLE `tblbrand`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehiclecar`
--
ALTER TABLE `tblvehiclecar`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
