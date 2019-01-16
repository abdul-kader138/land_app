-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2019 at 06:37 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `land_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `sma_addresses`
--

CREATE TABLE `sma_addresses` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `line1` varchar(50) NOT NULL,
  `line2` varchar(50) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustments`
--

CREATE TABLE `sma_adjustments` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text,
  `attachment` varchar(55) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustments`
--

INSERT INTO `sma_adjustments` (`id`, `date`, `reference_no`, `warehouse_id`, `note`, `attachment`, `created_by`, `updated_by`, `updated_at`, `count_id`) VALUES
(1, '2018-03-31 12:22:00', 'PR/2018/03/0001', 1, '', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_adjustment_items`
--

CREATE TABLE `sma_adjustment_items` (
  `id` int(11) NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_adjustment_items`
--

INSERT INTO `sma_adjustment_items` (`id`, `adjustment_id`, `product_id`, `option_id`, `quantity`, `warehouse_id`, `serial_no`, `type`) VALUES
(1, 1, 12215, NULL, '100.0000', 1, '', 'addition');

-- --------------------------------------------------------

--
-- Table structure for table `sma_bills`
--

CREATE TABLE `sma_bills` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `mobile_number` varchar(13) NOT NULL,
  `usage_amount` varchar(100) NOT NULL,
  `dues` varchar(100) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `year` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `ceiling_amount` varchar(100) DEFAULT NULL,
  `reference_no` varchar(100) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_bills`
--

INSERT INTO `sma_bills` (`id`, `employee_id`, `operator_id`, `mobile_number`, `usage_amount`, `dues`, `created_by`, `year`, `month`, `start_date`, `end_date`, `created_date`, `ceiling_amount`, `reference_no`, `package_id`, `company_id`, `designation_id`) VALUES
(4391, 'Maniruzzaman', 64, '1907488028', ' 182.87 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 24, 465),
(4392, 'PG000448', 64, '1907488001', ' 424.65 ', '124.65', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 27, 430),
(4393, 'PG000249', 64, '1907488020', ' 100.09 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 29, 353),
(4394, 'Unknown05', 64, '1907488021', ' 16.08 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 29, 353),
(4395, 'PNFP000018', 64, '1907488026', ' 207.61 ', '7.61', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 29, 353),
(4396, 'PG000362', 64, '1907488027', ' 135.45 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '150', '2018_April_64_13', 13, 29, 353),
(4397, 'PG000225', 64, '1907488015', ' 154.58 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 11, 353),
(4398, 'PG000239', 64, '1907488017', ' 108.86 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 27, 353),
(4399, 'Unknown04', 64, '1907488018', ' 172.70 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 27, 398),
(4400, 'PEL000037', 64, '1907488000', ' 681.33 ', '181.33', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 44, 373),
(4401, 'PG000054', 64, '1907488002', ' 300.14 ', '0.13999999999999', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 11, 353),
(4402, 'PG000236', 64, '1907488003', ' 237.76 ', '37.76', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 14, 353),
(4403, 'PG000328', 64, '1907488005', ' 46.83 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '150', '2018_April_64_13', 13, 12, 353),
(4404, 'PG000059', 64, '1907488006', ' 156.95 ', '6.95', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '150', '2018_April_64_13', 13, 13, 353),
(4405, 'PG000182', 64, '1907488008', ' 192.66 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 13, 353),
(4406, 'PG000058', 64, '1907488010', ' 120.40 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '150', '2018_April_64_13', 13, 14, 353),
(4407, 'PG000218', 64, '1907488013', ' 104.45 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 11, 353),
(4408, 'PG000289', 64, '1907488016', ' 72.08 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 27, 353),
(4409, 'PPLF000014', 64, '1907488019', ' 313.60 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 11, 369),
(4410, 'PG000117', 64, '1907488022', ' 13.27 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 29, 353),
(4411, 'RFL000016', 64, '1907488004', ' 97.21 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 32, 338),
(4412, 'PG000057', 64, '1907488007', ' 139.31 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '150', '2018_April_64_13', 13, 13, 353),
(4413, 'PG000191', 64, '1907488029', ' 45.20 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 11, 526),
(4414, 'BCH00002', 64, '1996332255', ' 63.51 ', '13.51', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '50', '2018_April_64_13', 13, 20, 356),
(4415, 'PPLF000017', 64, '1904118550', ' 249.25 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 11, 336),
(4416, 'PPLF000015', 64, '1904118551', ' 132.18 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 11, 336),
(4417, 'PPLF000029', 64, '1904118554', ' 305.93 ', '5.93', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 11, 340),
(4418, 'PPLF000071', 64, '1904118555', ' 847.18 ', '47.18', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '800', '2018_April_64_13', 13, 11, 324),
(4419, 'PG000358', 64, '1904118556', ' 406.48 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '700', '2018_April_64_13', 13, 32, 524),
(4420, 'MPC000007', 64, '1904118557', ' 226.23 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 36, 546),
(4421, 'PPLF000050', 64, '1904118553', ' 298.78 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 11, 339),
(4422, 'RPL000015', 64, '1944466227', ' 272.07 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 31, 426),
(4423, 'MPC000004', 64, '1944466228', ' 275.70 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 36, 399),
(4424, 'PG000255', 64, '1944466229', ' 682.45 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '1000', '2018_April_64_13', 13, 16, 430),
(4425, 'PG000445', 64, '1944466225', ' 746.01 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '1500', '2018_April_64_13', 13, 22, 452),
(4426, 'DPC000013', 64, '1944466230', ' 410.53 ', '110.53', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 24, 399),
(4427, 'PG000090', 64, '1944466231', ' 99.74 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 11, 345),
(4428, 'PPLH000042', 64, '1944466232', ' 181.53 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 16, 337),
(4429, 'PPLF000068', 64, '1944466234', ' 242.01 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 34, 536),
(4430, 'PG000349', 64, '1944466236', ' 409.30 ', '109.3', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 31, 519),
(4431, 'UDF000002', 64, '1944466237', ' 68.35 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 18, 442),
(4432, 'PG000172', 64, '1944466238', ' 453.10 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 14, 396),
(4433, 'PG000335', 64, '1944466239', ' 188.68 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 21, 636),
(4434, 'JFL000042', 64, '1944466240', ' 633.22 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '1000', '2018_April_64_13', 13, 14, 404),
(4435, 'PG000373', 64, '1944466241', ' 171.57 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 17, 440),
(4436, 'PG000388', 64, '1944466242', ' 428.44 ', '128.44', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 20, 448),
(4437, 'PG000393', 64, '1944466243', ' 514.10 ', '14.1', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 11, 343),
(4438, 'PG000376', 64, '1944466246', ' 250.59 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 11, 338),
(4439, 'PG000450-2', 64, '1928228822', ' 148.02 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 21, 450),
(4440, 'PPLF000009', 64, '1926673901', ' 428.65 ', '128.65', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 11, 373),
(4441, 'PFL000006', 64, '1926673902', ' 80.75 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 12, 444),
(4442, 'PG000068', 64, '1926673903', ' 319.91 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '1000', '2018_April_64_13', 13, 13, 447),
(4443, 'CFL000026', 64, '1926673904', ' 199.25 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 13, 333),
(4444, 'PG000005', 64, '1926673905', ' 384.00 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '800', '2018_April_64_13', 13, 14, 330),
(4445, 'PG000065', 64, '1926673906', ' 249.96 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 14, 335),
(4446, 'PG000013', 64, '1926673910', ' 404.51 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '900', '2018_April_64_13', 13, 16, 428),
(4447, 'PPLH000004', 64, '1926673964', ' 464.18 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 16, 423),
(4448, 'RFL000013', 64, '1926673900', ' 95.04 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 32, 340),
(4449, 'JFL000029', 64, '1926673907', ' 985.94 ', '485.94', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 14, 338),
(4450, 'JFL000018', 64, '1926673908', ' 365.17 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 14, 413),
(4451, 'JFL000017', 64, '1926673909', ' 620.43 ', '20.43', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '600', '2018_April_64_13', 13, 14, 376),
(4452, 'PG000070', 64, '1926673963', ' 388.58 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '1000', '2018_April_64_13', 13, 16, 395),
(4453, 'PPLH000003', 64, '1926673966', ' 30.89 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '400', '2018_April_64_13', 13, 16, 427),
(4454, 'PPLH000022', 64, '1926673968', ' 218.90 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 16, 429),
(4455, 'PG000045', 64, '1933002261', ' 203.78 ', '3.78', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 16, 434),
(4456, 'JFL000030', 64, '1933002262', ' 295.21 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '600', '2018_April_64_13', 13, 14, 453),
(4457, 'PEL000036', 64, '1926673911', ' 164.07 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 40, 570),
(4458, 'PEL000002', 64, '1926673912', ' 135.37 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 40, 560),
(4459, 'PEL000029', 64, '1926673914', ' 359.70 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 30, 337),
(4460, 'PEL000035', 64, '1926673915', ' 651.87 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '1000', '2018_April_64_13', 13, 44, 573),
(4461, 'PG000285', 64, '1926673916', ' 295.19 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 20, 447),
(4462, 'PG000097 (1)', 64, '1926673922', ' 353.26 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '2000', '2018_April_64_13', 13, 11, 319),
(4463, 'PG000036', 64, '1926673923', ' 28.12 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 29, 502),
(4464, 'CCL000002', 64, '1926673924', ' 214.08 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 23, 469),
(4465, 'PPLH000035', 64, '1926673925', ' 230.54 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 23, 426),
(4466, 'DPC000006', 64, '1926673926', ' 99.64 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 24, 462),
(4467, 'DPC000011', 64, '1926673927', ' 78.25 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '200', '2018_April_64_13', 13, 24, 463),
(4468, 'RFL000017', 64, '1926673928', ' 75.18 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 32, 340),
(4469, 'PCL000012', 64, '1926673933', ' 188.45 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 34, 433),
(4470, 'PG000108', 64, '1926673934', ' 675.36 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '800', '2018_April_64_13', 13, 31, 639),
(4471, 'PG000140', 64, '1926673935', ' 608.39 ', '108.39', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 31, 504),
(4472, 'PG000233', 64, '1926673936', ' 452.81 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 31, 396),
(4473, 'RPL000008', 64, '1926673937', ' 222.45 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 31, 475),
(4474, 'PPLC000006', 64, '1926673938', ' 74.05 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 33, 333),
(4475, 'PG000107', 64, '1926673940', ' 205.94 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '600', '2018_April_64_13', 13, 38, 419),
(4476, 'PCL000006', 64, '1926673942', ' 354.60 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 34, 534),
(4477, 'PG000105', 64, '1926673944', ' 463.39 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 11, 339),
(4478, 'PCL000008', 64, '1926673945', ' 442.94 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 34, 538),
(4479, 'MPC000001', 64, '1926673947', ' 259.12 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 36, 533),
(4480, 'PG000027', 64, '1926673948', ' 829.71 ', '29.71', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '800', '2018_April_64_13', 13, 37, 556),
(4481, 'PPFL000013', 64, '1926673949', ' 122.95 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 37, 561),
(4482, 'PPLH000019', 64, '1926673950', ' 268.27 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 16, 410),
(4483, 'PG000026', 64, '1926673951', ' 423.58 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '800', '2018_April_64_13', 13, 12, 373),
(4484, 'PG000029', 64, '1926673952', ' 464.90 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 16, 431),
(4485, 'PG000071', 64, '1926673954', ' 618.48 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '1000', '2018_April_64_13', 13, 24, 395),
(4486, 'PG000018', 64, '1926673955', ' 579.17 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '700', '2018_April_64_13', 13, 33, 333),
(4487, 'PG000137', 64, '1926673956', ' 652.07 ', '152.07', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 13, 392),
(4488, 'PG000019', 64, '1926673957', ' 240.16 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 13, 333),
(4489, 'PG000196', 64, '1926673958', ' 311.42 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '500', '2018_April_64_13', 13, 14, 406),
(4490, 'PG000023', 64, '1926673959', ' 496.27 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '600', '2018_April_64_13', 13, 11, 373),
(4491, 'FF000042', 64, '1926673960', ' 47.61 ', '0', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 33, 632),
(4492, 'PG000207', 64, '1926673961', ' 631.03 ', '331.03', NULL, '2018', 'April', '2018-11-01', '2018-12-10', NULL, '300', '2018_April_64_13', 13, 29, 503);

-- --------------------------------------------------------

--
-- Table structure for table `sma_brands`
--

CREATE TABLE `sma_brands` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_brands`
--

INSERT INTO `sma_brands` (`id`, `code`, `name`, `image`) VALUES
(1, '', 'Intel', ''),
(2, '', 'Artic Silver', ''),
(3, '', 'Gateway', ''),
(6, '', 'Kingston', ''),
(7, '', 'Promounts', ''),
(8, '', 'Lacie', ''),
(9, '', 'HP', ''),
(10, '', 'Nuimpact', ''),
(11, '', 'Bestar', ''),
(12, '', 'Philips', ''),
(13, '', 'Ridata', ''),
(14, '', 'Verbatim', ''),
(15, '', 'TaiyoYuden', ''),
(16, '', 'TP-LINK', ''),
(17, '', 'Lexmark', ''),
(18, '', 'Canon', ''),
(19, '', 'Lenovo', ''),
(20, '', 'Dell', ''),
(21, '', 'Tenda', ''),
(22, '', 'Vinpower', ''),
(23, '', 'LG', ''),
(24, '', 'Samsung', ''),
(25, '', 'Panasonic', ''),
(26, '', 'Sony', ''),
(27, '', 'Kaspersky', ''),
(28, '', 'Norton', ''),
(29, '', 'MICROSOFT', ''),
(30, '', 'Asus', ''),
(31, '', 'Saphire', ''),
(32, '', 'eVGA', ''),
(33, '', 'MODCOM INTERNAL', ''),
(34, '', 'Vantec', ''),
(35, '', 'WD', ''),
(36, '', 'Thermal take', ''),
(37, '', 'Trendnet', ''),
(38, '', 'IBM', ''),
(39, '', 'Seagate', ''),
(40, '', 'Olympus', ''),
(41, '', 'Archos', ''),
(42, '', 'Toshiba', ''),
(44, '', 'OCZ', ''),
(45, '', 'TechCraft', ''),
(46, '', 'American Power Conversion', ''),
(47, '', 'Fujiflim', ''),
(48, '', 'DLINK', ''),
(49, '', 'Creative', ''),
(50, '', 'Mr.Ram', ''),
(51, '', 'APC', ''),
(52, '', 'CJ', ''),
(54, '', 'Gigabyte', ''),
(55, '', 'Patriot', ''),
(56, '', 'VTECH', ''),
(57, '', 'Fuji', ''),
(58, 'G1', 'General', NULL),
(59, 'Test', 'Test', NULL),
(60, 'xsdfdaf', 'fsdfsd111111111', 'd55b50a3e604c551d1a457d353480065.png');

-- --------------------------------------------------------

--
-- Table structure for table `sma_calendar`
--

CREATE TABLE `sma_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_calendar`
--

INSERT INTO `sma_calendar` (`id`, `title`, `description`, `start`, `end`, `color`, `user_id`) VALUES
(1, 'test app.', 'test app. ', '2017-04-03 08:00:00', '2017-04-04 04:00:00', '#3a87ad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_captcha`
--

CREATE TABLE `sma_captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_categories`
--

CREATE TABLE `sma_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(55) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_categories`
--

INSERT INTO `sma_categories` (`id`, `code`, `name`, `image`, `parent_id`) VALUES
(665, 'G1', 'General', NULL, 0),
(666, 'a1', 'a11', NULL, 665),
(668, 'xcvxv', 'xcxvxcv', NULL, 665),
(669, 'rrr', 'ffadfad', NULL, 0),
(670, 'xcbxcb', 'cxvcxbxbxcbx', NULL, 669);

-- --------------------------------------------------------

--
-- Table structure for table `sma_combo_items`
--

CREATE TABLE `sma_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_combo_items`
--

INSERT INTO `sma_combo_items` (`id`, `product_id`, `item_code`, `quantity`, `unit_price`) VALUES
(7, 27199, '48395', '1.0000', '220.0000'),
(8, 27199, '48398', '1.0000', '450.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_companies`
--

CREATE TABLE `sma_companies` (
  `id` int(11) NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `group_name` varchar(20) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer_group_name` varchar(100) DEFAULT NULL,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vat_no` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `credit_limit` int(100) DEFAULT NULL,
  `credit_term` int(100) DEFAULT NULL,
  `invoice_footer` text,
  `payment_term` int(11) DEFAULT '0',
  `logo` varchar(255) DEFAULT 'logo.png',
  `award_points` int(11) DEFAULT '0',
  `deposit_amount` decimal(25,4) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL,
  `price_group_name` varchar(50) DEFAULT NULL,
  `vat_reg` varchar(200) DEFAULT NULL,
  `gst_reg` varchar(200) DEFAULT NULL,
  `credit_enjoy_days` int(10) DEFAULT '0',
  `customer_credit_limit` decimal(13,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_companies`
--

INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `credit_limit`, `credit_term`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `vat_reg`, `gst_reg`, `credit_enjoy_days`, `customer_credit_limit`) VALUES
(4, 4, 'supplier', 0, '', '1st CHOICE WIRELESS  ', '1st CHOICE WIRELESS  ', '', '825 DENISON ST.UNIT 25   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(5, 4, 'supplier', 0, '', '2512295 ONTARIO INC.  ', '2512295 ONTARIO INC.  ', '', '1515 MATHESON BLVD. EAST   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, ' Thank you for shopping with us. Please come again', 0, 'header_logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(6, 4, 'supplier', 0, '', '2M ELETRONICS  ', '2M ELETRONICS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(7, 4, 'supplier', 0, '', '3D DOME', '3D DOME', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(8, 4, 'supplier', 0, '', 'A-1 WIRELESS INC  ', 'A-1 WIRELESS INC  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(9, 4, 'supplier', 0, '', 'A1 ELECTRONICS PARTS  ', 'A1 ELECTRONICS PARTS  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(10, 4, 'supplier', 0, '', 'ACCUSONIC CORPORATION  ', 'ACCUSONIC CORPORATION  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(11, 4, 'supplier', 0, '', 'Advance Computer  ', 'Advance Computer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(12, 4, 'supplier', 0, '', 'Advance Depot Service  ', 'Advance Depot Service  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(13, 4, 'supplier', 0, '', 'ADVANCED SKYLINE TECHNOLOGY LTD  ', 'ADVANCED SKYLINE TECHNOLOGY LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(14, 4, 'supplier', 0, '', 'AKICC CORPORATION  ', 'AKICC CORPORATION  ', '', '470 McNicoll Ave   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(15, 4, 'supplier', 0, '', 'ALC Micro  ', 'ALC Micro  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(16, 4, 'supplier', 0, '', 'ALI  ', 'ALI  ', '', '.   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(17, 4, 'supplier', 0, '', 'Allway Technologies Ontario  ', 'Allway Technologies Ontario  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(18, 4, 'supplier', 0, '', 'Amazon.ca', 'Amazon.ca', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(19, 4, 'supplier', 0, '', 'ANIL GUPTA  ', 'ANIL GUPTA  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(20, 4, 'supplier', 0, '', 'ANIXTER CANADA INC  ', 'ANIXTER CANADA INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(21, 4, 'supplier', 0, '', 'Antec Trade & IT Consulting Inc.  ', 'Antec Trade & IT Consulting Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(22, 4, 'supplier', 0, '', 'Apple Service Depot  ', 'Apple Service Depot  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(23, 4, 'supplier', 0, '', 'ASI  ', 'ASI  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(24, 4, 'supplier', 0, '', 'AST  ', 'AST  ', '', '.   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(25, 4, 'supplier', 0, '', 'AURORA LIGHTING TECHNOLOGIES INC  ', 'AURORA LIGHTING TECHNOLOGIES INC  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(26, 4, 'supplier', 0, '', 'Battey Lots  ', 'Battey Lots  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(27, 4, 'supplier', 0, '', 'BAUER SYSTEMS INC  ', 'BAUER SYSTEMS INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(28, 4, 'supplier', 0, '', 'Bell Micro Canada  ', 'Bell Micro Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(29, 4, 'supplier', 0, '', 'BENACO SALES  ', 'BENACO SALES  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(30, 4, 'supplier', 0, '', 'Best 4 Less  ', 'Best 4 Less  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(31, 4, 'supplier', 0, '', 'BEST BUY  ', 'BEST BUY  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(32, 4, 'supplier', 0, '', 'Bluestar Canada  ', 'Bluestar Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(33, 4, 'supplier', 0, '', 'BROTHER CANADA  ', 'BROTHER CANADA  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(34, 4, 'supplier', 0, '', 'C & C Imaging Supply  ', 'C & C Imaging Supply  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(35, 4, 'supplier', 0, '', 'C JAY  ', 'C JAY  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(36, 4, 'supplier', 0, '', 'C.J COMPUTER  ', 'C.J COMPUTER  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(37, 4, 'supplier', 0, '', 'C.J Computers  ', 'C.J Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(38, 4, 'supplier', 0, '', 'Call Center Products  ', 'Call Center Products  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(39, 4, 'supplier', 0, '', 'Canada Cell Phone Accessories  ', 'Canada Cell Phone Accessories  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(40, 4, 'supplier', 0, '', 'CANADA COMPUTERS  ', 'CANADA COMPUTERS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(41, 4, 'supplier', 0, '', 'CANADA TOP SYSTEM INC.  ', 'CANADA TOP SYSTEM INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(42, 4, 'supplier', 0, '', 'Cartridgeone.Ca  ', 'Cartridgeone.Ca  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(43, 4, 'supplier', 0, '', 'CASH & CARRY', 'CASH & CARRY', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(44, 4, 'supplier', 0, '', 'Cash & Carry (Daniel)  ', 'Cash & Carry (Daniel)  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(45, 4, 'supplier', 0, '', 'CASH & CARRY (FSW)  ', 'CASH & CARRY (FSW)  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(46, 4, 'supplier', 0, '', 'CASH & CARRY (HELEN)', 'CASH & CARRY (HELEN)', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(47, 4, 'supplier', 0, '', 'Cash & Carry (Immy)  ', 'Cash & Carry (Immy)  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(48, 4, 'supplier', 0, '', 'Cash & Carry (Ken)  ', 'Cash & Carry (Ken)  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(49, 4, 'supplier', 0, '', 'CASH & CARRY (QUAD SOURCE)  ', 'CASH & CARRY (QUAD SOURCE)  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(50, 4, 'supplier', 0, '', 'Cash & Carry (Steven)  ', 'Cash & Carry (Steven)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(51, 4, 'supplier', 0, '', 'CASH & CARRY (YR)  ', 'CASH & CARRY (YR)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(52, 4, 'supplier', 0, '', 'Cash & Carry Fred  ', 'Cash & Carry Fred  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(53, 4, 'supplier', 0, '', 'Cash & Carry Infinity Cellphone  ', 'Cash & Carry Infinity Cellphone  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(54, 4, 'supplier', 0, '', 'CASH & CURRY ENCORE  ', 'CASH & CURRY ENCORE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(55, 4, 'supplier', 0, '', 'Cash and Carry  ', 'Cash and Carry  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(56, 4, 'supplier', 0, '', 'Cash and Carry (Stephen)  ', 'Cash and Carry (Stephen)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(57, 4, 'supplier', 0, '', 'CASH AND CARRY (UCOM)  ', 'CASH AND CARRY (UCOM)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(58, 4, 'supplier', 0, '', 'CASH AND CARRY BLUETECH  ', 'CASH AND CARRY BLUETECH  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(59, 4, 'supplier', 0, '', 'cash and carry canada cell phone  ', 'cash and carry canada cell phone  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(60, 4, 'supplier', 0, '', 'CASH AND CARRY CJ  ', 'CASH AND CARRY CJ  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(61, 4, 'supplier', 0, '', 'Cash and Carry Comgear  ', 'Cash and Carry Comgear  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(62, 4, 'supplier', 0, '', 'Cash and Carry David  ', 'Cash and Carry David  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(63, 4, 'supplier', 0, '', 'Cash and Carry Ganesh  ', 'Cash and Carry Ganesh  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(64, 4, 'supplier', 0, '', 'Cash and Carry GC Cell phones  ', 'Cash and Carry GC Cell phones  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(65, 4, 'supplier', 0, '', 'Cash And Carry Jacoob  ', 'Cash And Carry Jacoob  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(66, 4, 'supplier', 0, '', 'Cash and Carry Ming  ', 'Cash and Carry Ming  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(67, 4, 'supplier', 0, '', 'Cash and Carry SKL  ', 'Cash and Carry SKL  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(68, 4, 'supplier', 0, '', 'Cash and Carry Techzone  ', 'Cash and Carry Techzone  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(69, 4, 'supplier', 0, '', 'CASH AND CARRY UCOM  ', 'CASH AND CARRY UCOM  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(70, 4, 'supplier', 0, '', 'Cash and Carry Vincent  ', 'Cash and Carry Vincent  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(71, 4, 'supplier', 0, '', 'Cbk  ', 'Cbk  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(72, 4, 'supplier', 0, '', 'CBK COMPUTER INC.  ', 'CBK COMPUTER INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(73, 4, 'supplier', 0, '', 'CCTV DIRECT  ', 'CCTV DIRECT  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(74, 4, 'supplier', 0, '', 'CDI Computer Dealers Inc.  ', 'CDI Computer Dealers Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(75, 4, 'supplier', 0, '', 'CDW CANADA  ', 'CDW CANADA  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(76, 4, 'supplier', 0, '', 'Cell Phone Supplier  ', 'Cell Phone Supplier  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(77, 4, 'supplier', 0, '', 'CELLPHONE  ', 'CELLPHONE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(78, 4, 'supplier', 0, '', 'Cellphone Cash & Carry  ', 'Cellphone Cash & Carry  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(79, 4, 'supplier', 0, '', 'Chestwood Distributerss  ', 'Chestwood Distributerss  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(80, 4, 'supplier', 0, '', 'Circa Metals  ', 'Circa Metals  ', '', '   206 Great Gulf Dr      ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(81, 4, 'supplier', 0, '', 'CJ LAPTOP    ', 'CJ LAPTOP    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(82, 4, 'supplier', 0, '', 'CNB Computers Inc.  ', 'CNB Computers Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(83, 4, 'supplier', 0, '', 'ComGears Tech  ', 'ComGears Tech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(84, 4, 'supplier', 0, '', 'COMing Computers Inc.  ', 'COMing Computers Inc.  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(85, 4, 'supplier', 0, '', 'Compugen  ', 'Compugen  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(86, 4, 'supplier', 0, '', 'Computer Plug  ', 'Computer Plug  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(87, 4, 'supplier', 0, '', 'Computer Ultra  ', 'Computer Ultra  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(88, 4, 'supplier', 0, '', 'Comtech  ', 'Comtech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(89, 4, 'supplier', 0, '', 'CONCORD  ', 'CONCORD  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(90, 4, 'supplier', 0, '', 'Consumer Computer Services Inc  ', 'Consumer Computer Services Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(91, 4, 'supplier', 0, '', 'COSTCO  ', 'COSTCO  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(92, 4, 'supplier', 0, '', 'CR House technology Inc.   ', 'CR House technology Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(93, 4, 'supplier', 0, '', 'Critical Data recovery Lab Inc.   ', 'Critical Data recovery Lab Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(94, 4, 'supplier', 0, '', 'CWO  ', 'CWO  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(95, 4, 'supplier', 0, '', 'D&H  ', 'D&H  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(96, 4, 'supplier', 0, '', 'DAIWA    ', 'DAIWA    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(97, 4, 'supplier', 0, '', 'DAIWA DISTRIBUTION  ', 'DAIWA DISTRIBUTION  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(98, 4, 'supplier', 0, '', 'De Lage  ', 'De Lage  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(99, 4, 'supplier', 0, '', 'DE LAGE LANDEN FINANCIAL SERVICES  ', 'DE LAGE LANDEN FINANCIAL SERVICES  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(100, 4, 'supplier', 0, '', 'Dell  ', 'Dell  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(101, 4, 'supplier', 0, '', 'DENSI  ', 'DENSI  ', '', '1100 RUE PARENT ST; BRUNO; QC   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(102, 4, 'supplier', 0, '', 'Double D promotion   ', 'Double D promotion   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(103, 4, 'supplier', 0, '', 'DURNERGY INC.', 'DURNERGY INC.', '', '11-270 ESNA PARK DR.  MARKHAM   ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(104, 4, 'supplier', 0, '', 'EBAY', 'EBAY', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(105, 4, 'supplier', 0, '', 'ECHO ACCOUNTING  ', 'ECHO ACCOUNTING  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(106, 4, 'supplier', 0, '', 'ECP CANADA PLUS  ', 'ECP CANADA PLUS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(107, 4, 'supplier', 0, '', 'ELCO SYSTEMS (CANADA)  ', 'ELCO SYSTEMS (CANADA)  ', '', '90 Gough Road; Unit#2   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(108, 4, 'supplier', 0, '', 'Electronic Brain Ltd.  ', 'Electronic Brain Ltd.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(109, 4, 'supplier', 0, '', 'Electronics For Less  ', 'Electronics For Less  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(110, 4, 'supplier', 0, '', 'ELinktech Inc.  ', 'ELinktech Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(111, 4, 'supplier', 0, '', 'ELITECOM  ', 'ELITECOM  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(112, 4, 'supplier', 0, '', 'ENCORE CELLULAR INC.  ', 'ENCORE CELLULAR INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(113, 4, 'supplier', 0, '', 'ENVIRONMENTAL HANDLING FEE  ', 'ENVIRONMENTAL HANDLING FEE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(114, 4, 'supplier', 0, '', 'EPROM COMPUTER SYSTEMS  ', 'EPROM COMPUTER SYSTEMS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(115, 4, 'supplier', 0, '', 'EPROM INC.  ', 'EPROM INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(116, 4, 'supplier', 0, '', 'Etone    ', 'Etone    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(117, 4, 'supplier', 0, '', 'EZ SELECTION.CA  ', 'EZ SELECTION.CA  ', '', '61 TELSON RD;   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(118, 4, 'supplier', 0, '', 'EZITECH TRADING  ', 'EZITECH TRADING  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(119, 4, 'supplier', 0, '', 'FILTECH COMPUTERS    ', 'FILTECH COMPUTERS    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(120, 4, 'supplier', 0, '', 'Fotune Computers  ', 'Fotune Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(121, 4, 'supplier', 0, '', 'FTC Computers  ', 'FTC Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(122, 4, 'supplier', 0, '', 'Fujitech  ', 'Fujitech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(123, 4, 'supplier', 0, '', 'GAMATO MARKETING  ', 'GAMATO MARKETING  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(124, 4, 'supplier', 0, '', 'GB MICRO ELECTRONICS INC  ', 'GB MICRO ELECTRONICS INC  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(125, 4, 'supplier', 0, '', 'GE Capital  ', 'GE Capital  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(126, 4, 'supplier', 0, '', 'GE Finance  ', 'GE Finance  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(127, 4, 'supplier', 0, '', 'Generic  Supplier  ', 'Generic  Supplier  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(128, 4, 'supplier', 0, '', 'Generic Distributor  ', 'Generic Distributor  ', '', '.   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(129, 4, 'supplier', 0, '', 'GENPOS  ', 'GENPOS  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(130, 4, 'supplier', 0, '', 'GenTek  ', 'GenTek  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(131, 4, 'supplier', 0, '', 'Global Electronics  ', 'Global Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', 'martin.thecareygroup@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(132, 4, 'supplier', 0, '', 'GLOBAL SOURCE PRODUCTS INC.  ', 'GLOBAL SOURCE PRODUCTS INC.  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(133, 4, 'supplier', 0, '', 'GP Battery Marketing Inc  ', 'GP Battery Marketing Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(134, 4, 'supplier', 0, '', 'GPA  ', 'GPA  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(135, 4, 'supplier', 0, '', 'Great Results in Canada  ', 'Great Results in Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(136, 4, 'supplier', 0, '', 'GTA Quality Supply  ', 'GTA Quality Supply  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(137, 4, 'supplier', 0, '', 'GTA WIRELESS    ', 'GTA WIRELESS    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(138, 4, 'supplier', 0, '', 'H & I TRADING INC  ', 'H & I TRADING INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(139, 4, 'supplier', 0, '', 'HD TV  ', 'HD TV  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(140, 4, 'supplier', 0, '', 'HELEN  ', 'HELEN  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(141, 4, 'supplier', 0, '', 'HIGH POINT LASER PRODUCTS    ', 'HIGH POINT LASER PRODUCTS    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(142, 4, 'supplier', 0, '', 'HIGHPOINT LASER  ', 'HIGHPOINT LASER  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(143, 4, 'supplier', 0, '', 'Hitech Bay  ', 'Hitech Bay  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(144, 4, 'supplier', 0, '', 'Hitech Direct', 'Hitech Direct', '', '314A College Street  Toronto 04 M5S 2K2 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(145, 4, 'supplier', 0, '', 'HomeVision Technology  ', 'HomeVision Technology  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(146, 4, 'supplier', 0, '', 'IBM Global Service  ', 'IBM Global Service  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(147, 4, 'supplier', 0, '', 'Icube Canada  ', 'Icube Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(148, 4, 'supplier', 0, '', 'idevmanager  ', 'idevmanager  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(149, 4, 'supplier', 0, '', 'iFIXthat2  ', 'iFIXthat2  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(150, 4, 'supplier', 0, '', 'IFUL  ', 'IFUL  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(151, 4, 'supplier', 0, '', 'Immy  ', 'Immy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(152, 4, 'supplier', 0, '', 'INFINITE CABLES  ', 'INFINITE CABLES  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(153, 4, 'supplier', 0, '', 'Infinity Cellphone Accessories  ', 'Infinity Cellphone Accessories  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(154, 4, 'supplier', 0, '', 'INGRAM MICRO  ', 'INGRAM MICRO  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(155, 4, 'supplier', 0, '', 'INNSYS  ', 'INNSYS  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(156, 4, 'supplier', 0, '', 'INTERAD/864884 ONTARIO INC', 'INTERAD/864884 ONTARIO INC', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(157, 4, 'supplier', 0, '', 'Iserve Inc  ', 'Iserve Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(158, 4, 'supplier', 0, '', 'ISERVER  ', 'ISERVER  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(159, 4, 'supplier', 0, '', 'It Sales Canada  ', 'It Sales Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(160, 4, 'supplier', 0, '', 'ITCD CANADA  ', 'ITCD CANADA  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(161, 4, 'supplier', 0, '', 'Itemnet International Inc  ', 'Itemnet International Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(162, 4, 'supplier', 0, '', 'JC-TORONTO CANADA INC  ', 'JC-TORONTO CANADA INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(163, 4, 'supplier', 0, '', 'JESSE THOMAS  ', 'JESSE THOMAS  ', '', '16 McBrien Court; Whitby; On   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(164, 4, 'supplier', 0, '', 'Jiancheng trade LTD  ', 'Jiancheng trade LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(165, 4, 'supplier', 0, '', 'JIHAN TRADING INC  ', 'JIHAN TRADING INC  ', '', '77 Finch Ave East Toronto         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(166, 4, 'supplier', 0, '', 'K.K. Company  ', 'K.K. Company  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(167, 4, 'supplier', 0, '', 'Kazi  ', 'Kazi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(168, 4, 'supplier', 0, '', 'KEESOON INC  ', 'KEESOON INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(169, 4, 'supplier', 0, '', 'Keshutech  ', 'Keshutech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(170, 4, 'supplier', 0, '', 'KJ Distribution  ', 'KJ Distribution  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(171, 4, 'supplier', 0, '', 'KK COMPANY    ', 'KK COMPANY    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(172, 4, 'supplier', 0, '', 'KKM ELECTRONIC GROUP  ', 'KKM ELECTRONIC GROUP  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(173, 4, 'supplier', 0, '', 'KORTRONIX INC.  ', 'KORTRONIX INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(174, 4, 'supplier', 0, '', 'LACIE CANADA  ', 'LACIE CANADA  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(175, 4, 'supplier', 0, '', 'Laptop Pro  ', 'Laptop Pro  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(176, 4, 'supplier', 0, '', 'LAPTOPS FOR LESS INC  ', 'LAPTOPS FOR LESS INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(177, 4, 'supplier', 0, '', 'LCD Masters Inc  ', 'LCD Masters Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(178, 4, 'supplier', 0, '', 'LENOVO  ', 'LENOVO  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(179, 4, 'supplier', 0, '', 'Lenovo Canada  ', 'Lenovo Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(180, 4, 'supplier', 0, '', 'LEOCOS DEGITAL TECHNOLOGY  ', 'LEOCOS DEGITAL TECHNOLOGY  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(181, 4, 'supplier', 0, '', 'LIATA COMPUTER  ', 'LIATA COMPUTER  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(182, 4, 'supplier', 0, '', 'LINK COMPUTER (CANADA) LTD.  ', 'LINK COMPUTER (CANADA) LTD.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(183, 4, 'supplier', 0, '', 'Linktech  ', 'Linktech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(184, 4, 'supplier', 0, '', 'LOGIC RETAIL  ', 'LOGIC RETAIL  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(185, 4, 'supplier', 0, '', 'Longtech  ', 'Longtech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(186, 4, 'supplier', 0, '', 'LONGTECH COMP    ', 'LONGTECH COMP    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(187, 4, 'supplier', 0, '', 'MAC SOLUTION  ', 'MAC SOLUTION  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(188, 4, 'supplier', 0, '', 'Magic Jack  ', 'Magic Jack  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(189, 4, 'supplier', 0, '', 'MagicLink Canada  ', 'MagicLink Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(190, 4, 'supplier', 0, '', 'MANTRONIC  ', 'MANTRONIC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(191, 4, 'supplier', 0, '', 'MAX MAX    ', 'MAX MAX    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(192, 4, 'supplier', 0, '', 'Media  ', 'Media  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(193, 4, 'supplier', 0, '', 'MEDIA CANADA TECHNOLOGIES  ', 'MEDIA CANADA TECHNOLOGIES  ', '', '2; 270 ESNA PARK DRIVE;    .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(194, 4, 'supplier', 0, '', 'MegaDisc Store  ', 'MegaDisc Store  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(195, 4, 'supplier', 0, '', 'Merchants Canada  ', 'Merchants Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(196, 4, 'supplier', 0, '', 'Merchants Canada Inc.  ', 'Merchants Canada Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(197, 4, 'supplier', 0, '', 'Micropeer Solutions INC  ', 'Micropeer Solutions INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(198, 4, 'supplier', 0, '', 'Millennium 3000  ', 'Millennium 3000  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(199, 4, 'supplier', 0, '', 'Mimobile  ', 'Mimobile  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(200, 4, 'supplier', 0, '', 'MINA JAVA IMPORTS INC.  ', 'MINA JAVA IMPORTS INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(201, 4, 'supplier', 0, '', 'MINI-MICRO  ', 'MINI-MICRO  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(202, 4, 'supplier', 0, '', 'MMAX  ', 'MMAX  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(203, 4, 'supplier', 0, '', 'MMAX GROUP (CANADA ) INC  ', 'MMAX GROUP (CANADA ) INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(204, 4, 'supplier', 0, '', 'MMNOX CANADA  ', 'MMNOX CANADA  ', '', 'UNIT 12; 205 CLAYTON DRIVE   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(205, 4, 'supplier', 0, '', 'MOBILICITY    ', 'MOBILICITY    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(206, 4, 'supplier', 0, '', 'Modcom Computers', 'Modcom Computers', '', '281 College Street  Toronto 04 M5T 1R9 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(207, 4, 'supplier', 0, '', 'MODCOM DISTRIBUTOR  ', 'MODCOM DISTRIBUTOR  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(208, 4, 'supplier', 0, '', 'Modcom IT Solutions', 'Modcom IT Solutions', '', '7310 Woodbine Ave.  Unit 6  Markham 04 L3R1A4 Canada', 'Toronto', 'Ont.', '', 'Canada', '', 'sales@modcom.ca', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(209, 4, 'supplier', 0, '', 'MODCOM SERVICE CENTER  ', 'MODCOM SERVICE CENTER  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(210, 4, 'supplier', 0, '', 'MOFI NETWORK INC  ', 'MOFI NETWORK INC  ', '', 'STRATHEARN AVENUE UNIT #12   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(211, 4, 'supplier', 0, '', 'Murex Technical Depot  ', 'Murex Technical Depot  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(212, 4, 'supplier', 0, '', 'Navaraj Thamalingham  ', 'Navaraj Thamalingham  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(213, 4, 'supplier', 0, '', 'Navaraj Tharmalingham  ', 'Navaraj Tharmalingham  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(214, 4, 'supplier', 0, '', 'NC Technologies Inc  ', 'NC Technologies Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(215, 4, 'supplier', 0, '', 'NEIGHBOURHOOD SAVINGS  ', 'NEIGHBOURHOOD SAVINGS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(216, 4, 'supplier', 0, '', 'NETLINK COMPUTER INC/NCIX.COM  ', 'NETLINK COMPUTER INC/NCIX.COM  ', '', '3215 Hwy 7 East         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(217, 4, 'supplier', 0, '', 'NEW AND USED SYSTEMS  ', 'NEW AND USED SYSTEMS  ', '', '   1202 FOX CRESCENT      ', 'Toronto', 'Ont.', '', 'Canada', '', 'manoharan.kengeswaran@intria.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(218, 4, 'supplier', 0, '', 'NewLink.Ca Inc.  ', 'NewLink.Ca Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(219, 4, 'supplier', 0, '', 'NORELCO SAFECAM  ', 'NORELCO SAFECAM  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(220, 4, 'supplier', 0, '', 'NUIMPACT  ', 'NUIMPACT  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(221, 4, 'supplier', 0, '', 'OCZ  ', 'OCZ  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(222, 4, 'supplier', 0, '', 'OES-1N60000210  ', 'OES-1N60000210  ', '', '.   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(223, 4, 'supplier', 0, '', 'OES    ', 'OES    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(224, 4, 'supplier', 0, '', 'Onix International Inc.  ', 'Onix International Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(225, 4, 'supplier', 0, '', 'ONLY BEST RATED  ', 'ONLY BEST RATED  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(226, 4, 'supplier', 0, '', 'Ontario Electronic Stewardship  ', 'Ontario Electronic Stewardship  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(227, 4, 'supplier', 0, '', 'OPTIMEDIA LABS  ', 'OPTIMEDIA LABS  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(228, 4, 'supplier', 0, '', 'ORFEI ELECTRONICS  ', 'ORFEI ELECTRONICS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(229, 4, 'supplier', 0, '', 'OTA BUSINESS CENTRE  ', 'OTA BUSINESS CENTRE  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(230, 4, 'supplier', 0, '', 'P.J.S Marketing  ', 'P.J.S Marketing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(231, 4, 'supplier', 0, '', 'PANDA SECURITY  ', 'PANDA SECURITY  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(232, 4, 'supplier', 0, '', 'PAPER DEPOT  ', 'PAPER DEPOT  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(233, 4, 'supplier', 0, '', 'PE  ', 'PE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(234, 4, 'supplier', 0, '', 'PEGASUS INTERNATIONAL LTD.  ', 'PEGASUS INTERNATIONAL LTD.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(235, 4, 'supplier', 0, '', 'Powernode Computers  ', 'Powernode Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(236, 4, 'supplier', 0, '', 'Powerone  ', 'Powerone  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(237, 4, 'supplier', 0, '', 'Premier Electoronic Parts Inc.  ', 'Premier Electoronic Parts Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(238, 4, 'supplier', 0, '', 'Prime Mounts  ', 'Prime Mounts  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(239, 4, 'supplier', 0, '', 'Pro Mount  ', 'Pro Mount  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(240, 4, 'supplier', 0, '', 'Proactive Event Marketing Inc.  ', 'Proactive Event Marketing Inc.  ', '', '1880 John F Kennedy Blvd.   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(241, 4, 'supplier', 0, '', 'Protek Canada  ', 'Protek Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(242, 4, 'supplier', 0, '', 'Quad Source  ', 'Quad Source  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(243, 4, 'supplier', 0, '', 'Rama Computers  ', 'Rama Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(244, 4, 'supplier', 0, '', 'RANJAN  ', 'RANJAN  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(245, 4, 'supplier', 0, '', 'RBL INC  ', 'RBL INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00');
INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `credit_limit`, `credit_term`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `vat_reg`, `gst_reg`, `credit_enjoy_days`, `customer_credit_limit`) VALUES
(246, 4, 'supplier', 0, '', 'RMA VENDOR  ', 'RMA VENDOR  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(247, 4, 'supplier', 0, '', 'Robertson Marketing  ', 'Robertson Marketing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(248, 4, 'supplier', 0, '', 'ROBERTSON MARKETING GROUP  ', 'ROBERTSON MARKETING GROUP  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(249, 4, 'supplier', 0, '', 'SABLE METAL FABRICATION INC.', 'SABLE METAL FABRICATION INC.', '', '430 STEELCASE ROAD EAST  MARKHAM 04  Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(250, 4, 'supplier', 0, '', 'SAMTRACK INC.  ', 'SAMTRACK INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(251, 4, 'supplier', 0, '', 'SANA DISTRIBUTORS  ', 'SANA DISTRIBUTORS  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(252, 4, 'supplier', 0, '', 'Sanson Solutions Inc.  ', 'Sanson Solutions Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(253, 4, 'supplier', 0, '', 'SEMTEX TRADING LLC  ', 'SEMTEX TRADING LLC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(254, 4, 'supplier', 0, '', 'SGS Computers  ', 'SGS Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(255, 4, 'supplier', 0, '', 'SHENA COMPUTER TECHNOLOGY  ', 'SHENA COMPUTER TECHNOLOGY  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(256, 4, 'supplier', 0, '', 'Sig Electronics  ', 'Sig Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(257, 4, 'supplier', 0, '', 'SKL CANADA INC.  ', 'SKL CANADA INC.  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(258, 4, 'supplier', 0, '', 'SmartEyes Direct Inc.  ', 'SmartEyes Direct Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(259, 4, 'supplier', 0, '', 'SN  ', 'SN  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(260, 4, 'supplier', 0, '', 'SN Traders  ', 'SN Traders  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(261, 4, 'supplier', 0, '', 'SOFTECH INC 2109971 ONTARIO INC  ', 'SOFTECH INC 2109971 ONTARIO INC  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(262, 4, 'supplier', 0, '', 'Softech Technologies Inc  ', 'Softech Technologies Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(263, 4, 'supplier', 0, '', 'SONAGGI COMPUTERS   ', 'SONAGGI COMPUTERS   ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(264, 4, 'supplier', 0, '', 'Sonam Computers  ', 'Sonam Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(265, 4, 'supplier', 0, '', 'Starcom Peripherals 2008 Inc  ', 'Starcom Peripherals 2008 Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(266, 4, 'supplier', 0, '', 'STARTECH.COM LTD  ', 'STARTECH.COM LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(267, 4, 'supplier', 0, '', 'Stereo Advantage  ', 'Stereo Advantage  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(268, 4, 'supplier', 0, '', 'SUNLIGHT CHINA  ', 'SUNLIGHT CHINA  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(269, 4, 'supplier', 0, '', 'SUPER TALENT TECH  ', 'SUPER TALENT TECH  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(270, 4, 'supplier', 0, '', 'Supercom Computers  ', 'Supercom Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(271, 4, 'supplier', 0, '', 'Synnex Canada  ', 'Synnex Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(272, 4, 'supplier', 0, '', 'TAAS Enterprice LTD  ', 'TAAS Enterprice LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(273, 4, 'supplier', 0, '', 'TAKNOLOGY CANADA INC', 'TAKNOLOGY CANADA INC', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(274, 4, 'supplier', 0, '', 'TalkTyme  ', 'TalkTyme  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(275, 4, 'supplier', 0, '', 'TANKOLOGY  (CANADA) INC.  ', 'TANKOLOGY  (CANADA) INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(276, 4, 'supplier', 0, '', 'TECH DATA  ', 'TECH DATA  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(277, 4, 'supplier', 0, '', 'Tech Data Engineers  ', 'Tech Data Engineers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(278, 4, 'supplier', 0, '', 'TECH ELECTRONIC SERVICES  ', 'TECH ELECTRONIC SERVICES  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(279, 4, 'supplier', 0, '', 'TEQTRONIX INTERNATIONAL INC.  ', 'TEQTRONIX INTERNATIONAL INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(280, 4, 'supplier', 0, '', 'The buddy system    ', 'The buddy system    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(281, 4, 'supplier', 0, '', 'The Computer Age  ', 'The Computer Age  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(282, 4, 'supplier', 0, '', 'Tiger Direct  ', 'Tiger Direct  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(283, 4, 'supplier', 0, '', 'Tom Enterprises Limited  ', 'Tom Enterprises Limited  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(284, 4, 'supplier', 0, '', 'TOMCOM  ', 'TOMCOM  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(285, 4, 'supplier', 0, '', 'TORTEL COMMUNICATION INC.  ', 'TORTEL COMMUNICATION INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(286, 4, 'supplier', 0, '', 'Total Return Solutions Corp  ', 'Total Return Solutions Corp  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(287, 4, 'supplier', 0, '', 'Ty Global Imports  ', 'Ty Global Imports  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(288, 4, 'supplier', 0, '', 'UCOM TRADING INC  ', 'UCOM TRADING INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(289, 4, 'supplier', 0, '', 'UNCLE BASSAM THE LIQUIDATOR INC  ', 'UNCLE BASSAM THE LIQUIDATOR INC  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(290, 4, 'supplier', 0, '', 'UniPro  ', 'UniPro  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(291, 4, 'supplier', 0, '', 'UNIQUE DISPLAY ELECTRONICS  ', 'UNIQUE DISPLAY ELECTRONICS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(292, 4, 'supplier', 0, '', 'UNISINO  ', 'UNISINO  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(293, 4, 'supplier', 0, '', 'UNYTOUCH', 'UNYTOUCH', '', '27 ARMTHORPE ROAD  BRAMPTON 04 L6T 5M4 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(294, 4, 'supplier', 0, '', 'VACWORKS  ', 'VACWORKS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(295, 4, 'supplier', 0, '', 'VANSON ELECTRONICS (CANADA)LTD    ', 'VANSON ELECTRONICS (CANADA)LTD    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(296, 4, 'supplier', 0, '', 'Vernon Technology Solutions  ', 'Vernon Technology Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(297, 4, 'supplier', 0, '', 'VINCENT  ', 'VINCENT  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(298, 4, 'supplier', 0, '', 'VINO TECHNOLOGY INC.  ', 'VINO TECHNOLOGY INC.  ', '', '75 Bamburgh Circle; Unit #423         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(299, 4, 'supplier', 0, '', 'VISION INVESTMENT GROUP  ', 'VISION INVESTMENT GROUP  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(300, 4, 'supplier', 0, '', 'VisionTech  ', 'VisionTech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(301, 4, 'supplier', 0, '', 'VISIONTEK  ', 'VISIONTEK  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(302, 4, 'supplier', 0, '', 'WESCO DISTRIBUTION CANADA  ', 'WESCO DISTRIBUTION CANADA  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(303, 4, 'supplier', 0, '', 'Wholesale Computers  ', 'Wholesale Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(304, 4, 'supplier', 0, '', 'WISDOM ELECTRONIC    ', 'WISDOM ELECTRONIC    ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(305, 4, 'supplier', 0, '', 'Wisdom Electronics INC.  ', 'Wisdom Electronics INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(306, 4, 'supplier', 0, '', 'Xds Electronics  ', 'Xds Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(307, 4, 'supplier', 0, '', 'YT  ', 'YT  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(308, 4, 'supplier', 0, '', 'ZEMEL HOLDING INC  ', 'ZEMEL HOLDING INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(309, 4, 'supplier', 0, '', 'Zenith Laser Plus Inc.  ', 'Zenith Laser Plus Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(310, 3, 'customer', 1, 'General', 'Tanveer Oils Ltd', 'Tanveer Oils Ltd', '', 'H-15,R-34,Gulshan-1,Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1787694479', 'tol@test.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, 2, 'Partner Price', NULL, NULL, NULL, '100.00'),
(311, 3, 'customer', 1, 'General', 'Others', 'Others', '', '05,Mohakhali C/A,Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1787688674', 'others@test.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 7, '5000.00'),
(312, 3, 'customer', 1, 'General', '1413870 Ontario Ltd.', '1413870 Ontario Ltd.', '', 'Mohakhali,', 'Toronto', 'Ont.', '', 'Canada', '1781870371', 'b@b.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 8, '40000.00'),
(313, 3, 'customer', 0, 'General', '1501351 ONTARIO INC (FREDDI)  ', '1501351 ONTARIO INC (FREDDI)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4169037493', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(314, 3, 'customer', 0, 'General', '1735929 Ontario Inc.  ', '1735929 Ontario Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(315, 3, 'customer', 0, 'General', '1759257 Ontarion Inc.   ', '1759257 Ontarion Inc.   ', '', 'Bur oak medical Center         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(316, 3, 'customer', 0, 'General', '1775616 Ontario  ', '1775616 Ontario  ', '', '1-1011 Gervard St. East M4M 1Z3         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00'),
(317, 3, 'customer', 0, 'General', '1784989 Ontario Inc  ', '1784989 Ontario Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00'),
(318, 3, 'customer', 0, 'General', '1798738 Ontario Inc O/a Kfc/tb  Ye  ', '1798738 Ontario Inc O/a Kfc/tb  Ye  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(319, 3, 'customer', 0, 'General', '1st Impression Creative & Design  ', '1st Impression Creative & Design  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416-712-8599  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(320, 3, 'customer', 0, 'General', '2160234 Ontario Inc  ', '2160234 Ontario Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(321, 3, 'customer', 0, 'General', '2185020 Ontario Inc  ', '2185020 Ontario Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(322, 3, 'customer', 0, 'General', '2313061 Ontario INC.  ', '2313061 Ontario INC.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(323, 3, 'customer', 0, 'General', '2386077 Ontario Inc  ', '2386077 Ontario Inc  ', '', '5B-20 Burk Oak Avenue   Markham On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(324, 3, 'customer', 0, 'General', '2419470 Ontario Ltd (Chatime Vaughan)  ', '2419470 Ontario Ltd (Chatime Vaughan)  ', '', '3175 Rutherford unit 31   Vaughan; On.      ', 'Toronto', 'Ont.', '', 'Canada', '4163204988', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(325, 3, 'customer', 1, 'General', 'Tanveer Oils Ltd', 'Tanveer Oils Ltd', '', 'H-15,R-34,Gulshan-1,Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1787694479', 'tol@test.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 0, '500000.00'),
(326, 3, 'customer', 0, 'General', '2456835 Ontario Inc.  ', '2456835 Ontario Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(327, 3, 'customer', 0, 'General', '2m Electronics  ', '2m Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(328, 3, 'customer', 0, 'General', '360 Video Surveillance  ', '360 Video Surveillance  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'randy@1st-impression.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(329, 3, 'customer', 0, 'General', '3D DOME', '3D DOME', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(330, 3, 'customer', 0, 'General', '4 Angels Trading  ', '4 Angels Trading  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '647-856-1179  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(331, 3, 'customer', 0, 'General', '525 Auto Sales  ', '525 Auto Sales  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(332, 3, 'customer', 0, 'General', '7310 Woodbine Ltd.   ', '7310 Woodbine Ltd.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(333, 3, 'customer', 0, 'General', '8071993 Canada Inc.  ', '8071993 Canada Inc.  ', '', '60 Boxwood Cres.   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(334, 3, 'customer', 0, 'General', '8378231 Canada inc.  ', '8378231 Canada inc.  ', '', '337 Eglinton Ave East   Toronto      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(335, 3, 'customer', 0, 'General', 'A List Consulting  ', 'A List Consulting  ', '', '   91 Muir Drive      ', 'Toronto', 'Ont.', '', 'Canada', '416-821-7927  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(336, 3, 'customer', 0, 'General', 'A.C. Radiography Inc.  ', 'A.C. Radiography Inc.  ', '', '60 Amber St. Unit 8         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(337, 3, 'customer', 1, 'General', 'Tanveer Oils Ltd', 'Tanveer Oils Ltd', '', 'H-15,R-34,Gulshan-1,Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1787694479', 'tol@test.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 7, '5000.00'),
(338, 3, 'customer', 0, 'General', 'A1inkrainbow Inc.  ', 'A1inkrainbow Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(339, 3, 'customer', 0, 'General', 'Aao Engineering  ', 'Aao Engineering  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(340, 3, 'customer', 0, 'General', 'Aaron Lerer  ', 'Aaron Lerer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(341, 3, 'customer', 0, 'General', 'Aaron Magee  ', 'Aaron Magee  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(342, 3, 'customer', 0, 'General', 'Aaron Trager  ', 'Aaron Trager  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(343, 3, 'customer', 0, 'General', 'Abdul Rahman  ', 'Abdul Rahman  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(344, 3, 'customer', 0, 'General', 'AC Fire Alarms  ', 'AC Fire Alarms  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(345, 3, 'customer', 0, 'General', 'Academy of Learning Brampton  ', 'Academy of Learning Brampton  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-488-5627  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(346, 3, 'customer', 0, 'General', 'ACE Taxi  ', 'ACE Taxi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(347, 3, 'customer', 0, 'General', 'Action Restauant Services  ', 'Action Restauant Services  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(348, 3, 'customer', 0, 'General', 'Acts News Network  ', 'Acts News Network  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(349, 3, 'customer', 0, 'General', 'Acuity Ads  ', 'Acuity Ads  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'bill@3ddomes.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(350, 3, 'customer', 0, 'General', 'Ad-check Promotion  ', 'Ad-check Promotion  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'sherwin_mtj@yahoo.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(351, 3, 'customer', 0, 'General', 'Add value International Inc.  ', 'Add value International Inc.  ', '', '501 Passmore Ave.   unit 33; Scarborough      ', 'Toronto', 'Ont.', '', 'Canada', '4163354716', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(352, 3, 'customer', 0, 'General', 'Advance Computer  ', 'Advance Computer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(353, 3, 'customer', 0, 'General', 'Advance Structural', 'Advance Structural', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(354, 3, 'customer', 0, 'General', 'Advanced Computer Systems  ', 'Advanced Computer Systems  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(355, 3, 'customer', 0, 'General', 'Advanced Tech Solutions Inc.  ', 'Advanced Tech Solutions Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(356, 3, 'customer', 0, 'General', 'Aetagan Arrivalndons  ', 'Aetagan Arrivalndons  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(357, 3, 'customer', 0, 'General', 'After Hours  ', 'After Hours  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(358, 3, 'customer', 0, 'General', 'Ahalya Kumaran  ', 'Ahalya Kumaran  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(359, 3, 'customer', 0, 'General', 'Ahmed  Mohamed  ', 'Ahmed  Mohamed  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(360, 3, 'customer', 0, 'General', 'AIM Tireshop  ', 'AIM Tireshop  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(361, 3, 'customer', 0, 'General', 'Air Trust Heating and Cooling Inc.  ', 'Air Trust Heating and Cooling Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(362, 3, 'customer', 0, 'General', 'Airnor Mechanical LTD  ', 'Airnor Mechanical LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(363, 3, 'customer', 0, 'General', 'Airone  ', 'Airone  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'radiographics@bellnet.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(364, 3, 'customer', 0, 'General', 'Ajay  ', 'Ajay  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(365, 3, 'customer', 0, 'General', 'Ajith Silva  ', 'Ajith Silva  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4165766341', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(366, 3, 'customer', 0, 'General', 'Alain Prioier  ', 'Alain Prioier  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(367, 3, 'customer', 0, 'General', 'Alan Bone  ', 'Alan Bone  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(368, 3, 'customer', 0, 'General', 'Alcon General Contruct Limited  ', 'Alcon General Contruct Limited  ', '', '1 Regeant St.   Richmond Hill      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(369, 3, 'customer', 0, 'General', 'Alex Dale  ', 'Alex Dale  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(370, 3, 'customer', 0, 'General', 'Alexander Sebastianpillai   ', 'Alexander Sebastianpillai   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9054172656', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(371, 3, 'customer', 0, 'General', 'Alexandre Novikov  ', 'Alexandre Novikov  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(372, 3, 'customer', 0, 'General', 'All Core Fitness  ', 'All Core Fitness  ', '', '461 Alden Road;   Markham On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(373, 3, 'customer', 0, 'General', 'Allan Ong  ', 'Allan Ong  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(374, 3, 'customer', 0, 'General', 'Almanic Canada  ', 'Almanic Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(375, 3, 'customer', 0, 'General', 'Alternative Thinking  ', 'Alternative Thinking  ', '', '   758 Bathurst st      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(376, 3, 'customer', 0, 'General', 'Alysco Enterprises  ', 'Alysco Enterprises  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(377, 3, 'customer', 0, 'General', 'Am Sales And Consulting  ', 'Am Sales And Consulting  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(378, 3, 'customer', 1, 'General', 'Tanveer Oils Ltd', 'Tanveer Oils Ltd', '', 'H-15,R-34,Gulshan-1,Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1787694479', 'tol@test.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 5, '100.00'),
(379, 3, 'customer', 0, 'General', 'Ami Electronics  ', 'Ami Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(380, 3, 'customer', 0, 'General', 'Ananthagopan  ', 'Ananthagopan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(381, 3, 'customer', 0, 'General', 'Andes Industries Canada Inc.  ', 'Andes Industries Canada Inc.  ', '', 'A-B-7880 Woodbine Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(382, 3, 'customer', 0, 'General', 'Andrew Garay  ', 'Andrew Garay  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4162299330', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(383, 3, 'customer', 0, 'General', 'Andy-european Furniture  ', 'Andy-european Furniture  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(384, 3, 'customer', 0, 'General', 'Angela Grogan  ', 'Angela Grogan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(385, 3, 'customer', 0, 'General', 'ANNA K SALON & SPA  ', 'ANNA K SALON & SPA  ', '', '1966 AVENUE ROAD      ', 'Toronto', 'Ont.', '', 'Canada', '4164826280', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(386, 3, 'customer', 0, 'General', 'ANT AUTO BODY  ', 'ANT AUTO BODY  ', '', '   35 COSENTINO DRIVE      ', 'Toronto', 'Ont.', '', 'Canada', '4166092503', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(387, 3, 'customer', 0, 'General', 'Antoney Laptop Export   ', 'Antoney Laptop Export   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(388, 3, 'customer', 0, 'General', 'Antonio Garate  ', 'Antonio Garate  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(389, 3, 'customer', 0, 'General', 'Apex Imaging Inc.  ', 'Apex Imaging Inc.  ', '', '2600 john St. Suite 126   markham; on.      ', 'Toronto', 'Ont.', '', 'Canada', '905-415-1918  ', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(390, 3, 'customer', 0, 'General', 'Aplle Creek  ', 'Aplle Creek  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(391, 3, 'customer', 0, 'General', 'Application On Networks  ', 'Application On Networks  ', '', '24 kNOTTY PINE TRAIL         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(392, 3, 'customer', 0, 'General', 'Aptei', 'Aptei', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(393, 3, 'customer', 0, 'General', 'Aptei  ', 'Aptei  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'sales@rayfang.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(394, 3, 'customer', 0, 'General', 'Aragon Building  Maintenance  ', 'Aragon Building  Maintenance  ', '', '55 Torbay Rd. Unit 6   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(395, 3, 'customer', 0, 'General', 'Araz Custom Cabinetary  ', 'Araz Custom Cabinetary  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'johnsonsmmcarpetcleaningservices@yahoo.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(396, 3, 'customer', 0, 'General', 'Ariaran  ', 'Ariaran  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'bala@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(397, 3, 'customer', 0, 'General', 'Arlyn (sathis)  ', 'Arlyn (sathis)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(398, 3, 'customer', 0, 'General', 'Arnold Rodrigues  ', 'Arnold Rodrigues  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'Bruce@TurnOnToronto.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(399, 3, 'customer', 0, 'General', 'Artaflex  ', 'Artaflex  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(400, 3, 'customer', 0, 'General', 'Artaflex Inc.  ', 'Artaflex Inc.  ', '', '174 West Beaver Creek   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '9057541048', 'rod49_yim@hotmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(401, 3, 'customer', 0, 'General', 'Artex Design Embroidery  ', 'Artex Design Embroidery  ', '', '1504-330 Alton Towers Cir.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'danny@addvalue.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(402, 3, 'customer', 0, 'General', 'Arthur MacEachern  ', 'Arthur MacEachern  ', '', '57 Winnipeg St.   Moncton; NB      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(403, 3, 'customer', 0, 'General', 'Artisan Classic Organ Inc.  ', 'Artisan Classic Organ Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(404, 3, 'customer', 0, 'General', 'Artisan Print Ltd.  ', 'Artisan Print Ltd.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(405, 3, 'customer', 0, 'General', 'Artworks Direct  ', 'Artworks Direct  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(406, 3, 'customer', 0, 'General', 'Assistive Technology Clinic  ', 'Assistive Technology Clinic  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'rchollier@yahoo.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(407, 3, 'customer', 0, 'General', 'Associated Tube Canada  ', 'Associated Tube Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(408, 3, 'customer', 0, 'General', 'Associated Tube Industry  ', 'Associated Tube Industry  ', '', '7455 Woodbine Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(409, 3, 'customer', 0, 'General', 'Astro taxi  ', 'Astro taxi  ', '', '2781 Hi-way 7 west Suite 205   Vaughan; On      ', 'Toronto', 'Ont.', '', 'Canada', '9057383311', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(410, 3, 'customer', 0, 'General', 'Ata  ', 'Ata  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-886-3838  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(411, 3, 'customer', 0, 'General', 'ATMOSPHERE  ', 'ATMOSPHERE  ', '', '   47 CALVINWAY DRIVE      ', 'Toronto', 'Ont.', '', 'Canada', '4164575050', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(412, 3, 'customer', 0, 'General', 'Atop Wireless  ', 'Atop Wireless  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(413, 3, 'customer', 0, 'General', 'Attitudes  ', 'Attitudes  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'jon@tripart.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(414, 3, 'customer', 0, 'General', 'Auberge Francophone  ', 'Auberge Francophone  ', '', '202-2562 Eglington West   202-2562 Eglington West      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(415, 3, 'customer', 0, 'General', 'Auberge Francophone D`acc Et....  ', 'Auberge Francophone D`acc Et....  ', '', '202-2562 Eglinton  Ave West         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(416, 3, 'customer', 0, 'General', 'Audio Video Vantage Inc.  ', 'Audio Video Vantage Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(417, 3, 'customer', 0, 'General', 'Auto Scan IT  ', 'Auto Scan IT  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(418, 3, 'customer', 0, 'General', 'Avanti Sports  ', 'Avanti Sports  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(419, 3, 'customer', 0, 'General', 'Avcom Technology Inc  ', 'Avcom Technology Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(420, 3, 'customer', 0, 'General', 'AVIS BUDGET GROUP  ', 'AVIS BUDGET GROUP  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4168432187', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(421, 3, 'customer', 0, 'General', 'Azcar  ', 'Azcar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(422, 3, 'customer', 0, 'General', 'B.I.G Borj Invest Group  ', 'B.I.G Borj Invest Group  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(423, 3, 'customer', 0, 'General', 'Bahman DVR  ', 'Bahman DVR  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(424, 3, 'customer', 0, 'General', 'Bainf Auto Centre  ', 'Bainf Auto Centre  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(425, 3, 'customer', 0, 'General', 'Bala Kanthiah  ', 'Bala Kanthiah  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(426, 3, 'customer', 0, 'General', 'Barry (416-346-0900)  ', 'Barry (416-346-0900)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416-624-1836  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(427, 3, 'customer', 0, 'General', 'Barry Burgess  ', 'Barry Burgess  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(428, 3, 'customer', 0, 'General', 'BARTLETTS COMPUTER & NETWORKING SERVICES  ', 'BARTLETTS COMPUTER & NETWORKING SERVICES  ', '', '19 CHOPIN CRT.   WHITBY      ', 'Toronto', 'Ont.', '', 'Canada', '9059997018', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(429, 3, 'customer', 0, 'General', 'Baskaran ( Cable Installer)  ', 'Baskaran ( Cable Installer)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(430, 3, 'customer', 0, 'General', 'Bath Emporium', 'Bath Emporium', '', '5 Shield Court Unit 100 Markham 04 L3R0G3 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(431, 3, 'customer', 0, 'General', 'BCW Binding Services LTD  ', 'BCW Binding Services LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(432, 3, 'customer', 0, 'General', 'BDI Wear Parts  ', 'BDI Wear Parts  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(433, 3, 'customer', 0, 'General', 'Benjamin Sports  ', 'Benjamin Sports  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(434, 3, 'customer', 0, 'General', 'Bernie lock  ', 'Bernie lock  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(435, 3, 'customer', 0, 'General', 'Bespoke Motorsport  ', 'Bespoke Motorsport  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'atrivedi@towersolutions.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(436, 3, 'customer', 0, 'General', 'Best 4 Less  ', 'Best 4 Less  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(437, 3, 'customer', 0, 'General', 'Best Buy Electronics  ', 'Best Buy Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(438, 3, 'customer', 0, 'General', 'Beth Capogrossi  ', 'Beth Capogrossi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(439, 3, 'customer', 0, 'General', 'Bethel Welding   ', 'Bethel Welding   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(440, 3, 'customer', 0, 'General', 'Better Business Equipment Inc.  ', 'Better Business Equipment Inc.  ', '', '350 Wentworth St E.   Unit 8; Oshawa; On.      ', 'Toronto', 'Ont.', '', 'Canada', '18666291313', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(441, 3, 'customer', 0, 'General', 'Bevertec Cst Inc  ', 'Bevertec Cst Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(442, 3, 'customer', 0, 'General', 'Bga Technologies Corp.  ', 'Bga Technologies Corp.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(443, 3, 'customer', 0, 'General', 'Big Peter  ', 'Big Peter  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(444, 3, 'customer', 0, 'General', 'Bill Liang  ', 'Bill Liang  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(445, 3, 'customer', 0, 'General', 'Bippin Patel  ', 'Bippin Patel  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'sprovider786@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(446, 3, 'customer', 0, 'General', 'Bizsyz Inc.  ', 'Bizsyz Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'ian@allcorefitness.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(447, 3, 'customer', 0, 'General', 'Bizwisdom  ', 'Bizwisdom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(448, 3, 'customer', 0, 'General', 'Black Taxi  ', 'Black Taxi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(449, 3, 'customer', 0, 'General', 'Bloor West Dental', 'Bloor West Dental', '', '2475 Bloor St. W  Toronto  M6S1P7 Canada', 'Toronto', 'Ont.', '', 'Canada', '6473527446', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(450, 3, 'customer', 0, 'General', 'Bluebird IT Solutions Inc.   ', 'Bluebird IT Solutions Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(451, 3, 'customer', 0, 'General', 'Bluesky Holidays  ', 'Bluesky Holidays  ', '', '3255 Hi-way 7 east   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9057525188', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(452, 3, 'customer', 0, 'General', 'BlueStone Print Inc.  ', 'BlueStone Print Inc.  ', '', '10-110 Denison St.   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9055138870', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(453, 3, 'customer', 0, 'General', 'Blugreen Services Inc.  ', 'Blugreen Services Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(454, 3, 'customer', 0, 'General', 'BM Funiture Designing  ', 'BM Funiture Designing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(455, 3, 'customer', 0, 'General', 'BNAI Fishel Corp  ', 'BNAI Fishel Corp  ', '', '300 John St. suite 205   Thornhill; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(456, 3, 'customer', 0, 'General', 'BNF Pluming   ', 'BNF Pluming   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(457, 3, 'customer', 0, 'General', 'Bobby (sign)  ', 'Bobby (sign)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'design@teakcorp.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(458, 3, 'customer', 0, 'General', 'Bonny  ', 'Bonny  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(459, 3, 'customer', 0, 'General', 'Boteh Interiors Inc.  ', 'Boteh Interiors Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(460, 3, 'customer', 0, 'General', 'Bradshaw Plumming  ', 'Bradshaw Plumming  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(461, 3, 'customer', 0, 'General', 'Brain Colyer  ', 'Brain Colyer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(462, 3, 'customer', 0, 'General', 'Brake Tech Automotive  ', 'Brake Tech Automotive  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(463, 3, 'customer', 0, 'General', 'Brand Insulation  ', 'Brand Insulation  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(464, 3, 'customer', 0, 'General', 'Broadcom  ', 'Broadcom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(465, 3, 'customer', 0, 'General', 'BroadConnect Telecom  ', 'BroadConnect Telecom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(466, 3, 'customer', 0, 'General', 'Broker Financial Group Inc  ', 'Broker Financial Group Inc  ', '', '7270 Woodbine Ave   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(467, 3, 'customer', 0, 'General', 'Brs Consulting  ', 'Brs Consulting  ', '', '255 DUNCAN HILL RD         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(468, 3, 'customer', 0, 'General', 'Bruce (CP Rail)  ', 'Bruce (CP Rail)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(469, 3, 'customer', 0, 'General', 'bsmw', 'bsmw', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00');
INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `credit_limit`, `credit_term`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `vat_reg`, `gst_reg`, `credit_enjoy_days`, `customer_credit_limit`) VALUES
(470, 3, 'customer', 0, 'General', 'BSMW  ', 'BSMW  ', '', '7270 Woodbine Ave., Suite 301    Markham 04 L3R4B9 Canada', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(471, 3, 'customer', 0, 'General', 'Business Minding  ', 'Business Minding  ', '', '121 Irene Mount   Markham; Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'briansharpy@comcast.net  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(472, 3, 'customer', 0, 'General', 'Bynde ` Margot  ', 'Bynde ` Margot  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(473, 3, 'customer', 0, 'General', 'C & D Program Systems  ', 'C & D Program Systems  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(474, 3, 'customer', 0, 'General', 'C & S Logistics Solution Limited  ', 'C & S Logistics Solution Limited  ', '', '7181 Woodbine Ave. Suite 109   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '9059479499', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(475, 3, 'customer', 0, 'General', 'C Computers Inc.  ', 'C Computers Inc.  ', '', '1660 Upper James St.  Unit 2         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(476, 3, 'customer', 0, 'General', 'C.A Brown & Associates Inc.  ', 'C.A Brown & Associates Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(477, 3, 'customer', 0, 'General', 'Caaveri Products  ', 'Caaveri Products  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'ebloomfi@uoguelph.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(478, 3, 'customer', 0, 'General', 'Cable Shoppe  ', 'Cable Shoppe  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(479, 3, 'customer', 0, 'General', 'Call-A-Service INC  ', 'Call-A-Service INC  ', '', '   2 Gower St. Toronto. ONT. M4B 1E2      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(480, 3, 'customer', 0, 'General', 'Call Center  ', 'Call Center  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(481, 3, 'customer', 0, 'General', 'Cameo Fine Cabinetry  ', 'Cameo Fine Cabinetry  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-475-6445  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(482, 3, 'customer', 0, 'General', 'Camio Fine Cabinetry Inc  ', 'Camio Fine Cabinetry Inc  ', '', '660 Denison St.   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '9054756445', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(483, 3, 'customer', 0, 'General', 'Canada Top Systems  ', 'Canada Top Systems  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(484, 3, 'customer', 0, 'General', 'Canada Wide  ', 'Canada Wide  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(485, 3, 'customer', 0, 'General', 'Canadian Druze Society of Ontario  ', 'Canadian Druze Society of Ontario  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(486, 3, 'customer', 0, 'General', 'Canadian pay   ', 'Canadian pay   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(487, 3, 'customer', 0, 'General', 'Canadian School Of Business  ', 'Canadian School Of Business  ', '', '208-4900 Sheppard Ave E         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(488, 3, 'customer', 1, 'General', 'CANADIAN SYSTEMS INC  ', 'CANADIAN SYSTEMS INC  ', '', '222 DIXON ROAD   STE.305       ', 'Toronto', 'Ont.', '', 'Canada', '4168400672', 'rob@merchantoftennis.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, 2, 'Partner Price', NULL, NULL, NULL, '0.00'),
(489, 3, 'customer', 0, 'General', 'Canalink  ', 'Canalink  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(490, 3, 'customer', 0, 'General', 'Canram Consulting  ', 'Canram Consulting  ', '', '300 Esna Park Drive Unit 29   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '4167317106', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(491, 3, 'customer', 0, 'General', 'Careers In Transition  ', 'Careers In Transition  ', '', '3075 14th Ave.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(492, 3, 'customer', 0, 'General', 'Carey Group Publishing  ', 'Carey Group Publishing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(493, 3, 'customer', 0, 'General', 'Carlos Morais  ', 'Carlos Morais  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(494, 3, 'customer', 0, 'General', 'Carmeo Fine Cabinetary  ', 'Carmeo Fine Cabinetary  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(495, 3, 'customer', 0, 'General', 'CARQUEST   ', 'CARQUEST   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9054755501', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(496, 3, 'customer', 0, 'General', 'Carrocel  ', 'Carrocel  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4163714052', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(497, 3, 'customer', 0, 'General', 'Cartridge Kingdom  ', 'Cartridge Kingdom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(498, 3, 'customer', 0, 'General', 'Cathy Cleary  ', 'Cathy Cleary  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(499, 3, 'customer', 0, 'General', 'Ccomgeras  ', 'Ccomgeras  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(500, 3, 'customer', 0, 'General', 'CDE DVD MULTIMEDIA  ', 'CDE DVD MULTIMEDIA  ', '', '253 Harrygan Crescent   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '9055085482', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(501, 3, 'customer', 0, 'General', 'Cdi Engineering Solution  ', 'Cdi Engineering Solution  ', '', '48 Yonge Street         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(502, 3, 'customer', 0, 'General', 'CDS  ', 'CDS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(503, 3, 'customer', 0, 'General', 'Cellint Traffic Solutions  ', 'Cellint Traffic Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(504, 3, 'customer', 0, 'General', 'Central Micro   ', 'Central Micro   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(505, 3, 'customer', 0, 'General', 'Centric Health  ', 'Centric Health  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(506, 3, 'customer', 0, 'General', 'Centrum Technologies  ', 'Centrum Technologies  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(507, 3, 'customer', 0, 'General', 'Cerellie Jewellers  ', 'Cerellie Jewellers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(508, 3, 'customer', 0, 'General', 'Cfmw Consulting  ', 'Cfmw Consulting  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(509, 3, 'customer', 0, 'General', 'Cg6 Inc Corp.  ', 'Cg6 Inc Corp.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(510, 3, 'customer', 0, 'General', 'CHAMPION  ', 'CHAMPION  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(511, 3, 'customer', 0, 'General', 'Chander Kapur  ', 'Chander Kapur  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(512, 3, 'customer', 0, 'General', 'Chantal Fortin  ', 'Chantal Fortin  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(513, 3, 'customer', 0, 'General', 'Charles Davis  ', 'Charles Davis  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(514, 3, 'customer', 0, 'General', 'Cheetah International Brewers Inc.  ', 'Cheetah International Brewers Inc.  ', '', '75 Milliken Blvd. Suite 12   Toronto; On.      ', 'Toronto', 'Ont.', '', 'Canada', '4162923434', 'satheesh@medixschool.ca;info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(515, 3, 'customer', 0, 'General', 'Cherished Health & Wellness Center  ', 'Cherished Health & Wellness Center  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(516, 3, 'customer', 0, 'General', 'Chris Coulter  ', 'Chris Coulter  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(517, 3, 'customer', 0, 'General', 'Chriscom  ', 'Chriscom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(518, 3, 'customer', 0, 'General', 'Chuangs Company LTD.  ', 'Chuangs Company LTD.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(519, 3, 'customer', 0, 'General', 'Church in Toronto  ', 'Church in Toronto  ', '', '671 Sheppard Ave East   Toronto      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(520, 3, 'customer', 0, 'General', 'Cipher Concepts Inc  ', 'Cipher Concepts Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(521, 3, 'customer', 0, 'General', 'Circa Metals  ', 'Circa Metals  ', '', '   206 Great Gulf Dr      ', 'Toronto', 'Ont.', '', 'Canada', '9056695511', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(522, 3, 'customer', 0, 'General', 'Circuit Process Maintenance', 'Circuit Process Maintenance', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(523, 3, 'customer', 0, 'General', 'Citi College  ', 'Citi College  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(524, 3, 'customer', 0, 'General', 'Cj Computers  ', 'Cj Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(525, 3, 'customer', 0, 'General', 'Clairhaven LTD  ', 'Clairhaven LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(526, 3, 'customer', 0, 'General', 'Clarence Mark  ', 'Clarence Mark  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(527, 3, 'customer', 0, 'General', 'Clean4me  ', 'Clean4me  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-305-0011  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(528, 3, 'customer', 0, 'General', 'Clear Communications  ', 'Clear Communications  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(529, 3, 'customer', 0, 'General', 'Clickon  ', 'Clickon  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(530, 3, 'customer', 0, 'General', 'Cliff Shu  ', 'Cliff Shu  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(531, 3, 'customer', 0, 'General', 'Club Yolo  ', 'Club Yolo  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(532, 3, 'customer', 0, 'General', 'Cobra Computer Services Ltd.  ', 'Cobra Computer Services Ltd.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(533, 3, 'customer', 0, 'General', 'Colin LeBrun  ', 'Colin LeBrun  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(534, 3, 'customer', 0, 'General', 'Compliance First Financial  ', 'Compliance First Financial  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(535, 3, 'customer', 0, 'General', 'Composite Power  ', 'Composite Power  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(536, 3, 'customer', 0, 'General', 'Composite Power Group Inc  ', 'Composite Power Group Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(537, 3, 'customer', 0, 'General', 'Compu Tek  ', 'Compu Tek  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(538, 3, 'customer', 0, 'General', 'Computer-media.Ca  ', 'Computer-media.Ca  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(539, 3, 'customer', 0, 'General', 'Computer Accounting Consulting  ', 'Computer Accounting Consulting  ', '', '42 Silverado Trail-         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(540, 3, 'customer', 0, 'General', 'Computer Doctor  ', 'Computer Doctor  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(541, 3, 'customer', 0, 'General', 'Computer Lab  ', 'Computer Lab  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(542, 3, 'customer', 0, 'General', 'Computer Link  ', 'Computer Link  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(543, 3, 'customer', 0, 'General', 'Computer Plug  ', 'Computer Plug  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'INFO@ASTROTAXI.CA  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(544, 3, 'customer', 0, 'General', 'Computer Wisper  ', 'Computer Wisper  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'ksum@atatechnology.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(545, 3, 'customer', 0, 'General', 'Computronet Inc  ', 'Computronet Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'Qixian.Hu@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(546, 3, 'customer', 0, 'General', 'Concept Printers Inc  ', 'Concept Printers Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(547, 3, 'customer', 1, 'General', 'Others', 'Others', '', '05,Mohakhali C/A,Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1787688674', 'others@test.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 0, '100.00'),
(548, 3, 'customer', 1, 'General', 'Bond-007', 'PG', '', 'Mohakhali,', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1781870371', 'b@b.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 0, '5000.00'),
(549, 3, 'customer', 0, 'General', 'Constant Controls LTD.  ', 'Constant Controls LTD.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'kubalan@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(550, 3, 'customer', 0, 'General', 'Continental legal  ', 'Continental legal  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(551, 3, 'customer', 0, 'General', 'Conversys Media  ', 'Conversys Media  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(552, 3, 'customer', 0, 'General', 'Coolwave Heating & Air Conditioning Inc.  ', 'Coolwave Heating & Air Conditioning Inc.  ', '', '6417 King Road   Nobolton; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(553, 3, 'customer', 0, 'General', 'COOPER  ', 'COOPER  ', '', 'SUITE 1108   141 ADELIDE STREET WEST      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(554, 3, 'customer', 0, 'General', 'Copytech Service  ', 'Copytech Service  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(555, 3, 'customer', 0, 'General', 'Cornell Medical Centre  ', 'Cornell Medical Centre  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(556, 3, 'customer', 0, 'General', 'CORPAP INC.  ', 'CORPAP INC.  ', '', '102-7400 Woodbine Ave.   Markham; Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '9059463620', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(557, 3, 'customer', 0, 'General', 'Corporate Microsystem  ', 'Corporate Microsystem  ', '', '2800 John St   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(558, 3, 'customer', 0, 'General', 'CORTEXX TECHNOLOGY GROUP  ', 'CORTEXX TECHNOLOGY GROUP  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(559, 3, 'customer', 0, 'General', 'COSMO Communications Canada Inc.', 'COSMO Communications Canada Inc.', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(560, 3, 'customer', 0, 'General', 'CP Rail  ', 'CP Rail  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(561, 3, 'customer', 0, 'General', 'CPS (Peter)  ', 'CPS (Peter)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416 843 2187  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(562, 3, 'customer', 0, 'General', 'Cravins Caribbean Grill  ', 'Cravins Caribbean Grill  ', '', '7270 Woodbine Ave.      ', 'Toronto', 'Ont.', '', 'Canada', '905-415-0078  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(563, 3, 'customer', 0, 'General', 'Crest Circuit  ', 'Crest Circuit  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(564, 3, 'customer', 0, 'General', 'Crest Circuit Inc.  ', 'Crest Circuit Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-479-9515  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(565, 3, 'customer', 0, 'General', 'Cryocanada Inc.  ', 'Cryocanada Inc.  ', '', '530 Mc Nicoll Ave   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '4165021950', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(566, 3, 'customer', 0, 'General', 'Cryptotek', 'Cryptotek', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(567, 3, 'customer', 0, 'General', 'Crystal World  ', 'Crystal World  ', '', '179 Denison         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(568, 3, 'customer', 0, 'General', 'Crystal World Inc  ', 'Crystal World Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(569, 3, 'customer', 0, 'General', 'Currie&Wiltshire  ', 'Currie&Wiltshire  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(570, 3, 'customer', 0, 'General', 'Cus1  ', 'Cus1  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'peter.papadopoulos@avisbudget.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(571, 3, 'customer', 0, 'General', 'Custom Digital Euphoria  ', 'Custom Digital Euphoria  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(572, 3, 'customer', 0, 'General', 'Customer  ', 'Customer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(573, 3, 'customer', 0, 'General', 'Customer Deposit  ', 'Customer Deposit  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(574, 3, 'customer', 0, 'General', 'Customer Modcom  ', 'Customer Modcom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(575, 3, 'customer', 0, 'General', 'Cutter`s Edge  ', 'Cutter`s Edge  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(576, 3, 'customer', 0, 'General', 'Cyber Security  ', 'Cyber Security  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(577, 3, 'customer', 0, 'General', 'Cygna Technologies', 'Cygna Technologies', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4165220530', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(578, 3, 'customer', 0, 'General', 'DADDYS LITTLE GIRL  ', 'DADDYS LITTLE GIRL  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(579, 3, 'customer', 0, 'General', 'Daiwa  ', 'Daiwa  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(580, 3, 'customer', 0, 'General', 'Dan Rudorfer  ', 'Dan Rudorfer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(581, 3, 'customer', 0, 'General', 'Daniel Del Rosario  ', 'Daniel Del Rosario  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'anasser@rosedalefs.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(582, 3, 'customer', 0, 'General', 'Daniel Moretta  ', 'Daniel Moretta  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'risa@edosushi.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(583, 3, 'customer', 0, 'General', 'Danusha  ', 'Danusha  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(584, 3, 'customer', 0, 'General', 'Dave Heggblom  ', 'Dave Heggblom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'BarryBartlett@BarlettsCNS.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(585, 3, 'customer', 0, 'General', 'David  ', 'David  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '2893565328', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(586, 3, 'customer', 0, 'General', 'David Rickman', 'David Rickman', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(587, 3, 'customer', 0, 'General', 'David Rickman ', 'David Rickman ', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4168782992', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(588, 3, 'customer', 0, 'General', 'David Sharon  ', 'David Sharon  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(589, 3, 'customer', 0, 'General', 'David Soundy  ', 'David Soundy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(590, 3, 'customer', 0, 'General', 'David Teschner  ', 'David Teschner  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4165901278', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(591, 3, 'customer', 0, 'General', 'David Whitelock  ', 'David Whitelock  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(592, 3, 'customer', 0, 'General', 'DBUGZ.COM  ', 'DBUGZ.COM  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4168224482', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(593, 3, 'customer', 0, 'General', 'Delta Country Farm B.C. Ltd.  ', 'Delta Country Farm B.C. Ltd.  ', '', '199 Steelcase Rd.   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(594, 3, 'customer', 0, 'General', 'Delta Engineering Services  ', 'Delta Engineering Services  ', '', '800 Denison St. Suite 3A   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9054791600', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(595, 3, 'customer', 0, 'General', 'Deluxe Taxi   ', 'Deluxe Taxi   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(596, 3, 'customer', 0, 'General', 'Denise Kaye  ', 'Denise Kaye  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(597, 3, 'customer', 0, 'General', 'Dennis Pacione  ', 'Dennis Pacione  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(598, 3, 'customer', 0, 'General', 'Dentistry on Leslie', 'Dentistry on Leslie', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(599, 3, 'customer', 0, 'General', 'Diamonds for Less  ', 'Diamonds for Less  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(600, 3, 'customer', 0, 'General', 'Diana Management  ', 'Diana Management  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(601, 3, 'customer', 0, 'General', 'DIBA / North York City Centre  ', 'DIBA / North York City Centre  ', '', '5160 Yonge St   Toronto; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(602, 3, 'customer', 0, 'General', 'Diba Internationals  ', 'Diba Internationals  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(603, 3, 'customer', 0, 'General', 'Digital Realm  ', 'Digital Realm  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(604, 3, 'customer', 0, 'General', 'Digital Solution Plus  ', 'Digital Solution Plus  ', '', '1317 Dundas St. W.   Toronto; On      ', 'Toronto', 'Ont.', '', 'Canada', '6473499155', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(605, 3, 'customer', 0, 'General', 'Digital Specialty Chemical Ltd  ', 'Digital Specialty Chemical Ltd  ', '', '470 Coronation Drive         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(606, 3, 'customer', 0, 'General', 'Dilukshan Modcom  ', 'Dilukshan Modcom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(607, 3, 'customer', 0, 'General', 'Diluxan  ', 'Diluxan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(608, 3, 'customer', 0, 'General', 'Diluxhan  ', 'Diluxhan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(609, 3, 'customer', 0, 'General', 'Direct Buy (hugo)  ', 'Direct Buy (hugo)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'mike@bbequipment.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(610, 3, 'customer', 0, 'General', 'Direct Buy (Woodbine)  ', 'Direct Buy (Woodbine)  ', '', '205 Torbay Road Unit 12   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(611, 3, 'customer', 0, 'General', 'Directbuy Pickering  ', 'Directbuy Pickering  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(612, 3, 'customer', 0, 'General', 'Dirty Martini  ', 'Dirty Martini  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'cmcdonald@bevertec.com;info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(613, 3, 'customer', 0, 'General', 'Divine Favour  ', 'Divine Favour  ', '', '351 Parkhust Sq. Unit 2   Brampton; On      ', 'Toronto', 'Ont.', '', 'Canada', '9057899595', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(614, 3, 'customer', 0, 'General', 'DL Customs', 'DL Customs', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(615, 3, 'customer', 0, 'General', 'Doctor Foot', 'Doctor Foot', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(616, 3, 'customer', 0, 'General', 'Dollar A Day Computer Limited  ', 'Dollar A Day Computer Limited  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(617, 3, 'customer', 0, 'General', 'Dominico Durante  ', 'Dominico Durante  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(618, 3, 'customer', 0, 'General', 'Don Eruel  ', 'Don Eruel  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(619, 3, 'customer', 0, 'General', 'Double D promotion   ', 'Double D promotion   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(620, 3, 'customer', 0, 'General', 'Doug Manson Sales and Service  ', 'Doug Manson Sales and Service  ', '', '693 West Blvd.   Pickering; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(621, 3, 'customer', 0, 'General', 'Dprotech Designs  ', 'Dprotech Designs  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(622, 3, 'customer', 0, 'General', 'Dr. Atta  ', 'Dr. Atta  ', '', 'Scarborough(Elles Birch Dental Office)         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(623, 3, 'customer', 0, 'General', 'Dr. B. Mohendran Dentistry  ', 'Dr. B. Mohendran Dentistry  ', '', '3430 Finch Ave East; Unit 201   Scarborough; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(624, 3, 'customer', 0, 'General', 'Dr. Daniel Del Rosario  ', 'Dr. Daniel Del Rosario  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(625, 3, 'customer', 0, 'General', 'Dr. Jon Hummel', 'Dr. Jon Hummel', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4168828891', 'drjhummel@gmail.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(626, 3, 'customer', 0, 'General', 'Dr. Komathy  ', 'Dr. Komathy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(627, 3, 'customer', 0, 'General', 'Dr. Percy Segal  ', 'Dr. Percy Segal  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(628, 3, 'customer', 0, 'General', 'Dr. Pravech  ', 'Dr. Pravech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(629, 3, 'customer', 0, 'General', 'Dr. Sumathy Selva  ', 'Dr. Sumathy Selva  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(630, 3, 'customer', 0, 'General', 'Dr. Vali Khadivi Dentist   ', 'Dr. Vali Khadivi Dentist   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416-222-3395  ', 'brett@shakedownsound.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(631, 3, 'customer', 0, 'General', 'DR. Y.W. TAM MPC', 'DR. Y.W. TAM MPC', '', '78 Corporate Drv. Unit 10  Scarborough   Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(632, 3, 'customer', 0, 'General', 'Dr.Atta (Aurora)  ', 'Dr.Atta (Aurora)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-727-7118 fax  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(633, 3, 'customer', 0, 'General', 'Dr.Irene V Ayala  ', 'Dr.Irene V Ayala  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4166521844', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(634, 3, 'customer', 0, 'General', 'Dr.Sumathy Selva  ', 'Dr.Sumathy Selva  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(635, 3, 'customer', 0, 'General', 'Dr.Taher Eghbaldar  ', 'Dr.Taher Eghbaldar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(636, 3, 'customer', 0, 'General', 'DREAM  ', 'DREAM  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(637, 3, 'customer', 0, 'General', 'Ds Xpress  ', 'Ds Xpress  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(638, 3, 'customer', 0, 'General', 'DSCCC INC  ', 'DSCCC INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@lm1.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(639, 3, 'customer', 0, 'General', 'DTEK Automotive Services  ', 'DTEK Automotive Services  ', '', '59 Crockford Blvd. Uit 1A   Scarborough; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(640, 3, 'customer', 0, 'General', 'Dundas Cellular  ', 'Dundas Cellular  ', '', '5610-61 DUNDAS ST W         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(641, 3, 'customer', 0, 'General', 'Dvd Mansion  ', 'Dvd Mansion  ', '', '8425 Woodbine Ave.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(642, 3, 'customer', 0, 'General', 'E. Canada Plus  ', 'E. Canada Plus  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(643, 3, 'customer', 0, 'General', 'Eastside Property Managemnt  ', 'Eastside Property Managemnt  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'mohamed@bluestoneprint.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(644, 3, 'customer', 0, 'General', 'Easy imaging  ', 'Easy imaging  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(645, 3, 'customer', 0, 'General', 'ECOMTRACKS  ', 'ECOMTRACKS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'winston@wincon-security.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(646, 3, 'customer', 0, 'General', 'ED  ', 'ED  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(647, 3, 'customer', 0, 'General', 'EDO Sushi  ', 'EDO Sushi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4163223033', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(648, 3, 'customer', 0, 'General', 'Edward (The IT Agency)  ', 'Edward (The IT Agency)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'aminelli8058@rogers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(649, 3, 'customer', 0, 'General', 'Effective Fuel Systems INC  ', 'Effective Fuel Systems INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(650, 3, 'customer', 0, 'General', 'EG Energy  ', 'EG Energy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(651, 3, 'customer', 0, 'General', 'EG Solar Power  ', 'EG Solar Power  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(652, 3, 'customer', 0, 'General', 'Ekosmos.Com Inc.  ', 'Ekosmos.Com Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(653, 3, 'customer', 0, 'General', 'Eldantel Telecom  ', 'Eldantel Telecom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(654, 3, 'customer', 0, 'General', 'ELECTRICAL APPRENTICESHIP TRAINING  ', 'ELECTRICAL APPRENTICESHIP TRAINING  ', '', '   28 FUTON WAY      ', 'Toronto', 'Ont.', '', 'Canada', '9058826484', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(655, 3, 'customer', 0, 'General', 'Electro Assembly  Ltd  ', 'Electro Assembly  Ltd  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(656, 3, 'customer', 0, 'General', 'Elimin8  ', 'Elimin8  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(657, 3, 'customer', 0, 'General', 'Elinktech Inc  ', 'Elinktech Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(658, 3, 'customer', 0, 'General', 'Elmont Cumberbatch  ', 'Elmont Cumberbatch  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(659, 3, 'customer', 0, 'General', 'Emad Hanna  ', 'Emad Hanna  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(660, 3, 'customer', 0, 'General', 'Emjay Direct Inc  ', 'Emjay Direct Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(661, 3, 'customer', 0, 'General', 'EMS  (Zev)', 'EMS  (Zev)', '', '  Markham    Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(662, 3, 'customer', 0, 'General', 'Encore Media Inc.  ', 'Encore Media Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(663, 3, 'customer', 0, 'General', 'Enduro Sport  ', 'Enduro Sport  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(664, 3, 'customer', 0, 'General', 'Enercare Inc  ', 'Enercare Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416 649 1912  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(665, 3, 'customer', 0, 'General', 'Energy Conversion Technologies Inc  ', 'Energy Conversion Technologies Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(666, 3, 'customer', 0, 'General', 'Entuit Prise Solution  ', 'Entuit Prise Solution  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(667, 3, 'customer', 0, 'General', 'Epson Canada  ', 'Epson Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(668, 3, 'customer', 0, 'General', 'Er Restoration Services  ', 'Er Restoration Services  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(669, 3, 'customer', 0, 'General', 'Eric Joe  ', 'Eric Joe  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(670, 3, 'customer', 0, 'General', 'Erik Management  ', 'Erik Management  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(671, 3, 'customer', 0, 'General', 'Erik Myllymaki  ', 'Erik Myllymaki  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(672, 3, 'customer', 0, 'General', 'esolar  ', 'esolar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(673, 3, 'customer', 0, 'General', 'ESSO GAS STATION (HASTINGS)', 'ESSO GAS STATION (HASTINGS)', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(674, 3, 'customer', 0, 'General', 'European House Furniture  ', 'European House Furniture  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9055138585', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(675, 3, 'customer', 0, 'General', 'Eurpean Landscaping  ', 'Eurpean Landscaping  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(676, 3, 'customer', 0, 'General', 'Evelko Designs  ', 'Evelko Designs  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9054791139', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(677, 3, 'customer', 0, 'General', 'Eventsource', 'Eventsource', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '41623855555', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(678, 3, 'customer', 0, 'General', 'Everest  ', 'Everest  ', '', '3980 14th Avenue.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(679, 3, 'customer', 0, 'General', 'Everyday PC  ', 'Everyday PC  ', '', '20 Steelcase Rd west   Unit 5      ', 'Toronto', 'Ont.', '', 'Canada', 'L3R 1B2  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(680, 3, 'customer', 0, 'General', 'Expria  ', 'Expria  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(681, 3, 'customer', 0, 'General', 'extrusion profile', 'extrusion profile', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(682, 3, 'customer', 0, 'General', 'Extrusion Profile', 'Extrusion Profile', '', '110 Torbay Road  markham 04  Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(683, 3, 'customer', 0, 'General', 'EZ POS  ', 'EZ POS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(684, 3, 'customer', 0, 'General', 'F.Kaye Law Asso.  ', 'F.Kaye Law Asso.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(685, 3, 'customer', 0, 'General', 'Fahmi Mahammed  ', 'Fahmi Mahammed  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(686, 3, 'customer', 0, 'General', 'Faircable Inc  ', 'Faircable Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(687, 3, 'customer', 0, 'General', 'Faith Miracle Temp Inc  ', 'Faith Miracle Temp Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(688, 3, 'customer', 0, 'General', 'Falcon Precision LTD  ', 'Falcon Precision LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(689, 3, 'customer', 0, 'General', 'farid', 'farid', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '6477065106', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(690, 3, 'customer', 0, 'General', 'Fazly Thowfeek  ', 'Fazly Thowfeek  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(691, 3, 'customer', 0, 'General', 'Fet Computers  ', 'Fet Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@ccomputers.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00');
INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `credit_limit`, `credit_term`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `vat_reg`, `gst_reg`, `credit_enjoy_days`, `customer_credit_limit`) VALUES
(692, 3, 'customer', 0, 'General', 'Fifty One Design  ', 'Fifty One Design  ', '', '101 Amber St. Units 7 & 8   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9054757795', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(693, 3, 'customer', 0, 'General', 'Filbitron  ', 'Filbitron  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(694, 3, 'customer', 0, 'General', 'Film.Ca Inc.  ', 'Film.Ca Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(695, 3, 'customer', 0, 'General', 'Finacial Wealth Builder Canada  ', 'Finacial Wealth Builder Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(696, 3, 'customer', 0, 'General', 'Financial Wealth Builders  ', 'Financial Wealth Builders  ', '', '220 Duncan Mill Rd.   Suite 605 Toronto On.      ', 'Toronto', 'Ont.', '', 'Canada', '4164970008', 'rmg@acncanada.net  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(697, 3, 'customer', 0, 'General', 'Fincom Inc.  ', 'Fincom Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(698, 3, 'customer', 0, 'General', 'First Class Business Solutions Inc.   ', 'First Class Business Solutions Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(699, 3, 'customer', 0, 'General', 'First Commercial Builder Group Inc.  ', 'First Commercial Builder Group Inc.  ', '', '78 Downlop St. Suite 710   Richmond Hill      ', 'Toronto', 'Ont.', '', 'Canada', '4162008717', 'dwatson@phsfranchise.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(700, 3, 'customer', 0, 'General', 'First It  ', 'First It  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'rathika@thecableshoppe.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(701, 3, 'customer', 0, 'General', 'First Wave Tech Ink  ', 'First Wave Tech Ink  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(702, 3, 'customer', 0, 'General', 'Fishnet Computers  ', 'Fishnet Computers  ', '', '3752 BAYSWATER CRES         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(703, 3, 'customer', 0, 'General', 'Fitness Depot Canada  ', 'Fitness Depot Canada  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9057541888', 'smperri@sympatico.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(704, 3, 'customer', 0, 'General', 'Five 4 Ever Inc.  ', 'Five 4 Ever Inc.  ', '', '7370 Woodbine Ave Unit 19   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(705, 3, 'customer', 0, 'General', 'Fkaye  ', 'Fkaye  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(706, 3, 'customer', 0, 'General', 'Floid Robert  ', 'Floid Robert  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(707, 3, 'customer', 0, 'General', 'Floodco Emergency services Inc.   ', 'Floodco Emergency services Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9053056292', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(708, 3, 'customer', 0, 'General', 'Floyd Roberts  ', 'Floyd Roberts  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(709, 3, 'customer', 0, 'General', 'Flybook  ', 'Flybook  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(710, 3, 'customer', 0, 'General', 'Foam Solutions  ', 'Foam Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(711, 3, 'customer', 0, 'General', 'Focus Media  ', 'Focus Media  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(712, 3, 'customer', 0, 'General', 'Forde  ', 'Forde  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(713, 3, 'customer', 0, 'General', 'Fortis Consulting  ', 'Fortis Consulting  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'jlau1122@rogers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(714, 3, 'customer', 0, 'General', 'Fortune Computers  ', 'Fortune Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(715, 3, 'customer', 0, 'General', 'Fothots Holdings  ', 'Fothots Holdings  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(716, 3, 'customer', 0, 'General', 'Fountine Place Co. Ltd.  ', 'Fountine Place Co. Ltd.  ', '', '250 Don Park Rd. Unit 8   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(717, 3, 'customer', 0, 'General', 'Four Elms Retirement Residence  ', 'Four Elms Retirement Residence  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(718, 3, 'customer', 0, 'General', 'Frank @ Concord  ', 'Frank @ Concord  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(719, 3, 'customer', 0, 'General', 'Frank Litirty @ Concord Hardware', 'Frank Litirty @ Concord Hardware', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '@', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(720, 3, 'customer', 0, 'General', 'Frank Pellegrino  ', 'Frank Pellegrino  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416997206', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(721, 3, 'customer', 0, 'General', 'Frankie Tomatto\'s', 'Frankie Tomatto\'s', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(722, 3, 'customer', 0, 'General', 'FREED LEGAL SERVICES PROFESSIONAL CORPORATION  ', 'FREED LEGAL SERVICES PROFESSIONAL CORPORATION  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-258-0360  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(723, 3, 'customer', 0, 'General', 'Fs Electronics  ', 'Fs Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(724, 3, 'customer', 0, 'General', 'Fuji Golf  ', 'Fuji Golf  ', '', '  3160 Steeles Avenue. East,   J-Town Unit 102 Markham 04 L3R 4G9 Canada', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(725, 3, 'customer', 0, 'General', 'Fujitech  ', 'Fujitech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(726, 3, 'customer', 0, 'General', 'G1 Labs  ', 'G1 Labs  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(727, 3, 'customer', 0, 'General', 'Gagik Khachatrian  ', 'Gagik Khachatrian  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(728, 3, 'customer', 0, 'General', 'Gallo Real Estate  ', 'Gallo Real Estate  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(729, 3, 'customer', 0, 'General', 'Gamelin Guitars  ', 'Gamelin Guitars  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(730, 3, 'customer', 0, 'General', 'Ganesh Kanthasamy  ', 'Ganesh Kanthasamy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(731, 3, 'customer', 0, 'General', 'Garry Cooper  ', 'Garry Cooper  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(732, 3, 'customer', 0, 'General', 'Gary Arora', 'Gary Arora', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '6478655264', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(733, 3, 'customer', 0, 'General', 'Gary Restoule  ', 'Gary Restoule  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(734, 3, 'customer', 0, 'General', 'GAT Associates Inc.', 'GAT Associates Inc.', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(735, 3, 'customer', 0, 'General', 'Gates and Doors Inc.  ', 'Gates and Doors Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(736, 3, 'customer', 0, 'General', 'GAYNOR Mechanical & General Contracting  ', 'GAYNOR Mechanical & General Contracting  ', '', '   172 Bullock Dr.; Unit 23      ', 'Toronto', 'Ont.', '', 'Canada', '905-471-6241  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(737, 3, 'customer', 0, 'General', 'GBF  ', 'GBF  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(738, 3, 'customer', 0, 'General', 'GC Cellphone  ', 'GC Cellphone  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(739, 3, 'customer', 0, 'General', 'GEEGLE Media  ', 'GEEGLE Media  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'olgasaranovich@cogeco.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(740, 3, 'customer', 0, 'General', 'Geegoe  ', 'Geegoe  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(741, 3, 'customer', 0, 'General', 'Gemz Consulting Services  ', 'Gemz Consulting Services  ', '', '139 Simonston Blvd.   Thornhill; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(742, 3, 'customer', 0, 'General', 'Genesis Electronics  ', 'Genesis Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(743, 3, 'customer', 0, 'General', 'Genx Solutions  ', 'Genx Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(744, 3, 'customer', 0, 'General', 'George  ', 'George  ', '', 'Carroers In Transaction         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(745, 3, 'customer', 0, 'General', 'George Consulting Group Limited  ', 'George Consulting Group Limited  ', '', '89 Skymark Drive   Markham      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(746, 3, 'customer', 0, 'General', 'George Won   ', 'George Won   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@sonicblueinc.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(747, 3, 'customer', 0, 'General', 'Geotech Support Services  ', 'Geotech Support Services  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(748, 3, 'customer', 0, 'General', 'Geotech Support Services Inc.  ', 'Geotech Support Services Inc.  ', '', '2650 John St. Unit 24   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@shirco.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(749, 3, 'customer', 0, 'General', 'Gerhard Marsch  ', 'Gerhard Marsch  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(750, 3, 'customer', 0, 'General', 'Gill (mimobile)  ', 'Gill (mimobile)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(751, 3, 'customer', 0, 'General', 'Girn Photo  ', 'Girn Photo  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(752, 3, 'customer', 0, 'General', 'GLAW RECORDS  ', 'GLAW RECORDS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'Gpiasentin@careersintransition.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(753, 3, 'customer', 0, 'General', 'Global AM Exchange LTD  ', 'Global AM Exchange LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@techcompu.com;info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(754, 3, 'customer', 0, 'General', 'Global Electronics  ', 'Global Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'martin.thecareygroup@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(755, 3, 'customer', 0, 'General', 'Glow Medi Spa  ', 'Glow Medi Spa  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(756, 3, 'customer', 0, 'General', 'Go Go Tours  ', 'Go Go Tours  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(757, 3, 'customer', 0, 'General', 'Goji Data Inc.  ', 'Goji Data Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(758, 3, 'customer', 0, 'General', 'Gold Standard Health Limited', 'Gold Standard Health Limited', '', '481 Bloor Street W  Toronto 04 M5S 1X9 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(759, 3, 'customer', 0, 'General', 'Gold Standard Health Partnership', 'Gold Standard Health Partnership', '', '801 Eglinton Ave W,   Toronto 04 M5N 1E3 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(760, 3, 'customer', 0, 'General', 'Golden Eagle  ', 'Golden Eagle  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(761, 3, 'customer', 0, 'General', 'Golden Print Trading Co.  ', 'Golden Print Trading Co.  ', '', '10-2650 JOHN ST         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(762, 3, 'customer', 0, 'General', 'GOLESTAN MOHEBBI  ', 'GOLESTAN MOHEBBI  ', '', '875 KENNEDY ROAD   APT 408      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(763, 3, 'customer', 0, 'General', 'Golf Clearance Warehouse  ', 'Golf Clearance Warehouse  ', '', '420 Denison St.   Markham;On.      ', 'Toronto', 'Ont.', '', 'Canada', '9054700974 EXT 222  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(764, 3, 'customer', 0, 'General', 'Gooee`s Inc  ', 'Gooee`s Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(765, 3, 'customer', 0, 'General', 'Gord Drake  ', 'Gord Drake  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(766, 3, 'customer', 0, 'General', 'Gord Laiken  ', 'Gord Laiken  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(767, 3, 'customer', 0, 'General', 'Gordon Duggan  ', 'Gordon Duggan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9054797116', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(768, 3, 'customer', 0, 'General', 'Gpe Retrofit Iv Productions Inc.  ', 'Gpe Retrofit Iv Productions Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(769, 3, 'customer', 0, 'General', 'Grand Treasure Stone Inc.  ', 'Grand Treasure Stone Inc.  ', '', 'Unit 16; 2650 John St   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '9059449688', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(770, 3, 'customer', 0, 'General', 'GREAVES MECHATRONICS  ', 'GREAVES MECHATRONICS  ', '', '37 FAIRWOOD CRESCENT      ', 'Toronto', 'Ont.', '', 'Canada', '6472246274', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(771, 3, 'customer', 0, 'General', 'Greenlight Print Solution  ', 'Greenlight Print Solution  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(772, 3, 'customer', 0, 'General', 'Greenville Management &printing  ', 'Greenville Management &printing  ', '', '18 Eastern Ave.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(773, 3, 'customer', 0, 'General', 'GROUP MILLENIUM MICRO  ', 'GROUP MILLENIUM MICRO  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'joanna@mi5digital.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(774, 3, 'customer', 0, 'General', 'GSW Medical Center (woodbine)', 'GSW Medical Center (woodbine)', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(775, 3, 'customer', 0, 'General', 'GT Global Services', 'GT Global Services', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4168009033', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(776, 3, 'customer', 0, 'General', 'Gta Jobs  ', 'Gta Jobs  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(777, 3, 'customer', 0, 'General', 'Guardian Real Estate Ventures -Charlotte  ', 'Guardian Real Estate Ventures -Charlotte  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(778, 3, 'customer', 0, 'General', 'Guinepp Inc.  ', 'Guinepp Inc.  ', '', '1315 Lawrence Ave. E         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(779, 3, 'customer', 0, 'General', 'Habour Dental / Donna Cassidy', 'Habour Dental / Donna Cassidy', '', '12 Yonge st unit 8 Toronto 04 M5E1Z9 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(780, 3, 'customer', 0, 'General', 'Hadi Abdolmalaky  ', 'Hadi Abdolmalaky  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(781, 3, 'customer', 0, 'General', 'Hammerhill Sound Systems  ', 'Hammerhill Sound Systems  ', '', '187 Steelcase Road west   Markham; Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '9059469424', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(782, 3, 'customer', 0, 'General', 'Harbour Dental  ', 'Harbour Dental  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4162149119', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(783, 3, 'customer', 0, 'General', 'Haris  ', 'Haris  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(784, 3, 'customer', 0, 'General', 'Harvest City Church  ', 'Harvest City Church  ', '', '   14 ST. John Street      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(785, 3, 'customer', 0, 'General', 'HARVEY KALLES  ', 'HARVEY KALLES  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416-441-2888  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(786, 3, 'customer', 0, 'General', 'Hastings Esso  ', 'Hastings Esso  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(787, 3, 'customer', 0, 'General', 'Help All  ', 'Help All  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(788, 3, 'customer', 0, 'General', 'Henry`s Electronics Limited  ', 'Henry`s Electronics Limited  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(789, 3, 'customer', 0, 'General', 'Heritage Discovery Preschool  ', 'Heritage Discovery Preschool  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(790, 3, 'customer', 0, 'General', 'Heritage Kitchens  ', 'Heritage Kitchens  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(791, 3, 'customer', 0, 'General', 'HERZING COLLEGE  Scarborough', 'HERZING COLLEGE  Scarborough', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(792, 3, 'customer', 0, 'General', 'HERZING COLLEGE  Toronto', 'HERZING COLLEGE  Toronto', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(793, 3, 'customer', 0, 'General', 'HFM Tech System Inc.', 'HFM Tech System Inc.', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4169038435', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(794, 3, 'customer', 0, 'General', 'Hi-Tech Solutions  ', 'Hi-Tech Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '41672867872', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(795, 3, 'customer', 0, 'General', 'Hi-way 7 Auto Collision Centre  ', 'Hi-way 7 Auto Collision Centre  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(796, 3, 'customer', 0, 'General', 'Hi Rise Communication Inc  ', 'Hi Rise Communication Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(797, 3, 'customer', 0, 'General', 'Hi Tech Cell  ', 'Hi Tech Cell  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(798, 3, 'customer', 0, 'General', 'Hi Tech Compunent Service  ', 'Hi Tech Compunent Service  ', '', '1230 BLOOR ST W         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(799, 3, 'customer', 0, 'General', 'hiech', 'hiech', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(800, 3, 'customer', 0, 'General', 'High Point Laser  ', 'High Point Laser  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(801, 3, 'customer', 0, 'General', 'Hila Golan  ', 'Hila Golan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(802, 3, 'customer', 0, 'General', 'HIPNET INC.  ', 'HIPNET INC.  ', '', '   314-10 Queens Quay West      ', 'Toronto', 'Ont.', '', 'Canada', '416-562-7229  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(803, 3, 'customer', 0, 'General', 'hitech', 'hitech', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(804, 3, 'customer', 0, 'General', 'hitech', 'hitech', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(805, 3, 'customer', 0, 'General', 'Hitech Direct', 'Hitech Direct', '', '314A College Street  Toronto 04 M5S 2K2 Canada', 'Toronto', 'Ont.', '', 'Canada', '4169229000', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(806, 3, 'customer', 0, 'General', 'Holiday Inn  ', 'Holiday Inn  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(807, 3, 'customer', 0, 'General', 'Holiday Inn Express  ', 'Holiday Inn Express  ', '', '10 East Pearce Street         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'chanderk@cmkapur.ca;info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(808, 3, 'customer', 0, 'General', 'Holiday Inn Hotel & Suites  ', 'Holiday Inn Hotel & Suites  ', '', '7095 Woodbine Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(809, 3, 'customer', 0, 'General', 'Home and Beyone  ', 'Home and Beyone  ', '', 'Home and Beyond         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(810, 3, 'customer', 0, 'General', 'Home One Realty Inc  ', 'Home One Realty Inc  ', '', '500 Alden Rd. unit 208   Unit 208; Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(811, 3, 'customer', 0, 'General', 'Home Pc Doctor  ', 'Home Pc Doctor  ', '', '1619907  ONTARIO LIMITED         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(812, 3, 'customer', 0, 'General', 'Home Style Carpet  ', 'Home Style Carpet  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(813, 3, 'customer', 0, 'General', 'Homelife Landmark  ', 'Homelife Landmark  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(814, 3, 'customer', 0, 'General', 'Homelife Landmark Realty Inc.  ', 'Homelife Landmark Realty Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(815, 3, 'customer', 0, 'General', 'Homelife Real Estate  ', 'Homelife Real Estate  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(816, 3, 'customer', 0, 'General', 'Hosam Khirala  ', 'Hosam Khirala  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(817, 3, 'customer', 0, 'General', 'Hotspot Auto Parts', 'Hotspot Auto Parts', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(818, 3, 'customer', 0, 'General', 'Howard Hicks  ', 'Howard Hicks  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(819, 3, 'customer', 0, 'General', 'Hp Services  ', 'Hp Services  ', '', '46 KINGS COLLEGE RD         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(820, 3, 'customer', 0, 'General', 'Hudson Natural  ', 'Hudson Natural  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(821, 3, 'customer', 0, 'General', 'Hugo Clark  ', 'Hugo Clark  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '647-389-0173  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(822, 3, 'customer', 0, 'General', 'HUGO IT TECH  ', 'HUGO IT TECH  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(823, 3, 'customer', 0, 'General', 'Hugo Palacio  ', 'Hugo Palacio  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'gerald123ca@yahoo.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(824, 3, 'customer', 0, 'General', 'Huntech  ', 'Huntech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(825, 3, 'customer', 0, 'General', 'I N H Bussiness Services  ', 'I N H Bussiness Services  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'kamrafian@yahoo.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(826, 3, 'customer', 0, 'General', 'I.T & Pc Solutions  ', 'I.T & Pc Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(827, 3, 'customer', 0, 'General', 'Ian  ', 'Ian  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(828, 3, 'customer', 0, 'General', 'Ian Abramouitz  ', 'Ian Abramouitz  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(829, 3, 'customer', 0, 'General', 'Icelight Planning  ', 'Icelight Planning  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(830, 3, 'customer', 0, 'General', 'Icits  ', 'Icits  ', '', 'ICITS         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'mira@circahydel.com; info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(831, 3, 'customer', 0, 'General', 'ICT Design & Metrology  ', 'ICT Design & Metrology  ', '', '320 Don Park Unit 8         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(832, 3, 'customer', 0, 'General', 'Ideal Computers  ', 'Ideal Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(833, 3, 'customer', 0, 'General', 'Ideal Mantels  ', 'Ideal Mantels  ', '', '200 Steelecase Rd.    Unit 6 & 7      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(834, 3, 'customer', 0, 'General', 'Ideal Tile & Carpet  ', 'Ideal Tile & Carpet  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'rainer@citicollege.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(835, 3, 'customer', 0, 'General', 'Idealogical Systems Inc  ', 'Idealogical Systems Inc  ', '', '2900 John St         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(836, 3, 'customer', 0, 'General', 'IDEOGRAM INC  ', 'IDEOGRAM INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(837, 3, 'customer', 0, 'General', 'Idream Entetainment  ', 'Idream Entetainment  ', '', '342 Ellen Ave.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(838, 3, 'customer', 0, 'General', 'iFix (Frank)', 'iFix (Frank)', '', 'Kennedy road  Markham 04  Canada', 'Toronto', 'Ont.', '', 'Canada', '', 'bala@modcom.ca', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(839, 3, 'customer', 0, 'General', 'Illanthulir Video  ', 'Illanthulir Video  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(840, 3, 'customer', 0, 'General', 'Immanuel S.D.A. Church  ', 'Immanuel S.D.A. Church  ', '', '   418 Drewry Ave.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(841, 3, 'customer', 0, 'General', 'Immi  ', 'Immi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(842, 3, 'customer', 0, 'General', 'Imperial Lending Services  ', 'Imperial Lending Services  ', '', '67 Steele Case Road West   Unit 5; Markham      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(843, 3, 'customer', 0, 'General', 'Informative Tech  ', 'Informative Tech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(844, 3, 'customer', 0, 'General', 'Inframe Designs Inc.  ', 'Inframe Designs Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'libraservices@yahoo.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(845, 3, 'customer', 0, 'General', 'inh', 'inh', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(846, 3, 'customer', 0, 'General', 'INH BUSSINESS SERIVICES', 'INH BUSSINESS SERIVICES', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(847, 3, 'customer', 0, 'General', 'Innsys Inc  ', 'Innsys Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(848, 3, 'customer', 0, 'General', 'Inode  ', 'Inode  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(849, 3, 'customer', 0, 'General', 'Insite Computer Grouo  ', 'Insite Computer Grouo  ', '', '2800 JOHN ST #26         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(850, 3, 'customer', 0, 'General', 'Insta Tax Services', 'Insta Tax Services', '', '3555 14th Ave Unit 3 Markham 04  Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(851, 3, 'customer', 0, 'General', 'Instant Print  ', 'Instant Print  ', '', '  7307 Woodbine Ave.    Markham 04 L3R3V7 Canada', 'Toronto', 'Ont.', '', 'Canada', '9054740688', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(852, 3, 'customer', 0, 'General', 'Intelecom Solutions  ', 'Intelecom Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(853, 3, 'customer', 0, 'General', 'Inteli Pro Computer Services  ', 'Inteli Pro Computer Services  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(854, 3, 'customer', 0, 'General', 'Intercontinental Van Lines; Inc.  ', 'Intercontinental Van Lines; Inc.  ', '', '26 Riviera Drive Unit 1    Markham; on.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(855, 3, 'customer', 0, 'General', 'INTERFUSION iNC.  ', 'INTERFUSION iNC.  ', '', '926 Nasville Road   Kleinburg; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9058931861', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(856, 3, 'customer', 0, 'General', 'Interior Essentials  ', 'Interior Essentials  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'vivacityinc@hotmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(857, 3, 'customer', 0, 'General', 'INTERNATIONAL HOME MARKETING GROUP LIMITED  ', 'INTERNATIONAL HOME MARKETING GROUP LIMITED  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(858, 3, 'customer', 0, 'General', 'International Maketing Solution  ', 'International Maketing Solution  ', '', '800 Cochrane Drive         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(859, 3, 'customer', 0, 'General', 'International Trimming & Labels Group  ', 'International Trimming & Labels Group  ', '', '193 Denison St.   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@longtech.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(860, 3, 'customer', 0, 'General', 'Invirotech Mechanical  ', 'Invirotech Mechanical  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(861, 3, 'customer', 0, 'General', 'It-medical Solution Inc  ', 'It-medical Solution Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(862, 3, 'customer', 0, 'General', 'It Sales Canada Inc.  ', 'It Sales Canada Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(863, 3, 'customer', 0, 'General', 'IT Works Co  ', 'IT Works Co  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(864, 3, 'customer', 0, 'General', 'Itemnet  ', 'Itemnet  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(865, 3, 'customer', 0, 'General', 'Itemnet International Inc  ', 'Itemnet International Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(866, 3, 'customer', 0, 'General', 'Itkr Retail Inc  ', 'Itkr Retail Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(867, 3, 'customer', 0, 'General', 'ITL Circuits  ', 'ITL Circuits  ', '', '90 Don Park Road   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9054756658', 'ramesh.pon@micropeer.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(868, 3, 'customer', 0, 'General', 'ITL Lables  ', 'ITL Lables  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(869, 3, 'customer', 0, 'General', 'Ivan Hernandez  ', 'Ivan Hernandez  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(870, 3, 'customer', 0, 'General', 'Ivor B. Miller  ', 'Ivor B. Miller  ', '', '141 Royal Orchard Blvd   Thornhill; On      ', 'Toronto', 'Ont.', '', 'Canada', '4165677232', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(871, 3, 'customer', 0, 'General', 'Iwi Consulting Group  ', 'Iwi Consulting Group  ', '', '80 Acadia Unit 310         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'sales@computerlinksystems.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(872, 3, 'customer', 0, 'General', 'J Customz 2006  ', 'J Customz 2006  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(873, 3, 'customer', 0, 'General', 'J&j Tel  ', 'J&j Tel  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'jamie@computerplug.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(874, 3, 'customer', 0, 'General', 'JAC  ', 'JAC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(875, 3, 'customer', 0, 'General', 'Jalex Services  ', 'Jalex Services  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(876, 3, 'customer', 0, 'General', 'Jasmine Party Hall  ', 'Jasmine Party Hall  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'nishant@sammertech.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(877, 3, 'customer', 0, 'General', 'Jason  ', 'Jason  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(878, 3, 'customer', 0, 'General', 'Jc - Toronto  ', 'Jc - Toronto  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(879, 3, 'customer', 0, 'General', 'Jeff Westreich  ', 'Jeff Westreich  ', '', '51 Dundurn Cres   Thornhill; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(880, 3, 'customer', 0, 'General', 'Jegatheswaran  ', 'Jegatheswaran  ', '', '14 Neeland Road   Markham; Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(881, 3, 'customer', 0, 'General', 'Jeha Cga  ', 'Jeha Cga  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(882, 3, 'customer', 0, 'General', 'Jeniune Printing  ', 'Jeniune Printing  ', '', '370 Steelcase Rd. E.   Markham; On       ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(883, 3, 'customer', 0, 'General', 'Jensen Present Company  ', 'Jensen Present Company  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(884, 3, 'customer', 0, 'General', 'Jeya N. Soosaipillai  ', 'Jeya N. Soosaipillai  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4169085395', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(885, 3, 'customer', 0, 'General', 'Jg Graphics  ', 'Jg Graphics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(886, 3, 'customer', 0, 'General', 'Jiancheng trade LTD  ', 'Jiancheng trade LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(887, 3, 'customer', 0, 'General', 'Jibestream  ', 'Jibestream  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(888, 3, 'customer', 0, 'General', 'Jim Edwards  ', 'Jim Edwards  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(889, 3, 'customer', 0, 'General', 'Jin F. Jiamg  ', 'Jin F. Jiamg  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(890, 3, 'customer', 0, 'General', 'Jin Jiang  ', 'Jin Jiang  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(891, 3, 'customer', 0, 'General', 'Jmc Computer Service  ', 'Jmc Computer Service  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'sales@concordhardware.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(892, 3, 'customer', 0, 'General', 'JMT Homes INC  ', 'JMT Homes INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(893, 3, 'customer', 0, 'General', 'JNF Signs  ', 'JNF Signs  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@propertymaxrealty.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(894, 3, 'customer', 0, 'General', 'Joanne (Concord Bows road)  ', 'Joanne (Concord Bows road)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(895, 3, 'customer', 0, 'General', 'Joe Calouro  ', 'Joe Calouro  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4162203238', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(896, 3, 'customer', 0, 'General', 'John Eriksen & Associates Research  ', 'John Eriksen & Associates Research  ', '', '70 Huntington Park Drive   Thornhii; On      ', 'Toronto', 'Ont.', '', 'Canada', '4164332912', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(897, 3, 'customer', 0, 'General', 'John European Furniture  ', 'John European Furniture  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(898, 3, 'customer', 0, 'General', 'John Macneill C.A.  ', 'John Macneill C.A.  ', '', 'C.F.O     Escents Body Products Inc.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(899, 3, 'customer', 0, 'General', 'John Nolan  ', 'John Nolan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'joeontman@yahoo.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(900, 3, 'customer', 0, 'General', 'Johnathan Lee  ', 'Johnathan Lee  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(901, 3, 'customer', 0, 'General', 'Johnson`s M&m Carpet  ', 'Johnson`s M&m Carpet  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(902, 3, 'customer', 0, 'General', 'Joint Apprenticeship Council  ', 'Joint Apprenticeship Council  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(903, 3, 'customer', 0, 'General', 'Josan inc.  ', 'Josan inc.  ', '', '2 St. Lawrence Ave.   Toronto. Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(904, 3, 'customer', 0, 'General', 'Joseph  ', 'Joseph  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(905, 3, 'customer', 0, 'General', 'Jrs Institute  ', 'Jrs Institute  ', '', '4168 FINCH AVE E- #G61         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(906, 3, 'customer', 0, 'General', 'Jude Anthonipillai  ', 'Jude Anthonipillai  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'mario@telax.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(907, 3, 'customer', 0, 'General', 'JV Clothing  ', 'JV Clothing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(908, 3, 'customer', 0, 'General', 'K-Soft Computer  ', 'K-Soft Computer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(909, 3, 'customer', 0, 'General', 'K.K Company  ', 'K.K Company  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00');
INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `credit_limit`, `credit_term`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `vat_reg`, `gst_reg`, `credit_enjoy_days`, `customer_credit_limit`) VALUES
(910, 3, 'customer', 0, 'General', 'Kaimera Media Inc.   ', 'Kaimera Media Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(911, 3, 'customer', 0, 'General', 'KALYVIA GREEK RESTAURANT   ', 'KALYVIA GREEK RESTAURANT   ', '', '420 DANFORTH AVENUE       ', 'Toronto', 'Ont.', '', 'Canada', '416-463-3333  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(912, 3, 'customer', 0, 'General', 'Kamisori Inc  ', 'Kamisori Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(913, 3, 'customer', 0, 'General', 'Kamral Khan  ', 'Kamral Khan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(914, 3, 'customer', 0, 'General', 'Kamtel Communications  ', 'Kamtel Communications  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(915, 3, 'customer', 0, 'General', 'Kandhiah Ramanan  ', 'Kandhiah Ramanan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(916, 3, 'customer', 0, 'General', 'Kanga vellayutham  ', 'Kanga vellayutham  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(917, 3, 'customer', 0, 'General', 'KAPLAN  ', 'KAPLAN  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(918, 3, 'customer', 0, 'General', 'Karen Golan  ', 'Karen Golan  ', '', '118 Sultana Ave.   North York; On.      ', 'Toronto', 'Ont.', '', 'Canada', '   ', 'mmiller@mgdvrs.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(919, 3, 'customer', 0, 'General', 'Karen Munson  ', 'Karen Munson  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(920, 3, 'customer', 0, 'General', 'Kavi  ', 'Kavi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'rguevara@cortexx.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(921, 3, 'customer', 0, 'General', 'Kavi K  ', 'Kavi K  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(922, 3, 'customer', 0, 'General', 'KB Smart Solution Inc.   ', 'KB Smart Solution Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'raman@tortel.ca; ravi@broadconnect.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(923, 3, 'customer', 0, 'General', 'KCCS   ', 'KCCS   ', '', '2 Ivandale Rd.   Stoufville; On.      ', 'Toronto', 'Ont.', '', 'Canada', '416-574-7670  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(924, 3, 'customer', 0, 'General', 'Keith Ashington  ', 'Keith Ashington  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(925, 3, 'customer', 0, 'General', 'Kelvin @ Powernode  ', 'Kelvin @ Powernode  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(926, 3, 'customer', 0, 'General', 'Ken (hardwood Floor Co.)  ', 'Ken (hardwood Floor Co.)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'lyap1@hotmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(927, 3, 'customer', 0, 'General', 'Ken Wilson  ', 'Ken Wilson  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(928, 3, 'customer', 0, 'General', 'Kengeswaran Manoharan  ', 'Kengeswaran Manoharan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(929, 3, 'customer', 0, 'General', 'Kesavan Gas Bar  ', 'Kesavan Gas Bar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(930, 3, 'customer', 0, 'General', 'Keshutech  ', 'Keshutech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(931, 3, 'customer', 0, 'General', 'Kevin Lai  ', 'Kevin Lai  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(932, 3, 'customer', 0, 'General', 'Kevin Tinney  ', 'Kevin Tinney  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(933, 3, 'customer', 0, 'General', 'Kevin Wiilium  ', 'Kevin Wiilium  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(934, 3, 'customer', 0, 'General', 'KHALID FELIFEL  ', 'KHALID FELIFEL  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(935, 3, 'customer', 0, 'General', 'Khalid Sheikh  ', 'Khalid Sheikh  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(936, 3, 'customer', 0, 'General', 'KIC TECHNOLOGIES INC  ', 'KIC TECHNOLOGIES INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(937, 3, 'customer', 0, 'General', 'King City Builders Inc  ', 'King City Builders Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(938, 3, 'customer', 0, 'General', 'KINGWAVE GLOBAL INC  ', 'KINGWAVE GLOBAL INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-946-9939  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(939, 3, 'customer', 0, 'General', 'Kk Company(ink)  ', 'Kk Company(ink)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(940, 3, 'customer', 0, 'General', 'Kk Electronics Corporation  ', 'Kk Electronics Corporation  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(941, 3, 'customer', 0, 'General', 'Knowledge Base Technology Specialist Inc  ', 'Knowledge Base Technology Specialist Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(942, 3, 'customer', 0, 'General', 'Konektix Consulting  ', 'Konektix Consulting  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(943, 3, 'customer', 0, 'General', 'KP Office Furniture  ', 'KP Office Furniture  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(944, 3, 'customer', 0, 'General', 'KPF Inc.  ', 'KPF Inc.  ', '', '50 Weybright Crt. #4   Scarborough; Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '4163355622', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(945, 3, 'customer', 0, 'General', 'Kraft Berger LLP  ', 'Kraft Berger LLP  ', '', '3160 Steeles Ave. east   Suite 300      ', 'Toronto', 'Ont.', '', 'Canada', '9054752222', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(946, 3, 'customer', 0, 'General', 'Ks Security Solutions Ltd  ', 'Ks Security Solutions Ltd  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(947, 3, 'customer', 0, 'General', 'Kugan Kanthiah  ', 'Kugan Kanthiah  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(948, 3, 'customer', 0, 'General', 'Kulaga Consulting Inc.  ', 'Kulaga Consulting Inc.  ', '', '46 Kempseli cres.   Toronto; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(949, 3, 'customer', 0, 'General', 'Kupids play  ', 'Kupids play  ', '', '48012-1881   Yonge St.      ', 'Toronto', 'Ont.', '', 'Canada', 'M4S 1Y6  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(950, 3, 'customer', 0, 'General', 'Kutty  ', 'Kutty  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(951, 3, 'customer', 0, 'General', 'KYZ HOLDINGS  ', 'KYZ HOLDINGS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(952, 3, 'customer', 0, 'General', 'LabXNow Inc.  ', 'LabXNow Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'rob@technic-cda.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(953, 3, 'customer', 0, 'General', 'Lake  ', 'Lake  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(954, 3, 'customer', 0, 'General', 'Lake Shore Auto Service  ', 'Lake Shore Auto Service  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(955, 3, 'customer', 0, 'General', 'Lakhbir  ', 'Lakhbir  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4167259120', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(956, 3, 'customer', 0, 'General', 'LAMAR  ', 'LAMAR  ', '', 'PAUL DROHAN   300-1370 DON MILLS ROAD      ', 'Toronto', 'Ont.', '', 'Canada', '4162542490', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(957, 3, 'customer', 0, 'General', 'Lamour Nails  ', 'Lamour Nails  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416-725-7498  ', 'info@nuimpact.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(958, 3, 'customer', 0, 'General', 'Lantik  ', 'Lantik  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(959, 3, 'customer', 0, 'General', 'Laptop for Less  ', 'Laptop for Less  ', '', 'Laptop for Less         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(960, 3, 'customer', 0, 'General', 'laptopsforless  ', 'laptopsforless  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(961, 3, 'customer', 0, 'General', 'Larry Silverberg', 'Larry Silverberg', '', '7181 Woodbine Ave  Markham 04  Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(962, 3, 'customer', 0, 'General', 'LarrySilverberg  ', 'LarrySilverberg  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(963, 3, 'customer', 0, 'General', 'LASER FICHE SSC  ', 'LASER FICHE SSC  ', '', '   7100 WOODBINE AVE      ', 'Toronto', 'Ont.', '', 'Canada', '9056041791', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(964, 3, 'customer', 0, 'General', 'Laserfiche Startegic Services  ', 'Laserfiche Startegic Services  ', '', '1 Valleybrook Drive   North York; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'antony.rozairo@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(965, 3, 'customer', 0, 'General', 'Laurin Computers  ', 'Laurin Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(966, 3, 'customer', 0, 'General', 'LCD Masters  ', 'LCD Masters  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '647-349-3633  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(967, 3, 'customer', 0, 'General', 'Le Man  ', 'Le Man  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(968, 3, 'customer', 0, 'General', 'LEE LOCKE  ', 'LEE LOCKE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4168544823', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(969, 3, 'customer', 0, 'General', 'Leman!  ', 'Leman!  ', '', '50 145 Royal Crest. Court         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(970, 3, 'customer', 0, 'General', 'LEMCAD CONSULTANTS  ', 'LEMCAD CONSULTANTS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4167213698', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(971, 3, 'customer', 0, 'General', 'Leo Carreon  ', 'Leo Carreon  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(972, 3, 'customer', 0, 'General', 'Leo Zaffino  ', 'Leo Zaffino  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(973, 3, 'customer', 0, 'General', 'Liberty Tax Service  ', 'Liberty Tax Service  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(974, 3, 'customer', 0, 'General', 'Liberty Tax Service (birchmount)  ', 'Liberty Tax Service (birchmount)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(975, 3, 'customer', 0, 'General', 'Libra Services Inc.  ', 'Libra Services Inc.  ', '', '18 Olympus Drive; LL   Richmond Hill; On      ', 'Toronto', 'Ont.', '', 'Canada', '4168578716', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(976, 3, 'customer', 0, 'General', 'Light Of Life  ', 'Light Of Life  ', '', '1020 Denison St         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(977, 3, 'customer', 0, 'General', 'Light of Life Church  ', 'Light of Life Church  ', '', '   1080 Bellamy Rd      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(978, 3, 'customer', 0, 'General', 'Linclogic  ', 'Linclogic  ', '', '9 Woodhall Rd.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(979, 3, 'customer', 0, 'General', 'Linkport Corp Inc.  ', 'Linkport Corp Inc.  ', '', '6985 Davand Dr. Unit #6         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(980, 3, 'customer', 0, 'General', 'Linktech  ', 'Linktech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(981, 3, 'customer', 0, 'General', 'Liquid  ', 'Liquid  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(982, 3, 'customer', 0, 'General', 'Lisa M Cavalieri  ', 'Lisa M Cavalieri  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(983, 3, 'customer', 0, 'General', 'LiVante Developments  ', 'LiVante Developments  ', '', '   1 Steelcase Road West Unit4      ', 'Toronto', 'Ont.', '', 'Canada', '9054758888', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(984, 3, 'customer', 0, 'General', 'Livante Holdings (305 Blooming) Inc.  ', 'Livante Holdings (305 Blooming) Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(985, 3, 'customer', 0, 'General', 'Living Realty Inc.  ', 'Living Realty Inc.  ', '', '8 STEELCASE ROAD WEST         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(986, 3, 'customer', 0, 'General', 'Logan  ', 'Logan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(987, 3, 'customer', 0, 'General', 'Logaraj Tharmalingham  ', 'Logaraj Tharmalingham  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(988, 3, 'customer', 0, 'General', 'Lolimpin Gym Equipment  ', 'Lolimpin Gym Equipment  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(989, 3, 'customer', 0, 'General', 'Longtech Electronics  ', 'Longtech Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(990, 3, 'customer', 0, 'General', 'LPT   ', 'LPT   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(991, 3, 'customer', 0, 'General', 'Lucky Electronics  ', 'Lucky Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(992, 3, 'customer', 0, 'General', 'Lunch Lady (Markham)  ', 'Lunch Lady (Markham)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4167029397', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(993, 3, 'customer', 0, 'General', 'Lunch Lady North York  ', 'Lunch Lady North York  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(994, 3, 'customer', 0, 'General', 'LUNZIO- CONCORD HARDWARE  ', 'LUNZIO- CONCORD HARDWARE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(995, 3, 'customer', 0, 'General', 'Luxruy Coach   ', 'Luxruy Coach   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(996, 3, 'customer', 0, 'General', 'M2 Dental Lab.  ', 'M2 Dental Lab.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(997, 3, 'customer', 0, 'General', 'MA COMPUTERS INC  ', 'MA COMPUTERS INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4165206747', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(998, 3, 'customer', 0, 'General', 'Maddy Carpet Store (DA VINCCI INTERIORS INC.)  ', 'Maddy Carpet Store (DA VINCCI INTERIORS INC.)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '0', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(999, 3, 'customer', 0, 'General', 'Maiers Northern Equipment  ', 'Maiers Northern Equipment  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'diamondsforless@rapidweb.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1000, 3, 'customer', 0, 'General', 'Mainstream Human Resource inc  ', 'Mainstream Human Resource inc  ', '', '333 Denison St.    Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1001, 3, 'customer', 0, 'General', 'Majid Cell Phone Store  ', 'Majid Cell Phone Store  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'accountant@autoad.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1002, 3, 'customer', 0, 'General', 'Malvern Contract Interiors LTD  ', 'Malvern Contract Interiors LTD  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1003, 3, 'customer', 0, 'General', 'Manjith Singh  ', 'Manjith Singh  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1004, 3, 'customer', 0, 'General', 'Manuel Jesudasan  ', 'Manuel Jesudasan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1005, 3, 'customer', 0, 'General', 'Marc Consultant  ', 'Marc Consultant  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'john@dibainternational.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1006, 3, 'customer', 0, 'General', 'Maria (Europeon furniture)  ', 'Maria (Europeon furniture)  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1007, 3, 'customer', 0, 'General', 'Maria Perri  ', 'Maria Perri  ', '', '204 Osborn Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1008, 3, 'customer', 0, 'General', 'Marida Properties Inc  ', 'Marida Properties Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1009, 3, 'customer', 0, 'General', 'Mario ( Filbtron)  ', 'Mario ( Filbtron)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1010, 3, 'customer', 0, 'General', 'MARK (JOE FRIEND)  ', 'MARK (JOE FRIEND)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4165645770', 'mike.abar@microland.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1011, 3, 'customer', 0, 'General', 'Mark Wong  ', 'Mark Wong  ', '', '648 South Sonya Place         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1012, 3, 'customer', 0, 'General', 'Markham Auto Body  ', 'Markham Auto Body  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1013, 3, 'customer', 0, 'General', 'Markham Excutive Office  ', 'Markham Excutive Office  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1014, 3, 'customer', 0, 'General', 'Markham Taxi(Akram)  ', 'Markham Taxi(Akram)  ', '', '80', 'Toronto', 'Ont.', '', 'Canada', '4162711191', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1015, 3, 'customer', 0, 'General', 'Marking  ', 'Marking  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1016, 3, 'customer', 0, 'General', 'Marking Equipment  ', 'Marking Equipment  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1017, 3, 'customer', 0, 'General', 'Marposs Corporation  ', 'Marposs Corporation  ', '', '333 Denison St   Markham       ', 'Toronto', 'Ont.', '', 'Canada', 'L3R 1B7  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1018, 3, 'customer', 0, 'General', 'Mass Electronics  ', 'Mass Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1019, 3, 'customer', 0, 'General', 'Masterplan Design  ', 'Masterplan Design  ', '', '7243 Windbreak Crt         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1020, 3, 'customer', 0, 'General', 'Mathieu  ', 'Mathieu  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1021, 3, 'customer', 0, 'General', 'Matrix Research Limited  ', 'Matrix Research Limited  ', '', '55 Don Caster Ave.   Thornhill; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9057071300', 'manuel@mjlawyers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1022, 3, 'customer', 0, 'General', 'Matt Lacey  ', 'Matt Lacey  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416-562-0410  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1023, 3, 'customer', 0, 'General', 'Mauro Morgani', 'Mauro Morgani', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1024, 3, 'customer', 0, 'General', 'Mavi Travel  ', 'Mavi Travel  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1025, 3, 'customer', 0, 'General', 'Mayuran K  ', 'Mayuran K  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'diluxhan@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1026, 3, 'customer', 0, 'General', 'MB Computer  ', 'MB Computer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905 417 9996  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, 2, 'Partner Price', NULL, NULL, NULL, '0.00'),
(1027, 3, 'customer', 0, 'General', 'MB Data Net  ', 'MB Data Net  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1028, 3, 'customer', 0, 'General', 'Mbcap  ', 'Mbcap  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'hugo@directbuy334.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1029, 3, 'customer', 0, 'General', 'McFadden Design  ', 'McFadden Design  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1030, 3, 'customer', 0, 'General', 'Medix Online  ', 'Medix Online  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1031, 3, 'customer', 0, 'General', 'Medix School (brampton)  ', 'Medix School (brampton)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1032, 3, 'customer', 0, 'General', 'Medix School (brantford)  ', 'Medix School (brantford)  ', '', '39 KING GEORGE RD   BRANTFORD      ', 'Toronto', 'Ont.', '', 'Canada', '5197524859', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1033, 3, 'customer', 0, 'General', 'Medix School (kitchner)  ', 'Medix School (kitchner)  ', '', '  248 Stirling Ave. South   unit 14 Kitchener 04 N2G3M9 Canada', 'Toronto', 'Ont.', '', 'Canada', '5198950013', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1034, 3, 'customer', 0, 'General', 'Medix School (north York)  ', 'Medix School (north York)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1035, 3, 'customer', 0, 'General', 'Medix School (scarborough)  ', 'Medix School (scarborough)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1036, 3, 'customer', 0, 'General', 'Medix School (toronto)  ', 'Medix School (toronto)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1037, 3, 'customer', 0, 'General', 'Medix School London  ', 'Medix School London  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1038, 3, 'customer', 0, 'General', 'Mehrafza Gholipouri  ', 'Mehrafza Gholipouri  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1039, 3, 'customer', 0, 'General', 'Menache Zohar  ', 'Menache Zohar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'dougmanson@yahoo.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1040, 3, 'customer', 0, 'General', 'Merchant Of Tennis  ', 'Merchant Of Tennis  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1041, 3, 'customer', 0, 'General', 'Merchants Canada Inc.  ', 'Merchants Canada Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1042, 3, 'customer', 0, 'General', 'Merinos Carpet Inc.  ', 'Merinos Carpet Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1043, 3, 'customer', 0, 'General', 'Meron  ', 'Meron  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1044, 3, 'customer', 0, 'General', 'Metric Research  ', 'Metric Research  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-707-1300  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1045, 3, 'customer', 0, 'General', 'Metro Electronic  ', 'Metro Electronic  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1046, 3, 'customer', 0, 'General', 'Mg Security Solutions Inc.  ', 'Mg Security Solutions Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1047, 3, 'customer', 0, 'General', 'Mhs Inc  ', 'Mhs Inc  ', '', '3770 VICTORIA PARK AVE         ', 'Toronto', 'Ont.', '', 'Canada', '4164922627', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1048, 3, 'customer', 0, 'General', 'MI5 Digital  ', 'MI5 Digital  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1049, 3, 'customer', 0, 'General', 'MICHAEL LEVY  ', 'MICHAEL LEVY  ', '', '337 JOHN ST; UNIT #21      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1050, 3, 'customer', 0, 'General', 'Michelle T.  ', 'Michelle T.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1051, 3, 'customer', 0, 'General', 'Mick  ', 'Mick  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1052, 3, 'customer', 0, 'General', 'Micro-netics Computer System  ', 'Micro-netics Computer System  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1053, 3, 'customer', 0, 'General', 'Micro Electronics  ', 'Micro Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1054, 3, 'customer', 0, 'General', 'MICROLAND  ', 'MICROLAND  ', '', 'MIKE ABAR         ', 'Toronto', 'Ont.', '', 'Canada', '9059401982', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1055, 3, 'customer', 0, 'General', 'Micropeer Solutions  ', 'Micropeer Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1056, 3, 'customer', 0, 'General', 'Midas 2800 Dufferin st.   ', 'Midas 2800 Dufferin st.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1057, 3, 'customer', 0, 'General', 'Middleton Group  ', 'Middleton Group  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1058, 3, 'customer', 0, 'General', 'midex', 'midex', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1059, 3, 'customer', 0, 'General', 'Mike Kronfield  ', 'Mike Kronfield  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1060, 3, 'customer', 0, 'General', 'Mike Mikhbor  ', 'Mike Mikhbor  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1061, 3, 'customer', 0, 'General', 'MILLENIUM MICRO  ', 'MILLENIUM MICRO  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1062, 3, 'customer', 0, 'General', 'Millennium 3000 RL Inc.  ', 'Millennium 3000 RL Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1063, 3, 'customer', 0, 'General', 'Milton   ', 'Milton   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1064, 3, 'customer', 0, 'General', 'Mimic Print  ', 'Mimic Print  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1065, 3, 'customer', 0, 'General', 'Mimobile  ', 'Mimobile  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1066, 3, 'customer', 0, 'General', 'Min & Associate Inc. Architect  ', 'Min & Associate Inc. Architect  ', '', '800 Denison St. Suite 3A   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '416-456-1074  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1067, 3, 'customer', 0, 'General', 'Mind Mist', 'Mind Mist', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1068, 3, 'customer', 0, 'General', 'Ming Ming Decirative Glass & Mirrors LTD', 'Ming Ming Decirative Glass & Mirrors LTD', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4167548880', 'info@mingmingglass.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1069, 3, 'customer', 0, 'General', 'Minute Taxi  ', 'Minute Taxi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-738-6611  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1070, 3, 'customer', 0, 'General', 'Minute Tech  ', 'Minute Tech  ', '', '253 DIVISION ST         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1071, 3, 'customer', 0, 'General', 'Misael Gonzales  ', 'Misael Gonzales  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1072, 3, 'customer', 0, 'General', 'Mls Machinary  ', 'Mls Machinary  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1073, 3, 'customer', 0, 'General', 'MMH Architects Inc.   ', 'MMH Architects Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1074, 3, 'customer', 0, 'General', 'mobelease', 'mobelease', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1075, 3, 'customer', 0, 'General', 'modcom computer', 'modcom computer', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1076, 3, 'customer', 0, 'General', 'Modcom Computers', 'Modcom Computers', '', '281 College Street  Toronto 04 M5T 1R9 Canada', 'Toronto', 'Ont.', '', 'Canada', 'Phone number (416) 4', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1077, 3, 'customer', 0, 'General', 'Modcom IT Solutions', 'Modcom IT Solutions', '', '7310 Woodbine Ave.  Unit 6  Markham 04 L3R1A4 Canada', 'Toronto', 'Ont.', '', 'Canada', '9052580333', 'sales@modcom.ca', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1078, 3, 'customer', 0, 'General', 'MODCOMCOMPUTERS', 'MODCOMCOMPUTERS', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1079, 3, 'customer', 0, 'General', 'Mohammad Mohebi', 'Mohammad Mohebi', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1080, 3, 'customer', 0, 'General', 'Mohtaram Madady  ', 'Mohtaram Madady  ', '', '905-882-5386         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1081, 3, 'customer', 0, 'General', 'Monterey Park Inc.   ', 'Monterey Park Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'tomw@pppoe.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1082, 3, 'customer', 0, 'General', 'Mooney`s  Bay Computer  ', 'Mooney`s  Bay Computer  ', '', '733 Ridgewood Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'dan@isitpro.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1083, 3, 'customer', 0, 'General', 'MORSE CANADA SYSTEMS  ', 'MORSE CANADA SYSTEMS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1084, 3, 'customer', 0, 'General', 'Mpr Direct Ltd.  ', 'Mpr Direct Ltd.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1085, 3, 'customer', 0, 'General', 'Mr Mark Wong  ', 'Mr Mark Wong  ', '', '648 South Sonya Place         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1086, 3, 'customer', 0, 'General', 'Mr. Brian  Sharp  ', 'Mr. Brian  Sharp  ', '', '811 Spring St.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1087, 3, 'customer', 0, 'General', 'Mr. Rod Yim  ', 'Mr. Rod Yim  ', '', '207 Railway Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1088, 3, 'customer', 0, 'General', 'Mr. Terry A Beinecke  ', 'Mr. Terry A Beinecke  ', '', '7439 Cinnamon Woods Dr.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1089, 3, 'customer', 0, 'General', 'MR.DAVID  ', 'MR.DAVID  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '2893565328', 'markhamtaxi@rogers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1090, 3, 'customer', 0, 'General', 'MR.EDMOSCOVICI   ', 'MR.EDMOSCOVICI   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4169084955', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1091, 3, 'customer', 0, 'General', 'MS.ANN LEUNG  ', 'MS.ANN LEUNG  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4165687045', 'naved@mhs.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1092, 3, 'customer', 0, 'General', 'Mt Systems International Inc.  ', 'Mt Systems International Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1093, 3, 'customer', 0, 'General', 'Mtcc694  ', 'Mtcc694  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1094, 3, 'customer', 0, 'General', 'Multichoice  ', 'Multichoice  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1095, 3, 'customer', 0, 'General', 'Multy Communication  ', 'Multy Communication  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1096, 3, 'customer', 0, 'General', 'Multycom Communications  ', 'Multycom Communications  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1097, 3, 'customer', 0, 'General', 'Music Depot  ', 'Music Depot  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'risa@edosushi.com;info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1098, 3, 'customer', 0, 'General', 'MVN Networks  ', 'MVN Networks  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'iyoung@radiantlasercut.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1099, 3, 'customer', 0, 'General', 'My Tech (Shankar)  ', 'My Tech (Shankar)  ', '', 'Scarborough Town Center         ', 'Toronto', 'Ont.', '', 'Canada', '4168094810', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1100, 3, 'customer', 0, 'General', 'MY zaidys Bakery  ', 'MY zaidys Bakery  ', '', 'Uzi Atia         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1101, 3, 'customer', 0, 'General', 'Najwa  ', 'Najwa  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1102, 3, 'customer', 0, 'General', 'NANDKUMAR  ', 'NANDKUMAR  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4167278675', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1103, 3, 'customer', 0, 'General', 'Nasir Eye Clinic  ', 'Nasir Eye Clinic  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'sinteredalloys@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1104, 3, 'customer', 0, 'General', 'Natalie DiBartolomeo  ', 'Natalie DiBartolomeo  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-585-4800  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1105, 3, 'customer', 0, 'General', 'National East Readymates  ', 'National East Readymates  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1106, 3, 'customer', 0, 'General', 'National East Readymix Corp.  ', 'National East Readymix Corp.  ', '', '2695 14th Ave   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1107, 3, 'customer', 0, 'General', 'NATS  ', 'NATS  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1108, 3, 'customer', 0, 'General', 'Naved Ashraf  ', 'Naved Ashraf  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1109, 3, 'customer', 0, 'General', 'Navi Wireless  ', 'Navi Wireless  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1110, 3, 'customer', 0, 'General', 'NAZTEC  ', 'NAZTEC  ', '', '1199 Cardiff Blvd.   Mississauga; On.      ', 'Toronto', 'Ont.', '', 'Canada', '4165609979', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1111, 3, 'customer', 0, 'General', 'NCIX  ', 'NCIX  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1112, 3, 'customer', 0, 'General', 'Neeson & Associates  ', 'Neeson & Associates  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1113, 3, 'customer', 0, 'General', 'Nesan Subra  ', 'Nesan Subra  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1114, 3, 'customer', 0, 'General', 'Net 2 Web  ', 'Net 2 Web  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'sloban@davisgroup.net;info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1115, 3, 'customer', 0, 'General', 'New Age Sound & Lighting  ', 'New Age Sound & Lighting  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1116, 3, 'customer', 0, 'General', 'NEW AND USED SYSTEMS  ', 'NEW AND USED SYSTEMS  ', '', '   1202 FOX CRESCENT      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'manoharan.kengeswaran@intria.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1117, 3, 'customer', 0, 'General', 'New Horizon Trainning Centers  ', 'New Horizon Trainning Centers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1118, 3, 'customer', 0, 'General', 'Newage Sound & Light  ', 'Newage Sound & Light  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'kbalkos@ekosmos.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1119, 3, 'customer', 0, 'General', 'Newlink  ', 'Newlink  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1120, 3, 'customer', 0, 'General', 'Nick Concord Hardware  ', 'Nick Concord Hardware  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1121, 3, 'customer', 0, 'General', 'NIMA-MARIAM HOTEL   ', 'NIMA-MARIAM HOTEL   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4167085052', 'production@Millennium3000.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1122, 3, 'customer', 0, 'General', 'Nishan Video  ', 'Nishan Video  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1123, 3, 'customer', 0, 'General', 'Nitta casings  ', 'Nitta casings  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1124, 3, 'customer', 0, 'General', 'Nivlog Investment Ltd.  ', 'Nivlog Investment Ltd.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1125, 3, 'customer', 0, 'General', 'Nizza  ', 'Nizza  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4164567573', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1126, 3, 'customer', 0, 'General', 'Nolex Specialties (Nunzio)  ', 'Nolex Specialties (Nunzio)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1127, 3, 'customer', 0, 'General', 'Nor-jon Management Associates  ', 'Nor-jon Management Associates  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1128, 3, 'customer', 0, 'General', 'Nordirect Communications  ', 'Nordirect Communications  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1129, 3, 'customer', 0, 'General', 'North York Family Medical Center  ', 'North York Family Medical Center  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00');
INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `credit_limit`, `credit_term`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `vat_reg`, `gst_reg`, `credit_enjoy_days`, `customer_credit_limit`) VALUES
(1130, 3, 'customer', 0, 'General', 'North York Printing & Graphics Inc.  ', 'North York Printing & Graphics Inc.  ', '', '101 Amber St.   Unit 10; Markham      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1131, 3, 'customer', 0, 'General', 'Notebook Solutions Inc.  ', 'Notebook Solutions Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1132, 3, 'customer', 0, 'General', 'Nouvelle Management Group Ltd.  ', 'Nouvelle Management Group Ltd.  ', '', '7225 Woodbine Ave. Suite 115   Markham. On.      ', 'Toronto', 'Ont.', '', 'Canada', '9056046644', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1133, 3, 'customer', 0, 'General', 'Now thats Catering   ', 'Now thats Catering   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1134, 3, 'customer', 0, 'General', 'Nu-image Supplies  ', 'Nu-image Supplies  ', '', '3001 Finch Ave. W         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1135, 3, 'customer', 0, 'General', 'NUIMPACT  ', 'NUIMPACT  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '905 475-8827  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1136, 3, 'customer', 0, 'General', 'Nunzio Iacobellis  ', 'Nunzio Iacobellis  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '9057071994', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1137, 3, 'customer', 0, 'General', 'Oasys Healthcare  ', 'Oasys Healthcare  ', '', '191 MAIN STREET N.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1138, 3, 'customer', 0, 'General', 'OBSERVER PUBLICATIONS INC.', 'OBSERVER PUBLICATIONS INC.', '', '304-177 Danforth Ave.  Toronto 04 M4K1N2 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1139, 3, 'customer', 0, 'General', 'Oleg Margar  ', 'Oleg Margar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1140, 3, 'customer', 0, 'General', 'OMKAR Services Inc.   ', 'OMKAR Services Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1141, 3, 'customer', 0, 'General', 'Onion Corporation', 'Onion Corporation', '', '187 Denison St  Markham  L3R1B5 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1142, 3, 'customer', 0, 'General', 'ORange Inc.  ', 'ORange Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1143, 3, 'customer', 0, 'General', 'Orchid-tea Lounge  ', 'Orchid-tea Lounge  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1144, 3, 'customer', 0, 'General', 'OSCAR SERVICE  ', 'OSCAR SERVICE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '18556967227', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1145, 3, 'customer', 0, 'General', 'Oxlee Pharmacy  ', 'Oxlee Pharmacy  ', '', '151 Esna Park   Markham; on      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'shanas.mohamed@uhn.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1146, 3, 'customer', 0, 'General', 'Paban', 'Paban', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1147, 3, 'customer', 0, 'General', 'Palantair Computers  ', 'Palantair Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1148, 3, 'customer', 0, 'General', 'Panchan Palaninathan  ', 'Panchan Palaninathan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1149, 3, 'customer', 0, 'General', 'PAPER DEPOT  ', 'PAPER DEPOT  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1150, 3, 'customer', 0, 'General', 'Par Computer  ', 'Par Computer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1151, 3, 'customer', 0, 'General', 'Parkfield Junior Public School  ', 'Parkfield Junior Public School  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1152, 3, 'customer', 0, 'General', 'Parkhurst Sq. Unit 2  ', 'Parkhurst Sq. Unit 2  ', '', 'Brampton; On   L6T 5M5      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1153, 3, 'customer', 0, 'General', 'Parsnet Systems  ', 'Parsnet Systems  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1154, 3, 'customer', 0, 'General', 'Passport International.com Inc.  ', 'Passport International.com Inc.  ', '', 'A329 Queen St E.   Toronto; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1155, 3, 'customer', 0, 'General', 'Patrick King  ', 'Patrick King  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1156, 3, 'customer', 0, 'General', 'Patrick Thomas  ', 'Patrick Thomas  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '6476695462', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1157, 3, 'customer', 0, 'General', 'Patti -Lynn Inteeriors  ', 'Patti -Lynn Inteeriors  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1158, 3, 'customer', 0, 'General', 'Paul Westjet  ', 'Paul Westjet  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1159, 3, 'customer', 0, 'General', 'PB Furnishing Ltd.   ', 'PB Furnishing Ltd.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1160, 3, 'customer', 0, 'General', 'Pc Corner Inc.  ', 'Pc Corner Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1161, 3, 'customer', 0, 'General', 'Pc Parts  ', 'Pc Parts  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1162, 3, 'customer', 0, 'General', 'PCI Consultants  ', 'PCI Consultants  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1163, 3, 'customer', 0, 'General', 'PCI Services Limited  ', 'PCI Services Limited  ', '', '   2750 14th Ave.   Markham 04 L3R0B6 Canada', 'Toronto', 'Ont.', '', 'Canada', '905-604-7241  ', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1164, 3, 'customer', 0, 'General', 'Perry  ', 'Perry  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1165, 3, 'customer', 0, 'General', 'Pet From Scarborough  ', 'Pet From Scarborough  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1166, 3, 'customer', 0, 'General', 'Peter & Henson  ', 'Peter & Henson  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'jennifer@stoddardsilencers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1167, 3, 'customer', 0, 'General', 'Peter (Concord Hardware Markham)  ', 'Peter (Concord Hardware Markham)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1168, 3, 'customer', 0, 'General', 'Peter (Medix)  ', 'Peter (Medix)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'gta.mec@gmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1169, 3, 'customer', 1, 'General', 'ACI Limited', 'ACI Limited', '', '245,Tejgaon I/A,Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', '1712264814', 'tol1@test.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, 0, '100.00'),
(1170, 3, 'customer', 0, 'General', 'Peter De Souza  ', 'Peter De Souza  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '647-403-4152  ', 'krish@iwigroup.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1171, 3, 'customer', 0, 'General', 'PETER DSOUZA  ', 'PETER DSOUZA  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '6474034152', 'satheesh@medixschool.ca;info@modcom.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1172, 3, 'customer', 0, 'General', 'Peter Summer  ', 'Peter Summer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4164186657', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1173, 3, 'customer', 0, 'General', 'Pharmasystem  ', 'Pharmasystem  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1174, 3, 'customer', 0, 'General', 'Phone Order  ', 'Phone Order  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1175, 3, 'customer', 0, 'General', 'Pinewood Electronics  ', 'Pinewood Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1176, 3, 'customer', 0, 'General', 'Pjs Marketing  ', 'Pjs Marketing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1177, 3, 'customer', 0, 'General', 'Pk Enterprise  ', 'Pk Enterprise  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1178, 3, 'customer', 0, 'General', 'Planview Utility Services Ltd.  ', 'Planview Utility Services Ltd.  ', '', '7270 Woodbine Ave   Suite 201      ', 'Toronto', 'Ont.', '', 'Canada', 'L3R4B9  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1179, 3, 'customer', 0, 'General', 'PMC Solutions', 'PMC Solutions', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1180, 3, 'customer', 0, 'General', 'Police Ordinance  ', 'Police Ordinance  ', '', '182 Riviera Drv   Markham; Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1181, 3, 'customer', 0, 'General', 'POS Company  ', 'POS Company  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1182, 3, 'customer', 0, 'General', 'Power Line Plus  ', 'Power Line Plus  ', '', '160-Silverstar Blvd         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1183, 3, 'customer', 0, 'General', 'Powernode Computer Inc  ', 'Powernode Computer Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1184, 3, 'customer', 0, 'General', 'Pradeep Chaudhry  ', 'Pradeep Chaudhry  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1185, 3, 'customer', 0, 'General', 'pratical immigration', 'pratical immigration', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '6476860778', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1186, 3, 'customer', 0, 'General', 'Pravesh  ', 'Pravesh  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1187, 3, 'customer', 0, 'General', 'Premier Electronic Parts  ', 'Premier Electronic Parts  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1188, 3, 'customer', 0, 'General', 'Premier Home Care   ', 'Premier Home Care   ', '', '   801 York Mills Rd #216      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1189, 3, 'customer', 0, 'General', 'Premier Home Franchise  ', 'Premier Home Franchise  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1190, 3, 'customer', 0, 'General', 'Presidential Building Maintanance Inc.   ', 'Presidential Building Maintanance Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1191, 3, 'customer', 0, 'General', 'Prime Taste  ', 'Prime Taste  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1192, 3, 'customer', 0, 'General', 'Primex Electric LTD  ', 'Primex Electric LTD  ', '', 'For: Guess Fairview Mall          ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1193, 3, 'customer', 0, 'General', 'Print Three  ', 'Print Three  ', '', '200 John St. #100         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1194, 3, 'customer', 0, 'General', 'Pro Mount  ', 'Pro Mount  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1195, 3, 'customer', 0, 'General', 'Professional Computer Software & Install  ', 'Professional Computer Software & Install  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1196, 3, 'customer', 0, 'General', 'Promounts  ', 'Promounts  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1197, 3, 'customer', 0, 'General', 'Propertymax  ', 'Propertymax  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1198, 3, 'customer', 0, 'General', 'Qingwave Global  ', 'Qingwave Global  ', '', '144 Steele Case Rd.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1199, 3, 'customer', 0, 'General', 'Qingwave Global Trading  ', 'Qingwave Global Trading  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1200, 3, 'customer', 0, 'General', 'Quadsource Canada Inc.   ', 'Quadsource Canada Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1201, 3, 'customer', 0, 'General', 'Qualitest International Inc.   ', 'Qualitest International Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1202, 3, 'customer', 0, 'General', 'Quality Built-in Home System', 'Quality Built-in Home System', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1203, 3, 'customer', 0, 'General', 'Quality Hotel & Suits  ', 'Quality Hotel & Suits  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'mario@filbitron.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1204, 3, 'customer', 0, 'General', 'Quality House Keeping  ', 'Quality House Keeping  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9053700449', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1205, 3, 'customer', 0, 'General', 'Quatro Card Technology  ', 'Quatro Card Technology  ', '', '50 East Beaver Creek Rd.   Unit 1 & 2       ', 'Toronto', 'Ont.', '', 'Canada', 'L4B1G6  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1206, 3, 'customer', 0, 'General', 'Quattro 4 Ragazze  ', 'Quattro 4 Ragazze  ', '', '1792 Danforth Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1207, 3, 'customer', 0, 'General', 'QUBYTE  ', 'QUBYTE  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1208, 3, 'customer', 0, 'General', 'R-J Machinery Inc.  ', 'R-J Machinery Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1209, 3, 'customer', 0, 'General', 'Radiant Lasercut  ', 'Radiant Lasercut  ', '', '1271 Denison St.   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '4162097065', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1210, 3, 'customer', 0, 'General', 'Rafiq  ', 'Rafiq  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1211, 3, 'customer', 0, 'General', 'Ragulan Pathmanathan  ', 'Ragulan Pathmanathan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1212, 3, 'customer', 0, 'General', 'Raha Eng. Inc  ', 'Raha Eng. Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1213, 3, 'customer', 0, 'General', 'Raha Enginnering Inc.  ', 'Raha Enginnering Inc.  ', '', '6-170 Esna Park Drv   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '9054707242', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1214, 3, 'customer', 0, 'General', 'Rahul  ', 'Rahul  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'PAUL@FWB-INC.COM  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1215, 3, 'customer', 0, 'General', 'Raja (mississauga)  ', 'Raja (mississauga)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1216, 3, 'customer', 0, 'General', 'Rajakone Realestate Inc.   ', 'Rajakone Realestate Inc.   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1217, 3, 'customer', 0, 'General', 'Rajakulan Kanagasabai  ', 'Rajakulan Kanagasabai  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1218, 3, 'customer', 0, 'General', 'RAJAN AMBALAVANNAR  ', 'RAJAN AMBALAVANNAR  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1219, 3, 'customer', 0, 'General', 'Rajeevan   ', 'Rajeevan   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1220, 3, 'customer', 0, 'General', 'RAKEEB  ', 'RAKEEB  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'vegijan@hotmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1221, 3, 'customer', 0, 'General', 'Rama Computers  ', 'Rama Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1222, 3, 'customer', 0, 'General', 'Ramanan Kandiah  ', 'Ramanan Kandiah  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1223, 3, 'customer', 0, 'General', 'Ramesh (cellphone Accessories)  ', 'Ramesh (cellphone Accessories)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1224, 3, 'customer', 0, 'General', 'Ramesh Chandok  ', 'Ramesh Chandok  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'peter.desantos@first-it.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1225, 3, 'customer', 0, 'General', 'Ramie-dvnt  ', 'Ramie-dvnt  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1226, 3, 'customer', 0, 'General', 'Ranjanas  ', 'Ranjanas  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1227, 3, 'customer', 0, 'General', 'Ranka  ', 'Ranka  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1228, 3, 'customer', 0, 'General', 'Ranka Enterprise Inc.  ', 'Ranka Enterprise Inc.  ', '', '7261 Victoria Park   Markham Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1229, 3, 'customer', 0, 'General', 'Rasika Wickramage  ', 'Rasika Wickramage  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'vgalibtax@rogers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1230, 3, 'customer', 0, 'General', 'Ravi  ', 'Ravi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1231, 3, 'customer', 0, 'General', 'Ravi Ambalvar  ', 'Ravi Ambalvar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1232, 3, 'customer', 0, 'General', 'Rawhide  ', 'Rawhide  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1233, 3, 'customer', 0, 'General', 'Ray & Olga  ', 'Ray & Olga  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1234, 3, 'customer', 0, 'General', 'Rds Import And Export  ', 'Rds Import And Export  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'fkaye@kayelaw.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1235, 3, 'customer', 0, 'General', 'Recycled Computers  ', 'Recycled Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1236, 3, 'customer', 0, 'General', 'Reena  ', 'Reena  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1237, 3, 'customer', 0, 'General', 'Refurbed It  ', 'Refurbed It  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1238, 3, 'customer', 0, 'General', 'Relaxology Wellness  ', 'Relaxology Wellness  ', '', '4310 Sherwood Town Unit 4   Missaussaga; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1239, 3, 'customer', 0, 'General', 'REMEDY  ', 'REMEDY  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1240, 3, 'customer', 0, 'General', 'Remnant Church  ', 'Remnant Church  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1241, 3, 'customer', 0, 'General', 'Renny Bettan  ', 'Renny Bettan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1242, 3, 'customer', 0, 'General', 'Retail Allow Matter  ', 'Retail Allow Matter  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1243, 3, 'customer', 0, 'General', 'Retail Tag Corp.', 'Retail Tag Corp.', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1244, 3, 'customer', 0, 'General', 'Rexcel Systems  ', 'Rexcel Systems  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1245, 3, 'customer', 0, 'General', 'Rich Blake  ', 'Rich Blake  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1246, 3, 'customer', 0, 'General', 'Richmondhill Wholesale Meat  ', 'Richmondhill Wholesale Meat  ', '', '70 Denison Rd.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1247, 3, 'customer', 0, 'General', 'Rick Coulter   ', 'Rick Coulter   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1248, 3, 'customer', 0, 'General', 'Ricomp Inc  ', 'Ricomp Inc  ', '', '200 Roehamptom Ave   Suite 211      ', 'Toronto', 'Ont.', '', 'Canada', 'M4V 1R8  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1249, 3, 'customer', 0, 'General', 'RJ Machinery', 'RJ Machinery', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1250, 3, 'customer', 0, 'General', 'RKS Varathan  ', 'RKS Varathan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1251, 3, 'customer', 0, 'General', 'Rl Logistics Inc.  ', 'Rl Logistics Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1252, 3, 'customer', 0, 'General', 'Rma Customer  ', 'Rma Customer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1253, 3, 'customer', 0, 'General', 'Robert Ahren  ', 'Robert Ahren  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1254, 3, 'customer', 0, 'General', 'Robert Alren  ', 'Robert Alren  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1255, 3, 'customer', 0, 'General', 'Roberta Lins Reis  ', 'Roberta Lins Reis  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1256, 3, 'customer', 0, 'General', 'Robertson Marketing  ', 'Robertson Marketing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1257, 3, 'customer', 0, 'General', 'Robetech Institute Inc.  ', 'Robetech Institute Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1258, 3, 'customer', 0, 'General', 'Roman Building Materials  ', 'Roman Building Materials  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1259, 3, 'customer', 0, 'General', 'Ronald Cid  ', 'Ronald Cid  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1260, 3, 'customer', 0, 'General', 'Roopchan Mulchan  ', 'Roopchan Mulchan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1261, 3, 'customer', 0, 'General', 'Rosauro Miclat  ', 'Rosauro Miclat  ', '', '20 Greenwich Sq.   Scarborough; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1262, 3, 'customer', 0, 'General', 'ROSEDALE FINANCIAL SOLUTION  ', 'ROSEDALE FINANCIAL SOLUTION  ', '', '   201-40 SHIELDS COURT      ', 'Toronto', 'Ont.', '', 'Canada', '4169010060', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1263, 3, 'customer', 0, 'General', 'Rouge Valley Hospital  ', 'Rouge Valley Hospital  ', '', '   2867 Ellesmere Road      ', 'Toronto', 'Ont.', '', 'Canada', '416-284-8131  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1264, 3, 'customer', 0, 'General', 'Roya Manzaran  ', 'Roya Manzaran  ', '', '10134 Sheppard Ave. East   Toronto; Ontario      ', 'Toronto', 'Ont.', '', 'Canada', '4168232205', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1265, 3, 'customer', 0, 'General', 'Royale LePage  ', 'Royale LePage  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1266, 3, 'customer', 0, 'General', 'Royalty Auto Spa  ', 'Royalty Auto Spa  ', '', '210 Don Park Road   Unit 28      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1267, 3, 'customer', 0, 'General', 'Ruban HD Video   ', 'Ruban HD Video   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1268, 3, 'customer', 0, 'General', 'Rubina  ', 'Rubina  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'charles@freedlegal.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1269, 3, 'customer', 0, 'General', 'Rui Dos Santos  ', 'Rui Dos Santos  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1270, 3, 'customer', 0, 'General', 'Runsoft Computer Systems  ', 'Runsoft Computer Systems  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1271, 3, 'customer', 0, 'General', 'Ruth Vasutheva  ', 'Ruth Vasutheva  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'jenny@fujitech.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1272, 3, 'customer', 0, 'General', 'Ruut 3  ', 'Ruut 3  ', '', '6-80 CASSANDRA BLVD         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1273, 3, 'customer', 0, 'General', 'Ryan Joe`s Friend  ', 'Ryan Joe`s Friend  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1274, 3, 'customer', 0, 'General', 'S.A. Tech & Solution', 'S.A. Tech & Solution', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1275, 3, 'customer', 0, 'General', 'S.I.G Mechanical Services Limited  ', 'S.I.G Mechanical Services Limited  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1276, 3, 'customer', 0, 'General', 'Sabbashop  ', 'Sabbashop  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9054757313', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1277, 3, 'customer', 0, 'General', 'Sable Metal Fabrication Inc. ', 'Sable Metal Fabrication Inc. ', '', '430 Steelcase road east.   Markham 04 L3R1G2 Canada', 'Toronto', 'Ont.', '', 'Canada', '9059481282', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1278, 3, 'customer', 0, 'General', 'Safe And Secure Security  ', 'Safe And Secure Security  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1279, 3, 'customer', 0, 'General', 'Sagarika Borah  ', 'Sagarika Borah  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'laptopsforless@rogers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1280, 3, 'customer', 0, 'General', 'Saint Cinnamon  ', 'Saint Cinnamon  ', '', '131 Torresdale Ave. Suite 1902   North York; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1281, 3, 'customer', 0, 'General', 'Salem General Contractor Inc.  ', 'Salem General Contractor Inc.  ', '', '1316 Langley Circle   Oshawa On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1282, 3, 'customer', 0, 'General', 'Sam (Carpet installer)  ', 'Sam (Carpet installer)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1283, 3, 'customer', 0, 'General', 'Sam Carpet  ', 'Sam Carpet  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1284, 3, 'customer', 0, 'General', 'Samcom  ', 'Samcom  ', '', '   750; unit#5       ', 'Toronto', 'Ont.', '', 'Canada', '4166402820', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1285, 3, 'customer', 0, 'General', 'Sammer Technology  ', 'Sammer Technology  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1286, 3, 'customer', 0, 'General', 'Samtack Inc.  ', 'Samtack Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1287, 3, 'customer', 0, 'General', 'Sanso Solutions  ', 'Sanso Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1288, 3, 'customer', 0, 'General', 'Sarathi', 'Sarathi', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1289, 3, 'customer', 0, 'General', 'Sathy Electronics  ', 'Sathy Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1290, 3, 'customer', 0, 'General', 'Savers Office Furniture  ', 'Savers Office Furniture  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1291, 3, 'customer', 0, 'General', 'Sbt Consulting  ', 'Sbt Consulting  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1292, 3, 'customer', 0, 'General', 'Scott Duval Consulting Inc  ', 'Scott Duval Consulting Inc  ', '', '12 Yonge St Suit 1311         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1293, 3, 'customer', 0, 'General', 'Scs Computer Center  ', 'Scs Computer Center  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1294, 3, 'customer', 0, 'General', 'SCS MOVIE LAND  ', 'SCS MOVIE LAND  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '6472943162', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1295, 3, 'customer', 0, 'General', 'Sea Well Optical  ', 'Sea Well Optical  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1296, 3, 'customer', 0, 'General', 'Seamlesscare  ', 'Seamlesscare  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1297, 3, 'customer', 0, 'General', 'Secutrans Inc  ', 'Secutrans Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1298, 3, 'customer', 0, 'General', 'SELVAN AMBALAVANAR  ', 'SELVAN AMBALAVANAR  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1299, 3, 'customer', 0, 'General', 'Selvin Living Riality  ', 'Selvin Living Riality  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1300, 3, 'customer', 0, 'General', 'Senior Tamil  ', 'Senior Tamil  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1301, 3, 'customer', 0, 'General', 'Senior Tamil Centre  ', 'Senior Tamil Centre  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1302, 3, 'customer', 0, 'General', 'Senthuran  ', 'Senthuran  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1303, 3, 'customer', 0, 'General', 'Serious Techs  ', 'Serious Techs  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1304, 3, 'customer', 0, 'General', 'Serkco  ', 'Serkco  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'lemcad@rogers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1305, 3, 'customer', 0, 'General', 'Seven Machining', 'Seven Machining', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1306, 3, 'customer', 0, 'General', 'SGS Computers  ', 'SGS Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1307, 3, 'customer', 0, 'General', 'SHAHRAM KAREGAR  ', 'SHAHRAM KAREGAR  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1308, 3, 'customer', 0, 'General', 'Shakedown  ', 'Shakedown  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1309, 3, 'customer', 0, 'General', 'Shakedown Sound & Lighting  ', 'Shakedown Sound & Lighting  ', '', '39 Riviera Drive- Unit 1         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1310, 3, 'customer', 0, 'General', 'Shaliini Modcom  ', 'Shaliini Modcom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1311, 3, 'customer', 0, 'General', 'Shalomi  ', 'Shalomi  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'satheesh@medixschool.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1312, 3, 'customer', 0, 'General', 'Shan Rajani  ', 'Shan Rajani  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1313, 3, 'customer', 0, 'General', 'Shantha Acca  ', 'Shantha Acca  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1314, 3, 'customer', 0, 'General', 'Sharon  ', 'Sharon  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1315, 3, 'customer', 0, 'General', 'Sharon Green  ', 'Sharon Green  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1316, 3, 'customer', 0, 'General', 'Shawn  ', 'Shawn  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1317, 3, 'customer', 0, 'General', 'Shawn (Contractor)  ', 'Shawn (Contractor)  ', '', 'Shawn (Contractor)         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1318, 3, 'customer', 0, 'General', 'Shawna Robbins  ', 'Shawna Robbins  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1319, 3, 'customer', 0, 'General', 'Shelli King  ', 'Shelli King  ', '', '9058899644', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1320, 3, 'customer', 0, 'General', 'SHERKY NG- ART BATHE  ', 'SHERKY NG- ART BATHE  ', '', 'UNIT101   100 STEELCASE ROAD EAST      ', 'Toronto', 'Ont.', '', 'Canada', '9054757555', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1321, 3, 'customer', 0, 'General', 'SHIRCO  ', 'SHIRCO  ', '', '7181 Yonge St. Unit 182   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '9055978006', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1322, 3, 'customer', 0, 'General', 'Siber Circuits Inc  ', 'Siber Circuits Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1323, 3, 'customer', 0, 'General', 'SickKids Hospital  ', 'SickKids Hospital  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1324, 3, 'customer', 0, 'General', 'Sig Electronics  ', 'Sig Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1325, 3, 'customer', 0, 'General', 'SIG Mechanicals  ', 'SIG Mechanicals  ', '', '   51B; Esnapark Dr      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1326, 3, 'customer', 0, 'General', 'Silver Ware Pos Inc.  ', 'Silver Ware Pos Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1327, 3, 'customer', 0, 'General', 'Simpleteck  ', 'Simpleteck  ', '', '27 Atlas Peak Drive         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1328, 3, 'customer', 0, 'General', 'Sintered Alloys  ', 'Sintered Alloys  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1329, 3, 'customer', 0, 'General', 'Sity Computers Inc.  ', 'Sity Computers Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1330, 3, 'customer', 0, 'General', 'Siva Anna Modcom  ', 'Siva Anna Modcom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1331, 3, 'customer', 0, 'General', 'Sivanesan  ', 'Sivanesan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1332, 3, 'customer', 0, 'General', 'Skl Electronics  ', 'Skl Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'maqs2006@hotmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1333, 3, 'customer', 0, 'General', 'Skynet Computers  ', 'Skynet Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1334, 3, 'customer', 0, 'General', 'Skyroute Travel Services  ', 'Skyroute Travel Services  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1335, 3, 'customer', 0, 'General', 'SMB1STOP  ', 'SMB1STOP  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1336, 3, 'customer', 0, 'General', 'SMC Versatile Group LTD.  ', 'SMC Versatile Group LTD.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'youreachme@rogers.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1337, 3, 'customer', 0, 'General', 'Sml Images Inc  ', 'Sml Images Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1338, 3, 'customer', 0, 'General', 'Snowdon HVAC', 'Snowdon HVAC', '', '1645 Bonhill Rd Unit 3&4,, ON    Mississauga 04 L5T 1C1 Canada', 'Toronto', 'Ont.', '', 'Canada', '(905) 670-4822', 'bala@modcom.ca', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1339, 3, 'customer', 0, 'General', 'Sns Building & Renovation  ', 'Sns Building & Renovation  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1340, 3, 'customer', 0, 'General', 'So Green Canada  ', 'So Green Canada  ', '', '4001 Don Mills Rd. unit 107   Toronto; On      ', 'Toronto', 'Ont.', '', 'Canada', '4164926465', 'gschissler@oasyshealthcare.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1341, 3, 'customer', 0, 'General', 'SOFTECH INC 2109971 ONTARIO INC  ', 'SOFTECH INC 2109971 ONTARIO INC  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1342, 3, 'customer', 0, 'General', 'Sohan Chemicals  ', 'Sohan Chemicals  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'suresh.singh@kitech.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1343, 3, 'customer', 0, 'General', 'Soho Business Solutions', 'Soho Business Solutions', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4168059786', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1344, 3, 'customer', 0, 'General', 'Solid Wood Cabinets  ', 'Solid Wood Cabinets  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1345, 3, 'customer', 0, 'General', 'Solmon and Company  ', 'Solmon and Company  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1346, 3, 'customer', 0, 'General', 'Solution Provider  ', 'Solution Provider  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1347, 3, 'customer', 0, 'General', 'Sonic Blue  ', 'Sonic Blue  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1348, 3, 'customer', 0, 'General', 'Sonja  ', 'Sonja  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1349, 3, 'customer', 0, 'General', 'Sooriyakumar A  ', 'Sooriyakumar A  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1350, 3, 'customer', 0, 'General', 'Sound and Vision  ', 'Sound and Vision  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4168572202', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00');
INSERT INTO `sma_companies` (`id`, `group_id`, `group_name`, `customer_group_id`, `customer_group_name`, `name`, `company`, `vat_no`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `credit_limit`, `credit_term`, `invoice_footer`, `payment_term`, `logo`, `award_points`, `deposit_amount`, `price_group_id`, `price_group_name`, `vat_reg`, `gst_reg`, `credit_enjoy_days`, `customer_credit_limit`) VALUES
(1351, 3, 'customer', 0, 'General', 'South St. Burger  ', 'South St. Burger  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1352, 3, 'customer', 0, 'General', 'Space Plating  ', 'Space Plating  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1353, 3, 'customer', 0, 'General', 'Speck-Tech System Inc.  ', 'Speck-Tech System Inc.  ', '', '40 Cardio Drive   Gormley; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1354, 3, 'customer', 0, 'General', 'SR & ED FUNDING CONSULTANTS INC   ', 'SR & ED FUNDING CONSULTANTS INC   ', '', '101 388 MARKLAND ST      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1355, 3, 'customer', 0, 'General', 'SR & ED FUNDING CONSULTANTS INC.NEW  ', 'SR & ED FUNDING CONSULTANTS INC.NEW  ', '', '70 East Beaver Creek    Suite 201       ', 'Toronto', 'Ont.', '', 'Canada', 'L4V 3B2  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1356, 3, 'customer', 0, 'General', 'Srigowri Nagalingam  ', 'Srigowri Nagalingam  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1357, 3, 'customer', 0, 'General', 'St. Mark  ', 'St. Mark  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1358, 3, 'customer', 0, 'General', 'Stairs And Iron  ', 'Stairs And Iron  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1359, 3, 'customer', 0, 'General', 'Stanmar  ', 'Stanmar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1360, 3, 'customer', 0, 'General', 'Starbucks  ', 'Starbucks  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1361, 3, 'customer', 0, 'General', 'Steelcase  ', 'Steelcase  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1362, 3, 'customer', 0, 'General', 'Stephane R Lacroix  ', 'Stephane R Lacroix  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1363, 3, 'customer', 0, 'General', 'Stephen Borg  ', 'Stephen Borg  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1364, 3, 'customer', 0, 'General', 'Stephen Pritchard  ', 'Stephen Pritchard  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'tdaley@powerlineplus.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1365, 3, 'customer', 0, 'General', 'Steve  ', 'Steve  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1366, 3, 'customer', 0, 'General', 'Steve Hesa  ', 'Steve Hesa  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1367, 3, 'customer', 0, 'General', 'Steve Joe`s Friend  ', 'Steve Joe`s Friend  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1368, 3, 'customer', 0, 'General', 'Steve Medwecky  ', 'Steve Medwecky  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1369, 3, 'customer', 0, 'General', 'Steven (Repair Guy)', 'Steven (Repair Guy)', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1370, 3, 'customer', 0, 'General', 'Steven Bolton  ', 'Steven Bolton  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1371, 3, 'customer', 0, 'General', 'Stoddard Silencers  ', 'Stoddard Silencers  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '4162914390', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1372, 3, 'customer', 0, 'General', 'Storybook Child Care Centre  ', 'Storybook Child Care Centre  ', '', '1855 JANE ST. WESTON         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'mike@greaves-mechatronics.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1373, 3, 'customer', 0, 'General', 'Suganthan Krisnarajah  ', 'Suganthan Krisnarajah  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1374, 3, 'customer', 0, 'General', 'Suganthi Ravindran Medical Corporation', 'Suganthi Ravindran Medical Corporation', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1375, 3, 'customer', 0, 'General', 'Summerset  ', 'Summerset  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'c.damian@greenville.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1376, 3, 'customer', 0, 'General', 'Sunrise Carpentary  ', 'Sunrise Carpentary  ', '', 'Sunrise Carpentary         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1377, 3, 'customer', 0, 'General', 'Sunrise Printing Corp.  ', 'Sunrise Printing Corp.  ', '', '5580 Yonge St.   Toronto; On.      ', 'Toronto', 'Ont.', '', 'Canada', '4162217444', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1378, 3, 'customer', 0, 'General', 'Superior Tire  ', 'Superior Tire  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@rahaeng.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1379, 3, 'customer', 0, 'General', 'Superior Tire & Auto  ', 'Superior Tire & Auto  ', '', '5070 Sheppard Ave E    Scarborough 04 M1S 4N3   Canada', 'Toronto', 'Ont.', '', 'Canada', '(416) 291-7175  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1380, 3, 'customer', 0, 'General', 'Supreme Computers  ', 'Supreme Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1381, 3, 'customer', 0, 'General', 'Supreme Custom Shutters & Arches  ', 'Supreme Custom Shutters & Arches  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1382, 3, 'customer', 0, 'General', 'Surgical Room  ', 'Surgical Room  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1383, 3, 'customer', 0, 'General', 'Surplus  ', 'Surplus  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1384, 3, 'customer', 0, 'General', 'Susan Moorhead / William Moorhead  ', 'Susan Moorhead / William Moorhead  ', '', '10 Quail Valley Drive   Thornhill; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1385, 3, 'customer', 0, 'General', 'Sutterhill Investment Group  ', 'Sutterhill Investment Group  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1386, 3, 'customer', 0, 'General', 'Sutton System  ', 'Sutton System  ', '', '1881 Steeles Ave. West   Toronto; On.      ', 'Toronto', 'Ont.', '', 'Canada', '4168354039', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1387, 3, 'customer', 0, 'General', 'Suyanthan  ', 'Suyanthan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1388, 3, 'customer', 0, 'General', 'Suyanthan Nagarasa  ', 'Suyanthan Nagarasa  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1389, 3, 'customer', 0, 'General', 'Syied.ca  ', 'Syied.ca  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1390, 3, 'customer', 0, 'General', 'Sylvia Gatti - Klein  ', 'Sylvia Gatti - Klein  ', '', '22 Dell Glen Ct.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1391, 3, 'customer', 0, 'General', 'Synchro Source  ', 'Synchro Source  ', '', 'Debbra         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1392, 3, 'customer', 0, 'General', 'Synchrome Infosystem Inc  ', 'Synchrome Infosystem Inc  ', '', '12095 St.Evariste         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1393, 3, 'customer', 0, 'General', 'T&T Jewellers Inc  ', 'T&T Jewellers Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1394, 3, 'customer', 0, 'General', 'T.A. Mode', 'T.A. Mode', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1395, 3, 'customer', 0, 'General', 'T.T Technology  ', 'T.T Technology  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1396, 3, 'customer', 0, 'General', 'T.T. technology  ', 'T.T. technology  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4164092349', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1397, 3, 'customer', 0, 'General', 'Tak Steel Rule Dies Inc  ', 'Tak Steel Rule Dies Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1398, 3, 'customer', 0, 'General', 'Tam & Ting MPC  ', 'Tam & Ting MPC  ', '', '78 Corporate Drv. Unit 10   Scarborough; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1399, 3, 'customer', 0, 'General', 'Tam and Ting Corporation  ', 'Tam and Ting Corporation  ', '', '78 Corporate Drive #10   Scarborough; On      ', 'Toronto', 'Ont.', '', 'Canada', '4162790855', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1400, 3, 'customer', 0, 'General', 'Tamils Guide  ', 'Tamils Guide  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4166154646', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1401, 3, 'customer', 0, 'General', 'Tark Abdel  ', 'Tark Abdel  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1402, 3, 'customer', 0, 'General', 'Tasgo  ', 'Tasgo  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1403, 3, 'customer', 0, 'General', 'Tax911.ca  ', 'Tax911.ca  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416 840 6899  ', 'EMAIL  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1404, 3, 'customer', 0, 'General', 'Td Bank Yonge And Steels  ', 'Td Bank Yonge And Steels  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1405, 3, 'customer', 0, 'General', 'Tech Buddy  ', 'Tech Buddy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1406, 3, 'customer', 0, 'General', 'Tech Data Engineers  ', 'Tech Data Engineers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1407, 3, 'customer', 0, 'General', 'Tech Source Downtown  ', 'Tech Source Downtown  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1408, 3, 'customer', 0, 'General', 'Tech Source Scarborough  ', 'Tech Source Scarborough  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1409, 3, 'customer', 0, 'General', 'Techcompu  ', 'Techcompu  ', '', '73B Montezuma Trail         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1410, 3, 'customer', 0, 'General', 'Techhub  ', 'Techhub  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'info@tamilsguide.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1411, 3, 'customer', 0, 'General', 'Techline Manufacturing Inc.  ', 'Techline Manufacturing Inc.  ', '', '605 Middlefield Rd. Unit 5-6   Scarborough; On      ', 'Toronto', 'Ont.', '', 'Canada', '416-847-0967  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1412, 3, 'customer', 0, 'General', 'TECHNIC INC.  ', 'TECHNIC INC.  ', '', 'Rob Reid   195 Riviera Drv.      ', 'Toronto', 'Ont.', '', 'Canada', '905-940-4020  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1413, 3, 'customer', 0, 'General', 'Techspot  ', 'Techspot  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416 892 7778  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1414, 3, 'customer', 0, 'General', 'Teckville  ', 'Teckville  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1415, 3, 'customer', 0, 'General', 'TEK Administration Inc.', 'TEK Administration Inc.', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1416, 3, 'customer', 0, 'General', 'Telax Vocie Solutions  ', 'Telax Vocie Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1417, 3, 'customer', 0, 'General', 'Telcor (Yvan Dion)  ', 'Telcor (Yvan Dion)  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1418, 3, 'customer', 0, 'General', 'Telwise  ', 'Telwise  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1419, 3, 'customer', 0, 'General', 'Terraquest Airborne Geophysics', 'Terraquest Airborne Geophysics', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1420, 3, 'customer', 0, 'General', 'Tgs Group  ', 'Tgs Group  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1421, 3, 'customer', 0, 'General', 'Thaanus Kitchen   ', 'Thaanus Kitchen   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1422, 3, 'customer', 0, 'General', 'Thamasegaram R  ', 'Thamasegaram R  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'zhqova@hirise.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1423, 3, 'customer', 0, 'General', 'Thanapal Tharmalingham  ', 'Thanapal Tharmalingham  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1424, 3, 'customer', 0, 'General', 'Thanus Home Kitchen  ', 'Thanus Home Kitchen  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1425, 3, 'customer', 0, 'General', 'Thanuyan  ', 'Thanuyan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1426, 3, 'customer', 0, 'General', 'Tharshika  ', 'Tharshika  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1427, 3, 'customer', 0, 'General', 'The Bag Man   ', 'The Bag Man   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1428, 3, 'customer', 0, 'General', 'The Computer Age  ', 'The Computer Age  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1429, 3, 'customer', 0, 'General', 'The Computer Whisperer  ', 'The Computer Whisperer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1430, 3, 'customer', 0, 'General', 'The Dancewear Centre  ', 'The Dancewear Centre  ', '', '530 Wilson Ave.   Toronto; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1431, 3, 'customer', 0, 'General', 'The Distillery Restaurents  ', 'The Distillery Restaurents  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4163334060', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1432, 3, 'customer', 0, 'General', 'The Hearing Source  ', 'The Hearing Source  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1433, 3, 'customer', 0, 'General', 'The Integral Group Inc  ', 'The Integral Group Inc  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1434, 3, 'customer', 0, 'General', 'The Woodbine Clinic  ', 'The Woodbine Clinic  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1435, 3, 'customer', 0, 'General', 'Thermoflow  ', 'Thermoflow  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '416-301-2708  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1436, 3, 'customer', 0, 'General', 'Thomas Allen & Sons  ', 'Thomas Allen & Sons  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1437, 3, 'customer', 0, 'General', 'TICS  ', 'TICS  ', '', '   7676 Woodbine Ave Unit 4      ', 'Toronto', 'Ont.', '', 'Canada', '905-489-1135  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1438, 3, 'customer', 0, 'General', 'TIM HORTONS  ', 'TIM HORTONS  ', '', '   2800 JOHN STREET      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1439, 3, 'customer', 0, 'General', 'Timothy D Vanhoy  ', 'Timothy D Vanhoy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1440, 3, 'customer', 0, 'General', 'TNT Renovations  ', 'TNT Renovations  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1441, 3, 'customer', 0, 'General', 'Todays Students and Tomorrows Teachers  ', 'Todays Students and Tomorrows Teachers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1442, 3, 'customer', 0, 'General', 'Tom G  ', 'Tom G  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1443, 3, 'customer', 0, 'General', 'Tommy Ambalavanar  ', 'Tommy Ambalavanar  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1444, 3, 'customer', 0, 'General', 'Tony Lu  ', 'Tony Lu  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'herb@hip-net.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1445, 3, 'customer', 0, 'General', 'Topstar Reality Inc.  ', 'Topstar Reality Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'leo_carreon@hotmail.com  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1446, 3, 'customer', 0, 'General', 'TORLYS Inc.  ', 'TORLYS Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1447, 3, 'customer', 0, 'General', 'Toronto Business College  ', 'Toronto Business College  ', '', '4465 Sheppard Ave. E         ', 'Toronto', 'Ont.', '', 'Canada', '4162915155', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1448, 3, 'customer', 0, 'General', 'Toronto Cabinetry  ', 'Toronto Cabinetry  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1449, 3, 'customer', 0, 'General', 'Toronto central Seventh-day Aolventist  ', 'Toronto central Seventh-day Aolventist  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1450, 3, 'customer', 0, 'General', 'Toronto Flooring Supply  ', 'Toronto Flooring Supply  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1451, 3, 'customer', 0, 'General', 'TORONTO HEART SUMMIT  ', 'TORONTO HEART SUMMIT  ', '', 'ATTN: DR.PETER LIU/SHANAS MOHAMED   200 ELIZABETH STREET; 12 EATON RM 325A      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1452, 3, 'customer', 0, 'General', 'Total-it Ltd.  ', 'Total-it Ltd.  ', '', '2 Solmar Ave.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'karima.hamir@hiexmarkham.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1453, 3, 'customer', 0, 'General', 'Total Moving Inc.  ', 'Total Moving Inc.  ', '', '67 Steelecase Rd W.   Unit 1; Markham      ', 'Toronto', 'Ont.', '', 'Canada', 'L3R2M4  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1454, 3, 'customer', 0, 'General', 'Total Solutions  ', 'Total Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1455, 3, 'customer', 0, 'General', 'Tower Solutions Inc  ', 'Tower Solutions Inc  ', '', '7030 Woodbine Ave.   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '905-946-8789  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1456, 3, 'customer', 0, 'General', 'Town + Country BMW  ', 'Town + Country BMW  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1457, 3, 'customer', 0, 'General', 'Town of Richmond Hill', 'Town of Richmond Hill', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1458, 3, 'customer', 0, 'General', 'Tp Business Consultants  ', 'Tp Business Consultants  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1459, 3, 'customer', 0, 'General', 'Tr Cover Pac  ', 'Tr Cover Pac  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1460, 3, 'customer', 0, 'General', 'Trace Electric  ', 'Trace Electric  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1461, 3, 'customer', 0, 'General', 'Trans Canada Stamp  ', 'Trans Canada Stamp  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1462, 3, 'customer', 0, 'General', 'Transtec Intl.  ', 'Transtec Intl.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1463, 3, 'customer', 0, 'General', 'Treadmill factory  ', 'Treadmill factory  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'h20br6@yahoo.ca  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1464, 3, 'customer', 0, 'General', 'Tremor Technology Group  ', 'Tremor Technology Group  ', '', '3950 - 14th Ave         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1465, 3, 'customer', 0, 'General', 'Treston  Myles  ', 'Treston  Myles  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1466, 3, 'customer', 0, 'General', 'Trew-cut  ', 'Trew-cut  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1467, 3, 'customer', 0, 'General', 'TRGI   ', 'TRGI   ', '', '25 West Beaver Creek Rd   Richmond Hill      ', 'Toronto', 'Ont.', '', 'Canada', 'L4B 1K2  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1468, 3, 'customer', 0, 'General', 'Tri-M Machine Works INC.  ', 'Tri-M Machine Works INC.  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1469, 3, 'customer', 0, 'General', 'Trinity Computers  ', 'Trinity Computers  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1470, 3, 'customer', 0, 'General', 'TRIPART  ', 'TRIPART  ', '', 'UNIT#6   7100 WARDEN AVENUE      ', 'Toronto', 'Ont.', '', 'Canada', '9054790766', '  ', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(1471, 3, 'customer', 0, 'General', 'Tro Modcom  ', 'Tro Modcom  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', NULL, NULL, NULL, 0, 'logo.png', 0, NULL, 2, 'Partner Price', NULL, NULL, NULL, '0.00'),
(1472, 3, 'customer', 0, 'General', 'Tronix Services  ', 'Tronix Services  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', NULL, NULL, 'Item Purchased can be exchange within 24 hours with receipt.\r\nItem purchased can not be refunded for cash.', 0, 'Untitled_(1).jpg', 0, NULL, NULL, NULL, '', '1234567899', NULL, '0.00'),
(1473, 3, 'customer', 0, 'General', 'Troyce Walls  ', 'Troyce Walls  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1474, 3, 'customer', 0, 'General', 'Truth Tabernacle  ', 'Truth Tabernacle  ', '', '333 Denison Street         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1475, 3, 'customer', 0, 'General', 'Turk Valley Aggregates  ', 'Turk Valley Aggregates  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'ildi.winter@saintcinnamon.com  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1476, 3, 'customer', 0, 'General', 'TurnOn Toronto  ', 'TurnOn Toronto  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '6477020972', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1477, 3, 'customer', 0, 'General', 'Ty Tech  ', 'Ty Tech  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1478, 3, 'customer', 0, 'General', 'Ty Tech.  ', 'Ty Tech.  ', '', '712-135 Fenelon Dr.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1479, 3, 'customer', 0, 'General', 'Ufms Inc.  ', 'Ufms Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1480, 3, 'customer', 0, 'General', 'Ultimate packing  ', 'Ultimate packing  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1481, 3, 'customer', 0, 'General', 'UMMAH CONSULTANCY INC  ', 'UMMAH CONSULTANCY INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4168589354', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1482, 3, 'customer', 0, 'General', 'Uni-Ram Corporation  ', 'Uni-Ram Corporation  ', '', '381 Bently St.   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1483, 3, 'customer', 0, 'General', 'Universal Audio Video  ', 'Universal Audio Video  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1484, 3, 'customer', 0, 'General', 'UNRC  ', 'UNRC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1485, 3, 'customer', 0, 'General', 'UNRC Office Furniture/Cubicles  ', 'UNRC Office Furniture/Cubicles  ', '', '319 Denison   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1486, 3, 'customer', 0, 'General', 'Unytouch  ', 'Unytouch  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1487, 3, 'customer', 0, 'General', 'Urbanwoodcraft  ', 'Urbanwoodcraft  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1488, 3, 'customer', 0, 'General', 'URNC Inc', 'URNC Inc', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1489, 3, 'customer', 0, 'General', 'US Customer  ', 'US Customer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1490, 3, 'customer', 0, 'General', 'USA Customer  ', 'USA Customer  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1491, 3, 'customer', 0, 'General', 'Val Liverpool  ', 'Val Liverpool  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1492, 3, 'customer', 0, 'General', 'Vanson  ', 'Vanson  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1493, 3, 'customer', 0, 'General', 'Varnam Institute  ', 'Varnam Institute  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1494, 3, 'customer', 0, 'General', 'Vasanthini Balakrishan  ', 'Vasanthini Balakrishan  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1495, 3, 'customer', 0, 'General', 'VCLEAN SERVICES  ', 'VCLEAN SERVICES  ', '', '90 Amarillo Ave   Markham; On.      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1496, 3, 'customer', 0, 'General', 'Vegan Stokes Cheese', 'Vegan Stokes Cheese', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '4165000109', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1497, 3, 'customer', 0, 'General', 'Vegan Stokes Cheese, Tina Stokes', 'Vegan Stokes Cheese, Tina Stokes', '', 'Vegan Stokes Cheese      ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1498, 3, 'customer', 0, 'General', 'Vernon Technology Solutions  ', 'Vernon Technology Solutions  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1499, 3, 'customer', 0, 'General', 'VERTEX Industries  ', 'VERTEX Industries  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1500, 3, 'customer', 0, 'General', 'Vic Lobo  ', 'Vic Lobo  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1501, 3, 'customer', 0, 'General', 'VICS GROUP  ', 'VICS GROUP  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1502, 3, 'customer', 0, 'General', 'Victoria Square United Church   ', 'Victoria Square United Church   ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'debfraser2009@gmail.com;info@modcom.ca  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1503, 3, 'customer', 0, 'General', 'Vincent Shiu  ', 'Vincent Shiu  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1504, 3, 'customer', 0, 'General', 'Vino Technology  ', 'Vino Technology  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'omardeenaz@rogers.com  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1505, 3, 'customer', 0, 'General', 'Vision Audio  ', 'Vision Audio  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'EMAIL  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1506, 3, 'customer', 0, 'General', 'Vista Stair and Handrail LTD.  ', 'Vista Stair and Handrail LTD.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '9054800987', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1507, 3, 'customer', 0, 'General', 'Viva City Inc.  ', 'Viva City Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1508, 3, 'customer', 0, 'General', 'Voyzant Inc.   ', 'Voyzant Inc.   ', '', '7100 Woodbine Ave; Suite 102   Markham; On      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1509, 3, 'customer', 0, 'General', 'W7 Offices Inc.', 'W7 Offices Inc.', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1510, 3, 'customer', 0, 'General', 'walk', 'walk', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1511, 3, 'customer', 0, 'General', 'Walk-in-customer', 'Walk-in-customer', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '500.00'),
(1512, 3, 'customer', 0, 'General', 'walkin', 'walkin', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1513, 3, 'customer', 0, 'General', 'Web Solutions  ', 'Web Solutions  ', '', '20A-400 Esna Park Drive   Markham; Om      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1514, 3, 'customer', 0, 'General', 'WEDO', 'WEDO', '', '     Canada', 'Toronto', 'Ont.', '', 'Canada', '4162709245', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1515, 3, 'customer', 0, 'General', 'Wellington Aurora Dental', 'Wellington Aurora Dental', '', '     ', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1516, 3, 'customer', 0, 'General', 'Wellington Aurora Dental, Dr. Pasha', 'Wellington Aurora Dental, Dr. Pasha', '', 'Wellington Aurora Dental 300 Wellington St E,  Aurora 04 L4G 1J5 Canada', 'Toronto', 'Ont.', '', 'Canada', '', '', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1517, 3, 'customer', 0, 'General', 'Wenhaelz  ', 'Wenhaelz  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1518, 3, 'customer', 0, 'General', 'Western Town College  ', 'Western Town College  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1519, 3, 'customer', 0, 'General', 'Westmount Pharmacy  ', 'Westmount Pharmacy  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1520, 3, 'customer', 0, 'General', 'Wiarton Tv  ', 'Wiarton Tv  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1521, 3, 'customer', 0, 'General', 'Wigna Sivapathasundaram  ', 'Wigna Sivapathasundaram  ', '', '240-880 Ellesmere Road   Toronto; On      ', 'Toronto', 'Ont.', '', 'Canada', '4162845555', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1522, 3, 'customer', 0, 'General', 'WIJESUNDERA and ASSOCIATES  ', 'WIJESUNDERA and ASSOCIATES  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '905-415-9600  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1523, 3, 'customer', 0, 'General', 'Will  ', 'Will  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1524, 3, 'customer', 0, 'General', 'William`s Group  ', 'William`s Group  ', '', '276 Lakeshore Blvd   P.O. Box 23029      ', 'Toronto', 'Ont.', '', 'Canada', '7053586500', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1525, 3, 'customer', 0, 'General', 'Wincon Security  ', 'Wincon Security  ', '', '   .      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1526, 3, 'customer', 0, 'General', 'Winsteade Group Inc  ', 'Winsteade Group Inc  ', '', '6436 Hwy 89 RR2         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1527, 3, 'customer', 0, 'General', 'Winsted Group Inc  ', 'Winsted Group Inc  ', '', '6436 HWY 89 East         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1528, 3, 'customer', 0, 'General', 'Wireless Corner  ', 'Wireless Corner  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1529, 3, 'customer', 0, 'General', 'Wood & Ladder Consulting  ', 'Wood & Ladder Consulting  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1530, 3, 'customer', 0, 'General', 'Woodbine Steels Sleep Clinic  ', 'Woodbine Steels Sleep Clinic  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1531, 3, 'customer', 0, 'General', 'Woodland Fine Furniture  ', 'Woodland Fine Furniture  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'tinney@rogers.com  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1532, 3, 'customer', 0, 'General', 'World Famous Pizza  ', 'World Famous Pizza  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1533, 3, 'customer', 0, 'General', 'WSP  ', 'WSP  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1534, 3, 'customer', 0, 'General', 'WTV  ', 'WTV  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1535, 3, 'customer', 0, 'General', 'Xds Electronics  ', 'Xds Electronics  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1536, 3, 'customer', 0, 'General', 'Xinmei Tradinc Ltd  ', 'Xinmei Tradinc Ltd  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1537, 3, 'customer', 0, 'General', 'Xtra Xtra  ', 'Xtra Xtra  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1538, 3, 'customer', 0, 'General', 'Y.R Distribution  ', 'Y.R Distribution  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1539, 3, 'customer', 0, 'General', 'Yard Depot  ', 'Yard Depot  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4164175461', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1540, 3, 'customer', 0, 'General', 'Yaso  ', 'Yaso  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1541, 3, 'customer', 0, 'General', 'YM Art World Inc.  ', 'YM Art World Inc.  ', '', '25 West Beaver Creek Rd.   Unit 14      ', 'Toronto', 'Ont.', '', 'Canada', '9057638108', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1542, 3, 'customer', 0, 'General', 'Yoga  ', 'Yoga  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1543, 3, 'customer', 0, 'General', 'Yoga Pc Parts  ', 'Yoga Pc Parts  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1544, 3, 'customer', 0, 'General', 'Yogeswaran Markandu  ', 'Yogeswaran Markandu  ', '', '32 Cedar Cres.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'valexeev@iNode.ca  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1545, 3, 'customer', 0, 'General', 'Yohan Para  ', 'Yohan Para  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '4164519563', 'edmond@hearingsource.ca  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1546, 3, 'customer', 0, 'General', 'Yorkville North Development LTD.   ', 'Yorkville North Development LTD.   ', '', '16 Rondeau Drive   Toronto; Ontatio      ', 'Toronto', 'Ont.', '', 'Canada', '4164924087', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1547, 3, 'customer', 0, 'General', 'Your It Services  ', 'Your It Services  ', '', '22 Dell Glen Ct.         ', 'Toronto', 'Ont.', '', 'Canada', '  ', 'LGoh@insite.ca  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1548, 3, 'customer', 0, 'General', 'Yourhere  ', 'Yourhere  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1549, 3, 'customer', 0, 'General', 'YUMAC Techinical Inc.  ', 'YUMAC Techinical Inc.  ', '', '24 Hancock Cres.    Scarborough      ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1550, 3, 'customer', 0, 'General', 'Yuri  ', 'Yuri  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1551, 3, 'customer', 0, 'General', 'Zeal Networks Canada Inc.  ', 'Zeal Networks Canada Inc.  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1552, 3, 'customer', 0, 'General', 'ZENITH LASER PLUS INC  ', 'ZENITH LASER PLUS INC  ', '', '         ', 'Toronto', 'Ont.', '', 'Canada', '  ', '  ', 0, 0, '', 0, '', 0, '0.0000', 0, '', '', '', NULL, '0.00'),
(1553, 4, 'supplier', NULL, NULL, 'Dummy(For Stock In)', 'Dummy(For Stock In)', '', 'A', 'B', 'C', '', 'Canada', '111111111111', 'dummy@dummy.com', 0, 0, NULL, 0, 'logo.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0.00'),
(999999, NULL, 'biller', NULL, NULL, 'Modcom IT Solutions', 'Modcom IT Solutions', NULL, '7310 Woodbine ave. unit 6', 'Markham', 'Ont.', 'L3R1A4', 'Canada', '905-258-0333', 'sales@modcom.ca', NULL, NULL, '', 0, 'fresh_mart_Logo_resiz.jpg', 0, NULL, NULL, NULL, '5235235235', '123552522', NULL, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sma_company`
--

CREATE TABLE `sma_company` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_company`
--

INSERT INTO `sma_company` (`id`, `code`, `name`) VALUES
(11, 'PC-1', 'PPL (Feed Division)'),
(12, 'PC-2', 'Paragon Feed Ltd. (UFL)'),
(13, 'PC-3', 'Chittagong Feed Ltd.'),
(14, 'PC-4', 'Jessore Feed Ltd.'),
(15, 'PC-5', 'JFL D?cor\n Footware'),
(16, 'PC-6', 'Paragon Poultry Ltd. (Hatchery)'),
(17, 'PC-7', 'PPL (Horticulture Project)'),
(18, 'PC-8', 'Dairy Farm'),
(19, 'PC-9', 'PPL (Commercial), Haluaghat'),
(20, 'PC-10', 'Bistro Central'),
(21, 'PC-11', 'Fresh Mart'),
(22, 'PC-12', 'Aqua Breeders Ltd'),
(23, 'PC-13', 'Chittagong Chicks Ltd.'),
(24, 'PC-14', 'Denm Poultry Complex'),
(25, 'PC-15', 'PPL (Sagordighi)'),
(26, 'PC-16', 'PPL (Layer)'),
(27, 'PC-17', 'PAL (GP)'),
(28, 'PC-18', 'Usha Poultry Ltd'),
(29, 'PC-19', 'PAL (CF)'),
(30, 'PC-20', 'Paragon Agro Ltd. (CF)'),
(31, 'PC-21', 'Rangpur Poultry Ltd.'),
(32, 'PC-22', 'Rangpur Poultry Ltd. (Feed Division)'),
(33, 'PC-23', 'Paragon Poultry Ltd. (Chamiadi Project)'),
(34, 'PC-24', 'Poultry Care Lab'),
(35, 'PC-25', 'JFL (Fish Hatchery)'),
(36, 'PC-26', 'MPC'),
(37, 'PC-27', 'PPFL'),
(38, 'PC-28', 'PCR Lab'),
(39, 'PC-29', 'Tea Estate'),
(40, 'PC-30', 'PEL'),
(41, 'PC-31', 'Paragnn\n House');

-- --------------------------------------------------------

--
-- Table structure for table `sma_costing`
--

CREATE TABLE `sma_costing` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `purchase_net_unit_cost` decimal(25,4) DEFAULT NULL,
  `purchase_unit_cost` decimal(25,4) DEFAULT NULL,
  `sale_net_unit_price` decimal(25,4) NOT NULL,
  `sale_unit_price` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT '0',
  `overselling` tinyint(1) DEFAULT '0',
  `option_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_costing`
--

INSERT INTO `sma_costing` (`id`, `date`, `product_id`, `sale_item_id`, `sale_id`, `purchase_item_id`, `quantity`, `purchase_net_unit_cost`, `purchase_unit_cost`, `sale_net_unit_price`, `sale_unit_price`, `quantity_balance`, `inventory`, `overselling`, `option_id`) VALUES
(1, '2017-03-10', 1, 1, 1, 1, '1.0000', '80.0000', '80.0000', '100.0000', '100.0000', '99.0000', 1, 0, NULL),
(2, '2017-03-21', 6, 2, 2, 7, '2.0000', '1400.0000', '1582.0000', '2299.9900', '2598.9900', '0.0000', 1, 0, NULL),
(3, '2017-03-31', 30, 3, 3, 8, '1.0000', '88.4956', '100.0000', '88.4956', '100.0000', '0.0000', 1, 0, NULL),
(4, '2017-04-03', 6, 4, 4, 4, '2.0000', '1279.0000', '1445.2700', '2299.9900', '2598.9900', '0.0000', 1, 0, NULL),
(5, '2017-05-01', 7, 5, 5, 6, '1.0000', '350.0000', '395.5000', '14.9900', '16.9400', '4.0000', 1, 0, NULL),
(7, '2017-08-12', 70, 7, 7, 9, '1.0000', '317.5600', '358.8400', '499.9900', '564.9900', '4.0000', 1, 0, NULL),
(10, '2017-09-23', 7, 10, 9, 5, '2.0000', '319.2900', '360.8000', '14.9900', '16.9400', '3.0000', 1, 0, NULL),
(11, '2017-10-05', 7, 11, 8, 5, '1.0000', '319.2900', '360.8000', '14.9900', '16.9400', '3.0000', 1, 0, NULL),
(19, '2018-03-30', 70, 20, 16, 9, '1.0000', '317.5600', '358.8400', '330.9900', '374.0200', '3.0000', 1, 0, NULL),
(20, '2018-03-31', 754, 21, 17, 15, '1.0000', '75.5200', '85.3400', '89.9900', '101.6900', '4.0000', 1, 0, NULL),
(22, '2018-04-01', 754, 23, 19, 15, '1.0000', '75.5200', '85.3400', '90.0000', '101.7000', '0.0000', 1, 0, NULL),
(29, '2018-04-01', 70, 30, 23, 9, '1.0000', '317.5600', '358.8400', '330.9900', '374.0200', '1.0000', 1, 0, NULL),
(30, '2018-04-01', 70, 31, 24, 9, '1.0000', '317.5600', '358.8400', '330.9900', '374.0200', '0.0000', 1, 0, NULL),
(31, '2018-04-01', 12215, 32, 25, 20, '1.0000', '0.0000', '0.0000', '85.0000', '96.0500', '98.0000', 1, 0, NULL),
(32, '2018-04-01', 12215, 33, 26, 20, '1.0000', '0.0000', '0.0000', '35.0000', '39.5500', '97.0000', 1, 0, NULL),
(33, '2018-04-04', 160, 34, 27, 12, '1.0000', '45.5000', '51.4200', '69.9900', '79.0900', '0.0000', 1, 0, NULL),
(35, '2018-04-08', 27182, 36, 28, 14301, '3.0000', '13.9900', '15.8087', '13.9900', '15.8100', '6.0000', 1, 0, NULL),
(36, '2018-04-08', 28366, 37, 28, 15485, '5.0000', '1.6500', '1.8645', '1.6500', '1.8600', '895.0000', 1, 0, NULL),
(37, '2018-04-08', 35394, 38, 28, 22513, '4.0000', '3.0500', '3.4465', '3.0500', '3.4500', '624.0000', 1, 0, NULL),
(38, '2018-04-08', 38551, 39, 28, 25670, '2.0000', '10.1100', '11.4243', '10.1100', '11.4200', '434.0000', 1, 0, NULL),
(39, '2018-04-09', 27317, 40, 29, 14436, '2.0000', '29.9900', '33.8887', '49.9900', '56.4900', '3.0000', 1, 0, NULL),
(40, '2018-04-10', 27182, 41, 30, 28543, '1.0000', '14.0000', '15.8200', '21.0000', '23.7300', '0.0000', 1, 0, NULL),
(41, '2018-04-17', 27937, 42, 31, 15056, '1.0000', '500.0000', '565.0000', '900.0000', '1017.0000', '0.0000', 1, 0, NULL),
(42, '2018-04-17', 33860, 43, 32, 20979, '1.0000', '20.0000', '22.6000', '99.9900', '112.9900', '1.0000', 1, 0, NULL),
(43, '2018-04-17', 27398, 44, 33, 14517, '1.0000', '21.9900', '24.8487', '49.9900', '56.4900', '0.0000', 1, 0, NULL),
(44, '2018-04-17', 27417, 45, 34, 14536, '1.0000', '62.9900', '71.1787', '149.9900', '169.4900', '0.0000', 1, 0, NULL),
(45, '2018-04-24', 27182, 46, 35, 28550, '1.0000', '14.0000', '15.8200', '21.0000', '23.7300', '0.0000', 1, 0, NULL),
(46, '2018-04-25', 27195, 47, 36, 14314, '1.0000', '93.0000', '105.0900', '169.9900', '192.0900', '0.0000', 1, 0, NULL),
(47, '2018-04-25', 27194, 48, 37, 14313, '1.0000', '349.0000', '394.3700', '599.9900', '677.9900', '1.0000', 1, 0, NULL),
(48, '2018-04-25', 27282, 49, 38, 14401, '1.0000', '17.9900', '20.3287', '17.9900', '20.3300', '0.0000', 1, 0, NULL),
(53, '2018-05-03', 27197, 54, 39, 14316, '1.0000', '43.0000', '48.5900', '89.9900', '101.6900', '9.0000', 1, 0, NULL),
(58, '2018-05-06', 27194, 59, 44, 14313, '1.0000', '349.0000', '394.3700', '599.9900', '677.9900', '0.0000', 1, 0, NULL),
(59, '2018-05-08', 27196, 60, 45, 14315, '1.0000', '160.0000', '180.8000', '299.9900', '338.9900', '0.0000', 1, 0, NULL),
(60, '2018-06-03', 27197, 61, 46, 14316, '1.0000', '43.0000', '48.5900', '89.9900', '101.6900', '8.0000', 1, 0, NULL),
(61, '2018-06-03', 27188, 62, 47, 28558, '1.0000', '80.0000', '90.4000', '0.0000', '0.0000', '0.0000', 1, 0, NULL),
(62, '2018-06-03', 27215, 63, 48, 14334, '1.0000', '39.5000', '44.6350', '59.9900', '67.7900', '1.0000', 1, 0, NULL),
(63, '2018-06-04', 27403, 64, 49, 14522, '1.0000', '105.0000', '118.6500', '199.9900', '225.9900', '9.0000', 1, 0, NULL),
(64, '2018-06-04', 27213, 65, 50, 14332, '1.0000', '99.5700', '112.5141', '174.9900', '197.7400', '3.0000', 1, 0, NULL),
(65, '2018-06-04', 27218, 66, 51, 14337, '1.0000', '64.9900', '73.4387', '89.9900', '101.6900', '4.0000', 1, 0, NULL),
(66, '2018-06-04', 27213, 67, 52, 14332, '1.0000', '99.5700', '112.5141', '174.9900', '197.7400', '2.0000', 1, 0, NULL),
(67, '2018-06-04', 27218, 68, 53, 14337, '0.0000', '64.9900', '73.4387', '89.9900', '101.6900', '2.0000', 1, 0, NULL),
(68, '2018-06-05', 27215, 70, 55, 14334, '1.0000', '39.5000', '44.6350', '59.9900', '67.7900', '0.0000', 1, 0, NULL),
(69, '2018-06-05', 27197, 71, 56, 14316, '1.0000', '43.0000', '48.5900', '89.9900', '101.6900', '7.0000', 1, 0, NULL),
(70, '2018-09-26', 27186, 1, 1, 3, '5.0000', '65.0000', '73.4500', '194.6900', '220.0000', '25.0000', 1, 0, NULL),
(71, '2018-09-26', 27183, 1, 1, 4, '5.0000', '70.0000', '79.1000', '398.2300', '450.0000', '20.0000', 1, 0, NULL),
(72, '2018-10-01', 27183, 2, 2, 5, '1.0000', '70.0000', '79.1000', '0.0000', '0.0000', '49.0000', 1, 0, NULL),
(73, '2018-10-01', 27183, 3, 3, 5, '1.0000', '70.0000', '79.1000', '0.0000', '0.0000', '48.0000', 1, 0, NULL),
(74, '2018-10-01', 27183, 4, 4, 5, '1.0000', '70.0000', '79.1000', '80.0000', '90.4000', '47.0000', 1, 0, NULL),
(75, '2018-10-01', 27183, 5, 5, 5, '1.0000', '70.0000', '79.1000', '80.0000', '90.4000', '46.0000', 1, 0, NULL),
(77, '2018-10-03', 27183, 7, 7, 5, '1.0000', '70.0000', '79.1000', '80.0000', '90.4000', '45.0000', 1, 0, NULL),
(78, '2018-10-03', 27183, 8, 8, 5, '1.0000', '70.0000', '79.1000', '80.0000', '90.4000', '44.0000', 1, 0, NULL),
(79, '2018-10-03', 27183, 9, 9, 5, '1.0000', '70.0000', '79.1000', '80.0000', '90.4000', '43.0000', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_currencies`
--

CREATE TABLE `sma_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(55) NOT NULL,
  `rate` decimal(12,4) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_currencies`
--

INSERT INTO `sma_currencies` (`id`, `code`, `name`, `rate`, `auto_update`) VALUES
(3, '$', 'Canadian', '1.0000', 0),
(4, 'BDT', 'Bangladeshi Taka', '1.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_customer_groups`
--

CREATE TABLE `sma_customer_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_customer_groups`
--

INSERT INTO `sma_customer_groups` (`id`, `name`, `percent`) VALUES
(1, 'General', 0),
(2, 'Reseller', -5),
(3, 'Distributor', -15),
(4, 'New Customer (+10)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sma_date_format`
--

CREATE TABLE `sma_date_format` (
  `id` int(11) NOT NULL,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_date_format`
--

INSERT INTO `sma_date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `sma_deliveries`
--

CREATE TABLE `sma_deliveries` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) NOT NULL,
  `do_reference_no` varchar(50) NOT NULL,
  `sale_reference_no` varchar(50) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `received_by` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_deposits`
--

CREATE TABLE `sma_deposits` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` int(11) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `paid_by` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_designations`
--

CREATE TABLE `sma_designations` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_designations`
--

INSERT INTO `sma_designations` (`id`, `code`, `name`) VALUES
(315, 'PGD1', 'Pocket Router'),
(316, 'PGD2', 'DGM (BD)'),
(317, 'PGD3', 'DGM (SC)'),
(318, 'PGD4', 'DGM (Marketing)'),
(319, 'PGD5', 'AGM (Sales)'),
(320, 'PGD6', 'AGM (Maintenance)'),
(321, 'PGD7', 'AGM (Flour Mill)'),
(322, 'PGD8', 'Manager (Plant)'),
(323, 'PGD9', 'Manager (Purchase)'),
(324, 'PGD10', 'Asst. Manager (Transport)'),
(325, 'PGD11', 'Engr. (Maintenance)'),
(326, 'PGD12', 'Doctor'),
(327, 'PGD13', 'Engineer (Civil)'),
(328, 'PGD14', 'Sr. Officer (Sales)'),
(329, 'PGD15', 'Asst. Mgr. (TVI)'),
(330, 'PGD16', 'Sr. Officer (Treasury)'),
(331, 'PGD17', 'Officer (Security)'),
(332, 'PGD18', 'Officer (HR & Admin)'),
(333, 'PGD19', 'Officer (Accounts)'),
(334, 'PGD20', 'Officer (Cash)'),
(335, 'PGD21', 'Officer (IT)'),
(336, 'PGD22', 'Officer (Store)'),
(337, 'PGD23', 'Asst. Officer (HR & Admin)'),
(338, 'PGD24', 'Asst. Officer (Acct)'),
(339, 'PGD25', 'Asst. Officer (QC)'),
(340, 'PGD26', 'Asst. Officer (Qc & Prod.)'),
(341, 'PGD27', 'Asst. Officer (Acct.)'),
(342, 'PGD28', 'Asst. Officer (Mktg.)'),
(343, 'PGD29', 'Asst. Officer (S&M)'),
(344, 'PGD30', 'Asst. Engineer (Automobiles)'),
(345, 'PGD31', 'Sr. Supervisor (Security)'),
(346, 'PGD32', 'Internet'),
(347, 'PGD33', 'Supervisor (Production)'),
(348, 'PGD34', 'Asst. Officer (Construction)'),
(349, 'PGD35', 'Officer (Audit)'),
(350, 'PGD36', 'Show Room Incahrge'),
(351, 'PGD37', 'Show Room Assistant'),
(352, 'PGD38', 'Narsindi Depot'),
(353, 'PGD39', 'Driver'),
(354, 'PGD40', 'Peon'),
(355, 'PGD41', 'Cook'),
(356, 'PGD42', 'Supervisor'),
(357, 'PGD43', 'Asst. Supervisor'),
(358, 'PGD44', 'Guard (Meghna Ghat)'),
(359, 'PGD45', 'Guard'),
(360, 'PGD46', 'Asst. Supervisor'),
(361, 'PGD47', 'Supervisor'),
(362, 'PGD48', 'COO'),
(363, 'PGD49', 'AGM (Marketing)'),
(364, 'PGD50', 'DGM (Feed Mills)'),
(365, 'PGD51', 'DGM (Commercial)'),
(366, 'PGD52', 'Deputy Manager (TVI)'),
(367, 'PGD53', 'Asst. Manager (Accounts)'),
(368, 'PGD54', 'Asst. Manager (Engr.)'),
(369, 'PGD55', 'Sr. Officer (Store)'),
(370, 'PGD56', 'Sr. Officer -Sales'),
(371, 'PGD57', 'Sr. Officer - Commercial'),
(372, 'PGD58', 'Sr. Eng. (Project)'),
(373, 'PGD59', 'Sr. Officer (Accounts)'),
(374, 'PGD60', 'Office Assistant (Comm.)'),
(375, 'PGD61', 'Office Assistant (Transport)'),
(376, 'PGD62', 'Officer (QC)'),
(377, 'PGD63', 'Engineer (Civil)'),
(378, 'PGD64', 'Accounts Officer-Factory'),
(379, 'PGD65', 'Engineer -Plant'),
(380, 'PGD66', 'Sales Representative'),
(381, 'PGD67', 'Sales Officer'),
(382, 'PGD68', 'Store Officer'),
(383, 'PGD69', 'Cleaner'),
(384, 'PGD70', 'GM (P&O)'),
(385, 'PGD71', 'Manager (IT)'),
(386, 'PGD72', 'AGM (Corp. Finance)'),
(387, 'PGD73', 'In-charge (Maintenance)'),
(388, 'PGD74', 'Feed Sales'),
(389, 'PGD75', 'Asst. Manager (H & A)'),
(390, 'PGD76', 'Asst. Officer (H & A)'),
(391, 'PGD77', 'Officer ( Security)'),
(392, 'PGD78', 'Officer (Costing)'),
(393, 'PGD79', 'Officer (Accounts) Factory'),
(394, 'PGD80', 'Asst. Officer  Purchase)'),
(395, 'PGD81', 'Officer (Commercial)'),
(396, 'PGD82', 'Asst. Officer (Sales)'),
(397, 'PGD83', 'Asst. Officer (QC), CFL'),
(398, 'PGD84', 'Driver'),
(399, 'PGD85', 'Asst. Officer (Store)'),
(400, 'PGD86', 'Manager (Treasure)'),
(401, 'PGD87', 'AGM (Corporate Accounting)'),
(402, 'PGD88', 'Asst. Manager'),
(403, 'PGD89', 'Nutritionist'),
(404, 'PGD90', 'Engineer (Plant)'),
(405, 'PGD91', 'Asst. Mgr. (Tech. Cordinator)'),
(406, 'PGD92', 'Sr. Officer (Costing)'),
(407, 'PGD93', 'Officer (Nutrition)'),
(408, 'PGD94', 'Officer (HR)'),
(409, 'PGD95', 'Officer (QC)'),
(410, 'PGD96', 'Engineer'),
(411, 'PGD97', 'Consultant'),
(412, 'PGD98', 'Asst. Officer (IT)'),
(413, 'PGD99', 'Asst. Officer (Production)'),
(414, 'PGD100', 'Asst. Officer (Accounts'),
(415, 'PGD101', 'Office Asst. (Depot)'),
(416, 'PGD102', 'Asst. Officer (TS)'),
(417, 'PGD103', 'Officer (Marketing)'),
(418, 'PGD104', 'Officer (Aqua)'),
(419, 'PGD105', 'Officer (TS)'),
(420, 'PGD106', 'Sales & Accounts'),
(421, 'PGD107', 'DGM (Hatchery)'),
(422, 'PGD108', 'AGM (HR & Admin)'),
(423, 'PGD109', 'AGM (Farms)'),
(424, 'PGD110', 'Manager (Brd-1,2)'),
(425, 'PGD111', 'Deputy Manager (Accounts)'),
(426, 'PGD112', 'Officer (Production)'),
(427, 'PGD113', 'Engineer (Maintenance)'),
(428, 'PGD114', 'Sr. Officer (Credit Control)'),
(429, 'PGD115', 'Asst. Mgr.  (Production)'),
(430, 'PGD116', 'Officer (Technical)'),
(431, 'PGD117', 'Asst. Officer (Accounts)'),
(432, 'PGD118', 'Supervisor (Hatchery)'),
(433, 'PGD119', 'Messenger'),
(434, 'PGD120', 'Technician'),
(435, 'PGD121', 'Hatchery'),
(436, 'PGD122', 'Driver (Car)'),
(437, 'PGD123', 'Guard (Kanun Valley)'),
(438, 'PGD124', 'Officer (Agriculture)'),
(439, 'PGD125', 'Asst. Officer- Dairy Firm'),
(440, 'PGD126', 'Asst. Officer (Horticulture)'),
(441, 'PGD127', 'Officer (Farm)'),
(442, 'PGD128', 'A.O( Acct. & Admin)'),
(443, 'PGD129', 'AGM (P & E)'),
(444, 'PGD130', 'Asst. Mgr. (Production)'),
(445, 'PGD131', 'Engineer (Electronic & Maint.)'),
(446, 'PGD132', 'Supervisor ( Operation)'),
(447, 'PGD133', 'Officer (Purchase)'),
(448, 'PGD134', 'Supervisor (Bistro)'),
(449, 'PGD135', 'Floor In-charge'),
(450, 'PGD136', 'Hot line Number'),
(451, 'PGD137', 'Sr. Zonal Manager'),
(452, 'PGD138', 'Manager (Accounts)'),
(453, 'PGD139', 'Incharge-JFL (H)'),
(454, 'PGD140', 'Manager (Farms)'),
(455, 'PGD141', 'Sr. Officer (Production)'),
(456, 'PGD142', 'Asst. Officer (Accounts)'),
(457, 'PGD143', 'Engineer'),
(458, 'PGD144', 'Store Supervisor'),
(459, 'PGD145', 'Engr. (Maintenance)'),
(460, 'PGD146', 'Asst. Officer (Acct. & Sales)'),
(461, 'PGD147', 'Asst. Mgr. (Farm)'),
(462, 'PGD148', 'Officer ( Accounts)'),
(463, 'PGD149', 'Officer ( Admin)'),
(464, 'PGD150', 'Officer (Accounts)'),
(465, 'PGD151', 'Receptionist'),
(466, 'PGD152', 'Asst. Mgr. (Farms)'),
(467, 'PGD153', 'Site Engineer'),
(468, 'PGD154', 'Manager (Comm. Layer)'),
(469, 'PGD155', 'Asst. Engineer'),
(470, 'PGD156', 'Sexer'),
(471, 'PGD157', 'Manager (Farm)'),
(472, 'PGD158', 'Office'),
(473, 'PGD159', 'Tech. Generator'),
(474, 'PGD160', 'Superviser'),
(475, 'PGD161', 'Store Keeper'),
(476, 'PGD162', 'Security Supervisor'),
(477, 'PGD163', 'Asst. Manger (Sales & Mktg.)'),
(478, 'PGD164', 'Sr. Officer (Prod.), Sreepur'),
(479, 'PGD165', 'Asst. Mgr. (Sales)'),
(480, 'PGD166', 'Officer (Land)'),
(481, 'PGD167', 'Asst. Officer (Purchase)'),
(482, 'PGD168', 'Supervisor (Hatchery)'),
(483, 'PGD169', 'Asst. Technician (Health)'),
(484, 'PGD170', 'COO (CF)'),
(485, 'PGD171', 'Sales Manager -K A/c (CF)'),
(486, 'PGD172', 'Asst. Manager (Tatka)'),
(487, 'PGD173', 'Asst. Manager (Distr.)'),
(488, 'PGD174', 'Asst. Manager (SC-CF)'),
(489, 'PGD175', 'Sr. Sales Officer'),
(490, 'PGD176', 'Sr. Officer'),
(491, 'PGD177', 'Officer Sales Administration'),
(492, 'PGD178', 'Sr. Officer (P&FP)'),
(493, 'PGD179', 'Officer (Sales Co-ordi.)'),
(494, 'PGD180', 'Officer (Management Trainee)'),
(495, 'PGD181', 'Area Sales Manager'),
(496, 'PGD182', 'Regional Sales Manager'),
(497, 'PGD183', 'Asst. Manager (Maintenance)'),
(498, 'PGD184', 'Officer (Acct. & Admin)'),
(499, 'PGD185', 'Asst. Officer (Accounts'),
(500, 'PGD186', 'Officer (Customer Service)'),
(501, 'PGD187', 'ASM (Key Accts)'),
(502, 'PGD188', 'Graphics Designer'),
(503, 'PGD189', 'Store Assistant'),
(504, 'PGD190', 'Officer (Sales)'),
(505, 'PGD191', 'SR (Retail)'),
(506, 'PGD192', 'SR'),
(507, 'PGD193', 'Depot Incharge'),
(508, 'PGD194', 'Delivery Man'),
(509, 'PGD195', 'Helper'),
(510, 'PGD196', 'Manager, Kiosk Operation'),
(511, 'PGD197', 'Manager (Acct. & Fianace)'),
(512, 'PGD198', 'Incharge (Plant)'),
(513, 'PGD199', 'Brand Manager (CF)'),
(514, 'PGD200', 'Coordination Officer'),
(515, 'PGD201', 'Officer (Software Deve.)'),
(516, 'PGD202', 'Asst.Officer (Acct.)'),
(517, 'PGD203', 'Supervisor-Production'),
(518, 'PGD204', 'Officer (Social Media-IT)'),
(519, 'PGD205', 'Officer- Purchase'),
(520, 'PGD206', 'Asst. P/S Officer'),
(521, 'PGD207', 'Guard (Dimla)'),
(522, 'PGD208', 'Deputy Manager (IT)'),
(523, 'PGD209', 'Engineer- Maintenance'),
(524, 'PGD210', 'Sr. Officer (IT)'),
(525, 'PGD211', 'Asst.Officer (Acct.-FD)'),
(526, 'PGD212', 'Supervisor (security)'),
(527, 'PGD213', 'Sr. Mgr. (Farms)'),
(528, 'PGD214', 'Shed Supervisor'),
(529, 'PGD215', 'Supervisor (Egg)'),
(530, 'PGD216', 'Production'),
(531, 'PGD217', 'Generator'),
(532, 'PGD218', 'Canteen'),
(533, 'PGD219', 'Incharge'),
(534, 'PGD220', 'Veterinary Surgeon'),
(535, 'PGD221', 'Officer (Microbiology)'),
(536, 'PGD222', 'Asst. Chemist'),
(537, 'PGD223', 'Front Desk/Messenger'),
(538, 'PGD224', 'Receptionist & Acct.'),
(539, 'PGD225', 'Guard'),
(540, 'PGD226', 'Manager (Fish Hatchery)'),
(541, 'PGD227', 'Sr. Officer (Fish Farm)'),
(542, 'PGD228', 'Manager (Factory)'),
(543, 'PGD229', 'AO (Purchase)'),
(544, 'PGD230', 'Asst. Purchase Officer'),
(545, 'PGD231', 'Asst. Officer (A/C)'),
(546, 'PGD232', 'Asst. Officer (Store & Acct.)'),
(547, 'PGD233', 'Quality Controller'),
(548, 'PGD234', 'CFO'),
(549, 'PGD235', 'Sr. Manager (Operations)'),
(550, 'PGD236', 'Sr. Manager (Factory)'),
(551, 'PGD237', 'Asst. Manager (Mkt)'),
(552, 'PGD238', 'Officer (TVI)'),
(553, 'PGD239', 'Sr. Officer (Logistics)'),
(554, 'PGD240', 'Sr. Officer (Mktg.)'),
(555, 'PGD241', 'Officer (Banking)'),
(556, 'PGD242', 'Officer (Pay Roll & Compensation)'),
(557, 'PGD243', 'Officer (Mktg-PPFL)'),
(558, 'PGD244', 'Officer (Sales)-PPFL'),
(559, 'PGD245', 'Manager (Production & Admin)'),
(560, 'PGD246', 'Manager (Production)'),
(561, 'PGD247', 'Asst. Manager (FIBC)'),
(562, 'PGD248', 'Sr. Officer (Accounts & VAT)'),
(563, 'PGD249', 'Office Asst. (Store)'),
(564, 'PGD250', 'Asst. Officer (PPFL)'),
(565, 'PGD251', 'Shift Incharge (Finishing)'),
(566, 'PGD252', 'Manager (Tea Estate)'),
(567, 'PGD253', 'Head Office Clerk'),
(568, 'PGD254', 'Asst. Manager'),
(569, 'PGD255', 'Factory Clerk'),
(570, 'PGD256', 'Engineer (Project)'),
(571, 'PGD257', 'Mananger (Production)'),
(572, 'PGD258', 'Sub- Asst. Engineer'),
(573, 'PGD259', 'Officer (Admin)'),
(574, 'PGD260', 'Asst. Officer (HR& Admin)'),
(575, 'PGD261', 'Managing Editor (FH)'),
(576, 'PGD262', 'Asst. Officer (FH)'),
(577, 'PGD263', 'MD House'),
(578, 'PGD264', 'Technician- HO'),
(579, 'PGD265', 'CareTaker (MD House)'),
(580, 'PGD266', 'Supervisor (Housekeeping)'),
(581, 'PGD267', 'Manager (Poultry & FF)'),
(582, 'PGD268', 'Asst. Mgr. (MKtg.)'),
(583, 'PGD269', 'Regional Sales Mgr.'),
(584, 'PGD270', 'Officer (Mktg.)'),
(585, 'PGD271', 'O.A (Deport- Barishal)'),
(586, 'PGD272', 'A.O (Deport- Mymen.)'),
(587, 'PGD273', 'O.A (B-Baria- Depot)'),
(588, 'PGD274', 'Asst. Officer (Depot)'),
(589, 'PGD275', 'O.A (Depot)'),
(590, 'PGD276', 'Officer (Mktg)'),
(591, 'PGD277', 'O. A (Depot)'),
(592, 'PGD278', 'A.O (Depot)'),
(593, 'PGD279', 'Asst.Manager (MKT)'),
(594, 'PGD280', 'Asst. Manager (Mkt.)'),
(595, 'PGD281', 'Regional Sales Manager'),
(596, 'PGD282', 'Sr. Officer (Mktg. Zone In.)'),
(597, 'PGD283', 'Officer (Mktg. Zone Incharge)'),
(598, 'PGD284', 'Sr. Officer (Marketing)'),
(599, 'PGD285', 'Asst. Officer (Marketing)'),
(600, 'PGD286', 'Officer (Marketing)'),
(601, 'PGD287', 'Asst. Officer (Marketing)'),
(602, 'PGD288', 'Asst. Officer (Bogra- Depot)'),
(603, 'PGD289', 'Asst. Sales- (Ctg.- Depot)'),
(604, 'PGD290', 'Asst. Sales (Sylhet- Depot)'),
(605, 'PGD291', 'Manager (Aqua feed)'),
(606, 'PGD292', 'Asst. Manager (TS.)'),
(607, 'PGD293', 'Sr. Officer (Mkt.)'),
(608, 'PGD294', 'Officer (Marketing'),
(609, 'PGD295', 'Asst. Officer (Comilla-Depot)'),
(610, 'PGD296', 'Asst. Officer (Hazigonj-Depot)'),
(611, 'PGD297', 'Asst. Officer (Sales & Mktg.)'),
(612, 'PGD298', 'Asst. Officer (TS- Aqua)'),
(613, 'PGD299', 'Asst. Manager \n(Marketing Co-ordination)'),
(614, 'PGD300', 'Asst. Manager (Zone Incharge)'),
(615, 'PGD301', 'Offcer (TS)'),
(616, 'PGD302', 'A.O (Mktg.-Fish)'),
(617, 'PGD303', 'A.O (Mktg.)'),
(618, 'PGD304', 'Marketing Asst.'),
(619, 'PGD305', 'A.O (Mktg. Fish)'),
(620, 'PGD306', 'Asst. Depot (Cox Bazar)'),
(621, 'PGD307', 'Asst. Officer (Depot-Comilla)'),
(622, 'PGD308', 'Office Assistant (Depot)'),
(623, 'PGD309', 'Vehicle'),
(624, 'PGD310', 'Chief Coordinator'),
(625, 'PGD311', 'Stock');

-- --------------------------------------------------------

--
-- Table structure for table `sma_districts`
--

CREATE TABLE `sma_districts` (
  `id` int(11) NOT NULL,
  `district` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_districts`
--

INSERT INTO `sma_districts` (`id`, `district`, `division`) VALUES
(1, 'Barguna  ', 'Barisal'),
(2, 'Barisal  ', 'Barisal'),
(3, 'Bhola  ', 'Barisal'),
(4, 'Jhalokati  ', 'Barisal'),
(5, 'Patuakhali  ', 'Barisal'),
(6, 'Pirojpur  ', 'Barisal'),
(7, 'Bandarban  ', 'Chittagong'),
(8, 'Brahmanbaria  ', 'Chittagong'),
(9, 'Chandpur  ', 'Chittagong'),
(10, 'Chittagong  ', 'Chittagong'),
(11, 'Comilla  ', 'Chittagong'),
(12, 'Cox\'s Bazar  ', 'Chittagong'),
(13, 'Feni  ', 'Chittagong'),
(14, 'Khagrachhari  ', 'Chittagong'),
(15, 'Lakshmipur  ', 'Chittagong'),
(16, 'Noakhali  ', 'Chittagong'),
(17, 'Rangamati  ', 'Chittagong'),
(18, 'Dhaka  ', 'Dhaka'),
(19, 'Faridpur  ', 'Dhaka'),
(20, 'Gazipur  ', 'Dhaka'),
(21, 'Gopalganj  ', 'Dhaka'),
(22, 'Jamalpur  ', 'Dhaka'),
(23, 'Kishoreganj  ', 'Dhaka'),
(24, 'Madaripur  ', 'Dhaka'),
(25, 'Manikganj  ', 'Dhaka'),
(26, 'Munshiganj  ', 'Dhaka'),
(27, 'Mymensingh  ', 'Dhaka'),
(28, 'Narayanganj  ', 'Dhaka'),
(29, 'Narsingdi  ', 'Dhaka'),
(30, 'Netrakona  ', 'Dhaka'),
(31, 'Rajbari  ', 'Dhaka'),
(32, 'Shariatpur  ', 'Dhaka'),
(33, 'Sherpur  ', 'Dhaka'),
(34, 'Tangail  ', 'Dhaka'),
(35, 'Bagerhat  ', 'Khulna'),
(36, 'Chuadanga  ', 'Khulna'),
(37, 'Jessore  ', 'Khulna'),
(38, 'Jhenaidah  ', 'Khulna'),
(39, 'Khulna  ', 'Khulna'),
(40, 'Kushtia  ', 'Khulna'),
(41, 'Magura  ', 'Khulna'),
(42, 'Meherpur  ', 'Khulna'),
(43, 'Narail  ', 'Khulna'),
(44, 'Satkhira  ', 'Khulna'),
(45, 'Bogra  ', 'Rajshahi'),
(46, 'Joypurhat  ', 'Rajshahi'),
(47, 'Naogaon  ', 'Rajshahi'),
(48, 'Natore  ', 'Rajshahi'),
(49, 'Nawabganj  ', 'Rajshahi'),
(50, 'Pabna  ', 'Rajshahi'),
(51, 'Rajshahi  ', 'Rajshahi'),
(52, 'Sirajganj  ', 'Rajshahi'),
(53, 'Dinajpur  ', 'Rangpur'),
(54, 'Gaibandha  ', 'Rangpur'),
(55, 'Kurigram  ', 'Rangpur'),
(56, 'Lalmonirhat  ', 'Rangpur'),
(57, 'Nilphamari  ', 'Rangpur'),
(58, 'Panchagarh  ', 'Rangpur'),
(59, 'Rangpur  ', 'Rangpur'),
(60, 'Thakurgaon  ', 'Rangpur'),
(61, 'Habiganj  ', 'Sylhet'),
(62, 'Moulvibazar  ', 'Sylhet'),
(63, 'Sunamganj  ', 'Sylhet'),
(64, 'Sylhet  ', 'Sylhet'),
(671, 'District', 'Division');

-- --------------------------------------------------------

--
-- Table structure for table `sma_doctype`
--

CREATE TABLE `sma_doctype` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_doctype`
--

INSERT INTO `sma_doctype` (`id`, `name`, `description`) VALUES
(68, 'Trade License', 'Trade License'),
(69, 'Environment Certificate', 'Environment Certificate');

-- --------------------------------------------------------

--
-- Table structure for table `sma_documents`
--

CREATE TABLE `sma_documents` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `status_id` varchar(150) NOT NULL,
  `doctype_id` varchar(100) NOT NULL,
  `other_info` varchar(500) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `attachment_name` varchar(150) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_documents`
--

INSERT INTO `sma_documents` (`id`, `name`, `reference_no`, `company_id`, `status_id`, `doctype_id`, `other_info`, `created_by`, `url`, `created_date`, `attachment_name`, `category_id`, `subcategory_id`) VALUES
(2323, 'sdgsd', 'sdgds', 13, 'updated', '69', '<p>cxcbxfcbv</p>', 1, 'assets/uploads/document/FL_-_(2018-2019)_-_PPL.pdf', '2018-11-17 02:53:41', 'FL_-_(2018-2019)_-_PPL.pdf', NULL, NULL),
(2324, 'bcvb', 'bxbx', 12, 'updated', '69', '', 1, 'assets/uploads/document/FL_-_(2016-2019)_-_PPL_(SAGARDIGHI).pdf', '2018-11-17 02:55:14', 'FL_-_(2016-2019)_-_PPL_(SAGARDIGHI).pdf', NULL, NULL),
(2330, 'cvxcbcx', 'cxbxcbx', 12, 'updated', '69', '', 1, 'assets/uploads/document/General//Tax_design.docx', '2018-12-26 00:46:06', 'Tax_design.docx', 665, NULL),
(2331, 'cbxcn', 'xcbxcb', 12, 'updated', '68', '<p>vxcv</p>', 1, 'assets/uploads/document/General/a11//Bistro_New_Menu.pdf', '2018-12-26 00:47:58', 'Bistro_New_Menu.pdf', 665, 666),
(2332, 'fzfaf', 'dfafafda', 12, 'updated', '69', '<p>vzvz</p>', 1, 'assets/uploads/document/adjustment.PNG', '2019-01-14 00:39:42', 'adjustment.PNG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_document_movement`
--

CREATE TABLE `sma_document_movement` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `reference_no` varchar(200) DEFAULT NULL,
  `document_id` int(11) NOT NULL,
  `application_type` varchar(200) NOT NULL,
  `responsible_person` varchar(200) NOT NULL,
  `processing_fees` varchar(13) DEFAULT NULL,
  `notification_date` date NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `expire_date` date NOT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `other_info` varchar(500) DEFAULT NULL,
  `attachment_name` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_document_movement`
--

INSERT INTO `sma_document_movement` (`id`, `name`, `reference_no`, `document_id`, `application_type`, `responsible_person`, `processing_fees`, `notification_date`, `created_by`, `expire_date`, `created_date`, `updated_by`, `updated_date`, `other_info`, `attachment_name`, `url`) VALUES
(1, 'cdfhdf', 'fdfhfhf', 2324, 'Renew Application', '24', '140', '2018-11-10', 1, '2018-11-05', '2018-11-18', NULL, NULL, '<p>fhshfd111111111111111</p>', '123.PNG', 'assets/uploads/document/movement/123.PNG'),
(2, 'zxvzx', 'xzvzxv', 2330, 'Renew Application', '24', 'vzvzx', '0000-00-00', 1, '0000-00-00', '2019-01-14', NULL, NULL, '', 'adjustment.PNG', 'assets/uploads/document/movement/adjustment.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `sma_employees`
--

CREATE TABLE `sma_employees` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `mobile_number` varchar(13) NOT NULL,
  `ceiling_amount` varchar(100) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `service_start_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `email` varchar(50) DEFAULT NULL,
  `credit_limit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_employees`
--

INSERT INTO `sma_employees` (`id`, `employee_id`, `designation_id`, `company_id`, `operator_id`, `package_id`, `mobile_number`, `ceiling_amount`, `created_by`, `name`, `created_date`, `updated_by`, `updated_date`, `service_start_date`, `active`, `email`, `credit_limit`) VALUES
(20, 'PG000129', 577, 11, 65, 13, '1711526902', '10000', NULL, 'Moshiur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '20000'),
(22, 'PG000129 (2)', 626, 11, 66, 13, '1841526902', '1000', NULL, 'Moshiur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(23, 'PG000129 (3)', 626, 11, 66, 13, '1844221350', '1000', NULL, 'Moshiur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(24, 'PG000128', 627, 11, 65, 13, '1711535642', '2500', NULL, 'Yasmin Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '5000'),
(25, 'PG000272', 624, 11, 65, 13, '1711561199', '5000', NULL, 'Manzoor Elahi', NULL, NULL, NULL, '2017-01-01', 1, NULL, '10000'),
(26, 'PG000200', 627, 11, 65, 13, '1711526219', '2500', NULL, 'Mehran Rahman', NULL, NULL, NULL, '2017-01-01', 1, NULL, '5000'),
(31, 'PPL (FD)- 07', 577, 11, 65, 13, '1713361924', '2000', NULL, 'Maliha Rahman', NULL, NULL, NULL, '2018-01-01', 1, 'maliha@paragon.com.bd', '4000'),
(33, 'PG000120', 316, 11, 65, 13, '1711825538', '2000', NULL, 'Sarwar Hossain Shaheen', NULL, NULL, NULL, '1969-12-31', 1, 'shaheen@paragon.com.bd', '4000'),
(34, 'PG000032', 317, 11, 65, 13, '1713361902', '2000', NULL, 'Mohammad Atiqur Rahman', NULL, NULL, NULL, '1969-12-31', 1, 'atiq@paragongroup-bd.com', '4000'),
(35, 'PG000032 (2)', 317, 11, 65, 13, '1841361902', '2000', NULL, 'Mohammad Atiqur Rahman', NULL, NULL, NULL, '1969-12-31', 1, 'atiq@paragon.com.bd', '4000'),
(38, 'PG000097 (1)', 319, 11, 64, 13, '1926673922', '2000', NULL, 'Shymol Chakraborty', NULL, NULL, NULL, '1969-12-31', 1, 'Shymol@paragon.com.bd', '4000'),
(40, 'PG000097 (2)', 319, 11, 65, 13, '1711679056', '2000', NULL, 'Shymol Chakraborty', NULL, NULL, NULL, '1969-12-31', 1, 'Shay@paragon.com.bd', '4000'),
(41, 'PG000098', 497, 11, 65, 13, '1713361917', '1000', NULL, 'Bepen Chandray Ray', NULL, NULL, NULL, '1969-12-31', 1, 'bepen@paragon.com.bd', '2000'),
(46, 'PG000413', 321, 11, 65, 13, '1844221351', '1000', NULL, 'Md. Selim Reza', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(47, 'PPLF000001', 322, 11, 65, 13, '1713361937', '2000', NULL, 'Mrinal Kati Deb', NULL, NULL, NULL, '0000-00-00', 1, 'Mrinal@paragon.com.bd', '4000'),
(49, 'PG000259', 323, 11, 65, 13, '1711630516', '1800', NULL, 'Sohelur Rahman', NULL, NULL, NULL, '0000-00-00', 1, 'sohel@paragon.com.bd', '3600'),
(53, 'PPLF000071', 324, 11, 65, 13, '1904118555', '800', NULL, 'Md. Mostafa', NULL, NULL, NULL, '0000-00-00', 1, 'mostafa@paragon.com.bd', '1600'),
(58, 'PG000040', 410, 11, 65, 13, '1713361935', '600', NULL, 'Murshed Ahamed', NULL, NULL, NULL, '0000-00-00', 1, 'murshed@paragon.com.bd', '1200'),
(61, 'PG000064', 427, 11, 65, 13, '1708465389', '300', NULL, 'Shohidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(62, 'PPLF000002', 410, 11, 65, 13, '1729061543', '500', NULL, 'Md. Rafiqul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(63, 'PPLF000003', 325, 11, 65, 13, '1730020079', '300', NULL, 'Sukanta Biswas', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(64, 'PPLF000013', 427, 11, 64, 13, '1914203678', '300', NULL, 'Wakil Ahmed', NULL, NULL, NULL, '0000-00-00', 1, 'wakil@paragon.com.bd', '600'),
(65, 'PG000271', 326, 11, 65, 13, '1718146115', '500', NULL, 'Dr. Al Beruni Khan', NULL, NULL, NULL, '0000-00-00', 1, 'alberunikhan@agmail.com', '1000'),
(66, 'CFL000030', 327, 11, 66, 13, '1844142356', '300', NULL, 'Nazim Uddin', NULL, NULL, NULL, '0000-00-00', 1, 'nazim@paragon.com.bd', '600'),
(67, 'PG000099', 479, 11, 65, 13, '1713361901', '1700', NULL, 'Sakhawat Hossain', NULL, NULL, NULL, '0000-00-00', 1, 'saki@paragon.com.bd', '3400'),
(68, 'CFL000006', 329, 11, 65, 13, '1713361928', '1000', NULL, 'Md. Asaduzzaman', NULL, NULL, NULL, '0000-00-00', 1, 'asaduzzaman@pargaon.com.bd', '2000'),
(69, 'PG000023', 373, 11, 64, 13, '1926673959', '600', NULL, 'Md. Jakir Hossain', NULL, NULL, NULL, '0000-00-00', 1, 'jakir@paragon.com.bd', '1200'),
(70, 'PG000086', 332, 11, 65, 13, '1713361990', '1000', NULL, 'SKD Sushanta', NULL, NULL, NULL, '0000-00-00', 1, 'shusanta@paragon.com.bd', '2000'),
(71, 'PG000006', 333, 11, 65, 13, '1713361987', '800', NULL, 'Suvonkar Majumdar', NULL, NULL, NULL, '0000-00-00', 1, 'suvonkar@paragon.com.bd', '1600'),
(72, 'PG000008', 373, 11, 65, 13, '1713361926', '600', NULL, 'Yousuf Ali', NULL, NULL, NULL, '0000-00-00', 1, 'yousuf@paragon.com.bd', '1200'),
(73, 'PG000014', 334, 11, 65, 13, '1713361920', '900', NULL, 'Abu Hanif Khan', NULL, NULL, NULL, '0000-00-00', 1, 'hanif@paragon.com.bd', '1800'),
(74, 'JFL000010', 335, 11, 65, 13, '1713361931', '500', NULL, 'Ripon Kumar Das', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(75, 'PPLF000009', 373, 11, 64, 13, '1926673901', '300', NULL, 'Md. Wahab Howlader', NULL, NULL, NULL, '0000-00-00', 1, 'wahab@paragon.com.bd', '600'),
(78, 'PPLF000008', 336, 11, 65, 13, '1713361939', '500', NULL, 'Rafiqul Islam Dhalli', NULL, NULL, NULL, '0000-00-00', 1, 'rafiqul.pplfd@paragon.com.bd', '1000'),
(79, 'PPLF000014', 369, 11, 64, 13, '1907488019', '500', NULL, 'Akkas Ali', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(80, 'PG000016', 333, 11, 65, 13, '1713361988', '500', NULL, 'Shanaj Sultana', NULL, NULL, NULL, '0000-00-00', 1, 'shanaj@paragon.com.bd', '1000'),
(81, 'PPLF000032', 337, 11, 66, 13, '1844142387', '300', NULL, 'Md. Helal Uddin', NULL, NULL, NULL, '0000-00-00', 1, 'helal@paragon.com.bd', '600'),
(82, 'PPLF000021', 338, 11, 66, 13, '1844160406', '300', NULL, 'Md. Tuhin Islam', NULL, NULL, NULL, '0000-00-00', 1, 'tuhin@paragon.com.bd', '600'),
(83, 'PG000105', 339, 11, 64, 13, '1926673944', '500', NULL, 'Julfiker Haider', NULL, NULL, NULL, '0000-00-00', 1, 'julfiker@paragon.com.bd', '1000'),
(84, 'PPLF000050', 339, 11, 64, 13, '1904118553', '300', NULL, 'Md. Asif Iqbal', NULL, NULL, NULL, '0000-00-00', 1, 'asif@paragon.com.bd', '600'),
(85, 'PPLF000029', 340, 11, 64, 13, '1904118554', '300', NULL, 'Md. Aminul Islam', NULL, NULL, NULL, '0000-00-00', 1, 'aminul@paragon.com.bd', '600'),
(86, 'PG000376', 338, 11, 64, 13, '1944466246', '500', NULL, 'Md. Gias Uddin', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(87, 'PG000421', 342, 11, 66, 13, '1847324157', '900', NULL, 'T.M. Ashiqur Rahman', NULL, NULL, NULL, '0000-00-00', 1, 'ashiqur@paragon.com.bd', '1800'),
(88, 'PG000393', 343, 11, 64, 13, '1944466243', '500', NULL, 'Md. Maniruzzaman', NULL, NULL, NULL, '0000-00-00', 1, 'Maniruzzaman@paragon.com.bd', '1000'),
(89, 'PPLF000062', 344, 14, 64, 13, '1904118559', '300', NULL, 'Md. Mehede Hasan', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(90, 'PG000090', 345, 11, 64, 13, '1944466231', '300', NULL, 'Md. Azhar Ali Khan', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(91, 'PPLF000011', 504, 11, 65, 13, '1711621198', '2000', NULL, 'Afjal Hossain', NULL, NULL, NULL, '0000-00-00', 1, 'afjal@paragon.com.bd', '4000'),
(92, 'PPLF000017', 336, 11, 64, 13, '1904118550', '300', NULL, 'Md. Abbas Uddin', NULL, NULL, NULL, '0000-00-00', 1, ' Abbas@paragon.com.bd', '600'),
(93, 'PPLF000015', 336, 11, 64, 13, '1904118551', '300', NULL, 'Habibur Rahman Dewan', NULL, NULL, NULL, '0000-00-00', 1, 'Habibur@paragon.com.bd', '600'),
(94, 'CFL000034', 348, 11, 66, 13, '1847324170', '300', NULL, 'Bashirul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(95, 'PG000541', 349, 11, 65, 13, '1711630519', '300', NULL, 'Md. Asaduzzaman', NULL, NULL, NULL, '0000-00-00', 1, 'Asaduzzaman@paragon.com.bd', '600'),
(96, 'PPLF000019', 350, 11, 66, 13, '1844142355', '1300', NULL, 'Ful Mia Sarker', NULL, NULL, NULL, '0000-00-00', 1, 'Ful@paragon.com.bd', '2600'),
(97, 'PG000218', 353, 11, 64, 13, '1907488013', '200', NULL, 'Md. Sohrab Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(98, 'PG000229', 353, 11, 64, 13, '1907488014', '200', NULL, 'Biplob Prodhan', NULL, NULL, NULL, '1969-12-31', 1, NULL, '400'),
(100, 'PG000225', 353, 11, 64, 13, '1907488015', '200', NULL, 'Mohammad Hanif', NULL, NULL, NULL, '1969-12-31', 1, NULL, '400'),
(101, 'PG000095', 354, 11, 65, 15, '1770973165', '100', NULL, 'Bahauddin Ahmed', NULL, NULL, NULL, '0000-00-00', 1, 'Bahauddin', '200'),
(102, 'PG000054', 353, 11, 64, 13, '1907488002', '300', NULL, 'Md. Akhter Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(103, 'PG000044', 355, 11, 65, 15, '1775558929', '100', NULL, 'Md. Anis', NULL, NULL, NULL, '0000-00-00', 1, 'aniscook@paragon.com.bd', '200'),
(104, 'PS000015', 526, 11, 65, 15, '1759567170', '200', NULL, 'Md. Altab Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(105, 'PG000227', 526, 11, 65, 15, '1794313862', '400', NULL, 'Md. Jahirul Islam', NULL, NULL, NULL, '0000-00-00', 1, 'Jahirulsecurity@paragon.com.bd', '800'),
(106, 'PG000096', 362, 12, 65, 13, '1713015405', '5000', NULL, 'Shohel Ibne Sattar', NULL, NULL, NULL, '0000-00-00', 1, 'shohelsattar@paragongroup-bd.com', '10000'),
(107, 'PG000096 (2)', 362, 12, 65, 13, '1711679055', '60', NULL, 'Shohel Ibne Sattar', NULL, NULL, NULL, '0000-00-00', 1, 'shohelsattar@paragon.com.bd', '120'),
(108, 'PG000142', 364, 12, 65, 13, '1713361945', '2000', NULL, 'Mohammad Abdul Karim Sarker', NULL, NULL, NULL, '0000-00-00', 1, 'karim@paragon.com.bd', '4000'),
(109, 'PG000066', 365, 12, 65, 13, '1713361904', '3000', NULL, 'Gowtom Chandra Mazumder', NULL, NULL, NULL, '0000-00-00', 1, 'gautom@paragongroup-bd.co m', '6000'),
(110, 'PG000230', 366, 12, 66, 13, '1844142391', '900', NULL, 'Md. Mizanur Rahman', NULL, NULL, NULL, '0000-00-00', 1, 'mizanur@paragon.com.bd', '1800'),
(111, 'PG000010', 367, 12, 65, 13, '1713361911', '1000', NULL, 'Sahadat Hossain', NULL, NULL, NULL, '0000-00-00', 1, 'shahadat@paragon.com.bd', '2000'),
(112, 'PG000033', 368, 12, 65, 13, '1713361925', '1000', NULL, 'Rayhan Kabir', NULL, NULL, NULL, '0000-00-00', 1, 'Rayhan@paragon.com.bd', '2000'),
(113, 'PG000034', 369, 12, 66, 13, '1844142378', '300', NULL, 'A.K.M Mir Jumla', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(114, 'PG0000034', 370, 12, 65, 13, '1713361912', '700', NULL, 'Abhijeet Barua', NULL, NULL, NULL, '0000-00-00', 1, 'abhijeet@paragon.com.bd', '1400'),
(115, 'PG000067', 371, 12, 66, 13, '1844142377', '1500', NULL, 'Akber Kabir Jony', NULL, NULL, NULL, '0000-00-00', 1, 'akber@paragon.com.bd', '3000'),
(117, 'DPC000010', 372, 12, 65, 13, '1729061502', '500', NULL, 'Md. Harun-or-Rashid', NULL, NULL, NULL, '0000-00-00', 1, 'harndpc@paragon.com.bd', '1000'),
(118, 'PG000026', 373, 12, 64, 13, '1926673951', '800', NULL, 'Rubel Saha', NULL, NULL, NULL, '0000-00-00', 1, 'rubel@paragon.com.bd', '1600'),
(119, 'PG000015', 349, 12, 64, 13, '1926673953', '500', NULL, 'Mithun Kumer Shaha', NULL, NULL, NULL, '0000-00-00', 1, 'mithun@paragon.com.bd', '1000'),
(120, 'PG000133', 524, 12, 66, 13, '1844142390', '750', NULL, 'Asfakul Arefin', NULL, NULL, NULL, '0000-00-00', 1, 'asfakul@paragon.com.bd', '1500'),
(121, 'PG000072', 544, 12, 66, 13, '1844142357', '700', NULL, 'Amit Kumar', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1400'),
(122, 'PG000042', 375, 12, 66, 13, '1844142358', '500', NULL, 'Abdus Samad Morull', NULL, NULL, NULL, '0000-00-00', 1, 'samad@paragon.com.bd', '1000'),
(123, 'PFL000005', 339, 12, 65, 13, '1713245352', '300', NULL, 'Md. Mahamudunobi', NULL, NULL, NULL, '1969-12-31', 0, NULL, '600'),
(124, 'PFL000027', 327, 12, 65, 13, '1729061498', '500', NULL, 'Md. Imran Hossain', NULL, NULL, NULL, '0000-00-00', 1, 'imran@paragon.com.bd', '1000'),
(125, 'PFL000003', 393, 13, 65, 13, '1713361944', '900', NULL, 'Tapan Kumer Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(126, 'PFL000001', 379, 12, 65, 13, '1713361986', '600', NULL, 'Md. Mosharraf Hossain', NULL, NULL, NULL, '0000-00-00', 1, 'mosharraf@paragon.com.bd', '1200'),
(127, 'PG000335', 636, 21, 64, 13, '1944466239', '300', NULL, 'Md. Rejaul Karim', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(131, 'PFL000006', 444, 12, 64, 13, '1926673902', '500', NULL, 'Mohammad Golam Kader', NULL, NULL, NULL, '0000-00-00', 1, 'golam@paragon.com.bd', '1000'),
(132, 'PFL000004', 336, 12, 65, 13, '1729061535', '500', NULL, 'Nur Muhammad', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(133, 'PG000280', 354, 12, 65, 15, '1727777755', '100', NULL, 'Pronab Sangma', NULL, NULL, NULL, '0000-00-00', 1, 'pronob@paragon.com.bd', '200'),
(134, 'PG000181', 354, 12, 65, 15, '1754753376', '100', NULL, 'Md. Fakrul Islam Shanto', NULL, NULL, NULL, '0000-00-00', 1, 'shanto@paragon.com.bd', '200'),
(135, 'PG000091', 383, 12, 64, 15, '1996203305', '100', NULL, 'Md. Arman Ali', NULL, NULL, NULL, '0000-00-00', 1, 'arman@paragon.com.bd', '200'),
(137, 'PG000093', 383, 12, 64, 15, '1792116241', '100', NULL, 'Rubel Islam', NULL, NULL, NULL, '0000-00-00', 1, 'rubelcleaner@paragon.com.bd', '200'),
(138, 'PG000092', 383, 12, 66, 15, '1625047298', '100', NULL, 'Mustafa Mia', NULL, NULL, NULL, '0000-00-00', 1, 'mustafa@paragon.com.bd', '200'),
(140, 'MDHOUSE 0001', 383, 12, 65, 15, '1777263028', '100', NULL, 'Rejaul Karim, MD House', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(142, 'PG000294', 383, 12, 64, 15, '1930463649', '100', NULL, 'Babul Sheikh', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(143, 'PG000053', 353, 12, 64, 13, '1926673913', '150', NULL, 'Md. Emdadul Hoque', NULL, NULL, NULL, '1969-12-31', 1, NULL, '150'),
(144, 'PG000328', 353, 12, 64, 13, '1907488005', '150', NULL, 'Aynal Hoque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(145, 'PS000006', 476, 12, 65, 15, '1727142181', '200', NULL, 'Khalilur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '400'),
(146, 'PG000081', 384, 13, 65, 13, '1713245355', '1500', NULL, 'Major M Bazlul Karim (Retd)', NULL, NULL, NULL, '0000-00-00', 1, 'bazlul.karim@paragongroup-bd.com', '3000'),
(147, 'PG000060', 385, 13, 65, 13, '1713361930', '1000', NULL, 'Sirajul Majid Mamun', NULL, NULL, NULL, '0000-00-00', 1, 'mamum@paragongroup-bd.com', '2000'),
(149, 'CFL000001', 512, 13, 65, 13, '1713361951', '1200', NULL, 'Mrinal Chakrabartty', NULL, NULL, NULL, '0000-00-00', 1, 'manager.cfl@paragongroup-bd.com', '2400'),
(150, 'CFL Feed Sales', 388, 13, 65, 13, '1713361952', '900', NULL, 'Feed Sales Number', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(151, 'PG000083', 389, 13, 65, 13, '1713361906', '600', NULL, 'Husne Jahan Arzu', NULL, NULL, NULL, '0000-00-00', 1, 'arzu@paragon.com.bd', '1200'),
(152, 'PG000256', 337, 13, 65, 13, '1713361932', '700', NULL, 'Shazzad Hossain', NULL, NULL, NULL, '0000-00-00', 1, 'shajjad@paragon.com.bd', '1400'),
(153, 'PG000138', 337, 13, 66, 13, '1844142392', '600', NULL, 'Ali Imam', NULL, NULL, NULL, '0000-00-00', 1, 'ali@paragon.com.bd', '1200'),
(154, 'PG000085', 331, 13, 65, 13, '1713361938', '1000', NULL, 'Farid Ahmed', NULL, NULL, NULL, '0000-00-00', 1, 'farid@paragon.com.bd', '2000'),
(155, 'PG000137', 392, 13, 64, 13, '1926673956', '500', NULL, 'Sujit Chandra Roy', NULL, NULL, NULL, '0000-00-00', 1, 'sujit@paragon.com.bd', '1000'),
(156, 'PG000019', 333, 13, 64, 13, '1926673957', '500', NULL, 'Mohammed Arif Salauddin', NULL, NULL, NULL, '0000-00-00', 1, 'arif@paragon.com.bd', '1000'),
(157, 'PG000025', 333, 13, 65, 13, '1708465385', '800', NULL, 'Riaz Md. Ariful Islam', NULL, NULL, NULL, '0000-00-00', 1, 'riaz@paragon.com.bd', '1600'),
(158, 'PG000488', 417, 13, 66, 13, '1847324155', '300', NULL, 'Md. Jahidul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(159, 'CFL000026', 333, 13, 64, 13, '1926673904', '300', NULL, 'Md. Miraz Uddin', NULL, NULL, NULL, '0000-00-00', 1, 'miraz@paragon.com.bd', '600'),
(160, 'PG000068', 447, 13, 64, 13, '1926673903', '1000', NULL, 'Al Mamunur Rashid', NULL, NULL, NULL, '0000-00-00', 1, 'almamun@paragon.com.bd', '2000'),
(161, 'PG000041', 544, 13, 66, 13, '1844142359', '500', NULL, 'Md. Farid Ahmed Mridha', NULL, NULL, NULL, '0000-00-00', 1, 'farid@pargon.com.bd', '1000'),
(162, 'CFL000007', 396, 13, 66, 13, '1844160412', '300', NULL, 'Md. Shahabuddin', NULL, NULL, NULL, '0000-00-00', 1, 'Shahabuddin@paragon.com.bd', '600'),
(163, 'CFL000027', 340, 13, 65, 13, '1713245354', '300', NULL, 'Nayeem Md. Sibgatullah', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(164, 'PG000059', 353, 13, 64, 13, '1907488006', '150', NULL, 'Md. Jalil', NULL, NULL, NULL, '1969-12-31', 1, NULL, '150'),
(166, 'CFL000014', 336, 32, 65, 13, '1729061536', '300', NULL, 'Mohammad Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(167, 'PG000057', 353, 13, 64, 13, '1907488007', '150', NULL, 'Md. Anwar Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '150'),
(168, 'PG000182', 353, 13, 64, 13, '1907488008', '200', NULL, 'Abdul Aziz Howlader', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(169, 'CFL000012', 399, 13, 65, 13, '1729061537', '300', NULL, 'Md. Emnanur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(170, 'CFL000028', 399, 13, 65, 13, '1729061538', '200', NULL, 'Md. Abdul Mazid', NULL, NULL, NULL, '1969-12-31', 1, NULL, '400'),
(171, 'PG000363', 383, 12, 64, 15, '1954763108', '100', NULL, 'Md. Riaz Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(172, 'PG000003', 400, 14, 65, 13, '1711824478', '1500', NULL, 'Md. Atiar Rahaman Khan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(173, 'PG000002', 401, 14, 65, 13, '1711806547', '1500', NULL, 'S.M. Salim Raza', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(174, 'JFL000001', 322, 12, 65, 13, '1713361947', '1000', NULL, 'Kamal Ahmed', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(175, 'PG000420', 402, 14, 65, 13, '1729061501', '300', NULL, 'Mohammad Jahir Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(176, 'PG000109', 403, 14, 65, 13, '1713245351', '500', NULL, 'Shamol Kumar Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(177, 'JFL000042', 404, 14, 64, 13, '1944466240', '1000', NULL, 'MD GOLAM RABBANI', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(178, 'PG000061', 405, 14, 66, 13, '1844142361', '300', NULL, 'Md. Akhtarul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(179, 'PG000005', 330, 14, 64, 13, '1926673905', '800', NULL, 'Md. Abdul Hye', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(180, 'PG000196', 406, 14, 64, 13, '1926673958', '500', NULL, 'Mohammad Dipu Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(181, 'PG000394', 407, 14, 65, 13, '1729061513', '500', NULL, 'Shyam Sundar Achergee', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(182, 'PG000087', 332, 14, 65, 13, '1713361903', '700', NULL, 'Md. Samsul Arefin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1400'),
(183, 'PG000022', 333, 14, 65, 13, '1713361910', '600', NULL, 'Jahanara Akter', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(184, 'JFL000017', 376, 14, 64, 13, '1926673909', '600', NULL, 'Rashidul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1200'),
(185, 'JFL000002', 336, 14, 65, 13, '1729061539', '500', NULL, 'Md. Waheduzzaman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(186, 'PG000069', 395, 14, 66, 13, '1844142362', '1100', NULL, 'Zulfiker Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2200'),
(187, 'PG000257', 337, 14, 66, 13, '1844160405', '500', NULL, 'Tahmid Jarif', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(188, 'PG000172', 396, 14, 64, 13, '1944466238', '500', NULL, 'Md. Delwar Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(189, 'JFL000016', 410, 14, 66, 13, '1847324168', '600', NULL, 'Md. Azizul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1200'),
(190, 'PG000065', 335, 14, 64, 13, '1926673906', '300', NULL, 'Md. Mujahidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(191, 'JFL000018', 413, 14, 64, 13, '1926673908', '500', NULL, 'Sakhawat Hosen', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(192, 'JFL000029', 338, 14, 64, 13, '1926673907', '500', NULL, 'Md. Al Amin Khandokar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(193, 'PG000516', 415, 32, 66, 13, '1844221363', '300', NULL, 'Md. Saddam Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(194, 'PG000515', 342, 32, 66, 13, '1847293208', '900', NULL, 'Raihan Mahmud', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(195, 'PG000507', 342, 32, 66, 13, '1847293207', '900', NULL, 'Md. Arifin Chowdhury', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(196, 'PG000430', 415, 32, 66, 13, '1847284920', '300', NULL, 'Md. Rubel Rana', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(197, 'PG000533', 415, 32, 66, 13, '1844221355', '900', NULL, 'Uzzal Sarder', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(198, 'PG000508', 588, 14, 66, 13, '1847293204', '300', NULL, 'Shahidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(199, 'PG000498', 599, 32, 66, 13, '1847293202', '900', NULL, 'Syed Shahanewaz Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(200, 'PG000530', 588, 32, 66, 13, '1847284921', '300', NULL, 'Md. Nibir Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(201, 'PG000532', 588, 32, 66, 13, '1847284913', '300', NULL, 'Md. Rakib Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(202, 'PG000537', 621, 32, 66, 13, '1847293200', '300', NULL, 'Samsur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(203, 'PG000534', 419, 32, 66, 13, '1847284911', '900', NULL, 'Md. Nazrul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(204, 'PG000497', 419, 32, 66, 13, '1844160448', '900', NULL, 'Dr. Kamalesh Bepray', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(205, 'PG000418', 620, 32, 66, 13, '1844160447', '300', NULL, 'Mofazzal Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(206, 'PG000502', 417, 32, 66, 13, '1844160446', '900', NULL, 'Md. Rabiul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(207, 'PG000495', 618, 32, 66, 13, '1844160445', '900', NULL, 'Foysal Ahmed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(208, 'PG000538', 342, 32, 66, 13, '1844160443', '900', NULL, 'Drubo Kumar Ghosh', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(209, 'PG000505', 419, 32, 66, 13, '1844160423', '900', NULL, 'Md. Ashique Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(210, 'PG000416', 415, 14, 66, 13, '1847324156', '300', NULL, 'Md.Shuvo Ahmed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(211, 'PG000540', 419, 32, 66, 13, '1844160422', '900', NULL, 'Md. Abdullah Al Shaber', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(212, 'PG000503', 419, 32, 66, 13, '1844160421', '900', NULL, 'Md. Nazrul Islam Abir', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(213, 'PG000550', 419, 32, 66, 13, '1844160420', '900', NULL, 'Md. Mosharaf Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(214, 'PG000612', 342, 14, 66, 13, '1844160419', '900', NULL, 'Zihad Akbar', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(215, 'PG000485', 416, 14, 66, 13, '1844142305', '300', NULL, 'Md. Hasan Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(216, 'PG000525', 419, 32, 66, 13, '1844160418', '900', NULL, 'Md. Murshed Munna', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(217, 'PG000518', 417, 14, 66, 13, '1844142346', '900', NULL, 'Md. Rifaz Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(218, 'PG000542', 418, 14, 66, 13, '1847324160', '900', NULL, 'A.M.M Borhan Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(219, 'PG000543', 419, 14, 66, 13, '1847324159', '900', NULL, 'Sajal Chandra Shil', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(220, 'PG000147', 598, 16, 66, 13, '1844142315', '1000', NULL, 'Md. Sanwar Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(221, 'PG000451', 551, 16, 66, 13, '1844142310', '1200', NULL, 'Md. Mustafizur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(222, 'JFL000004', 388, 14, 65, 13, '1713361948', '1200', NULL, 'Khan Tarek Mahmud', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(223, 'PG000417', 415, 14, 66, 13, '1847284915', '300', NULL, 'Anwar Shikdar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(224, 'JFL000048', 327, 14, 65, 13, '1729061499', '300', NULL, 'Arifujjaman Khan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(225, 'PG000414', 415, 14, 66, 13, '1844221362', '300', NULL, 'Md. Liton Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(226, 'Unknown22', 612, 11, 66, 13, '1844221366', '900', NULL, 'Md. Hashem Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(227, 'PG000427', 419, 14, 66, 13, '1844221365', '900', NULL, 'Rifatul Erfan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(228, 'PG000236', 353, 14, 64, 13, '1907488003', '200', NULL, 'Md. Shah Alam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(229, 'PG000226', 353, 14, 64, 13, '1907488009', '200', NULL, 'Md. Bashar Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(230, 'PG000058', 353, 14, 64, 13, '1907488010', '150', NULL, 'Md. Rafik', NULL, NULL, NULL, '1969-12-31', 1, NULL, '150'),
(231, 'PPLH000001', 421, 16, 65, 13, '1714056622', '2500', NULL, 'A.K.M Habibur Rahman (Biplob)', NULL, NULL, NULL, '0000-00-00', 1, NULL, '5000'),
(232, 'PG000082', 422, 16, 65, 13, '1713361946', '1500', NULL, 'Mohammad Tuhirul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(233, 'PPLH000004', 423, 16, 64, 13, '1926673964', '500', NULL, 'Khairuzzaman Shameem', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(234, 'PPLH000029', 424, 42, 64, 13, '1926673965', '600', NULL, 'Hamim Uddin', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1200'),
(235, 'PG000426', 419, 14, 66, 13, '1844221364', '900', NULL, 'Kanak Chandra Rudra', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(236, 'PG000009', 425, 16, 65, 13, '1713361907', '1000', NULL, 'Prosengit Saha', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(237, 'PPLH000019', 410, 16, 64, 13, '1926673950', '300', NULL, 'Md. Mynul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(238, 'PG000511', 417, 14, 66, 13, '1844142383', '900', NULL, 'Md. Rashed Alam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(239, 'PG000513', 416, 14, 66, 13, '1847293213', '900', NULL, 'Azizul Hakum Sohel', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(240, 'PG000547', 342, 14, 66, 13, '1844160433', '900', NULL, 'Md. Kamruzzaman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(241, 'PG000459', 342, 14, 66, 13, '1844160430', '900', NULL, 'Md. Zakir Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(242, 'PG000212', 611, 14, 64, 13, '1944466244', '1000', NULL, 'Md. Samsul Alam Khan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(243, 'PG000548', 588, 14, 66, 13, '1844142399', '300', NULL, 'Md. Ashraful Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(244, 'PPLC000023', 426, 16, 65, 13, '1729061503', '300', NULL, 'Md. Jahangir Alam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(245, 'PPLH000017', 427, 16, 65, 13, '1847324169', '200', NULL, 'Md. Sohel Rana', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(246, 'PPLH000003', 427, 16, 64, 13, '1926673966', '400', NULL, 'Mahmudul Haider (Engr.)', NULL, NULL, NULL, '0000-00-00', 1, NULL, '800'),
(247, 'PG000490', 417, 14, 66, 13, '1844142398', '300', NULL, 'Swapan Chandra Sarker', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(248, 'PPLH000018', 327, 16, 65, 13, '1713361992', '1600', NULL, 'Majharul Islam (Engr.)', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3200'),
(249, 'PG000089', 331, 16, 65, 13, '1711824479', '1000', NULL, 'Kabir Uddin Talukdar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(250, 'PG000013', 428, 16, 64, 13, '1926673910', '900', NULL, 'MAM Toriqul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(251, 'PPLH000020', 373, 16, 64, 13, '1926673967', '400', NULL, 'MD. Hasanur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '800'),
(252, 'PPLH000022', 429, 16, 64, 13, '1926673968', '300', NULL, 'Rupam Kanti Nath', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(253, 'PG000519', 417, 14, 66, 13, '1844142345', '900', NULL, 'Muhammad Mosharaf Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(254, 'PG000462', 342, 14, 66, 13, '1844142340', '900', NULL, 'Md. Mirajul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(255, 'PG000468', 342, 14, 66, 13, '1844142339', '900', NULL, 'Abdullah Al Mamun', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(256, 'PG000467', 342, 14, 66, 13, '1844142338', '900', NULL, 'Monish Choudhury', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(257, 'PG000461', 417, 14, 66, 13, '1844142325', '900', NULL, 'Shaikh Md. Monirul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(258, 'PG000152', 554, 14, 66, 13, '1844142320', '1000', NULL, 'Md. Rofi Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(259, 'PG000150', 554, 14, 66, 13, '1844142316', '1000', NULL, 'Habibur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(260, 'PG000149', 598, 14, 66, 13, '1844142314', '1000', NULL, 'Md. Joynal Abedin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(261, 'PG000158', 606, 14, 66, 13, '1844142309', '1200', NULL, 'Mainul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(262, 'PG000398', 605, 14, 66, 13, '1844142302', '1500', NULL, 'Md. Ismail Hossain Bhuiyian', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(263, 'PG000501', 342, 13, 66, 13, '1844142333', '900', NULL, 'Md. Ariful Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(264, 'PG000499', 342, 13, 66, 13, '1847293201', '900', NULL, 'Pulak Chakraborty', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(265, 'PG000531', 588, 13, 66, 13, '1847284922', '900', NULL, 'Md. Nur Alom Kobir Mondol', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(266, 'PG000545', 599, 13, 66, 13, '1844160432', '900', NULL, 'Md. Razu Ahmed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(267, 'PG000474', 342, 13, 66, 13, '1844160437', '900', NULL, 'Md. Abul Kalam Azad', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(268, 'PG000478', 599, 13, 66, 13, '1844160436', '900', NULL, 'Md. Tofazzael Khan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(269, 'PG000460', 419, 13, 66, 13, '1844160427', '900', NULL, 'Md. Firoj Mahmud', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(270, 'PG000535', 588, 13, 66, 13, '1847284919', '300', NULL, 'Kamrul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(271, 'PG000471', 603, 13, 66, 13, '1844142360', '800', NULL, 'Naruzzaman Dhali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(272, 'PG000457', 602, 13, 66, 13, '1844142397', '300', NULL, 'Md. Abu Basar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(273, 'PG000464', 342, 13, 66, 13, '1844142343', '900', NULL, 'Md. Mofazzel Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(274, 'PG000255', 430, 16, 64, 13, '1944466229', '1000', NULL, 'Dr. Nawroj Mehadi', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(275, 'PG000070', 395, 16, 64, 13, '1926673963', '1000', NULL, 'Razu Ahmed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(276, 'PG000029', 431, 16, 64, 13, '1926673952', '500', NULL, 'Md. Mahbub Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(277, 'PPLH000042', 337, 16, 64, 13, '1944466232', '300', NULL, 'Saiful Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(278, 'PPLH000023', 432, 16, 65, 15, '1718526325', '400', NULL, 'Moniruzzaman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '800'),
(279, 'PPLH000009', 433, 16, 65, 13, '1729061545', '200', NULL, 'D.M Jahirul islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(280, 'PG000121', 434, 16, 64, 13, '1944466226', '300', NULL, 'Md. Borhan', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(281, 'PG000049', 436, 16, 65, 13, '1711630526', '300', NULL, 'Delwar Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(282, 'PG000050', 436, 16, 64, 13, '1907488011', '500', NULL, 'Md. Humayun Kabir', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(283, 'PG000055', 353, 16, 64, 13, '1907488012', '150', NULL, 'Md. Bashir Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(284, 'PG000045', 434, 16, 64, 13, '1933002261', '200', NULL, 'Md. Firoz Alam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(285, 'PG000170', 584, 13, 66, 13, '1844142329', '900', NULL, 'Taiful Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(286, 'PG000469', 554, 13, 66, 13, '1844142323', '1000', NULL, 'Kamruzzaman Mukul', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(287, 'PG000500', 342, 12, 66, 13, '1847293203', '900', NULL, 'Md. Rashed Mahmud', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(288, 'PG000529', 415, 12, 66, 13, '1847284923', '300', NULL, 'Rubel Khandokar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(289, 'PG000528', 415, 12, 66, 13, '1847284918', '300', NULL, 'Sabuj Kumar Adhikari', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(290, 'PG000476', 342, 12, 66, 13, '1844160435', '900', NULL, 'Md. Zahir Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(291, 'PG000475', 342, 12, 66, 13, '1844160431', '900', NULL, 'Md. Anowar Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(292, 'PG000494', 342, 12, 66, 13, '1844142337', '900', NULL, 'Ariful Hoque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(293, 'PG000456', 584, 12, 66, 13, '1844142324', '900', NULL, 'Md. Shaiful Alam Siddiki', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(294, 'PG000465', 342, 12, 66, 13, '1844142341', '900', NULL, 'Azizur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(295, 'PPL000019', 439, 17, 66, 13, '1847324171', '500', NULL, 'Md. Sohel Rana', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(296, 'PG000373', 440, 17, 64, 13, '1944466241', '300', NULL, 'Tarin Farhana', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(297, 'UDF000001', 441, 18, 65, 13, '1708465390', '300', NULL, 'Dr. Md. Mazedul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(298, 'UDF000002', 442, 18, 64, 13, '1944466237', '300', NULL, 'Md. Rajeeb Ali', NULL, NULL, NULL, '0000-00-00', 0, NULL, '600'),
(299, 'PG000169', 417, 12, 66, 13, '1844142328', '900', NULL, 'Khan Sipan Ibn Siraj', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(300, 'PPLH000036', 444, 19, 64, 13, '1847324167', '600', NULL, 'Huzzatul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1200'),
(301, 'PPLC000024', 426, 19, 65, 13, '1729061504', '300', NULL, 'Md. Rakibul Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(302, 'HALU000001', 382, 19, 65, 13, '1729061506', '300', NULL, 'Md. Babul Akter', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(303, 'HALU000002', 333, 19, 65, 13, '1729061507', '300', NULL, 'Md. Ashraful Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(304, 'PG000453', 596, 12, 66, 13, '1844142327', '1000', NULL, 'Md. Ashrafuzzaman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(305, 'PG000154', 551, 12, 66, 13, '1844142313', '1200', NULL, 'Biplab Kumar Adhikary', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(306, 'PG000159', 551, 12, 66, 13, '1844142311', '1200', NULL, 'Monjurul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(307, 'HALU000006', 445, 19, 65, 13, '1729061508', '300', NULL, 'Refat Ahamed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(308, 'PG000161', 551, 12, 66, 13, '1844142303', '1200', NULL, 'Bipod Vonjon Biswas', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(309, 'HALU000003', 426, 19, 65, 13, '1729061509', '300', NULL, 'Md. Salekuzzaman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(310, 'PG000388', 448, 20, 64, 13, '1944466242', '300', NULL, 'Md. Towfiqur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(311, 'PG000171', 417, 11, 66, 13, '1844142330', '900', NULL, 'Md. Tofazzel Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(312, 'PG000285', 447, 20, 64, 13, '1926673916', '300', NULL, 'Md. Shibli Sadek', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(313, 'PG000527', 415, 11, 66, 13, '1847284917', '300', NULL, 'Md. Masudur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(314, 'PG000520', 415, 11, 66, 13, '1847284916', '300', NULL, 'Sumon Mia', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(315, 'PG000536', 415, 11, 66, 13, '1847284914', '300', NULL, 'Mohinur Sheikh', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(316, 'PG000450', 449, 21, 66, 13, '1844160401', '300', NULL, 'Nipun Ghagra', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(317, 'PG000450-2', 450, 21, 64, 13, '1928228822', '300', NULL, 'Nipun Ghagra', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(318, 'ABL000006', 451, 22, 65, 13, '1713361909', '600', NULL, 'Ronjit Kumar Roy', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(319, 'PG000445', 452, 22, 64, 13, '1944466225', '1500', NULL, 'Mohammad Wazed Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(320, 'JFL000030', 453, 14, 64, 13, '1933002262', '600', NULL, 'Md. Maynul Islam Khan', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1200'),
(321, 'ABL000001', 454, 22, 65, 13, '1713361916', '600', NULL, 'Md. Sazzad Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(322, 'RFL000001', 542, 36, 65, 13, '1713361936', '900', NULL, 'Md Abdur Razzak', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(323, 'RFL000001-02', 542, 36, 66, 13, '1844221369', '1000', NULL, 'Md Abdur Razzak', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(324, 'MPC000006', 394, 36, 66, 13, '1844142367', '300', NULL, 'Md. Jiaur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(325, 'MPC000002', 394, 36, 66, 13, '1844142369', '300', NULL, 'Md. Mostafizur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(326, 'ABL000002', 455, 22, 65, 13, '1713361913', '600', NULL, 'Dr.Golam Sarower', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(327, 'MPC000005', 338, 36, 66, 13, '1844142370', '500', NULL, 'Md. Abdul Wahab Talukdar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(328, 'ABL000009', 414, 22, 65, 13, '1713361989', '200', NULL, 'Ahad Khandakar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(329, 'MPC000004', 399, 36, 64, 13, '1944466228', '300', NULL, 'Md. Faruk Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(330, 'MPC000007', 546, 36, 64, 13, '1904118557', '300', NULL, 'Md. Lotfor Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(331, 'ABL000004', 410, 22, 65, 13, '1700706607', '200', NULL, 'Md. Mizanur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '400'),
(332, 'MPC000003', 356, 36, 65, 15, '1729876038', '200', NULL, 'Md. Abul Kashem', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(333, 'ABL000010', 427, 22, 65, 13, '1700706608', '200', NULL, 'Uttam Kumar Roy', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(334, 'ABL000008', 399, 22, 65, 15, '1743392257', '200', NULL, 'Md. Mahfuzar Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(335, 'PG000360', 548, 37, 65, 13, '1713361929', '3000', NULL, 'Aminul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '6000'),
(336, 'CCL000001', 426, 23, 65, 13, '1713361941', '800', NULL, 'Abdul Matin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(337, 'PG000348', 549, 37, 65, 13, '1713361908', '1000', NULL, 'Md. Iqbal Hossen', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(338, 'PPLH000035', 426, 23, 64, 13, '1926673925', '300', NULL, 'Muhammad Mahfuz', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(339, 'CCL000002', 469, 23, 64, 13, '1926673924', '300', NULL, 'Md. Zahid Hossain    ', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(340, 'CCL000015', 460, 23, 66, 13, '1841361952', '300', NULL, 'Md. Abdus Salam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(341, 'DPC000001', 461, 24, 65, 13, '1713361918', '1000', NULL, 'Syed Md. Alif Nur', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(342, 'DPC000012', 426, 24, 65, 13, '1729061540', '300', NULL, 'Md. Zubaer-ul-Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(343, 'DPC000006', 462, 24, 64, 13, '1926673926', '300', NULL, 'Sree Soman Chondra Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(344, 'DPC000011', 463, 24, 64, 13, '1926673927', '200', NULL, 'Md. Mesba Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(345, 'PG000071', 395, 24, 64, 13, '1926673954', '1000', NULL, 'Md. Shakil Ahmed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(346, 'DPC000013', 399, 24, 64, 13, '1944466230', '300', NULL, 'Md. Motaleb Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(347, 'Maniruzzaman', 465, 24, 64, 13, '1907488028', '200', NULL, 'Md. Maniruzzaman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '400'),
(348, 'PPLC000007', 466, 25, 66, 13, '1844160409', '1000', NULL, 'Dr. Md. Ziaul Hoque Jewel', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(349, 'PPLH000058', 426, 25, 66, 13, '1844160411', '300', NULL, 'Fancy Biswas Juwel', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(350, 'SAGO000008', 410, 25, 66, 13, '1844160413', '300', NULL, 'S.M. Fazla Rabbi Rana', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(351, 'CFL000015', 431, 25, 66, 13, '1844160410', '300', NULL, 'Md. Tajul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(352, 'SAGO000003', 399, 25, 66, 13, '1844160414', '300', NULL, 'Md. Kayser Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(353, 'HALU000004', 467, 25, 65, 13, '1729061500', '300', NULL, 'Md. Sumon Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(354, 'PPL.LD-2609', 468, 26, 65, 13, '1713361927', '600', NULL, 'Md. Zahidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(355, 'PPLL000006', 426, 26, 65, 13, '1729061510', '300', NULL, 'Shariful Alam Sarker', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(356, 'PPLL000019', 426, 26, 65, 13, '1729061511', '200', NULL, 'Iqbal Mahmud', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(357, 'PPLL000018', 469, 26, 65, 13, '1729061512', '200', NULL, 'Muhammad Nazmun Shakib', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(358, 'PG000521', 415, 11, 66, 13, '1847284912', '300', NULL, 'Md. Golap Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(359, 'PG000429', 419, 11, 66, 13, '1844221368', '900', NULL, 'Samsuzzaman Sumon', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(360, 'PG000592', 644, 11, 66, 13, '1844221367', '900', NULL, 'Md. Jabir Al Mehedi', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(361, 'PG000415', 419, 11, 66, 13, '1844221358', '900', NULL, 'Dr. Alamin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(362, 'PG000423', 419, 11, 66, 13, '1844221357', '900', NULL, 'Dr. Amarij', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(363, 'PG000424', 419, 11, 66, 13, '1844221356', '900', NULL, 'Md. Asadujjaman Selim', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(364, 'PG000422', 419, 11, 66, 13, '1844221354', '900', NULL, 'Md. Khabbab Bin Harun', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(365, 'PG000504', 419, 11, 66, 13, '1847284910', '900', NULL, 'Md. Obaydul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(366, 'PG000602', 419, 11, 66, 13, '1844142312', '900', NULL, 'Md. Mohiuddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(367, 'PG000512', 419, 11, 66, 13, '1847293212', '900', NULL, 'Ashish Kumar Roy', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(368, 'PG000510', 419, 11, 66, 13, '1847293211', '900', NULL, 'Md. Khademul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(369, 'PG000480', 342, 11, 66, 13, '1844160439', '900', NULL, 'Sajedur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(370, 'PG000482', 417, 11, 66, 13, '1844160424', '900', NULL, 'Md. Tuhinur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(371, 'PG000486', 342, 11, 66, 13, '1844160441', '900', NULL, 'Kingkan Mondal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(372, 'PG000549', 342, 11, 66, 13, '1847293206', '900', NULL, 'Md. Jahidul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(373, 'PPFL000001', 559, 37, 65, 13, '1713361919', '300', NULL, 'H.A.I.Md.Iqbal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(374, 'PPFL000002', 550, 37, 65, 13, '1730013156', '1500', NULL, 'Md. Habibur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(375, 'PPFL000003', 562, 37, 66, 13, '1844142388', '500', NULL, 'Md. Lutfor Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(376, 'PPFL000006', 560, 37, 65, 13, '1708465394', '300', NULL, 'Md. Khalilur Rahaman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(377, 'PG000038', 553, 37, 66, 13, '1844142379', '500', NULL, 'Mr. Ratan kumar Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(378, 'PG000261', 555, 37, 66, 13, '1844142393', '600', NULL, 'Md. Rahim Bhuyaan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(379, 'PG000075', 551, 37, 65, 13, '1730020078', '1700', NULL, 'Mr. Bablu Sarder', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3400'),
(380, 'PG000262', 552, 37, 66, 13, '1844142394', '1000', NULL, 'A.N.M Rayhan Kabir', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(381, 'PG000027', 556, 37, 64, 13, '1926673948', '800', NULL, 'Shamsul Alam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(382, 'PG000079', 557, 37, 66, 13, '1844142373', '600', NULL, 'Ashif Iquebal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(383, 'PG000238', 342, 37, 66, 13, '1844142374', '400', NULL, 'Md. Firoj Alom', NULL, NULL, NULL, '0000-00-00', 1, NULL, '800'),
(384, 'PPFL000013', 561, 37, 64, 13, '1926673949', '300', NULL, 'Md. Abul Hasnat', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(385, 'PPFL000044', 565, 37, 65, 13, '1708465395', '300', NULL, 'Md. Dulal Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(386, 'PPFL000047', 565, 37, 65, 13, '1700706617', '300', NULL, 'Md. Shariful Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(387, 'PPFL000026', 563, 37, 65, 13, '1748104850', '300', NULL, 'Md. Anisur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(388, 'PG000078', 395, 37, 66, 13, '1844142375', '1000', NULL, 'Md. Nazmul Hoque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(389, 'PPFL000050', 336, 37, 65, 13, '1700706618', '300', NULL, 'Md. Julfiker Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(390, 'PG000446', 564, 37, 66, 13, '1847324162', '300', NULL, 'Anwer Jahan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(391, 'PG000107', 419, 38, 64, 13, '1926673940', '600', NULL, 'Md. Zahid Hossain    ', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(392, 'PEL000036', 570, 40, 64, 13, '1926673911', '500', NULL, 'Rumman Iqbal Rony', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(393, 'PEL000002', 560, 40, 64, 13, '1926673912', '500', NULL, 'Moniruzzaman dulal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(394, 'PEL000035', 573, 44, 64, 13, '1926673915', '1000', NULL, 'Md. Naseek Imtiaz Chow.', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(395, 'PEL000029', 337, 30, 64, 13, '1926673914', '500', NULL, 'Md. Nurul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(396, 'PEL000037', 373, 44, 64, 13, '1907488000', '500', NULL, 'Md. Tasrin Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(397, 'PG000112', 576, 12, 66, 13, '1844142380', '400', NULL, 'M A Nayeem', NULL, NULL, NULL, '0000-00-00', 1, NULL, '800'),
(398, 'PG000043', 578, 41, 66, 13, '1844142376', '300', NULL, 'Younus Pathan Jalal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(399, 'PG000139', 581, 11, 66, 13, '1844142301', '1500', NULL, 'Samiran Dey', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(400, 'PG000155', 551, 11, 66, 13, '1844142307', '1200', NULL, 'Kazi Md. Shahnewaj', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(401, 'PG000419', 342, 11, 66, 13, '1844142321', '900', NULL, 'Md. Lutfor Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(402, 'PG000146', 554, 11, 66, 13, '1844142319', '1000', NULL, 'Liton Chandra Roy', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(403, 'PG000455', 419, 11, 66, 13, '1844142306', '900', NULL, 'Md. Sayduzzaman  Jewel', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(404, 'PG000432', 415, 11, 66, 13, '1844221361', '300', NULL, 'Selim Miah', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(405, 'PG000425', 415, 11, 66, 13, '1844221360', '300', NULL, 'Ahsan Habib', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(406, 'PG000493', 417, 11, 66, 13, '1844160426', '900', NULL, 'Abdullah Al Amin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(407, 'PG000492', 419, 11, 66, 13, '1844160417', '900', NULL, 'Abdur Razzak', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(408, 'PG000479', 342, 11, 66, 13, '1844160434', '900', NULL, 'Sukdeb kumar Paul', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(409, 'PG000514', 415, 11, 66, 13, '1844221359', '300', NULL, 'Aminul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(410, 'PG000487', 342, 11, 66, 13, '1844160440', '900', NULL, 'Md. Hamidur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(411, 'PG000463', 342, 11, 66, 13, '1844160429', '900', NULL, 'Subroto Chakroborty', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(412, 'PG000544', 342, 11, 66, 13, '1844160428', '900', NULL, 'Md. Farukuzzaman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(413, 'PG000007', 367, 27, 65, 13, '1713361949', '1000', NULL, 'Subas Chandra Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(414, 'PG000035', 333, 27, 65, 13, '1713361950', '1000', NULL, 'Md. Juel Mia Sarker', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(415, 'PG000444', 631, 29, 65, 13, '1787688670', '1500', NULL, 'Md. Mujibur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(416, 'PG000278', 485, 29, 65, 13, '1787688672', '1500', NULL, 'Md. Bashir Ahmed Chowdhury', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(417, 'PG000115', 486, 29, 65, 13, '1713361914', '600', NULL, 'Baki Billah', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(418, 'PG000246', 487, 29, 65, 13, '1766698291', '1500', NULL, 'Jagadish Roy', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(419, 'PG000132', 488, 29, 65, 13, '1787688674', '1200', NULL, 'Md. Shamsul Islam Khan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(420, 'PG000204', 491, 29, 65, 13, '1787688673', '1000', NULL, 'Sheikh Sayed Hasan Siddique', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(421, 'PNFP000021', 492, 29, 65, 13, '1766698293', '500', NULL, 'Md. Raisul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(422, 'RFL000013', 340, 32, 64, 13, '1926673900', '300', NULL, 'Md. Abdul Kayum', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(423, 'PNFP000003', 497, 29, 65, 13, '1766698285', '1000', NULL, 'Md. Abdus Salam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000');
INSERT INTO `sma_employees` (`id`, `employee_id`, `designation_id`, `company_id`, `operator_id`, `package_id`, `mobile_number`, `ceiling_amount`, `created_by`, `name`, `created_date`, `updated_by`, `updated_date`, `service_start_date`, `active`, `email`, `credit_limit`) VALUES
(424, 'PNFP000005', 373, 29, 65, 13, '1787688675', '1200', NULL, 'Shajedul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(425, 'RFL000017', 340, 32, 64, 13, '1926673928', '300', NULL, 'Md. Mahaubul Alam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(426, 'GP000006', 471, 27, 65, 13, '1708465380', '600', NULL, 'Md. Abdulla - Al - Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(427, 'PG000441', 513, 29, 65, 13, '1787688671', '1500', NULL, 'Shafiqul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(428, 'GP000007', 333, 27, 65, 13, '1708465381', '300', NULL, 'S.M.Salahuddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(429, 'PG000210', 501, 29, 65, 13, '1766698283', '1000', NULL, 'Md. Rayhan Talukder', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(430, 'GP000008', 426, 27, 65, 13, '1708465382', '500', NULL, 'Tapon Singha', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(431, 'PG000037', 447, 27, 65, 13, '1713361921', '700', NULL, 'Md. Rabiul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1400'),
(432, 'PG000269', 496, 29, 65, 13, '1766698280', '1500', NULL, 'Md. Ashraful Islam Majumder', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(433, 'PG000231', 500, 29, 65, 13, '1787688677', '300', NULL, 'Ayesha Ferdors', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(434, 'GP0000012', 410, 27, 65, 13, '1708465392', '300', NULL, 'Md. Mahabubur Rahman Bhuiyan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(435, 'PG000221', 341, 29, 65, 13, '1766698288', '500', NULL, 'Mr. Gobinda Sarker', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(436, 'PG000448', 430, 27, 64, 13, '1907488001', '300', NULL, 'Md. Yahya', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(437, 'GP000021', 347, 27, 65, 15, '1728363127', '200', NULL, 'Mohammad Nasir Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(438, 'PG000101', 477, 28, 65, 13, '1713361900', '2000', NULL, 'Abdul Hannan Dewan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '4000'),
(439, 'SREE000002', 478, 42, 65, 13, '1711630523', '500', NULL, 'Md. Nazmul Hoq Mondal', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(440, 'PS000014', 476, 11, 65, 15, '1737547409', '200', NULL, 'Ashiq', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(441, 'PS000017', 634, 11, 65, 15, '1737849026', '200', NULL, 'Nesdar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(442, 'PS000016', 526, 11, 65, 15, '1722387095', '200', NULL, 'Monirul', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(443, 'PG000223', 526, 11, 65, 15, '1718304483', '400', NULL, 'Md. Mahbubur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(444, 'PG000163', 594, 11, 66, 13, '1844142304', '1200', NULL, 'Anowar Hossain Miah', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2400'),
(445, 'PG000173', 342, 11, 66, 13, '1844142331', '900', NULL, 'Rajib Ahmed', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(446, 'PG000458', 589, 11, 66, 13, '1844142395', '300', NULL, 'Sohel Sheikh', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(447, 'PG000470', 587, 11, 66, 13, '1844142382', '600', NULL, 'Md. Atiqul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(448, 'PG000484', 417, 11, 66, 13, '1844160425', '900', NULL, 'Sk. Samim Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(449, 'PG000489', 419, 11, 66, 13, '1844160416', '900', NULL, 'Md. Ahasan Habib', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(450, 'PS000039', 476, 14, 65, 15, '1720535890', '200', NULL, 'Jashim', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(451, 'PS000038', 476, 27, 65, 15, '1774724745', '200', NULL, 'Mofazzal', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(452, 'PS000037', 476, 32, 65, 15, '1748884718', '200', NULL, 'Monjurul Alam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(453, 'PS000036', 359, 34, 66, 15, '1636516143', '100', NULL, 'Rafiq', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(454, 'PS000035', 437, 18, 65, 15, '1720419859', '100', NULL, 'Akkas Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(455, 'PS000034', 359, 11, 65, 15, '1747614225', '100', NULL, 'Morsalin', NULL, NULL, NULL, '1969-12-31', 0, NULL, '100'),
(456, 'PS000033', 359, 11, 65, 15, '1737070296', '100', NULL, 'Toil Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(457, 'PS000032', 476, 36, 65, 15, '1726467023', '200', NULL, 'Abdus Sobhan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(458, 'PS000031', 476, 22, 65, 15, '1721080221', '200', NULL, 'Shahalam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(459, 'PS000030', 476, 36, 65, 15, '1732884469', '200', NULL, 'Naimul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(460, 'PS000029', 476, 32, 65, 15, '1727274524', '200', NULL, 'Mr. Porimol', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(461, 'PS000028', 476, 31, 65, 15, '1745622388', '200', NULL, 'Md. Shahid', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(462, 'PS000027', 476, 31, 65, 15, '1783823779', '200', NULL, 'Shahidul', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(463, 'PS000026', 476, 14, 65, 15, '1790191817', '200', NULL, 'Abdul Latif', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(464, 'PS000025', 476, 19, 65, 15, '1724451381', '200', NULL, 'Shahidul', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(465, 'PS000024', 476, 25, 65, 15, '1716917652', '200', NULL, 'Md. Shamsu', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(466, 'PS000023', 356, 33, 65, 15, '1727593297', '200', NULL, 'Basher', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(467, 'PS000022', 476, 33, 65, 15, '1714993105', '200', NULL, 'Md. Nasir Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(468, 'PS000021', 476, 37, 65, 15, '1728592834', '200', NULL, 'Shajedur', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(469, 'PS000020', 476, 16, 64, 13, '1718820133', '200', NULL, 'Hanef', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(470, 'PS000005', 476, 12, 64, 15, '1910635272', '200', NULL, 'Nabir', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(471, 'PS000019', 357, 16, 65, 15, '1788592581', '200', NULL, 'Md. Jahangir Alom', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(472, 'PS000007', 476, 12, 64, 15, '1938859404', '200', NULL, 'Kamal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(473, 'PS000018', 476, 16, 65, 15, '1712297185', '200', NULL, 'Abdur Rouf', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(474, 'PS000008', 476, 12, 65, 15, '1710587370', '200', NULL, 'Shahin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(475, 'PS000013', 476, 24, 65, 15, '1734787222', '200', NULL, 'Alamgir', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(476, 'PS000012', 476, 42, 65, 15, '1729625805', '200', NULL, 'Shadatul', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(477, 'PS000011', 476, 28, 66, 15, '1815239649', '200', NULL, 'Zakir', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(478, 'PS000010', 476, 28, 65, 15, '1731843941', '200', NULL, 'Arshad', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(479, 'UPL000016', 373, 28, 65, 13, '1713361940', '1000', NULL, 'Md. Shahjahan', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(480, 'PS000009', 476, 18, 66, 15, '1836071131', '200', NULL, 'Ruhul Amin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(481, 'PS000004', 476, 27, 65, 15, '1788886084', '200', NULL, 'Rafik', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(482, 'PS000003', 476, 27, 65, 15, '1722783643', '200', NULL, 'Hamid', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(483, 'PS000002', 476, 13, 65, 15, '1772181927', '200', NULL, 'Rejaul Karim', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(484, 'PS000001', 476, 13, 65, 15, '1731822833', '200', NULL, 'Abdur Rob', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(485, 'FF000029', 632, 33, 65, 15, '1771015067', '100', NULL, 'Brooder House - 1', NULL, NULL, NULL, '1969-12-31', 1, NULL, '100'),
(486, 'FF000030', 632, 33, 65, 15, '1771015068', '100', NULL, 'Brooder House - 2', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(487, 'FF000031', 632, 33, 65, 15, '1771015069', '100', NULL, 'Brooder House - 3', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(488, 'FF000032', 632, 33, 65, 15, '1778512201', '100', NULL, 'Grower House - 1', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(489, 'FF000033', 632, 33, 65, 15, '1778512202', '100', NULL, 'Grower House - 2', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(490, 'FF000034', 632, 33, 65, 15, '1778512203', '100', NULL, 'Grower House - 3', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(491, 'FF000035', 632, 33, 65, 15, '1778512204', '100', NULL, 'Grower House - 4', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(492, 'FF000036', 632, 33, 65, 15, '1778512205', '100', NULL, 'Grower House - 5', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(493, 'FF000037', 632, 33, 65, 15, '1781270816', '100', NULL, 'Generator Staff', NULL, NULL, NULL, '1969-12-31', 1, NULL, '100'),
(494, 'FF000028', 632, 31, 65, 15, '1786917448', '100', NULL, 'Shed - 8', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(495, 'FF000027', 632, 31, 65, 15, '1786917457', '100', NULL, 'Shed - 7', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(496, 'FF000026', 632, 31, 65, 15, '1787962564', '100', NULL, 'Shed - 6', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(497, 'FF000025', 632, 31, 65, 15, '1787962563', '100', NULL, 'Shed - 5', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(498, 'FF000024', 632, 31, 65, 15, '1785350742', '100', NULL, 'Shed - 4', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(499, 'PG000609', 417, 12, 66, 13, '1844142308', '900', NULL, 'Muhammaded Shakawat Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(500, 'FF000023', 632, 31, 65, 15, '1761482676', '100', NULL, 'Shed - 3', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(501, 'FF000022', 632, 31, 65, 15, '1787962562', '100', NULL, 'Shed - 2', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(502, 'FF000021', 632, 31, 65, 15, '1787962561', '100', NULL, 'Shed - 1', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(503, 'FF000020', 632, 27, 65, 15, '1778018906', '50', NULL, 'LGP - Prod - 02', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(504, 'FF000019', 632, 27, 65, 15, '1778018905', '50', NULL, 'LGP - Prod - 01', NULL, NULL, NULL, '1969-12-31', 1, NULL, '50'),
(505, 'FF000018', 632, 27, 65, 15, '1778018904', '50', NULL, 'Breeder - 2', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(506, 'FF000017', 632, 27, 65, 15, '1778018903', '50', NULL, 'Breeder - 01', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(507, 'FF000015', 632, 27, 65, 15, '1778018901', '50', NULL, 'Hatchery Side', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(508, 'FF000016', 632, 27, 65, 15, '1778018902', '50', NULL, 'Grower Side', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(509, 'FF000014', 632, 27, 65, 13, '1711823299', '300', NULL, 'GP Farm', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(510, 'FF000013', 632, 25, 65, 15, '1772764465', '100', NULL, 'Production House', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(511, 'FF000012', 632, 25, 65, 15, '1739703886', '100', NULL, 'Grower House', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(512, 'PG00060', 417, 12, 66, 13, '1844142317', '900', NULL, 'Md. Sobuz Perves', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(513, 'FF000011', 632, 24, 65, 15, '1735552114', '100', NULL, 'Shed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(514, 'FF000010', 632, 24, 65, 15, '1727665580', '100', NULL, 'Shed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(515, 'FF000009', 632, 24, 65, 15, '1706691624', '100', NULL, 'Shed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(516, 'FF000008', 632, 24, 65, 15, '1775692463', '100', NULL, 'Shed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(517, 'FF000007', 632, 22, 65, 15, '1793836783', '300', NULL, 'Hatchery', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(518, 'FF000006', 632, 22, 65, 15, '1793836630', '50', NULL, 'Shed=06', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(519, 'FF000005', 632, 22, 65, 15, '1786724164', '50', NULL, 'Shed=05', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(520, 'FF000004', 632, 22, 65, 15, '1786724149', '50', NULL, 'Shed=04', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(521, 'FF000003', 632, 22, 65, 15, '1786724148', '50', NULL, 'Shed=03', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(522, 'FF000002', 632, 22, 65, 15, '1786724146', '50', NULL, 'Shed=02', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(523, 'FF000001', 632, 22, 65, 15, '1786819636', '50', NULL, 'Shed=01', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(524, 'VT000001', 633, 11, 66, 13, '1844025193', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(525, 'VT000002', 633, 11, 66, 13, '1844025164', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(526, 'VT000003', 633, 11, 66, 13, '1844025169', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(527, 'VT000004', 633, 11, 66, 13, '1844025168', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(528, 'VT000005', 633, 11, 66, 13, '1844025875', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(529, 'VT000006', 633, 11, 66, 13, '1844025872', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(530, 'VT000007', 633, 11, 66, 13, '1844025163', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(531, 'VT000008', 633, 11, 66, 13, '1844025871', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(532, 'VT000009', 633, 11, 66, 13, '1844025194', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(533, 'VT000010', 633, 11, 66, 13, '1844025167', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(534, 'VT000011', 633, 11, 66, 13, '1844025315', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(535, 'VT000012', 633, 11, 66, 13, '1844025873', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(536, 'VT000013', 633, 11, 66, 13, '1844025166', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(537, 'VT000014', 633, 11, 66, 13, '1844025165', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(538, 'VT000015', 633, 11, 66, 13, '1844025874', '1', NULL, 'VTS', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1'),
(539, 'PG000239', 353, 27, 64, 13, '1907488017', '200', NULL, 'Md. Shamim', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(540, 'PG000051', 436, 27, 65, 13, '1729061541', '300', NULL, 'Abu Yousuf', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(541, 'PG000605', 635, 14, 65, 13, '1711630520', '1500', NULL, 'Md. Rois Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(542, 'PG000020', 333, 24, 65, 13, '1730007752', '600', NULL, 'Md. Abul Kalam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1200'),
(543, 'SREE000006', 469, 42, 65, 13, '1729061524', '200', NULL, 'Abdul Wahid', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(544, 'SREE000001', 338, 42, 65, 13, '1729061522', '200', NULL, 'Md. Lablu Mia', NULL, NULL, NULL, '1969-12-31', 1, NULL, '400'),
(545, 'PG000389', 396, 14, 65, 13, '1711630524', '1400', NULL, 'Kabir Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2800'),
(546, 'PPLH000097', 438, 17, 66, 13, '1844142363', '500', NULL, 'Md. Shahinur Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(547, 'PG000114', 637, 28, 65, 13, '1713361905', '600', NULL, 'Chandan Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(548, 'PG000383', 522, 32, 66, 13, '1847293222', '1000', NULL, 'Md. Akhtarul Islam Ranis', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(549, 'RFL000004', 523, 32, 66, 13, '1844160407', '300', NULL, 'Md. Kawsar Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(550, 'PG000358', 524, 32, 64, 13, '1904118556', '700', NULL, 'Md. Faridul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1400'),
(551, 'RFL000016', 338, 32, 64, 13, '1907488004', '300', NULL, 'A.K.M. Mehedi Hasan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(552, 'PG000361', 353, 32, 65, 15, '1760832482', '200', NULL, 'Emran Khan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(553, 'PG000012', 333, 28, 66, 13, '1844142364', '300', NULL, 'Md. Rafiqul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(554, 'PG000584', 328, 29, 65, 13, '1766698281', '800', NULL, 'Azizul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(555, 'PG000039', 394, 28, 66, 13, '1844142365', '700', NULL, 'Jamir Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1400'),
(556, 'PNFP000031', 490, 29, 65, 13, '1766698292', '500', NULL, 'S M Ziaul Anwar', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(557, 'PG000240', 493, 29, 65, 13, '1766698299', '600', NULL, 'Md. Mostafizur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(558, 'PG000304', 494, 29, 65, 13, '1766698298', '800', NULL, 'Abhishek Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(559, 'UPL000008', 432, 28, 65, 15, '1719830467', '200', NULL, 'Abdul Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(560, 'PG000036', 502, 29, 65, 15, '1926673923', '500', NULL, 'Swapan Kumar Mistry', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(561, 'PG000207', 503, 29, 64, 13, '1926673961', '300', NULL, 'Md. Mushfik Rahim Shujon', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(562, 'PG000242', 504, 29, 65, 13, '1700706603', '500', NULL, 'Belal Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '500'),
(563, 'PG000553', 483, 28, 66, 13, '1847324158', '300', NULL, 'Md. Atikur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(564, 'PG000253', 504, 29, 65, 13, '1700706604', '500', NULL, 'Md. Aminul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '500'),
(565, 'PG000296', 396, 29, 65, 13, '1700706605', '500', NULL, 'Md. Fardin Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '500'),
(566, 'PG000323', 380, 29, 65, 15, '1715672242', '500', NULL, 'Dewan Ashraful Alam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '500'),
(567, 'PG000179', 380, 29, 65, 13, '1700706606', '500', NULL, 'Sopen Chandra Das', NULL, NULL, NULL, '1969-12-31', 1, NULL, '500'),
(568, 'RFL000020', 333, 32, 65, 13, '1713361915', '1000', NULL, 'Shohelur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(569, 'PG000324', 396, 29, 65, 13, '1729061517', '500', NULL, 'Tauhidul Islam', NULL, NULL, NULL, '1969-12-31', 1, NULL, '500'),
(570, 'PG000599', 380, 29, 65, 13, '1729061518', '300', NULL, 'Md. Abul Kalam Azad', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(571, 'PG000264', 380, 29, 65, 13, '1729061519', '300', NULL, 'Atikur Rahaman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(572, 'PG000595', 380, 29, 65, 13, '1729061520', '300', NULL, 'Md. Akbor Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(573, 'PG000341', 507, 29, 66, 13, '1847324174', '300', NULL, 'Md. Shahidur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(574, 'PG000589', 347, 29, 66, 15, '1833222444', '300', NULL, 'Md. Yasin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(575, 'PNFP000027', 535, 29, 65, 13, '1787688676', '400', NULL, 'Bijay Mallick', NULL, NULL, NULL, '0000-00-00', 1, NULL, '800'),
(576, 'PNFP000034', 638, 29, 65, 13, '1766698284', '800', NULL, 'Syed Shihab Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(577, 'PG000203', 354, 29, 66, 15, '1881800580', '150', NULL, 'Md. Nasir Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(578, 'PG000249', 353, 29, 64, 13, '1907488020', '200', NULL, 'Md. Monir Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(579, 'PG000117', 353, 29, 64, 13, '1907488022', '200', NULL, 'Md. Hannan', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(580, 'PNFP000018', 353, 29, 64, 13, '1907488026', '200', NULL, 'Md. Musa', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(581, 'PNFP000017', 353, 29, 66, 15, '1626958769', '200', NULL, 'Abdul Razzak Mridha', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(582, 'PG000206', 383, 29, 64, 15, '1986115283', '150', NULL, 'Md. Azizul Haque', NULL, NULL, NULL, '1969-12-31', 1, NULL, '150'),
(583, 'PG000193', 508, 29, 66, 15, '1840759911', '150', NULL, 'Tofayel Ahmmad', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(584, 'PG000594', 508, 29, 64, 15, '1993473241', '150', NULL, 'Md. Motiyar Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(585, 'PG000366', 508, 29, 64, 15, '1988932572', '150', NULL, 'Md. Mafizul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(586, 'PG000365', 508, 29, 65, 15, '1757210142', '150', NULL, 'Md. Rasel', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(587, 'PG000399', 508, 29, 64, 15, '1993735381', '150', NULL, 'Md. Rakib Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(588, 'PG000374', 508, 29, 65, 15, '1777876936', '150', NULL, 'Md. Alam Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(589, 'PG000410', 508, 29, 65, 15, '1788279660', '150', NULL, 'Md. Milon Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(590, 'RPL000007', 327, 31, 65, 13, '1713361942', '500', NULL, 'Md. Tariquzzaman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(591, 'RPL000001', 471, 31, 65, 13, '1713361922', '600', NULL, 'Md. Mezbah Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(592, 'PPLC000001', 550, 33, 65, 13, '1713361991', '1500', NULL, 'Md. Soukat Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '3000'),
(593, 'PG000018', 333, 33, 64, 13, '1926673955', '700', NULL, 'Abdullah Al-Muhit', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1400'),
(594, 'PPLC000006', 333, 33, 64, 13, '1926673938', '300', NULL, 'Md. Ziaur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(595, 'PPLC000005', 336, 33, 66, 13, '1844142368', '300', NULL, 'Md. Hasan Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(596, 'PG000108', 639, 31, 64, 13, '1926673934', '800', NULL, 'Md. Ali Haider', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(597, 'PPLC000011', 529, 33, 64, 15, '1947411340', '200', NULL, 'Jahangir Alom', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(598, 'RPL000008', 475, 31, 64, 13, '1926673937', '300', NULL, 'Md. Mozaffar Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(599, 'RPL000015', 426, 31, 64, 13, '1944466227', '300', NULL, 'Md. Abdur Rahim Azad', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(600, 'PG000351', 640, 31, 65, 13, '1713361934', '600', NULL, 'Abdul Kader', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(601, 'PG000140', 504, 31, 64, 13, '1926673935', '500', NULL, 'Musfika Sharmin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(602, 'RPL000006', 431, 31, 66, 13, '1844142366', '300', NULL, 'Md. Shamimul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(603, 'PCL000009', 535, 34, 64, 13, '1944466235', '300', NULL, 'Dr. Shafayat Zamil', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(604, 'RPL000011', 357, 31, 65, 15, '01713777024', '200', NULL, 'Md. Harun Or Rashad', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(605, 'PG000233', 396, 31, 64, 13, '1926673936', '500', NULL, 'Aysha', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(606, 'PCL000012', 433, 34, 64, 13, '1926673933', '300', NULL, 'Fazle Rabbi', NULL, NULL, NULL, '1969-12-31', 1, NULL, '300'),
(607, 'PCL000008', 538, 34, 64, 13, '1926673945', '500', NULL, 'Shuvo Acharjee', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(608, 'PG000349', 519, 31, 64, 13, '1944466236', '300', NULL, 'Md. Munzurul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(609, 'RPL000019', 641, 32, 65, 13, '1729061497', '300', NULL, 'Shah Golam Moued', NULL, NULL, NULL, '1969-12-31', 1, NULL, '600'),
(610, 'MPC000001', 533, 36, 64, 13, '1926673947', '500', NULL, 'Emran Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '500'),
(611, 'PCL000006', 534, 34, 64, 13, '1926673942', '500', NULL, 'Nazmunnaher Khatun', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(612, 'PPLF000068', 536, 34, 64, 13, '1944466234', '300', NULL, 'Jahidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(613, 'PG000076', 490, 37, 66, 13, '1844142371', '1000', NULL, 'Rakibuddawla Mondal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(614, 'PG000074', 363, 37, 66, 13, '1844160415', '2000', NULL, 'Mr. Rajwanul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '4000'),
(615, 'PG000509', 496, 11, 66, 13, '1847293210', '1000', NULL, 'Shafiquel Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(616, 'JFL000051', 337, 14, 66, 13, '1847324172', '300', NULL, 'Bellal Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(617, 'JFLC0001', 411, 14, 65, 13, '1729061526', '800', NULL, 'Md. Robiul Karim', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(618, 'HTE000001', 566, 39, 65, 13, '1729061527', '600', NULL, 'Shahidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(619, 'HTE000002', 567, 39, 65, 13, '1729061528', '300', NULL, 'Swaroj Kurmi', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(620, 'HTE000003', 642, 39, 65, 13, '1729061529', '600', NULL, 'Prodip Kumer Chakrabarty', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(621, 'HTE000004', 569, 39, 65, 13, '1729061530', '300', NULL, 'Champa Pal Koiri', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(622, 'HTE000005', 569, 39, 65, 13, '1729061531', '300', NULL, 'Rajib Kanu', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(623, 'PG000191', 526, 11, 64, 13, '1907488029', '200', NULL, 'Md. Abul Kalam Azad', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(624, 'PFL000028', 574, 12, 65, 13, '1713361923', '300', NULL, 'Md. Sourav Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(625, 'SREE000003', 399, 42, 65, 13, '1729061523', '200', NULL, 'Md. Shahin Sarker', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(626, 'PEL000030', 572, 43, 65, 13, '1708465388', '600', NULL, 'Md. Emran Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1200'),
(627, 'PEL000031', 373, 43, 65, 13, '1708465391', '300', NULL, 'Arafat Miah', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(628, 'MDH00001', 579, 41, 64, 13, '1926673962', '300', NULL, 'Md. Najir', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(629, 'MDH00002', 580, 41, 65, 15, '1715473540', '300', NULL, 'Tapon Babu', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(630, 'PG000066 (2)', 365, 12, 66, 13, '1841361904', '1000', NULL, 'Goutam Mazumder', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1000'),
(631, 'PG000272 (2)', 624, 11, 66, 13, '1841561199', '1000', NULL, 'Manzoor Elahi', NULL, NULL, NULL, '1969-12-31', 1, NULL, '2000'),
(632, 'BCH00001', 361, 20, 66, 13, '1844160444', '300', NULL, 'Bistro (Hot Line)', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(633, 'BCH00002', 356, 20, 64, 13, '1996332255', '50', NULL, 'Bistro Central', NULL, NULL, NULL, '0000-00-00', 1, NULL, '50'),
(634, 'PG000393 (1)', 343, 11, 64, 13, '1944466245', '100', NULL, 'Md. Moniruzzaman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(635, 'PPLH000001 (1)', 421, 16, 66, 13, '1841056622', '1000', NULL, 'AKM Habibur Rahman', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(636, 'PG000603', 351, 11, 64, 15, '1982346072', '200', NULL, 'Saidul Islam', NULL, NULL, NULL, '1969-12-31', 0, NULL, '400'),
(637, 'PG000517', 586, 11, 66, 13, '1844142381', '300', NULL, 'Md. Juel Rana', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(638, 'PG000164', 598, 12, 66, 13, '1844142322', '1000', NULL, 'Mohammad Salah Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(639, 'PPLH000052', 426, 16, 65, 13, '1729061525', '300', NULL, 'S.M Sorowar Zahan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(640, 'PPLH000032', 426, 16, 65, 13, '1729061521', '300', NULL, 'Md. Najmul Kabir', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(641, 'PPLH000027', 643, 25, 66, 13, '1847324165', '300', NULL, 'Md. Imran Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(642, 'SAGO00009', 529, 25, 66, 13, '1847324166', '100', NULL, 'Md. Lavlu', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(643, 'Unknown 01', 470, 27, 65, 15, '1715207091', '1000', NULL, 'Amjad Iqbal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(644, 'GP000010', 473, 27, 65, 13, '1729061534', '300', NULL, 'Abu Jafor Biswas', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(645, 'Unknown02', 326, 27, 65, 13, '1713245353', '600', NULL, 'Dr. Pavel', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(646, 'Unknown03', 475, 27, 65, 13, '1729061532', '300', NULL, 'Md. Shahidul Haque', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(647, 'PG000289', 353, 27, 64, 13, '1907488016', '200', NULL, 'Md. Belal', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(648, 'Unknown04', 398, 27, 64, 13, '1907488018', '300', NULL, 'Nousor', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(649, 'CFMkt.87', 495, 29, 65, 13, '1766698296', '600', NULL, 'Sheikh Farid', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1200'),
(650, 'CFMkt.76', 496, 29, 65, 13, '1766698294', '1000', NULL, 'Md. Tarikul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '2000'),
(651, 'Unknown05', 353, 29, 65, 15, '1907488021', '200', NULL, 'Md. Ashiqur Rahman', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(652, 'Unknown06', 353, 29, 64, 13, '19074488024', '200', NULL, 'Ayub Ali', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(653, 'Unknown07', 353, 29, 64, 13, '1907488025', '200', NULL, 'Md. Delowar Hossain', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(654, 'Unknown08', 353, 29, 65, 13, '1907488023', '200', NULL, 'Md. Azadul Miah', NULL, NULL, NULL, '1969-12-31', 1, NULL, '200'),
(655, 'Unknown09', 353, 29, 65, 15, '1710873168', '200', NULL, 'Md. Shadin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '400'),
(656, 'PG000312', 508, 29, 66, 15, '1856995677', '150', NULL, 'Ridoy Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(657, 'Unknown10', 509, 29, 65, 15, '1781170628', '150', NULL, 'Ponkoj Roy', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(658, 'Unknown11', 509, 29, 66, 15, '1828381689', '150', NULL, 'Md. Rasel Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(659, 'Unknown13', 509, 29, 65, 15, '1799099254', '150', NULL, 'Md. Mostafiz Mia', NULL, NULL, NULL, '1969-12-31', 1, NULL, '150'),
(660, 'Unknown12', 509, 29, 64, 15, '1928588294', '150', NULL, 'Misor Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(661, 'Unknown14', 509, 29, 64, 15, '1953010601', '150', NULL, 'Md. Rana', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(662, 'Unknown15', 509, 29, 65, 15, '1736343231', '150', NULL, 'Tarikul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(663, 'Unknown16', 509, 29, 64, 15, '1995672852', '150', NULL, 'Hasan Sheikh', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(664, 'Unknown17', 509, 29, 64, 15, '1932476160', '150', NULL, 'Farid Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(665, 'Unknown18', 509, 29, 64, 15, '1955008055', '150', NULL, 'Md. Zakariya Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(666, 'Unknown19', 509, 29, 65, 15, '1784697421', '150', NULL, 'Md. Rohim Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(667, 'Unknown20', 509, 29, 65, 15, '1792744474', '150', NULL, 'Md. Apple Mahmud', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(668, 'Unknown21', 616, 32, 66, 13, '1844160442', '900', NULL, 'Tonmoy Kanti Das', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(669, 'PPL000001', 434, 33, 65, 15, '1725135872', '300', NULL, 'Md. Al Amin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(670, 'PPLC000018', 532, 33, 65, 15, '1713605983', '100', NULL, 'Yeasin Hamid', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(671, 'SFH00001', 541, 35, 65, 13, '1708465387', '800', NULL, 'Zahurul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1600'),
(672, 'SFH00002', 341, 35, 65, 13, '1708465393', '300', NULL, 'Akhlas Uddin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(673, 'SFH00003', 413, 35, 65, 13, '1729061515', '300', NULL, 'Sayed Md. Sajjad', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(674, 'SFH00004', 413, 35, 65, 13, '1729061516', '300', NULL, 'Md. Rezaul Hossain', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(675, 'PG000613', 419, 14, 66, 13, '1844142351', '900', NULL, 'Md. Munabbarul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1800'),
(676, 'FF000038', 632, 25, 65, 15, '1799593549', '100', NULL, 'Generator Room', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(677, 'FF000039', 632, 25, 65, 15, '1705762518', '100', NULL, 'Production House-04', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(678, 'FF000040', 632, 25, 65, 15, '1766193757', '100', NULL, 'Production House-02', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(679, 'FF000041', 632, 25, 65, 15, '1786521907', '100', NULL, 'Production House-3', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(680, 'Unknown23', 645, 11, 66, 13, '1847293205', '900', NULL, 'Md. Fazle Karim', NULL, NULL, NULL, '1969-12-31', 1, NULL, '1800'),
(681, 'PG000362', 353, 29, 64, 13, '1907488027', '150', NULL, 'Md. Razib Mridha', NULL, NULL, NULL, '0000-00-00', 1, NULL, '150'),
(682, 'FF000042', 632, 33, 65, 13, '1926673960', '300', NULL, 'Md. Al- Amin', NULL, NULL, NULL, '0000-00-00', 1, NULL, '300'),
(683, 'PG000116', 629, 12, 66, 13, '1816932918', '500', NULL, 'Rajaul Karim', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000'),
(684, 'DPG00003', 351, 11, 65, 13, '1708465397', '200', NULL, 'Saidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '200'),
(685, 'DPK00004', 415, 14, 66, 13, '1847324164', '450', NULL, 'Jahidul Islam', NULL, NULL, NULL, '0000-00-00', 1, NULL, '900'),
(686, 'PG000113', 443, 19, 65, 13, '1711621197', '2000', NULL, 'Sujit Ranjan Saha', NULL, NULL, NULL, '0000-00-00', 1, NULL, '4000'),
(687, 'PG000290', 383, 12, 65, 15, '1721764905', '100', NULL, 'Imran Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '100'),
(688, 'PPLF000016', 381, 11, 65, 15, '1728909282', '300', NULL, 'Md. Lal Mia', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(689, 'DPN00002', 415, 11, 66, 13, '1847324163', '700', NULL, 'Narshindi Depot (Modem)', NULL, NULL, NULL, '0000-00-00', 1, NULL, '700'),
(690, 'PG000522', 415, 11, 66, 13, '1844142396', '300', NULL, 'Md. selim reza', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(691, 'PG000506', 588, 11, 66, 13, '1847284924', '300', NULL, 'Md. Tofazzal Hossan', NULL, NULL, NULL, '0000-00-00', 1, NULL, '600'),
(692, 'SREE000004', 426, 42, 65, 13, '1729061505', '500', NULL, 'Jakaria Ahmed', NULL, NULL, NULL, '0000-00-00', 1, NULL, '1000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_employees_payment`
--

CREATE TABLE `sma_employees_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `payment_payroll` decimal(11,2) NOT NULL,
  `gross_salary` decimal(11,2) NOT NULL,
  `payment_other` decimal(11,2) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `bank_account` varchar(100) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_employees_payment`
--

INSERT INTO `sma_employees_payment` (`id`, `employee_id`, `payment_payroll`, `gross_salary`, `payment_other`, `created_by`, `created_date`, `updated_by`, `updated_date`, `active`, `bank_account`, `bank_name`) VALUES
(698, 'PG000351', '2000.00', '3000.00', '1000.00', 1, '2018-12-11 01:51:57', NULL, NULL, 1, '147852369123', 'EBL(Poultry)');

-- --------------------------------------------------------

--
-- Table structure for table `sma_expenses`
--

CREATE TABLE `sma_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,4) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_expense_categories`
--

CREATE TABLE `sma_expense_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_cards`
--

CREATE TABLE `sma_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `balance` decimal(25,4) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_gift_cards`
--

INSERT INTO `sma_gift_cards` (`id`, `date`, `card_no`, `value`, `customer_id`, `customer`, `balance`, `expiry`, `created_by`) VALUES
(1, '2017-09-23 11:29:54', '0700556473081391', '646.8900', 1, 'Walk-in Customer', '627.7500', NULL, '1'),
(2, '2018-03-30 17:27:32', '4293525742216661', '32.3500', 1, 'Walk-in Customer', '32.3500', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `sma_gift_card_topups`
--

CREATE TABLE `sma_gift_card_topups` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `card_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_groups`
--

CREATE TABLE `sma_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_groups`
--

INSERT INTO `sma_groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'customer', 'Customer'),
(4, 'supplier', 'Supplier'),
(5, 'sales', 'Sales Staff'),
(6, 'admin_task', 'admin_task');

-- --------------------------------------------------------

--
-- Table structure for table `sma_guards`
--

CREATE TABLE `sma_guards` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `mobile_number` varchar(13) NOT NULL,
  `height_feet` varchar(100) NOT NULL,
  `height_inch` varchar(100) NOT NULL,
  `present_weight` varchar(100) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `joining_date` date NOT NULL,
  `dob` date NOT NULL,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_guards`
--

INSERT INTO `sma_guards` (`id`, `employee_id`, `designation_id`, `company_id`, `mobile_number`, `height_feet`, `height_inch`, `present_weight`, `created_by`, `name`, `created_date`, `updated_by`, `updated_date`, `joining_date`, `dob`, `active`) VALUES
(2, 'PG000004', 315, 11, '1781870371', '5', '9', '75', NULL, 'Bond-007', NULL, NULL, NULL, '2018-01-10', '1988-01-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_keys`
--

CREATE TABLE `sma_keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_keys`
--

INSERT INTO `sma_keys` (`id`, `key`, `level`, `ignore_limits`, `date_created`) VALUES
(1, '3000911E3DA0C45C5133687B205E84D9', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_login_attempts`
--

CREATE TABLE `sma_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_migrations`
--

CREATE TABLE `sma_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_migrations`
--

INSERT INTO `sma_migrations` (`version`) VALUES
(315);

-- --------------------------------------------------------

--
-- Table structure for table `sma_notifications`
--

CREATE TABLE `sma_notifications` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_date` datetime DEFAULT NULL,
  `till_date` datetime DEFAULT NULL,
  `scope` tinyint(1) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_operators`
--

CREATE TABLE `sma_operators` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_operators`
--

INSERT INTO `sma_operators` (`id`, `code`, `name`, `contact_person`, `contact_number`, `address`, `image`) VALUES
(64, 'BL', 'Banglalink', 'Mr. Rahman', '1936884226', 'Gulshan,Dhaka.', NULL),
(65, 'GP', 'GrameenPhone', 'Mr. Z', '12345678974', 'Gulshan', NULL),
(66, 'Robi', 'Robi', 'Mr. Y', '1844050846', 'Gulshan, Dhaka', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_order_ref`
--

CREATE TABLE `sma_order_ref` (
  `ref_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `so` int(11) NOT NULL DEFAULT '1',
  `qu` int(11) NOT NULL DEFAULT '1',
  `po` int(11) NOT NULL DEFAULT '1',
  `to` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '1',
  `do` int(11) NOT NULL DEFAULT '1',
  `pay` int(11) NOT NULL DEFAULT '1',
  `re` int(11) NOT NULL DEFAULT '1',
  `rep` int(11) NOT NULL DEFAULT '1',
  `ex` int(11) NOT NULL DEFAULT '1',
  `ppay` int(11) NOT NULL DEFAULT '1',
  `qa` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_order_ref`
--

INSERT INTO `sma_order_ref` (`ref_id`, `date`, `so`, `qu`, `po`, `to`, `pos`, `do`, `pay`, `re`, `rep`, `ex`, `ppay`, `qa`) VALUES
(1, '2018-11-01', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_packages`
--

CREATE TABLE `sma_packages` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_packages`
--

INSERT INTO `sma_packages` (`id`, `code`, `name`) VALUES
(13, 'Package-1', 'Postpaid'),
(14, 'Package-2', 'Postpaid(2 GB)'),
(15, 'Package-3', 'Prepaid'),
(16, 'Package-4', 'Postpaid(500 MB)'),
(17, 'Package-5', 'Postpaid(300 MB, 3G)'),
(18, 'Package-6', 'Postpaid(Pay as you go)'),
(19, 'Package-7', 'Postpaid(5 GB)'),
(20, 'Package-8', 'Postpaid(3 GB)'),
(21, 'Package-9', 'Postpaid(3 GB (M.P))'),
(22, 'Package-10', 'Postpaid( 2GB)'),
(23, 'Package-11', 'Postpaid(3 GB )'),
(24, 'Package-12', 'Postpaid(Data use)'),
(25, 'Package-13', 'Postpaid(1.5 GB)'),
(26, 'Package-14', 'Postpaid(Data)'),
(27, 'Package-15', 'Postpaid(4 GB)'),
(28, 'Package-16', 'Postpaid(1 (GB))'),
(29, 'Package-17', 'Postpaid(8 GB ROBI Ace postpaid )'),
(30, 'Package-18', 'Postpaid(1 GB)'),
(31, 'Package-19', 'Postpaid(7GB)'),
(32, 'Package-20', 'Postpaid(Data )'),
(33, 'Package-21', 'Postpaid(HS 250 EB)');

-- --------------------------------------------------------

--
-- Table structure for table `sma_payments`
--

CREATE TABLE `sma_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sale_id` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,4) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,4) DEFAULT '0.0000',
  `pos_balance` decimal(25,4) DEFAULT '0.0000',
  `approval_code` varchar(50) DEFAULT NULL,
  `card_charge` decimal(13,2) DEFAULT NULL,
  `card_charge_percentage` decimal(13,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_payments`
--

INSERT INTO `sma_payments` (`id`, `date`, `sale_id`, `return_id`, `purchase_id`, `reference_no`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `type`, `note`, `pos_paid`, `pos_balance`, `approval_code`, `card_charge`, `card_charge_percentage`) VALUES
(1, '2018-04-10 01:08:56', 30, NULL, NULL, 'IPAY/2018/04/0020', NULL, 'cash', '', '', '', '', '', '', '23.7300', NULL, 1, NULL, 'received', '', '50.0000', '26.2700', NULL, NULL, NULL),
(2, '2018-04-16 20:58:33', 31, NULL, NULL, 'IPAY/2018/04/0021', NULL, 'CC', '', 'vzxvzv', 'zxvzxvzx', '12', '2019', 'Discover', '50.0000', NULL, 5, NULL, 'received', '', '50.0000', '-967.0000', NULL, NULL, NULL),
(3, '2018-04-16 22:37:23', 32, NULL, NULL, 'IPAY/2018/04/0022', NULL, 'DC', '', '', '', '', '', '', '100.0000', NULL, 1, NULL, 'received', '', '100.0000', '-12.9900', NULL, NULL, NULL),
(4, '2018-04-16 22:48:00', 33, NULL, NULL, 'IPAY/2018/04/0023', NULL, 'DC', '', '', '', '', '', '', '56.4900', NULL, 1, NULL, 'received', '', '56.4900', '0.0000', NULL, NULL, NULL),
(5, '2018-04-16 22:50:00', 34, NULL, NULL, 'IPAY/2018/04/0024', NULL, 'DC', '', 'vxcvxcvxc', 'xcvxcvxc', '12', '1222', '', '169.4900', NULL, 1, NULL, 'received', '', '169.4900', '0.0000', NULL, NULL, NULL),
(6, '2018-04-23 06:07:00', 29, NULL, NULL, 'IPAY/2018/04/0025', NULL, 'cash', '', '', '', '', '', 'Visa', '112.9800', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL, NULL, NULL),
(7, '2018-04-25 04:50:00', 35, NULL, NULL, 'IPAY/2018/04/0026', NULL, 'cash', '', '', '', '', '', 'Visa', '23.7300', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL, NULL, NULL),
(15, '2018-05-05 19:10:05', 44, NULL, NULL, 'IPAY/2018/05/0036', NULL, 'CC', '111', '2222', '3333', '12', '1222', '', '500.0000', NULL, 1, NULL, 'received', '', '500.0000', '-177.9900', NULL, '3.00', '15.00'),
(16, '2018-05-05 19:10:05', 45, NULL, NULL, 'IPAY/2018/05/0037', NULL, 'CC', '444', '5555', '6666', '11', '3222', '', '177.9900', NULL, 1, NULL, 'received', '', '200.0000', '22.0100', NULL, '2.00', '4.00'),
(17, '2018-05-06 09:42:00', 32, NULL, NULL, 'IPAY/2018/05/0038', NULL, 'CC', '', '1111111', '11111', '12', '18', NULL, '12.9887', NULL, 1, NULL, 'received', '', '12.9887', '0.0000', NULL, '5.00', '0.65'),
(18, '2018-05-07 19:48:34', 45, NULL, NULL, 'IPAY/2018/05/0038', NULL, 'cash', '', '', '', '', '', '', '200.0000', NULL, 1, NULL, 'received', '', '200.0000', '-138.9900', NULL, '0.00', '0.00'),
(19, '2018-05-07 19:48:34', 45, NULL, NULL, 'IPAY/2018/05/0039', NULL, 'CC', '', '', '', '', '', '', '138.9900', NULL, 1, NULL, 'received', '', '200.0000', '61.0100', NULL, '4.00', '8.00'),
(20, '2018-06-02 20:26:09', 46, NULL, NULL, 'IPAY/2018/06/0059', NULL, 'cash', '', '', '', '', '', '', '101.6900', NULL, 1, NULL, 'received', '', '101.6900', '0.0000', NULL, '0.00', '0.00'),
(21, '2018-06-02 20:26:23', 47, NULL, NULL, 'IPAY/2018/06/0060', NULL, 'cash', '', '', '', '', '', '', '80.0000', NULL, 1, NULL, 'received', '', '80.0000', '0.0000', NULL, '0.00', '0.00'),
(22, '2018-06-02 20:30:42', 48, NULL, NULL, 'IPAY/2018/06/0061', NULL, 'cash', '', '', '', '', '', '', '67.7900', NULL, 1, NULL, 'received', '', '67.7900', '0.0000', NULL, '0.00', '0.00'),
(23, '2018-06-03 18:48:01', 49, NULL, NULL, 'IPAY/2018/06/0062', NULL, 'CC', '', '', '', '', '', '', '235.0296', NULL, 1, NULL, 'received', 'f', '235.0296', '0.0000', NULL, '4.00', '9.04'),
(24, '2018-06-03 18:52:10', 50, NULL, NULL, 'IPAY/2018/06/0063', NULL, 'Amex', '', '', '', '', '', '', '205.6496', NULL, 1, NULL, 'received', '', '205.6496', '0.0000', NULL, '4.00', '7.91'),
(25, '2018-06-03 18:53:14', 51, NULL, NULL, 'IPAY/2018/06/0064', NULL, 'MasterCard', '', '', '', '', '', '', '101.6900', NULL, 1, NULL, 'received', '', '101.6900', '0.0000', NULL, '0.00', '0.00'),
(26, '2018-06-03 18:53:42', 52, NULL, NULL, 'IPAY/2018/06/0065', NULL, 'Visa', '', '', '', '', '', '', '197.7400', NULL, 1, NULL, 'received', '', '197.7400', '0.0000', NULL, '0.00', '0.00'),
(27, '2018-06-03 18:55:08', 53, NULL, NULL, 'IPAY/2018/06/0066', NULL, 'Cheque', '', '', '', '', '', '', '101.6900', NULL, 1, NULL, 'received', '', '500.0000', '398.3100', NULL, '0.00', '0.00'),
(28, '2018-06-05 03:26:00', 54, NULL, NULL, 'IPAY/2018/06/0067', NULL, 'cash', '', '', '', '', '', 'Visa', '-101.6900', NULL, 1, NULL, 'returned', NULL, '0.0000', '0.0000', NULL, NULL, NULL),
(29, '2018-06-04 18:32:54', 55, NULL, NULL, 'IPAY/2018/06/0068', NULL, 'cash', '', '', '', '', '', '', '67.7900', NULL, 1, NULL, 'received', '', '67.7900', '0.0000', NULL, '0.00', '0.00'),
(30, '2018-06-05 04:39:00', 56, NULL, NULL, 'IPAY/2018/06/0069', NULL, 'Amex', '', '', '', '', '', 'Visa', '101.6900', NULL, 1, NULL, 'received', '', '0.0000', '0.0000', NULL, NULL, NULL),
(31, '2018-09-30 19:13:22', 2, NULL, NULL, 'IPAY/2018/10/0070', NULL, 'cash', '', '', '', '', '', '', '70.0000', NULL, 1, NULL, 'received', '', '70.0000', '0.0000', NULL, '0.00', '0.00'),
(32, '2018-09-30 19:19:32', 3, NULL, NULL, 'IPAY/2018/10/0071', NULL, 'cash', '', '', '', '', '', '', '70.0000', NULL, 1, NULL, 'received', '', '70.0000', '0.0000', NULL, '0.00', '0.00'),
(33, '2018-09-30 19:21:05', 4, NULL, NULL, 'IPAY/2018/10/0072', NULL, 'cash', '', '', '', '', '', '', '90.4000', NULL, 1, NULL, 'received', '', '90.4000', '0.0000', NULL, '0.00', '0.00'),
(34, '2018-10-02 22:21:00', 8, NULL, NULL, 'IPAY2018100073', NULL, 'cash', '', '', '', '', '', '', '90.4000', NULL, 1, NULL, 'received', '', '90.4000', '0.0000', NULL, '0.00', '0.00'),
(35, '2018-10-02 22:27:35', 9, NULL, NULL, 'IPAY2018100074', NULL, 'cash', '', '', '', '', '', '', '90.4000', NULL, 1, NULL, 'received', '', '90.4000', '0.0000', NULL, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sma_paypal`
--

CREATE TABLE `sma_paypal` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `paypal_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '2.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '3.9000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '4.4000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_paypal`
--

INSERT INTO `sma_paypal` (`id`, `active`, `account_email`, `paypal_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'mypaypal@paypal.com', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_permissions`
--

CREATE TABLE `sma_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `products-index` tinyint(1) DEFAULT '0',
  `products-add` tinyint(1) DEFAULT '0',
  `products-edit` tinyint(1) DEFAULT '0',
  `products-delete` tinyint(1) DEFAULT '0',
  `products-cost` tinyint(1) DEFAULT '0',
  `products-price` tinyint(1) DEFAULT '0',
  `quotes-index` tinyint(1) DEFAULT '0',
  `quotes-add` tinyint(1) DEFAULT '0',
  `quotes-edit` tinyint(1) DEFAULT '0',
  `quotes-pdf` tinyint(1) DEFAULT '0',
  `quotes-email` tinyint(1) DEFAULT '0',
  `quotes-delete` tinyint(1) DEFAULT '0',
  `sales-index` tinyint(1) DEFAULT '0',
  `sales-add` tinyint(1) DEFAULT '0',
  `sales-edit` tinyint(1) DEFAULT '0',
  `sales-pdf` tinyint(1) DEFAULT '0',
  `sales-email` tinyint(1) DEFAULT '0',
  `sales-delete` tinyint(1) DEFAULT '0',
  `purchases-index` tinyint(1) DEFAULT '0',
  `purchases-add` tinyint(1) DEFAULT '0',
  `purchases-edit` tinyint(1) DEFAULT '0',
  `purchases-pdf` tinyint(1) DEFAULT '0',
  `purchases-email` tinyint(1) DEFAULT '0',
  `purchases-delete` tinyint(1) DEFAULT '0',
  `transfers-index` tinyint(1) DEFAULT '0',
  `transfers-add` tinyint(1) DEFAULT '0',
  `transfers-edit` tinyint(1) DEFAULT '0',
  `transfers-pdf` tinyint(1) DEFAULT '0',
  `transfers-email` tinyint(1) DEFAULT '0',
  `transfers-delete` tinyint(1) DEFAULT '0',
  `customers-index` tinyint(1) DEFAULT '0',
  `customers-add` tinyint(1) DEFAULT '0',
  `customers-edit` tinyint(1) DEFAULT '0',
  `customers-delete` tinyint(1) DEFAULT '0',
  `suppliers-index` tinyint(1) DEFAULT '0',
  `suppliers-add` tinyint(1) DEFAULT '0',
  `suppliers-edit` tinyint(1) DEFAULT '0',
  `suppliers-delete` tinyint(1) DEFAULT '0',
  `sales-deliveries` tinyint(1) DEFAULT '0',
  `sales-add_delivery` tinyint(1) DEFAULT '0',
  `sales-edit_delivery` tinyint(1) DEFAULT '0',
  `sales-delete_delivery` tinyint(1) DEFAULT '0',
  `sales-email_delivery` tinyint(1) DEFAULT '0',
  `sales-pdf_delivery` tinyint(1) DEFAULT '0',
  `sales-gift_cards` tinyint(1) DEFAULT '0',
  `sales-add_gift_card` tinyint(1) DEFAULT '0',
  `sales-edit_gift_card` tinyint(1) DEFAULT '0',
  `sales-delete_gift_card` tinyint(1) DEFAULT '0',
  `pos-index` tinyint(1) DEFAULT '0',
  `sales-return_sales` tinyint(1) DEFAULT '0',
  `reports-index` tinyint(1) DEFAULT '0',
  `reports-warehouse_stock` tinyint(1) DEFAULT '0',
  `reports-quantity_alerts` tinyint(1) DEFAULT '0',
  `reports-expiry_alerts` tinyint(1) DEFAULT '0',
  `reports-products` tinyint(1) DEFAULT '0',
  `reports-daily_sales` tinyint(1) DEFAULT '0',
  `reports-monthly_sales` tinyint(1) DEFAULT '0',
  `reports-sales` tinyint(1) DEFAULT '0',
  `reports-payments` tinyint(1) DEFAULT '0',
  `reports-purchases` tinyint(1) DEFAULT '0',
  `reports-profit_loss` tinyint(1) DEFAULT '0',
  `reports-customers` tinyint(1) DEFAULT '0',
  `reports-suppliers` tinyint(1) DEFAULT '0',
  `reports-staff` tinyint(1) DEFAULT '0',
  `reports-register` tinyint(1) DEFAULT '0',
  `sales-payments` tinyint(1) DEFAULT '0',
  `purchases-payments` tinyint(1) DEFAULT '0',
  `purchases-expenses` tinyint(1) DEFAULT '0',
  `products-adjustments` tinyint(1) DEFAULT '0',
  `bulk_actions` tinyint(1) DEFAULT '0',
  `customers-deposits` tinyint(1) DEFAULT '0',
  `customers-delete_deposit` tinyint(1) DEFAULT '0',
  `products-barcode` tinyint(1) DEFAULT '0',
  `purchases-return_purchases` tinyint(1) DEFAULT '0',
  `reports-expenses` tinyint(1) DEFAULT '0',
  `reports-daily_purchases` tinyint(1) DEFAULT '0',
  `reports-monthly_purchases` tinyint(1) DEFAULT '0',
  `products-stock_count` tinyint(1) DEFAULT '0',
  `edit_price` tinyint(1) DEFAULT '0',
  `brand-index` tinyint(1) DEFAULT '0',
  `brand-add` tinyint(4) DEFAULT '0',
  `brand-edit` tinyint(4) DEFAULT '0',
  `brand-delete` tinyint(4) DEFAULT '0',
  `category-index` tinyint(4) DEFAULT '0',
  `category-add` tinyint(4) DEFAULT '0',
  `category-edit` tinyint(4) DEFAULT '0',
  `category-delete` tinyint(4) DEFAULT '0',
  `reports-sales-margin` tinyint(1) DEFAULT '0',
  `reports-product-details` tinyint(1) DEFAULT '0',
  `company-index` tinyint(1) DEFAULT '0',
  `company-add` tinyint(1) DEFAULT '0',
  `company-edit` tinyint(1) DEFAULT '0',
  `company-delete` tinyint(1) DEFAULT '0',
  `products-reorder_details` tinyint(1) DEFAULT '0',
  `products-details_search` tinyint(1) DEFAULT '0',
  `designation-index` tinyint(1) DEFAULT '0',
  `designation-add` tinyint(1) DEFAULT '0',
  `designation-edit` tinyint(1) DEFAULT '0',
  `designation-delete` tinyint(1) DEFAULT '0',
  `operator-index` tinyint(1) DEFAULT '0',
  `operator-add` tinyint(1) DEFAULT '0',
  `operator-edit` tinyint(1) DEFAULT '0',
  `operator-delete` tinyint(1) DEFAULT '0',
  `package-index` tinyint(1) DEFAULT '0',
  `package-add` tinyint(1) DEFAULT '0',
  `package-edit` tinyint(1) DEFAULT '0',
  `package-delete` tinyint(1) DEFAULT '0',
  `employees-index` tinyint(1) DEFAULT '0',
  `employees-add` tinyint(1) DEFAULT '0',
  `employees-edit` tinyint(1) DEFAULT '0',
  `employees-delete` tinyint(1) DEFAULT '0',
  `employees-employee_by_csv` tinyint(1) NOT NULL DEFAULT '0',
  `employees-bill_add` tinyint(1) NOT NULL DEFAULT '0',
  `employees-bill_index` tinyint(1) NOT NULL DEFAULT '0',
  `employees-bill_delete` tinyint(1) NOT NULL DEFAULT '0',
  `guard-index` tinyint(1) NOT NULL DEFAULT '0',
  `guard-add` tinyint(1) DEFAULT '0',
  `guard-edit` tinyint(1) NOT NULL DEFAULT '0',
  `guard-delete` tinyint(1) NOT NULL DEFAULT '0',
  `guard-weight_upload` tinyint(1) NOT NULL DEFAULT '0',
  `reports-company_bill_details` tinyint(1) NOT NULL DEFAULT '0',
  `reports-company_wise_bill` tinyint(1) NOT NULL DEFAULT '0',
  `document-index` tinyint(1) NOT NULL DEFAULT '0',
  `document-add` tinyint(1) NOT NULL DEFAULT '0',
  `document-edit` tinyint(1) NOT NULL DEFAULT '0',
  `document-delete` tinyint(1) NOT NULL DEFAULT '0',
  `doctype-index` tinyint(1) NOT NULL DEFAULT '0',
  `doctype-add` tinyint(1) NOT NULL DEFAULT '0',
  `doctype-edit` tinyint(1) NOT NULL DEFAULT '0',
  `doctype-delete` tinyint(1) NOT NULL DEFAULT '0',
  `backups_index` tinyint(1) DEFAULT NULL,
  `document-doc_movement_list` tinyint(1) DEFAULT '0',
  `document-add_movement` tinyint(1) DEFAULT '0',
  `document-edit_movement` tinyint(1) DEFAULT '0',
  `document-delete_movement` tinyint(1) DEFAULT '0',
  `document-folder_create` tinyint(1) DEFAULT '0',
  `document-file_delete` tinyint(1) DEFAULT '0',
  `document-upload` tinyint(1) DEFAULT '0',
  `document-folder_download` tinyint(1) DEFAULT '0',
  `document-file_manager` tinyint(1) DEFAULT '0',
  `employees-index_payment` tinyint(1) DEFAULT '0',
  `employees-add_employee_payment` tinyint(1) DEFAULT '0',
  `employees-employee_payment_by_csv` tinyint(1) DEFAULT '0',
  `employees-delete_employee_payment` tinyint(1) DEFAULT '0',
  `employees-edit_employee_payment` tinyint(1) DEFAULT '0',
  `employees-list_month_salary` tinyint(1) DEFAULT '0',
  `employees-salary_process` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_permissions`
--

INSERT INTO `sma_permissions` (`id`, `group_id`, `products-index`, `products-add`, `products-edit`, `products-delete`, `products-cost`, `products-price`, `quotes-index`, `quotes-add`, `quotes-edit`, `quotes-pdf`, `quotes-email`, `quotes-delete`, `sales-index`, `sales-add`, `sales-edit`, `sales-pdf`, `sales-email`, `sales-delete`, `purchases-index`, `purchases-add`, `purchases-edit`, `purchases-pdf`, `purchases-email`, `purchases-delete`, `transfers-index`, `transfers-add`, `transfers-edit`, `transfers-pdf`, `transfers-email`, `transfers-delete`, `customers-index`, `customers-add`, `customers-edit`, `customers-delete`, `suppliers-index`, `suppliers-add`, `suppliers-edit`, `suppliers-delete`, `sales-deliveries`, `sales-add_delivery`, `sales-edit_delivery`, `sales-delete_delivery`, `sales-email_delivery`, `sales-pdf_delivery`, `sales-gift_cards`, `sales-add_gift_card`, `sales-edit_gift_card`, `sales-delete_gift_card`, `pos-index`, `sales-return_sales`, `reports-index`, `reports-warehouse_stock`, `reports-quantity_alerts`, `reports-expiry_alerts`, `reports-products`, `reports-daily_sales`, `reports-monthly_sales`, `reports-sales`, `reports-payments`, `reports-purchases`, `reports-profit_loss`, `reports-customers`, `reports-suppliers`, `reports-staff`, `reports-register`, `sales-payments`, `purchases-payments`, `purchases-expenses`, `products-adjustments`, `bulk_actions`, `customers-deposits`, `customers-delete_deposit`, `products-barcode`, `purchases-return_purchases`, `reports-expenses`, `reports-daily_purchases`, `reports-monthly_purchases`, `products-stock_count`, `edit_price`, `brand-index`, `brand-add`, `brand-edit`, `brand-delete`, `category-index`, `category-add`, `category-edit`, `category-delete`, `reports-sales-margin`, `reports-product-details`, `company-index`, `company-add`, `company-edit`, `company-delete`, `products-reorder_details`, `products-details_search`, `designation-index`, `designation-add`, `designation-edit`, `designation-delete`, `operator-index`, `operator-add`, `operator-edit`, `operator-delete`, `package-index`, `package-add`, `package-edit`, `package-delete`, `employees-index`, `employees-add`, `employees-edit`, `employees-delete`, `employees-employee_by_csv`, `employees-bill_add`, `employees-bill_index`, `employees-bill_delete`, `guard-index`, `guard-add`, `guard-edit`, `guard-delete`, `guard-weight_upload`, `reports-company_bill_details`, `reports-company_wise_bill`, `document-index`, `document-add`, `document-edit`, `document-delete`, `doctype-index`, `doctype-add`, `doctype-edit`, `doctype-delete`, `backups_index`, `document-doc_movement_list`, `document-add_movement`, `document-edit_movement`, `document-delete_movement`, `document-folder_create`, `document-file_delete`, `document-upload`, `document-folder_download`, `document-file_manager`, `employees-index_payment`, `employees-add_employee_payment`, `employees-employee_payment_by_csv`, `employees-delete_employee_payment`, `employees-edit_employee_payment`, `employees-list_month_salary`, `employees-salary_process`) VALUES
(1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 1, NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, NULL, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_register`
--

CREATE TABLE `sma_pos_register` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,4) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,4) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,4) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_register`
--

INSERT INTO `sma_pos_register` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(1, '2018-04-10 01:06:41', 1, '0.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-04-16 17:46:26', 5, '5000.0000', 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_pos_settings`
--

CREATE TABLE `sma_pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_manual_product` varchar(55) DEFAULT NULL,
  `customer_selection` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `toggle_subcategory_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_items_list` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `product_button_color` varchar(20) NOT NULL DEFAULT 'default',
  `tooltips` tinyint(1) DEFAULT '1',
  `paypal_pro` tinyint(1) DEFAULT '0',
  `stripe` tinyint(1) DEFAULT '0',
  `rounding` tinyint(1) DEFAULT '0',
  `char_per_line` tinyint(4) DEFAULT '42',
  `pin_code` varchar(20) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT 'purchase_code',
  `envato_username` varchar(50) DEFAULT 'envato_username',
  `version` varchar(10) DEFAULT '3.0.2.23',
  `after_sale_page` tinyint(1) DEFAULT '0',
  `item_order` tinyint(1) DEFAULT '0',
  `authorize` tinyint(1) DEFAULT '0',
  `toggle_brands_slider` varchar(55) DEFAULT NULL,
  `remote_printing` tinyint(1) DEFAULT '1',
  `printer` int(11) DEFAULT NULL,
  `order_printers` varchar(55) DEFAULT NULL,
  `auto_print` tinyint(1) DEFAULT '0',
  `customer_details` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_pos_settings`
--

INSERT INTO `sma_pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`, `receipt_printer`, `cash_drawer_codes`, `focus_add_item`, `add_manual_product`, `customer_selection`, `add_customer`, `toggle_category_slider`, `toggle_subcategory_slider`, `cancel_sale`, `suspend_sale`, `print_items_list`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `keyboard`, `pos_printers`, `java_applet`, `product_button_color`, `tooltips`, `paypal_pro`, `stripe`, `rounding`, `char_per_line`, `pin_code`, `purchase_code`, `envato_username`, `version`, `after_sale_page`, `item_order`, `authorize`, `toggle_brands_slider`, `remote_printing`, `printer`, `order_printers`, `auto_print`, `customer_details`) VALUES
(1, 22, 20, 598, 1511, 999999, '1', 'GST Reg', 'VAT Reg', '123456789', '987654321', NULL, 'x1C', 'Ctrl+F3', 'Ctrl+Shift+M', 'Ctrl+Shift+C', 'Ctrl+Shift+A', 'Ctrl+F11', 'Ctrl+F12', 'F4', 'F7', 'F9', 'F8', 'Ctrl+F1', 'Ctrl+F2', 'Ctrl+F10', 1, NULL, 0, 'default', 1, 0, 0, 0, 42, '12345678', '8dcdaaad-cd7b-4490-a5e8-172b0633f5b4', 'shoolindesign', '3.0.2.23', 0, 0, 0, '', 1, NULL, 'null', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_price_groups`
--

CREATE TABLE `sma_price_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_price_groups`
--

INSERT INTO `sma_price_groups` (`id`, `name`) VALUES
(1, 'Default'),
(3, 'Friends Group'),
(2, 'Partner Price'),
(4, 'Wholesale');

-- --------------------------------------------------------

--
-- Table structure for table `sma_printers`
--

CREATE TABLE `sma_printers` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `type` varchar(25) NOT NULL,
  `profile` varchar(25) NOT NULL,
  `char_per_line` tinyint(3) UNSIGNED DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_products`
--

CREATE TABLE `sma_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) NOT NULL,
  `alert_quantity` decimal(15,4) DEFAULT '20.0000',
  `image` varchar(255) DEFAULT 'no_image.png',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(1) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `barcode_symbology` varchar(55) NOT NULL DEFAULT 'code128',
  `file` varchar(100) DEFAULT NULL,
  `product_details` text,
  `tax_method` tinyint(1) DEFAULT '0',
  `type` varchar(55) NOT NULL DEFAULT 'standard',
  `supplier1` int(11) DEFAULT NULL,
  `supplier1price` decimal(25,4) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier2price` decimal(25,4) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier3price` decimal(25,4) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier4price` decimal(25,4) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier5price` decimal(25,4) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT '0',
  `promo_price` decimal(25,4) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `supplier1_part_no` varchar(50) DEFAULT NULL,
  `supplier2_part_no` varchar(50) DEFAULT NULL,
  `supplier3_part_no` varchar(50) DEFAULT NULL,
  `supplier4_part_no` varchar(50) DEFAULT NULL,
  `supplier5_part_no` varchar(50) DEFAULT NULL,
  `sale_unit` int(11) DEFAULT NULL,
  `purchase_unit` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `min_selling_price` decimal(15,2) DEFAULT NULL,
  `landing_price` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_products`
--

INSERT INTO `sma_products` (`id`, `code`, `name`, `unit`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`, `warehouse`, `barcode_symbology`, `file`, `product_details`, `tax_method`, `type`, `supplier1`, `supplier1price`, `supplier2`, `supplier2price`, `supplier3`, `supplier3price`, `supplier4`, `supplier4price`, `supplier5`, `supplier5price`, `promotion`, `promo_price`, `start_date`, `end_date`, `supplier1_part_no`, `supplier2_part_no`, `supplier3_part_no`, `supplier4_part_no`, `supplier5_part_no`, `sale_unit`, `purchase_unit`, `brand`, `min_selling_price`, `landing_price`) VALUES
(27182, '47241', 'LOGITECH MK120 DESKTOP KB+MSE', 1, '22.0000', '27.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', '13.0000', 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, '22.00', '17.00'),
(27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 1, '70.0000', '80.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', '63.0000', 5, 1, '', NULL, 'code128', NULL, '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, 1, 58, '70.00', '70.00'),
(27184, '48397', 'MEM-DESK-DDR3-REF-4G DDR3 Desktop 4GB Memory, Pulled', 1, '28.0000', '0.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', '1.0000', 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, '28.00', '28.00'),
(27185, '48396', 'Cat5e Network Cable 6FT- White', 1, '0.9900', '6.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27186, '48395', 'LCD SCREEN 14\" 40PIN', 1, '65.0000', '70.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', '18.0000', 5, 1, '', NULL, 'code128', NULL, '', 1, 'standard', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, 1, 58, '65.00', '65.00'),
(27187, '48394', 'A1466 TRACKPAD MID 2012', 1, '55.0000', '150.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27188, '48393', 'SERVICE ID 6312 : WATER DAMAGE', 1, '80.0000', '0.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, '80.00', '80.00'),
(27189, '48392', 'HP DV 2000  LAPTOP', 1, '20.0000', '149.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27190, '48390', 'CANON CL 241 ORIGINAL', 1, '29.4000', '34.5000', '1.0000', '', 665, NULL, '', '', '', '', '', '', '5.0000', 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, '29.40', '29.40'),
(27191, '48389', 'SERVICE ID 6332: Samsung S4 Screen Replacement', 1, '40.0000', '80.0000', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27192, '48388', 'SERVICE ID : 6320 NO POWER', 1, '80.0000', '159.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27193, '48387', 'SERVICE ID : 6321 NO POWER', 1, '60.0000', '129.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27194, '48386', 'SSD-MZ-75E1T0B/AM SAMSUNG 850 EVO 1TB 2.5\" SATA-III SSD', 1, '349.0000', '599.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27195, '48385', 'SSD-WDS250G2B0A WD BLUE 250GB 3D NANO SATA SSD', 1, '93.0000', '169.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27196, '48384', 'SSD-WDS500G2B0A WD BLUE 500GB 3D NANO SATA SSD', 1, '160.0000', '299.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27197, '48383', 'POWER-W0441N TT 600WATX NON-MODULAR (BULK) BLACK', 1, '43.0000', '89.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', '7.0000', 5, 1, NULL, NULL, 'code128', NULL, NULL, 1, 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27198, '48382', 'DDR2 SODIMM laptop 2G Memory, Pulled, 30 days warranty', 1, '12.0000', '29.9900', '1.0000', '', 665, NULL, '', '', '', '', '', '', NULL, 5, 0, '', NULL, 'code128', NULL, '', 1, 'service', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL),
(27199, '48381', 'Targus 90W AC Adapter w/ 5 tips. APA70US, open box w/60 days warranty', 1, '9.8800', '670.0000', '1.0000', '0dd664ffe4472b8841c017baebd51d44.jpg', 665, 666, '', '', '', '', '', '', NULL, 5, 0, '', NULL, 'code128', NULL, '', 1, 'combo', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, 1, 58, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_photos`
--

CREATE TABLE `sma_product_photos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_product_photos`
--

INSERT INTO `sma_product_photos` (`id`, `product_id`, `photo`) VALUES
(1, 27199, '4aea5e0f7db8fc050f33555829244694.png');

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_prices`
--

CREATE TABLE `sma_product_prices` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_group_id` int(11) NOT NULL,
  `price` decimal(25,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_product_variants`
--

CREATE TABLE `sma_product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cost` decimal(25,4) DEFAULT NULL,
  `price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchases`
--

CREATE TABLE `sma_purchases` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(11) NOT NULL,
  `supplier` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `product_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,4) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT NULL,
  `product_tax` decimal(25,4) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `paid` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `status` varchar(55) DEFAULT '',
  `payment_status` varchar(20) DEFAULT 'pending',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `return_purchase_ref` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `return_purchase_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `internal_ref` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchases`
--

INSERT INTO `sma_purchases` (`id`, `reference_no`, `date`, `supplier_id`, `supplier`, `warehouse_id`, `note`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `paid`, `status`, `payment_status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `payment_term`, `due_date`, `return_id`, `surcharge`, `return_purchase_ref`, `purchase_id`, `return_purchase_total`, `internal_ref`) VALUES
(1, 'PO/2018/07/0031', '2018-07-31 04:03:00', 8, 'A-1 WIRELESS INC  ', 1, '', '175.0000', '0.0000', NULL, '0.0000', '0.0000', '22.7500', NULL, '0.0000', '22.7500', '0.0000', '197.7500', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL),
(2, 'PO/2018/09/0032', '2018-09-26 04:30:00', 11, 'Advance Computer  ', 1, '', '3700.0000', '0.0000', NULL, '0.0000', '0.0000', '481.0000', NULL, '0.0000', '481.0000', '0.0000', '4181.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL),
(3, 'PO/2018/09/0033', '2018-10-01 03:43:00', 4, '1st CHOICE WIRELESS  ', 1, '', '3500.0000', '0.0000', NULL, '0.0000', '0.0000', '455.0000', NULL, '0.0000', '455.0000', '0.0000', '3955.0000', '0.0000', 'received', 'pending', 1, NULL, NULL, NULL, 0, NULL, NULL, '0.0000', NULL, NULL, '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_purchase_items`
--

CREATE TABLE `sma_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `quantity_balance` decimal(15,4) DEFAULT '0.0000',
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `quantity_received` decimal(15,4) DEFAULT NULL,
  `supplier_part_no` varchar(50) DEFAULT NULL,
  `purchase_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `tr_status` varchar(200) DEFAULT '',
  `tr_remain_qty` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_purchase_items`
--

INSERT INTO `sma_purchase_items` (`id`, `purchase_id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `option_id`, `net_unit_cost`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `expiry`, `subtotal`, `quantity_balance`, `date`, `status`, `unit_cost`, `real_unit_cost`, `quantity_received`, `supplier_part_no`, `purchase_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `tr_status`, `tr_remain_qty`) VALUES
(1, 1, NULL, 27190, '48390', 'CANON CL 241 ORIGINAL', NULL, '29.4000', '5.0000', 1, '19.1100', 5, '13.0000%', '0', '0.0000', NULL, '166.1100', '5.0000', '2018-07-31', 'received', '33.2200', '29.4000', '5.0000', NULL, NULL, 1, 'pc', '5.0000', '', '5.00'),
(2, 1, NULL, 27184, '48397', 'MEM-DESK-DDR3-REF-4G DDR3 Desktop 4GB Memory, Pulled', NULL, '28.0000', '1.0000', 1, '3.6400', 5, '13.0000%', '0', '0.0000', NULL, '31.6400', '1.0000', '2018-07-31', 'received', '31.6400', '28.0000', '1.0000', NULL, NULL, 1, 'pc', '1.0000', '', '1.00'),
(3, 2, NULL, 27186, '48395', 'LCD SCREEN 14\" 40PIN', NULL, '65.0000', '30.0000', 1, '253.5000', 5, '13.0000%', '0', '0.0000', NULL, '2203.5000', '18.0000', '2018-09-26', 'received', '73.4500', '65.0000', '30.0000', NULL, NULL, 1, 'pc', '30.0000', '', '30.00'),
(4, 2, NULL, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', NULL, '70.0000', '25.0000', 1, '227.5000', 5, '13.0000%', '0', '0.0000', NULL, '1977.5000', '20.0000', '2018-09-26', 'received', '79.1000', '70.0000', '25.0000', NULL, NULL, 1, 'pc', '25.0000', '', '25.00'),
(5, 3, NULL, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', NULL, '70.0000', '50.0000', 1, '455.0000', 5, '13.0000%', '0', '0.0000', NULL, '3955.0000', '43.0000', '2018-10-01', 'received', '79.1000', '70.0000', '50.0000', NULL, NULL, 1, 'pc', '50.0000', '', '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `sma_quotes`
--

CREATE TABLE `sma_quotes` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_quotes_deleted`
--

CREATE TABLE `sma_quotes_deleted` (
  `id` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) CHARACTER SET utf8 NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) CHARACTER SET utf8 NOT NULL,
  `note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `internal_note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT NULL,
  `order_discount_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachment` varchar(55) CHARACTER SET utf8 DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sma_quotes_deleted`
--

INSERT INTO `sma_quotes_deleted` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `warehouse_id`, `biller_id`, `biller`, `note`, `internal_note`, `total`, `product_discount`, `order_discount`, `order_discount_id`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `status`, `created_by`, `updated_by`, `updated_at`, `attachment`, `deleted_by`, `deleted_time`) VALUES
(2, '2015-10-11 00:16:00', 'QUOTE/2015/10/0002', 5, 'Test Cus. ', 1, 3, 'MY POS SOFT', '', NULL, '150.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 3, '19.5000', '19.5000', '0.0000', '169.5000', 'sent', 1, 1, '2015-10-10 19:19:55', NULL, 1, '2015-10-11 07:27:06'),
(1, '2015-10-10 22:56:00', 'QUOTE/2015/10/0001', 5, 'Test Cus. ', 1, 3, 'MY POS SOFT', '', NULL, '2000.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 3, '260.0000', '260.0000', '0.0000', '2260.0000', 'pending', 1, NULL, NULL, NULL, 1, '2015-10-11 07:27:06'),
(6, '2015-10-24 16:08:00', 'SERVICE/2015/10/0005', 5, 'Test Cus. ', 1, 3, 'MY POS SOFT', '', NULL, '450.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 3, '58.5000', '58.5000', '0.0000', '508.5000', 'pending', 1, 1, '2015-10-24 11:24:55', NULL, 1, '2015-11-05 19:42:53'),
(5, '2015-10-11 15:13:00', 'SERVICE/2015/10/0004', 1, 'Walk-in Customer', 1, 3, 'MY POS SOFT', '', NULL, '150.0000', '0.0000', '0.0000', NULL, '0.0000', '19.5000', 3, '22.0350', '41.5350', '0.0000', '191.5400', 'pending', 1, 1, '2015-10-14 04:30:41', NULL, 1, '2015-11-05 19:43:11'),
(4, '2015-10-11 14:53:00', 'SERVICE/2015/10/0003', 5, 'Test Cus. ', 1, 3, 'MY POS SOFT', '', NULL, '450.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 3, '58.5000', '58.5000', '0.0000', '508.5000', 'pending', 1, NULL, NULL, NULL, 1, '2015-11-05 19:43:21'),
(3, '2015-10-11 14:53:00', 'SERVICE/2015/10/0003', 5, 'Test Cus. ', 1, 3, 'MY POS SOFT', '', NULL, '450.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 3, '58.5000', '58.5000', '0.0000', '508.5000', 'pending', 1, 1, '2015-10-11 10:07:53', NULL, 1, '2015-11-05 19:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `sma_quote_items`
--

CREATE TABLE `sma_quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `product_brand` varchar(200) DEFAULT NULL,
  `product_model` varchar(200) DEFAULT NULL,
  `product_description` varchar(250) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_salary`
--

CREATE TABLE `sma_salary` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `year` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `gross_salary` decimal(15,2) NOT NULL,
  `payment_payroll` decimal(15,2) NOT NULL,
  `payment_other` decimal(15,2) NOT NULL,
  `absent_days` decimal(15,2) NOT NULL,
  `holiday_allowance` decimal(15,2) NOT NULL,
  `gross_holiday_allowance` decimal(15,2) NOT NULL,
  `payment_other_holiday_allowance` decimal(15,2) NOT NULL,
  `gross_absent_deduction` varchar(100) DEFAULT NULL,
  `payment_other_absent_deduction` varchar(100) DEFAULT NULL,
  `reference_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_sales`
--

CREATE TABLE `sma_sales` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `biller` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `staff_note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `product_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount_id` varchar(20) DEFAULT NULL,
  `total_discount` decimal(25,4) DEFAULT '0.0000',
  `order_discount` decimal(25,4) DEFAULT '0.0000',
  `product_tax` decimal(25,4) DEFAULT '0.0000',
  `order_tax_id` int(11) DEFAULT NULL,
  `order_tax` decimal(25,4) DEFAULT '0.0000',
  `total_tax` decimal(25,4) DEFAULT '0.0000',
  `shipping` decimal(25,4) DEFAULT '0.0000',
  `grand_total` decimal(25,4) NOT NULL,
  `sale_status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_term` tinyint(4) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_items` tinyint(4) DEFAULT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT '0',
  `paid` decimal(25,4) DEFAULT '0.0000',
  `return_id` int(11) DEFAULT NULL,
  `surcharge` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `return_sale_ref` varchar(55) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `return_sale_total` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `rounding` decimal(10,4) DEFAULT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `card_charge` decimal(13,2) DEFAULT '0.00',
  `card_charge_percentage` decimal(11,2) DEFAULT '0.00',
  `internal_ref` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sales`
--

INSERT INTO `sma_sales` (`id`, `date`, `reference_no`, `customer_id`, `customer`, `biller_id`, `biller`, `warehouse_id`, `note`, `staff_note`, `total`, `product_discount`, `order_discount_id`, `total_discount`, `order_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `shipping`, `grand_total`, `sale_status`, `payment_status`, `payment_term`, `due_date`, `created_by`, `updated_by`, `updated_at`, `total_items`, `pos`, `paid`, `return_id`, `surcharge`, `attachment`, `return_sale_ref`, `sale_id`, `return_sale_total`, `rounding`, `suspend_note`, `card_charge`, `card_charge_percentage`, `internal_ref`) VALUES
(1, '2018-09-26 04:38:00', 'SALE/2018/09/0017', 325, 'Tanveer Oils Ltd', 999999, 'Modcom IT Solutions', 1, '', '', '3350.0000', '0.0000', NULL, '0.0000', '0.0000', '435.5000', NULL, '0.0000', '435.5000', '0.0000', '3785.5000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 5, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, '0.00', '0.00', NULL),
(2, '2018-09-30 19:13:22', 'SALE/POS/2018/10/0060', 1511, 'Walk-in-customer', 999999, 'Modcom IT Solutions', 1, '', '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'completed', 'partial', 0, NULL, 1, NULL, NULL, 1, 1, '70.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, '0.00', NULL, NULL),
(3, '2018-09-30 19:19:32', 'SALE/POS/2018/10/0061', 1511, 'Walk-in-customer', 999999, 'Modcom IT Solutions', 1, '', '', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'completed', 'partial', 0, NULL, 1, NULL, NULL, 1, 1, '70.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, '0.00', NULL, NULL),
(4, '2018-09-30 19:21:05', 'SALE/POS/2018/10/0062', 1511, 'Walk-in-customer', 999999, 'Modcom IT Solutions', 1, '', '', '80.0000', '0.0000', NULL, '0.0000', '0.0000', '10.4000', NULL, '0.0000', '10.4000', '0.0000', '90.4000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '90.4000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, '0.00', NULL, NULL),
(5, '2018-09-30 20:03:33', 'SALE/POS/2018/10/0063', 1511, 'Walk-in-customer', 999999, 'Modcom IT Solutions', 1, '', '', '80.0000', '0.0000', NULL, '0.0000', '0.0000', '10.4000', NULL, '0.0000', '10.4000', '0.0000', '90.4000', 'completed', 'due', 0, NULL, 1, NULL, NULL, 1, 1, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, '0.00', NULL, NULL),
(7, '2018-10-03 08:19:00', 'SALE2018100019', 1511, 'Walk-in-customer', 999999, 'Modcom IT Solutions', 1, '', '', '80.0000', '0.0000', NULL, '0.0000', '0.0000', '10.4000', NULL, '0.0000', '10.4000', '0.0000', '90.4000', 'completed', 'pending', 0, NULL, 1, NULL, NULL, 1, 0, '0.0000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, '0.00', '0.00', NULL),
(8, '2018-10-02 22:21:00', 'SALE/POS2018100064', 1511, 'Walk-in-customer', 999999, 'Modcom IT Solutions', 1, '', '', '80.0000', '0.0000', NULL, '0.0000', '0.0000', '10.4000', NULL, '0.0000', '10.4000', '0.0000', '90.4000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '90.4000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, '0.00', NULL, NULL),
(9, '2018-10-02 22:27:35', 'SALEPOS2018100065', 1511, 'Walk-in-customer', 999999, 'Modcom IT Solutions', 1, '', '', '80.0000', '0.0000', NULL, '0.0000', '0.0000', '10.4000', NULL, '0.0000', '10.4000', '0.0000', '90.4000', 'completed', 'paid', 0, NULL, 1, NULL, NULL, 1, 1, '90.4000', NULL, '0.0000', NULL, NULL, NULL, '0.0000', '0.0000', NULL, '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_sale_items`
--

CREATE TABLE `sma_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `sale_item_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sale_items`
--

INSERT INTO `sma_sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_type`, `option_id`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `real_unit_price`, `sale_item_id`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`) VALUES
(1, 1, 27199, '48381', 'Targus 90W AC Adapter w/ 5 tips. APA70US, open box w/60 days warranty', 'combo', NULL, '670.0000', '757.1000', '5.0000', 1, '435.5000', 5, '13.0000%', '0', '0.0000', '3785.5000', '', '670.0000', NULL, 1, 'pc', '5.0000', NULL),
(2, 2, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 'standard', NULL, '0.0000', '0.0000', '1.0000', 1, '0.0000', 5, '13.0000%', '0', '0.0000', '0.0000', '', '0.0000', NULL, 1, 'pc', '1.0000', ''),
(3, 3, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 'standard', NULL, '0.0000', '0.0000', '1.0000', 1, '0.0000', 5, '13.0000%', '0', '0.0000', '0.0000', '', '0.0000', NULL, 1, 'pc', '1.0000', ''),
(4, 4, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 'standard', NULL, '80.0000', '90.4000', '1.0000', 1, '10.4000', 5, '13.0000%', '0', '0.0000', '90.4000', '', '80.0000', NULL, 1, 'pc', '1.0000', ''),
(5, 5, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 'standard', NULL, '80.0000', '90.4000', '1.0000', 1, '10.4000', 5, '13.0000%', '0', '0.0000', '90.4000', '', '80.0000', NULL, 1, 'pc', '1.0000', ''),
(7, 7, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 'standard', NULL, '80.0000', '90.4000', '1.0000', 1, '10.4000', 5, '13.0000%', '0', '0.0000', '90.4000', '', '80.0000', NULL, 1, 'pc', '1.0000', NULL),
(8, 8, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 'standard', NULL, '80.0000', '90.4000', '1.0000', 1, '10.4000', 5, '13.0000%', '0', '0.0000', '90.4000', '', '80.0000', NULL, 1, 'pc', '1.0000', ''),
(9, 9, 27183, '48398', 'SERVICE ID 6335 : HOD NOT DETECTED', 'standard', NULL, '80.0000', '90.4000', '1.0000', 1, '10.4000', 5, '13.0000%', '0', '0.0000', '90.4000', '', '80.0000', NULL, 1, 'pc', '1.0000', '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_service_type`
--

CREATE TABLE `sma_service_type` (
  `id` int(11) NOT NULL,
  `service_type` varchar(150) NOT NULL,
  `service_type_category` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sma_service_type_category`
--

CREATE TABLE `sma_service_type_category` (
  `id` int(11) NOT NULL,
  `service_type_category` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sma_sessions`
--

CREATE TABLE `sma_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_sessions`
--

INSERT INTO `sma_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1ec49b1rsgvrnmq6jrdnid4draluq8mu', '::1', 1547454214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373435333931373b6964656e746974797c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437343430393732223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223230626436663432646337343763313231626332643361363433303062336637223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a323a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31353a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373434343338323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a363a22746d6255726c223b733a35363a22687474703a2f2f6c6f63616c686f73742f61646d696e5f6170702f6173736574732f75706c6f6164732f646f63756d656e742f2e746d622f223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d733a33323a223762346339353266363661633434363835313632346666373536663062656135223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373434323239343b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a373a2275706c6f616473223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a303a7b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373435343231343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('6vab28o0h63l5opvjh6fmitncn21r36i', '::1', 1547609676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373630393233303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353434343730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223134306363663561316331666233303135633830313363363833643337643361223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31353a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a363a22746d6255726c223b733a35363a22687474703a2f2f6c6f63616c686f73742f61646d696e5f6170702f6173736574732f75706c6f6164732f646f63756d656e742f2e746d622f223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373630393637363b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('av625j7en9p0he2635c1g6jrhjsm21n2', '::1', 1547535669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373533313832303b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437343432323739223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('bd0uei8d0m8i72icnvgipj92afcq2oa7', '::1', 1547614454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373631303835313b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353434343730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223134306363663561316331666233303135633830313363363833643337643361223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31353a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a363a22746d6255726c223b733a35363a22687474703a2f2f6c6f63616c686f73742f61646d696e5f6170702f6173736574732f75706c6f6164732f646f63756d656e742f2e746d622f223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373631343435343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('bih8h0385otafr30m6115huccuo5llce', '::1', 1547545739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373534353638393b7265717565737465645f706167657c733a32373a2273797374656d5f73657474696e67732f757365725f67726f757073223b6964656e746974797c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353331383330223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('gdumbrcjdabb0c78o0kq2p6pabc2ffq9', '::1', 1547544477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373534343435373b7265717565737465645f706167657c733a32373a2273797374656d5f73657474696e67732f757365725f67726f757073223b6964656e746974797c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353331383330223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b),
('hvbm2in7q6iv8qhgk73q1m2rk6hidqla', '::1', 1547614459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373631343435373b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353434343730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223134306363663561316331666233303135633830313363363833643337643361223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31353a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a363a22746d6255726c223b733a35363a22687474703a2f2f6c6f63616c686f73742f61646d696e5f6170702f6173736574732f75706c6f6164732f646f63756d656e742f2e746d622f223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373631343435393b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('j039r0rcfn77elndhvdqi4a6nnfpn1g8', '::1', 1547550244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373534373437323b7265717565737465645f706167657c733a32373a2273797374656d5f73657474696e67732f757365725f67726f757073223b6964656e746974797c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353331383330223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223134306363663561316331666233303135633830313363363833643337643361223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a303a7b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373535303234343b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('k2lrdu1236s8v4uqbfkeh2kdl47rkplr', '::1', 1547544030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373534343033303b7265717565737465645f706167657c733a32313a22646f63756d656e742f66696c655f6d616e61676572223b),
('kjs7k216u9c8k20997emvra7pe4udsjs', '::1', 1547458152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373435373837323b6964656e746974797c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365725f69647c733a313a2233223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437343431313835223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2236223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223732343536356338396231303663386166656537383130323930323763336236223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a303a7b7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373435383135323b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('le6scb57nphnt6qnvdulns709kcj6d62', '::1', 1547610007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373630393732343b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353434343730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223134306363663561316331666233303135633830313363363833643337643361223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31353a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a363a22746d6255726c223b733a35363a22687474703a2f2f6c6f63616c686f73742f61646d696e5f6170702f6173736574732f75706c6f6164732f646f63756d656e742f2e746d622f223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373631303030373b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('m95a4m3hr6ibpu6qsnovi5mo1nhkftep', '::1', 1547459991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373435393737363b6964656e746974797c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365725f69647c733a313a2233223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437343431313835223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2236223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223732343536356338396231303663386166656537383130323930323763336236223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a303a7b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373435393939313b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('o04nldadpnjlng5uroulgg6tarbecv89', '::1', 1547461249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373436313139313b6964656e746974797c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365725f69647c733a313a2233223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437343431313835223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2236223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223732343536356338396231303663386166656537383130323930323763336236223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31353a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a363a22746d6255726c223b733a35363a22687474703a2f2f6c6f63616c686f73742f61646d696e5f6170702f6173736574732f75706c6f6164732f646f63756d656e742f2e746d622f223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373436313234393b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('rnkula1mkj1auf8bn1fci29o79mr015m', '::1', 1547459760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373435393436393b6964656e746974797c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a32303a2261646d696e4070617261676f6e2e636f6d2e6264223b757365725f69647c733a313a2233223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437343431313835223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2236223b77617265686f7573655f69647c733a313a2231223b766965775f72696768747c733a313a2231223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c4e3b73686f775f70726963657c4e3b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223732343536356338396231303663386166656537383130323930323763336236223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31343a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a303a7b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373435393736303b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('tps0qa4dre28tne763aapkt6snrrff91', '::1', 1547610033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373631303033333b7265717565737465645f706167657c733a303a22223b6964656e746974797c733a353a226f776e6572223b757365726e616d657c733a353a226f776e6572223b656d61696c7c733a31393a226f776e6572406d79706f73736f66742e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353437353434343730223b6c6173745f69707c733a333a223a3a31223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b77617265686f7573655f69647c4e3b766965775f72696768747c733a313a2230223b656469745f72696768747c733a313a2230223b616c6c6f775f646973636f756e747c733a313a2230223b62696c6c65725f69647c4e3b636f6d70616e795f69647c4e3b73686f775f636f73747c733a313a2230223b73686f775f70726963657c733a313a2230223b656c46696e6465724361636865737c613a333a7b733a383a225f6f7074734d4435223b733a33323a223134306363663561316331666233303135633830313363363833643337643361223b733a333a226c315f223b613a323a7b733a383a22726f6f7473746174223b613a313a7b733a33323a223937323535633233383064376236656532656630623966373862376230353934223b613a31353a7b733a373a2269736f776e6572223b623a303b733a323a227473223b693a313534373435383135323b733a343a226d696d65223b733a393a226469726563746f7279223b733a343a2272656164223b693a313b733a353a227772697465223b693a313b733a343a2273697a65223b693a303b733a343a2268617368223b733a353a226c315f5841223b733a343a226e616d65223b733a383a22646f63756d656e74223b733a363a22637373636c73223b733a32363a22656c66696e6465722d6e61766261722d726f6f742d6c6f63616c223b733a363a22746d6255726c223b733a35363a22687474703a2f2f6c6f63616c686f73742f61646d696e5f6170702f6173736574732f75706c6f6164732f646f63756d656e742f2e746d622f223b733a383a227569436d644d6170223b613a303a7b7d733a383a2264697361626c6564223b613a313a7b693a303b733a353a2263686d6f64223b7d733a383a22766f6c756d656964223b733a333a226c315f223b733a363a226c6f636b6564223b693a313b733a343a2264697273223b693a313b7d7d733a31353a224152434849564552535f4341434845223b613a323a7b733a363a22637265617465223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31333a227a6970417263686976655a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d733a373a2265787472616374223b613a313a7b733a31353a226170706c69636174696f6e2f7a6970223b613a333a7b733a333a22636d64223b733a31313a2270687066756e6374696f6e223b733a343a2261726763223b613a323a7b693a303b733a343a2273656c66223b693a313b733a31353a227a697041726368697665556e7a6970223b7d733a333a22657874223b733a333a227a6970223b7d7d7d7d733a31343a223a4c4153545f4143544956495459223b693a313534373631303030373b7d656c46696e6465724e6574566f6c756d65737c613a303a7b7d),
('uae79voehrbq4pjqnpmjk9qdkt2ugo5t', '::1', 1547465493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373436353439333b);

-- --------------------------------------------------------

--
-- Table structure for table `sma_settings`
--

CREATE TABLE `sma_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `accounting_method` tinyint(4) NOT NULL DEFAULT '0',
  `default_currency` varchar(3) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) DEFAULT NULL,
  `quote_prefix` varchar(20) DEFAULT NULL,
  `purchase_prefix` varchar(20) DEFAULT NULL,
  `transfer_prefix` varchar(20) DEFAULT NULL,
  `delivery_prefix` varchar(20) DEFAULT NULL,
  `payment_prefix` varchar(20) DEFAULT NULL,
  `return_prefix` varchar(20) DEFAULT NULL,
  `returnp_prefix` varchar(20) DEFAULT NULL,
  `expense_prefix` varchar(20) DEFAULT NULL,
  `item_addition` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `product_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `overselling` tinyint(1) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `timezone` varchar(100) DEFAULT NULL,
  `iwidth` int(11) NOT NULL DEFAULT '0',
  `iheight` int(11) NOT NULL,
  `twidth` int(11) NOT NULL,
  `theight` int(11) NOT NULL,
  `watermark` tinyint(1) DEFAULT NULL,
  `reg_ver` tinyint(1) DEFAULT NULL,
  `allow_reg` tinyint(1) DEFAULT NULL,
  `reg_notification` tinyint(1) DEFAULT NULL,
  `auto_reg` tinyint(1) DEFAULT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `mailpath` varchar(55) DEFAULT '/usr/sbin/sendmail',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(10) DEFAULT NULL,
  `corn` datetime DEFAULT NULL,
  `customer_group` int(11) NOT NULL,
  `default_email` varchar(100) NOT NULL,
  `mmode` tinyint(1) NOT NULL,
  `bc_fix` tinyint(4) NOT NULL DEFAULT '0',
  `auto_detect_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '1',
  `reference_format` tinyint(1) NOT NULL DEFAULT '1',
  `racks` tinyint(1) DEFAULT '0',
  `attributes` tinyint(1) NOT NULL DEFAULT '0',
  `product_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `decimals` tinyint(2) NOT NULL DEFAULT '2',
  `qty_decimals` tinyint(2) NOT NULL DEFAULT '2',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `invoice_view` tinyint(1) DEFAULT '0',
  `default_biller` int(11) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `rtl` tinyint(1) DEFAULT '0',
  `each_spent` decimal(15,4) DEFAULT NULL,
  `ca_point` tinyint(4) DEFAULT NULL,
  `each_sale` decimal(15,4) DEFAULT NULL,
  `sa_point` tinyint(4) DEFAULT NULL,
  `update` tinyint(1) DEFAULT '0',
  `sac` tinyint(1) DEFAULT '0',
  `display_all_products` tinyint(1) DEFAULT '0',
  `display_symbol` tinyint(1) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `remove_expired` tinyint(1) DEFAULT '0',
  `barcode_separator` varchar(2) NOT NULL DEFAULT '_',
  `set_focus` tinyint(1) NOT NULL DEFAULT '0',
  `price_group` int(11) DEFAULT NULL,
  `barcode_img` tinyint(1) NOT NULL DEFAULT '1',
  `ppayment_prefix` varchar(20) DEFAULT 'POP',
  `disable_editing` smallint(6) DEFAULT '90',
  `qa_prefix` varchar(55) DEFAULT NULL,
  `update_cost` tinyint(1) DEFAULT NULL,
  `code_prefix` varchar(25) DEFAULT NULL,
  `internal_price_group` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_settings`
--

INSERT INTO `sma_settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `accounting_method`, `default_currency`, `default_tax_rate`, `rows_per_page`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `delivery_prefix`, `payment_prefix`, `return_prefix`, `returnp_prefix`, `expense_prefix`, `item_addition`, `theme`, `product_serial`, `default_discount`, `product_discount`, `discount_method`, `tax1`, `tax2`, `overselling`, `restrict_user`, `restrict_calendar`, `timezone`, `iwidth`, `iheight`, `twidth`, `theight`, `watermark`, `reg_ver`, `allow_reg`, `reg_notification`, `auto_reg`, `protocol`, `mailpath`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `corn`, `customer_group`, `default_email`, `mmode`, `bc_fix`, `auto_detect_barcode`, `captcha`, `reference_format`, `racks`, `attributes`, `product_expiry`, `decimals`, `qty_decimals`, `decimals_sep`, `thousands_sep`, `invoice_view`, `default_biller`, `envato_username`, `purchase_code`, `rtl`, `each_spent`, `ca_point`, `each_sale`, `sa_point`, `update`, `sac`, `display_all_products`, `display_symbol`, `symbol`, `remove_expired`, `barcode_separator`, `set_focus`, `price_group`, `barcode_img`, `ppayment_prefix`, `disable_editing`, `qa_prefix`, `update_cost`, `code_prefix`, `internal_price_group`) VALUES
(1, 'fresh_mart_Logo_resiz4.jpg', '260_x_801.jpg', 'Paragon Group', 'english', 1, 0, 'BDT', 1, 10, '3.0.2.23', 0, 5, 'SALE', 'QUOTE', 'PO', 'TR', 'DO', 'IPAY', 'SR', 'PR', '', 0, 'default', 1, 1, 1, 1, 1, 0, 0, 1, 0, 'America/Toronto', 800, 800, 60, 60, 0, 0, 0, 0, NULL, 'mail', '/usr/sbin/sendmail', 'pop.gmail.com', 'contact@sma.tecdiary.org', 'jEFTM4T63AiQ9dsidxhPKt9CIg4HQjCN58n/RW9vmdC/UDXCzRLR469ziZ0jjpFlbOg43LyoSmpJLBkcAHh0Yw==', '25', NULL, NULL, 1, 'info@paragon.com.bd', 0, 4, 1, 0, 2, 1, 1, 0, 2, 2, '.', ',', 0, 999999, 'shoolindesign', 'd382ffd1-5419-4a40-adde-114aaacac984', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'BDT', 0, '_', 0, 1, 1, 'POP', 90, '', 0, '10', 'Partner Price');

-- --------------------------------------------------------

--
-- Table structure for table `sma_skrill`
--

CREATE TABLE `sma_skrill` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `account_email` varchar(255) NOT NULL DEFAULT 'testaccount2@moneybookers.com',
  `secret_word` varchar(20) NOT NULL DEFAULT 'mbtest',
  `skrill_currency` varchar(3) NOT NULL DEFAULT 'USD',
  `fixed_charges` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_my` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `extra_charges_other` decimal(25,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_skrill`
--

INSERT INTO `sma_skrill` (`id`, `active`, `account_email`, `secret_word`, `skrill_currency`, `fixed_charges`, `extra_charges_my`, `extra_charges_other`) VALUES
(1, 1, 'testaccount2@moneybookers.com', 'mbtest', 'USD', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_counts`
--

CREATE TABLE `sma_stock_counts` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `initial_file` varchar(50) NOT NULL,
  `final_file` varchar(50) DEFAULT NULL,
  `brands` varchar(50) DEFAULT NULL,
  `brand_names` varchar(100) DEFAULT NULL,
  `categories` varchar(50) DEFAULT NULL,
  `category_names` varchar(100) DEFAULT NULL,
  `note` text,
  `products` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `differences` int(11) DEFAULT NULL,
  `matches` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `finalized` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_stock_counts`
--

INSERT INTO `sma_stock_counts` (`id`, `date`, `reference_no`, `warehouse_id`, `type`, `initial_file`, `final_file`, `brands`, `brand_names`, `categories`, `category_names`, `note`, `products`, `rows`, `differences`, `matches`, `missing`, `created_by`, `updated_by`, `updated_at`, `finalized`) VALUES
(1, '2017-04-04 08:24:00', '', 1, 'full', '4dcb6431177a885c1c4b802280808d6a.csv', NULL, '', '', '', '', NULL, 4, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, '2017-05-31 11:27:00', '', 1, 'full', 'fd8a418e5e231e157a6f66b8129e2715.csv', NULL, '', '', '', '', NULL, 4, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_stock_count_items`
--

CREATE TABLE `sma_stock_count_items` (
  `id` int(11) NOT NULL,
  `stock_count_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_variant` varchar(55) DEFAULT NULL,
  `product_variant_id` int(11) DEFAULT NULL,
  `expected` decimal(15,4) NOT NULL,
  `counted` decimal(15,4) NOT NULL,
  `cost` decimal(25,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_bills`
--

CREATE TABLE `sma_suspended_bills` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL,
  `customer` varchar(55) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_tax_id` int(11) DEFAULT NULL,
  `total` decimal(25,4) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `suspend_note` varchar(255) DEFAULT NULL,
  `shipping` decimal(15,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_suspended_bills`
--

INSERT INTO `sma_suspended_bills` (`id`, `date`, `customer_id`, `customer`, `count`, `order_discount_id`, `order_tax_id`, `total`, `biller_id`, `warehouse_id`, `created_by`, `suspend_note`, `shipping`) VALUES
(1, '2017-03-24 19:45:23', 1, 'Walk-in Customer', 1, NULL, 5, '766.1272', 3, 1, 1, 'bbb', '0.0000'),
(2, '2017-03-24 19:45:25', 1, 'Walk-in Customer', 1, NULL, 5, '766.1272', 3, 1, 1, 'bbb', '0.0000'),
(3, '2017-03-24 19:46:23', 1, 'Walk-in Customer', 1, NULL, 5, '766.1272', 3, 1, 1, '454545', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_suspended_items`
--

CREATE TABLE `sma_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `net_unit_price` decimal(25,4) NOT NULL,
  `unit_price` decimal(25,4) NOT NULL,
  `quantity` decimal(15,4) DEFAULT '0.0000',
  `warehouse_id` int(11) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `item_discount` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) NOT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT NULL,
  `real_unit_price` decimal(25,4) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_suspended_items`
--

INSERT INTO `sma_suspended_items` (`id`, `suspend_id`, `product_id`, `product_code`, `product_name`, `net_unit_price`, `unit_price`, `quantity`, `warehouse_id`, `item_tax`, `tax_rate_id`, `tax`, `discount`, `item_discount`, `subtotal`, `serial_no`, `option_id`, `product_type`, `real_unit_price`, `product_unit_id`, `product_unit_code`, `unit_quantity`, `comment`) VALUES
(1, 1, 7, '47001', 'H0Q98EP#ABA HP EliteBook 8570w Intel i7-3520M 2.9GHz/8GB/320GB/DVDRW/WC', '599.9900', '677.9900', '1.0000', 1, '77.9987', 5, '13.0000%', '0', '0.0000', '677.9900', '', NULL, 'standard', '599.9900', 1, 'u1', '1.0000', ''),
(2, 2, 7, '47001', 'H0Q98EP#ABA HP EliteBook 8570w Intel i7-3520M 2.9GHz/8GB/320GB/DVDRW/WC', '599.9900', '677.9900', '1.0000', 1, '77.9987', 5, '13.0000%', '0', '0.0000', '677.9900', '', NULL, 'standard', '599.9900', 1, 'u1', '1.0000', ''),
(3, 3, 7, '47001', 'H0Q98EP#ABA HP EliteBook 8570w Intel i7-3520M 2.9GHz/8GB/320GB/DVDRW/WC', '599.9900', '677.9900', '1.0000', 1, '77.9987', 5, '13.0000%', '0', '0.0000', '677.9900', '', NULL, 'standard', '599.9900', 1, 'u1', '1.0000', '');

-- --------------------------------------------------------

--
-- Table structure for table `sma_tax_rates`
--

CREATE TABLE `sma_tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `rate` decimal(12,4) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_tax_rates`
--

INSERT INTO `sma_tax_rates` (`id`, `name`, `code`, `rate`, `type`) VALUES
(1, 'No Tax', 'NT', '0.0000', '2'),
(5, 'HST', 'HST', '13.0000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sma_time_control`
--

CREATE TABLE `sma_time_control` (
  `time_control_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `control_date` date NOT NULL,
  `control_in` time NOT NULL,
  `control_out` time DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Supercedes rule (e.g. specific date only) from time_control_master table';

-- --------------------------------------------------------

--
-- Table structure for table `sma_time_control_master`
--

CREATE TABLE `sma_time_control_master` (
  `time_control_master_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `control_day` tinyint(1) NOT NULL COMMENT '1 (for Monday) through 7 (for Sunday)',
  `control_in` time NOT NULL,
  `control_out` time DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Master scheduler rule';

-- --------------------------------------------------------

--
-- Table structure for table `sma_time_schedule`
--

CREATE TABLE `sma_time_schedule` (
  `time_schedule_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time DEFAULT NULL,
  `time_date` date NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_schedule_status_id` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_time_schedule`
--

INSERT INTO `sma_time_schedule` (`time_schedule_id`, `user_id`, `time_in`, `time_out`, `time_date`, `ip_address`, `time_schedule_status_id`) VALUES
(1, 6, '07:36:41', '07:37:06', '2016-11-01', '72.137.1.19', 3),
(2, 6, '07:38:28', '00:00:00', '2016-11-01', '72.137.1.19', 3),
(3, 5, '06:37:12', '06:38:47', '2016-12-01', '99.238.201.52', 3),
(4, 5, '18:54:07', '18:54:18', '2017-01-09', '99.238.201.52', 3),
(5, 5, '18:54:27', NULL, '2017-01-09', '99.238.201.52', 3),
(6, 1, '06:56:58', '07:33:36', '2017-02-24', '99.238.201.52', 3),
(7, 1, '07:48:34', '07:48:45', '2017-02-24', '99.238.201.52', 3),
(8, 10, '01:31:06', '01:31:16', '2017-03-02', '::1', 3),
(9, 10, '01:31:26', '01:31:39', '2017-03-02', '::1', 3),
(10, 1, '08:34:50', '08:35:07', '2017-03-03', '::1', 3),
(11, 1, '02:45:15', '06:52:16', '2017-03-06', '::1', 3),
(15, 2, '07:56:30', '07:57:54', '2017-03-20', '::1', 1),
(16, 1, '07:59:18', '08:03:18', '2017-03-20', '::1', 3),
(17, 1, '08:07:58', '08:18:58', '2017-03-20', '::1', 3),
(18, 2, '09:56:55', '10:06:20', '2017-03-20', '27.54.161.21', 1),
(19, 2, '10:14:45', '10:15:18', '2017-03-20', '27.54.161.21', 3),
(20, 2, '10:22:18', '10:24:54', '2017-03-20', '27.54.161.21', 3),
(21, 1, '10:56:47', '10:56:53', '2017-03-20', '27.54.161.21', 3),
(22, 1, '07:32:33', NULL, '2017-03-21', '99.238.201.52', 3),
(23, 3, '07:34:34', NULL, '2017-03-21', '99.238.201.52', 3),
(24, 1, '00:46:17', '00:46:21', '2018-05-19', '::1', 3),
(25, 1, '01:00:47', NULL, '2018-06-03', '::1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sma_time_schedule_status`
--

CREATE TABLE `sma_time_schedule_status` (
  `time_schedule_status_id` tinyint(2) UNSIGNED NOT NULL,
  `handle` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_time_schedule_status`
--

INSERT INTO `sma_time_schedule_status` (`time_schedule_status_id`, `handle`, `name`) VALUES
(1, 'PAID', 'Paid'),
(2, 'NOT_PAID', 'Not Paid'),
(3, 'FOR_REVIEW', 'For Review');

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfers`
--

CREATE TABLE `sma_transfers` (
  `id` int(11) NOT NULL,
  `transfer_no` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `total` decimal(25,4) DEFAULT NULL,
  `total_tax` decimal(25,4) DEFAULT NULL,
  `grand_total` decimal(25,4) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending',
  `shipping` decimal(25,4) NOT NULL DEFAULT '0.0000',
  `attachment` varchar(55) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_transfer_items`
--

CREATE TABLE `sma_transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `item_tax` decimal(25,4) DEFAULT NULL,
  `net_unit_cost` decimal(25,4) DEFAULT NULL,
  `subtotal` decimal(25,4) DEFAULT NULL,
  `quantity_balance` decimal(15,4) NOT NULL,
  `unit_cost` decimal(25,4) DEFAULT NULL,
  `real_unit_cost` decimal(25,4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `product_unit_code` varchar(10) DEFAULT NULL,
  `unit_quantity` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_units`
--

CREATE TABLE `sma_units` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(1) DEFAULT NULL,
  `unit_value` varchar(55) DEFAULT NULL,
  `operation_value` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_units`
--

INSERT INTO `sma_units` (`id`, `code`, `name`, `base_unit`, `operator`, `unit_value`, `operation_value`) VALUES
(1, 'pc', 'PC', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sma_users`
--

CREATE TABLE `sma_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED DEFAULT NULL,
  `biller_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `show_cost` tinyint(1) DEFAULT '0',
  `show_price` tinyint(1) DEFAULT '0',
  `award_points` int(11) DEFAULT '0',
  `view_right` tinyint(1) NOT NULL DEFAULT '0',
  `edit_right` tinyint(1) NOT NULL DEFAULT '0',
  `allow_discount` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_users`
--

INSERT INTO `sma_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`, `warehouse_id`, `biller_id`, `company_id`, `show_cost`, `show_price`, `award_points`, `view_right`, `edit_right`, `allow_discount`) VALUES
(1, 0x3a3a31, 0x0000, 'owner', '36911a652dc8dcd6d1fc08fda7e049b0adc0a0a8', NULL, 'owner@mypossoft.com', NULL, NULL, NULL, '9bdd01e4d1b165fdc400a7ba1b3a10f4e2ffe074', 1351661704, 1547609239, 1, 'Owner', 'Owner', 'Stock Manager', '012345678', NULL, 'male', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(2, NULL, 0x32372e35342e3136312e3231, 'aa123', 'e134a227e72b35e4d64b1f7d873af127e19c3616', NULL, 'aa@aa.com', NULL, NULL, NULL, NULL, 1490018098, 1490018098, 1, 'Jay', 'Sheth', 'Emerging Coders', '123456780', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0),
(3, 0x3a3a31, 0x39392e3233382e3230312e3532, 'admin', '5d0cbb9e07b7325f5944315eb6ec428d8655da91', NULL, 'admin@paragon.com.bd', NULL, NULL, NULL, NULL, 1490095554, 1547457937, 1, 'Admin', '01', 'Modcom', '4168574502', NULL, 'male', 6, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0),
(4, 0x32372e35342e3136312e3734, 0x32372e35342e3136312e3734, 'akash_varlani', '3329d8443cdab2f3c60e08c5f3db0b72432e2d52', NULL, 'varlani.akash85@gmail.com', NULL, NULL, NULL, NULL, 1490095953, 1490096256, 1, 'akash', 'VARLANI', 'emerging coders', '1234567890', NULL, 'male', 1, 0, 0, NULL, 0, 0, 0, 1, 0, 0),
(5, 0x3a3a31, 0x3a3a31, 'test', '4844a60f85339035b9985f2ebcd625c8eb1ddba0', NULL, 't@t.com', NULL, NULL, NULL, NULL, 1523333157, 1526554514, 1, 'Test', '001', 'PG', '12345678911', NULL, 'male', 5, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sma_user_logins`
--

CREATE TABLE `sma_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_user_logins`
--

INSERT INTO `sma_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(316, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-10-27 06:22:11'),
(317, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-10-28 05:04:38'),
(318, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-10-29 03:39:33'),
(319, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-04 10:11:20'),
(320, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-04 10:16:50'),
(321, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-06 08:49:41'),
(322, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-07 03:53:39'),
(323, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-07 08:30:33'),
(324, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-07 08:41:08'),
(325, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-07 08:41:44'),
(326, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-07 08:57:47'),
(327, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-10 06:17:41'),
(328, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-10 06:18:18'),
(329, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-10 06:26:43'),
(330, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-10 09:01:24'),
(331, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-10 09:01:58'),
(332, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-11 03:36:45'),
(333, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-12 03:40:59'),
(334, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-12 03:53:21'),
(335, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-12 03:54:08'),
(336, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-12 05:16:59'),
(337, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-12 06:09:55'),
(338, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-12 06:50:33'),
(339, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-12 07:00:30'),
(340, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-12 10:51:54'),
(341, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-12 11:22:01'),
(342, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-13 03:39:13'),
(343, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-13 10:37:57'),
(344, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-14 03:22:21'),
(345, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-14 03:28:43'),
(346, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-14 03:36:31'),
(347, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-14 03:41:10'),
(348, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-14 04:29:55'),
(349, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-14 07:49:51'),
(350, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-14 08:49:31'),
(351, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-14 08:56:04'),
(352, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-15 05:19:54'),
(353, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-11-17 07:01:51'),
(354, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-17 07:11:54'),
(355, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-18 07:04:44'),
(356, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-18 10:18:09'),
(357, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-19 03:14:08'),
(358, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-19 08:46:43'),
(359, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-20 07:07:14'),
(360, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-26 08:37:44'),
(361, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-11-27 02:57:19'),
(362, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-01 06:59:44'),
(363, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-02 08:48:32'),
(364, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-03 03:30:50'),
(365, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-08 05:21:42'),
(366, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-08 05:25:39'),
(367, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-08 07:24:32'),
(368, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-09 04:02:41'),
(369, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-09 07:12:12'),
(370, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-09 07:20:15'),
(371, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-10 03:22:27'),
(372, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-11 06:16:07'),
(373, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-11 06:18:12'),
(374, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-11 06:18:44'),
(375, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-11 06:21:04'),
(376, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-11 06:24:19'),
(377, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-11 06:27:24'),
(378, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-11 06:29:38'),
(379, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-11 06:32:32'),
(380, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-11 06:36:52'),
(381, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2018-12-11 06:52:14'),
(382, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-11 06:53:00'),
(383, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-22 10:26:01'),
(384, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-22 10:26:49'),
(385, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-23 03:52:38'),
(386, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-23 08:36:50'),
(387, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-25 06:32:49'),
(388, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2018-12-26 03:10:32'),
(389, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-13 03:28:00'),
(390, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-13 04:53:03'),
(391, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-14 03:11:57'),
(392, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2019-01-14 04:01:44'),
(393, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-14 04:07:25'),
(394, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2019-01-14 04:08:31'),
(395, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-14 04:30:43'),
(396, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2019-01-14 04:32:06'),
(397, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-14 04:42:52'),
(398, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2019-01-14 04:44:56'),
(399, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2019-01-14 04:46:25'),
(400, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-14 05:04:39'),
(401, 3, NULL, 0x3a3a31, 'admin@paragon.com.bd', '2019-01-14 09:25:37'),
(402, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-15 05:57:10'),
(403, 1, NULL, 0x3a3a31, 'owner@mypossoft.com', '2019-01-15 09:27:50'),
(404, 1, NULL, 0x3a3a31, 'owner', '2019-01-16 03:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `sma_variants`
--

CREATE TABLE `sma_variants` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses`
--

CREATE TABLE `sma_warehouses` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `price_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses`
--

INSERT INTO `sma_warehouses` (`id`, `code`, `name`, `address`, `map`, `phone`, `email`, `price_group_id`) VALUES
(1, 'MW', 'Paragon House', '<p>House-5,Mohakhail C/A</p><p>Dhaka</p>', NULL, '012345678', 'info@paragon.com.bd', 1),
(2, 'MC', 'Modcom College', '<p>281 College St. </p><p>Toronto</p>', NULL, '0105292122', 'modcomc@gmail.com', 1),
(3, 'HT', 'Hitech Direct', '<p>314 Collge st. Toronto</p>', NULL, '', 'hitechdirectc@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products`
--

CREATE TABLE `sma_warehouses_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL,
  `avg_cost` decimal(25,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_warehouses_products`
--

INSERT INTO `sma_warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`, `rack`, `avg_cost`) VALUES
(1, 27190, 1, '5.0000', NULL, '29.4000'),
(2, 27184, 1, '1.0000', NULL, '28.0000'),
(3, 27199, 1, '0.0000', NULL, '9.8800'),
(4, 27199, 2, '0.0000', NULL, '9.8800'),
(5, 27199, 3, '0.0000', NULL, '9.8800'),
(6, 27186, 1, '18.0000', NULL, '65.0000'),
(7, 27183, 1, '63.0000', NULL, '70.0000'),
(8, 27198, 1, '0.0000', NULL, '12.0000'),
(9, 27198, 2, '0.0000', NULL, '12.0000'),
(10, 27198, 3, '0.0000', NULL, '12.0000'),
(11, 27183, 2, '0.0000', NULL, '70.0000'),
(12, 27183, 3, '0.0000', NULL, '70.0000'),
(13, 27186, 2, '0.0000', NULL, '65.0000'),
(14, 27186, 3, '0.0000', NULL, '65.0000'),
(15, 27190, 2, '0.0000', NULL, '29.4000'),
(16, 27190, 3, '0.0000', NULL, '29.4000');

-- --------------------------------------------------------

--
-- Table structure for table `sma_warehouses_products_variants`
--

CREATE TABLE `sma_warehouses_products_variants` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` decimal(15,4) NOT NULL,
  `rack` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sma_weight_details`
--

CREATE TABLE `sma_weight_details` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `year` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `standard_weight` varchar(100) DEFAULT NULL,
  `current_weight` varchar(25) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sma_weight_details`
--

INSERT INTO `sma_weight_details` (`id`, `employee_id`, `created_by`, `year`, `month`, `start_date`, `end_date`, `created_date`, `standard_weight`, `current_weight`, `reference_no`) VALUES
(23, 'PG000004', NULL, '2016', 'January', '2018-01-10', '1969-12-31', NULL, '77', '78', '2016_January');

-- --------------------------------------------------------

--
-- Table structure for table `table 82`
--

CREATE TABLE `table 82` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(14) DEFAULT NULL,
  `COL 3` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 82`
--

INSERT INTO `table 82` (`COL 1`, `COL 2`, `COL 3`) VALUES
('id', 'District', 'Division'),
('1', 'Barguna  ', 'Barisal'),
('2', 'Barisal  ', 'Barisal'),
('3', 'Bhola  ', 'Barisal'),
('4', 'Jhalokati  ', 'Barisal'),
('5', 'Patuakhali  ', 'Barisal'),
('6', 'Pirojpur  ', 'Barisal'),
('7', 'Bandarban  ', 'Chittagong'),
('8', 'Brahmanbaria  ', 'Chittagong'),
('9', 'Chandpur  ', 'Chittagong'),
('10', 'Chittagong  ', 'Chittagong'),
('11', 'Comilla  ', 'Chittagong'),
('12', 'Cox\'s Bazar  ', 'Chittagong'),
('13', 'Feni  ', 'Chittagong'),
('14', 'Khagrachhari  ', 'Chittagong'),
('15', 'Lakshmipur  ', 'Chittagong'),
('16', 'Noakhali  ', 'Chittagong'),
('17', 'Rangamati  ', 'Chittagong'),
('18', 'Dhaka  ', 'Dhaka'),
('19', 'Faridpur  ', 'Dhaka'),
('20', 'Gazipur  ', 'Dhaka'),
('21', 'Gopalganj  ', 'Dhaka'),
('22', 'Jamalpur  ', 'Dhaka'),
('23', 'Kishoreganj  ', 'Dhaka'),
('24', 'Madaripur  ', 'Dhaka'),
('25', 'Manikganj  ', 'Dhaka'),
('26', 'Munshiganj  ', 'Dhaka'),
('27', 'Mymensingh  ', 'Dhaka'),
('28', 'Narayanganj  ', 'Dhaka'),
('29', 'Narsingdi  ', 'Dhaka'),
('30', 'Netrakona  ', 'Dhaka'),
('31', 'Rajbari  ', 'Dhaka'),
('32', 'Shariatpur  ', 'Dhaka'),
('33', 'Sherpur  ', 'Dhaka'),
('34', 'Tangail  ', 'Dhaka'),
('35', 'Bagerhat  ', 'Khulna'),
('36', 'Chuadanga  ', 'Khulna'),
('37', 'Jessore  ', 'Khulna'),
('38', 'Jhenaidah  ', 'Khulna'),
('39', 'Khulna  ', 'Khulna'),
('40', 'Kushtia  ', 'Khulna'),
('41', 'Magura  ', 'Khulna'),
('42', 'Meherpur  ', 'Khulna'),
('43', 'Narail  ', 'Khulna'),
('44', 'Satkhira  ', 'Khulna'),
('45', 'Bogra  ', 'Rajshahi'),
('46', 'Joypurhat  ', 'Rajshahi'),
('47', 'Naogaon  ', 'Rajshahi'),
('48', 'Natore  ', 'Rajshahi'),
('49', 'Nawabganj  ', 'Rajshahi'),
('50', 'Pabna  ', 'Rajshahi'),
('51', 'Rajshahi  ', 'Rajshahi'),
('52', 'Sirajganj  ', 'Rajshahi'),
('53', 'Dinajpur  ', 'Rangpur'),
('54', 'Gaibandha  ', 'Rangpur'),
('55', 'Kurigram  ', 'Rangpur'),
('56', 'Lalmonirhat  ', 'Rangpur'),
('57', 'Nilphamari  ', 'Rangpur'),
('58', 'Panchagarh  ', 'Rangpur'),
('59', 'Rangpur  ', 'Rangpur'),
('60', 'Thakurgaon  ', 'Rangpur'),
('61', 'Habiganj  ', 'Sylhet'),
('62', 'Moulvibazar  ', 'Sylhet'),
('63', 'Sunamganj  ', 'Sylhet'),
('64', 'Sylhet  ', 'Sylhet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adjustment_id` (`adjustment_id`);

--
-- Indexes for table `sma_bills`
--
ALTER TABLE `sma_bills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`,`operator_id`,`mobile_number`,`year`,`month`);

--
-- Indexes for table `sma_brands`
--
ALTER TABLE `sma_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `sma_categories`
--
ALTER TABLE `sma_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_companies`
--
ALTER TABLE `sma_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_id_2` (`group_id`);

--
-- Indexes for table `sma_company`
--
ALTER TABLE `sma_company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `sma_costing`
--
ALTER TABLE `sma_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_designations`
--
ALTER TABLE `sma_designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `sma_districts`
--
ALTER TABLE `sma_districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_doctype`
--
ALTER TABLE `sma_doctype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sma_documents`
--
ALTER TABLE `sma_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sma_document_movement`
--
ALTER TABLE `sma_document_movement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`document_id`);

--
-- Indexes for table `sma_employees`
--
ALTER TABLE `sma_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sma_employees_payment`
--
ALTER TABLE `sma_employees_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indexes for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `sma_groups`
--
ALTER TABLE `sma_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_guards`
--
ALTER TABLE `sma_guards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD UNIQUE KEY `mobile_number` (`mobile_number`);

--
-- Indexes for table `sma_keys`
--
ALTER TABLE `sma_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_operators`
--
ALTER TABLE `sma_operators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  ADD PRIMARY KEY (`ref_id`);

--
-- Indexes for table `sma_packages`
--
ALTER TABLE `sma_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `sma_payments`
--
ALTER TABLE `sma_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_paypal`
--
ALTER TABLE `sma_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_pos_settings`
--
ALTER TABLE `sma_pos_settings`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `sma_printers`
--
ALTER TABLE `sma_printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_products`
--
ALTER TABLE `sma_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `price_group_id` (`price_group_id`);

--
-- Indexes for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quote_id` (`quote_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_salary`
--
ALTER TABLE `sma_salary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`year`,`month`);

--
-- Indexes for table `sma_sales`
--
ALTER TABLE `sma_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`,`sale_id`),
  ADD KEY `sale_id_2` (`sale_id`,`product_id`);

--
-- Indexes for table `sma_service_type`
--
ALTER TABLE `sma_service_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_type_category` (`service_type_category`);

--
-- Indexes for table `sma_service_type_category`
--
ALTER TABLE `sma_service_type_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_sessions`
--
ALTER TABLE `sma_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sma_settings`
--
ALTER TABLE `sma_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sma_skrill`
--
ALTER TABLE `sma_skrill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_count_id` (`stock_count_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_time_control`
--
ALTER TABLE `sma_time_control`
  ADD PRIMARY KEY (`time_control_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `control_date` (`control_date`);

--
-- Indexes for table `sma_time_control_master`
--
ALTER TABLE `sma_time_control_master`
  ADD PRIMARY KEY (`time_control_master_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `control_day` (`control_day`);

--
-- Indexes for table `sma_time_schedule`
--
ALTER TABLE `sma_time_schedule`
  ADD PRIMARY KEY (`time_schedule_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `time_schedule_ibfk1` (`time_schedule_status_id`);

--
-- Indexes for table `sma_time_schedule_status`
--
ALTER TABLE `sma_time_schedule_status`
  ADD PRIMARY KEY (`time_schedule_status_id`),
  ADD UNIQUE KEY `handle` (`handle`);

--
-- Indexes for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sma_units`
--
ALTER TABLE `sma_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_unit` (`base_unit`);

--
-- Indexes for table `sma_users`
--
ALTER TABLE `sma_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`,`warehouse_id`,`biller_id`),
  ADD KEY `group_id_2` (`group_id`,`company_id`);

--
-- Indexes for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_variants`
--
ALTER TABLE `sma_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `sma_weight_details`
--
ALTER TABLE `sma_weight_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sma_addresses`
--
ALTER TABLE `sma_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_adjustments`
--
ALTER TABLE `sma_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_adjustment_items`
--
ALTER TABLE `sma_adjustment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_bills`
--
ALTER TABLE `sma_bills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4493;
--
-- AUTO_INCREMENT for table `sma_brands`
--
ALTER TABLE `sma_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `sma_calendar`
--
ALTER TABLE `sma_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_captcha`
--
ALTER TABLE `sma_captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_categories`
--
ALTER TABLE `sma_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;
--
-- AUTO_INCREMENT for table `sma_combo_items`
--
ALTER TABLE `sma_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sma_companies`
--
ALTER TABLE `sma_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000;
--
-- AUTO_INCREMENT for table `sma_company`
--
ALTER TABLE `sma_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `sma_costing`
--
ALTER TABLE `sma_costing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `sma_currencies`
--
ALTER TABLE `sma_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sma_customer_groups`
--
ALTER TABLE `sma_customer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sma_date_format`
--
ALTER TABLE `sma_date_format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sma_deliveries`
--
ALTER TABLE `sma_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_deposits`
--
ALTER TABLE `sma_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_designations`
--
ALTER TABLE `sma_designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;
--
-- AUTO_INCREMENT for table `sma_districts`
--
ALTER TABLE `sma_districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=672;
--
-- AUTO_INCREMENT for table `sma_doctype`
--
ALTER TABLE `sma_doctype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `sma_documents`
--
ALTER TABLE `sma_documents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2333;
--
-- AUTO_INCREMENT for table `sma_document_movement`
--
ALTER TABLE `sma_document_movement`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sma_employees`
--
ALTER TABLE `sma_employees`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=693;
--
-- AUTO_INCREMENT for table `sma_employees_payment`
--
ALTER TABLE `sma_employees_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;
--
-- AUTO_INCREMENT for table `sma_expenses`
--
ALTER TABLE `sma_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_expense_categories`
--
ALTER TABLE `sma_expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_gift_cards`
--
ALTER TABLE `sma_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sma_gift_card_topups`
--
ALTER TABLE `sma_gift_card_topups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_groups`
--
ALTER TABLE `sma_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sma_guards`
--
ALTER TABLE `sma_guards`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sma_keys`
--
ALTER TABLE `sma_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_login_attempts`
--
ALTER TABLE `sma_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_notifications`
--
ALTER TABLE `sma_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_operators`
--
ALTER TABLE `sma_operators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `sma_order_ref`
--
ALTER TABLE `sma_order_ref`
  MODIFY `ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_packages`
--
ALTER TABLE `sma_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `sma_payments`
--
ALTER TABLE `sma_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `sma_permissions`
--
ALTER TABLE `sma_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sma_pos_register`
--
ALTER TABLE `sma_pos_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sma_price_groups`
--
ALTER TABLE `sma_price_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sma_printers`
--
ALTER TABLE `sma_printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_products`
--
ALTER TABLE `sma_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27200;
--
-- AUTO_INCREMENT for table `sma_product_photos`
--
ALTER TABLE `sma_product_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_product_prices`
--
ALTER TABLE `sma_product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_product_variants`
--
ALTER TABLE `sma_product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_purchases`
--
ALTER TABLE `sma_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sma_purchase_items`
--
ALTER TABLE `sma_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sma_quotes`
--
ALTER TABLE `sma_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_quote_items`
--
ALTER TABLE `sma_quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_salary`
--
ALTER TABLE `sma_salary`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_sales`
--
ALTER TABLE `sma_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sma_sale_items`
--
ALTER TABLE `sma_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sma_service_type`
--
ALTER TABLE `sma_service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_service_type_category`
--
ALTER TABLE `sma_service_type_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_stock_counts`
--
ALTER TABLE `sma_stock_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sma_stock_count_items`
--
ALTER TABLE `sma_stock_count_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_suspended_bills`
--
ALTER TABLE `sma_suspended_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sma_suspended_items`
--
ALTER TABLE `sma_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sma_tax_rates`
--
ALTER TABLE `sma_tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sma_time_control`
--
ALTER TABLE `sma_time_control`
  MODIFY `time_control_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_time_control_master`
--
ALTER TABLE `sma_time_control_master`
  MODIFY `time_control_master_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_time_schedule`
--
ALTER TABLE `sma_time_schedule`
  MODIFY `time_schedule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sma_time_schedule_status`
--
ALTER TABLE `sma_time_schedule_status`
  MODIFY `time_schedule_status_id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sma_transfers`
--
ALTER TABLE `sma_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_transfer_items`
--
ALTER TABLE `sma_transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_units`
--
ALTER TABLE `sma_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sma_users`
--
ALTER TABLE `sma_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sma_user_logins`
--
ALTER TABLE `sma_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
--
-- AUTO_INCREMENT for table `sma_variants`
--
ALTER TABLE `sma_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_warehouses`
--
ALTER TABLE `sma_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sma_warehouses_products`
--
ALTER TABLE `sma_warehouses_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sma_warehouses_products_variants`
--
ALTER TABLE `sma_warehouses_products_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sma_weight_details`
--
ALTER TABLE `sma_weight_details`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sma_time_control`
--
ALTER TABLE `sma_time_control`
  ADD CONSTRAINT `time_control_ibfk1` FOREIGN KEY (`user_id`) REFERENCES `sma_users` (`id`);

--
-- Constraints for table `sma_time_control_master`
--
ALTER TABLE `sma_time_control_master`
  ADD CONSTRAINT `time_control_master_ibfk1` FOREIGN KEY (`user_id`) REFERENCES `sma_users` (`id`);

--
-- Constraints for table `sma_time_schedule`
--
ALTER TABLE `sma_time_schedule`
  ADD CONSTRAINT `sma_time_schedule_ibfk_1` FOREIGN KEY (`time_schedule_status_id`) REFERENCES `sma_time_schedule_status` (`time_schedule_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
