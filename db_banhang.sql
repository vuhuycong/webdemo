-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 06:14 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(22, 22, '2020-07-14', 18440000, 'COD', 'vsdfsdf', '2020-07-14 03:34:26', '2020-07-14 03:34:26'),
(21, 21, '2020-07-14', 29430000, 'COD', 'fdsfsdf', '2020-07-14 03:30:56', '2020-07-14 03:30:56'),
(20, 20, '2020-07-14', 18090000, 'COD', 'sadfasdf', '2020-07-14 03:30:07', '2020-07-14 03:30:07'),
(19, 19, '2020-07-14', 10290000, 'COD', 'ikjsdfgksj', '2020-07-14 03:27:20', '2020-07-14 03:27:20'),
(18, 18, '2020-07-14', 18440000, NULL, 'ádasd', '2020-07-14 03:13:17', '2020-07-14 03:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(25, 22, 2, 1, 18440000, '2020-07-14 03:34:26', '2020-07-14 03:34:26'),
(24, 21, 12, 1, 10990000, '2020-07-14 03:30:56', '2020-07-14 03:30:56'),
(23, 21, 2, 1, 18440000, '2020-07-14 03:30:56', '2020-07-14 03:30:56'),
(22, 20, 3, 1, 18090000, '2020-07-14 03:30:07', '2020-07-14 03:30:07'),
(21, 19, 1, 1, 10290000, '2020-07-14 03:27:20', '2020-07-14 03:27:20'),
(20, 18, 2, 1, 18440000, '2020-07-14 03:13:17', '2020-07-14 03:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(22, 'P', 'nữ', 'dsdf@gmail.com', 'sdfsdf', '43543', 'vsdfsdf', '2020-07-14 03:34:26', '2020-07-14 03:34:26'),
(20, 'Công', 'Công', 'fdjksh@gmail.com', 'fsdfdsf', '432412343', 'sadfasdf', '2020-07-14 03:30:07', '2020-07-14 03:30:07'),
(21, 'Công', 'Công', 'jewrgf@gmail.com', 'sdfsdf', '43254', 'fdsfsdf', '2020-07-14 03:30:56', '2020-07-14 03:30:56'),
(19, 'Công', 'Công', 'asdasd@gmail.com', 'ádassdg', '2354435', 'ikjsdfgksj', '2020-07-14 03:27:20', '2020-07-14 03:27:20'),
(18, 'Công', 'Công', 'cong@gmail.com', 'thái nguyên', '123123', 'ádasd', '2020-07-14 03:13:17', '2020-07-14 03:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `create_at`, `update_at`) VALUES
(1, 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam \"Bánh trung thu Bơ Sữa HongKong\".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-03-11 06:20:23', '0000-00-00 00:00:00'),
(2, 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(3, 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(4, 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(5, 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(1, 'Asus VivoBook X409FA i3', 1, 'Laptop trang bị CPU Intel Core i3 kết hợp với RAM 4 GB hỗ trợ nâng cấp tối đa lên 20 GB. Cấu hình này có thể sử dụng ổn định các ứng dụng học tập, văn phòng phổ biến hiện nay, lướt web xem phim, giải trí mượt mà. ', 10290000, 0, 'asus1.jpg', 'chiếc', 1, '2020-07-07 03:00:16', '2020-07-08 03:00:16'),
(2, 'Asus Zenbook UX333FA i5', 1, 'Asus ZenBook UX333FA i5 8265U 8GB (A4017T) là chiếc laptop mỏng nhẹ dành cho các doanh nhân, người làm việc trong lĩnh vực sáng tạo hoặc bất kỳ ai mong muốn sở hữu một chiếc laptop có thiết kế sang trọng, mỏng nhẹ cùng cấu hình mạnh mẽ.', 20490000, 18440000, 'asus2.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(3, 'Lenovo IdeaPad Slim 3 14IIL05 i7 ', 6, 'Sự lựa chọn tuyệt vời trong phân khúc tầm trung gọi tên laptop Lenovo IdeaPad 3 14IIL05 i7 hứa hẹn sẽ đáp ứng tốt nhu cầu sử dụng laptop thường ngày của dân văn phòng và đặc biệt là các bạn sinh viên đang tìm kiếm thiết bị hỗ trợ học thiết kế đồ hoạ.', 18790000, 18090000, 'lenovo1.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(4, 'Lenovo ThinkBook 14IML i3', 6, 'Nếu bạn là nhân viên văn phòng cần một chiếc laptop có độ bảo mật cao cũng như xử lý tác vụ mạnh mẽ hơn thì chiếc laptop Lenovo ThinkBook 14IML i3 (20RV00B7VN) hoàn toàn có thể đáp ứng được nhu cầu đó. Với giá thành rẻ, hiệu năng tốt thì đây quả là sản phẩm laptop văn phòng đáng để xem qua. ', 13490000, 0, 'lenovo2.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(5, 'HP Pavilion 15 cs3010TU i3', 4, 'Laptop HP Pavilion 15 cs3010TU đủ mỏng để theo bạn bất cứ nơi nào và đủ mạnh mẽ để vượt qua ngày dài, phù hợp với mọi đối tượng, đặc biệt là học sinh, sinh viên hay nhân viên văn phòng.', 13590000, 0, 'hp1.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(6, 'HP Envy 13 aq1021TU i5', 4, 'Laptop HP Envy 13 aq1021TU (8QN79PA) là chiếc laptop văn phòng có cấu hình mạnh mẽ vượt trội với vi xử lí thế hệ mới. Thiết kế siêu mỏng nhẹ năng động giúp bạn thoải mái mang laptop theo bên mình để sử dụng hằng ngày.', 21890000, 0, 'hp2.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(7, 'Apple MacBook Air 2017 i5 ', 5, 'MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí. ', 19990000, 19490000, 'mb1.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(8, 'MacBook Pro Touch 2020 i5', 5, 'MacBook Pro Touch 2020 i5 (MXK32SA/A) mang đến thiết kế siêu mỏng nhẹ và sang trọng với cấu hình mạnh mẽ bên trong, màn hình Retina tuyệt mỹ cùng bàn phím cắt kéo thế hệ mới đem đến trải nghiệm tuyệt vời cho người dùng.', 34990000, 0, 'mb2.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(9, 'Dell Inspiron 5593 i5', 3, 'Laptop Dell Inspiron 5593 nằm ở phân khúc laptop cao cấp, là trợ thủ công nghệ đắc lực dành cho những doanh nhân khi sở hữu chiếc laptop có màn hình lớn, thiết kế tinh tế, thời trang và hiệu năng cực đỉnh.', 17990000, 0, 'dell1.jpg', 'chiếc', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(10, 'Dell Precison M3800 i7', 3, 'Dell Precison M3800 i7 4702HQ/ Ram 8g/ Ssd 256g/ k1100 Bh 12 tháng\r\nVGA Nvidia K1100', 13900000, 13000000, 'dell3.jpg', 'chiếc', 1, NULL, NULL),
(11, 'Dell Vostro 5581 i5 ', 3, 'Laptop Dell Vostro 5581 có thiết kế đơn giản quen thuộc của thương hiệu Dell, chiếc laptop văn phòng này chủ yếu chú trọng đến cấu hình mạnh để đem đến hiệu quả làm việc cao. Bên cạnh đó, máy còn được trang bị card đồ họa rời giúp việc thiết kế và chơi game tốt hơn.', 17490000, 0, 'dell2.jpg', 'chiếc', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(12, 'Acer Aspire 3 A315 54K 37B0 i3', 2, 'Acer Aspire 3 A315 54K 37B0 i3 (NX.HEESV.00D) là mẫu laptop học tập - văn phòng được thiết kế gọn nhẹ, vẫn mang đến nhiều điểm nổi bật khi sở hữu cấu hình tốt, ổ cứng SSD cực nhanh và màn hình Full HD sắc nét. Sản phẩm sẽ là lựa chọn tuyệt vời trong tầm giá.', 10990000, 0, 'acer1.jpg', 'chiếc', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(13, 'Acer Aspire A514 53 5921 i5', 2, 'Laptop Acer Aspire A514 53 5921 (NX.HUPSV.001) cùng bạn chinh phục một ngày học tập và làm việc hiệu quả với cấu hình mạnh mẽ đáp ứng những nhu cầu văn phòng cùng đồ họa cơ bản. Ngoài ra thiết kế tối giản, mặt lưng màu bạc phù hợp chuẩn laptop văn phòng hiện đại.', 16990000, 0, 'acer2.jpg', 'chiếc', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'laptop-banner1.jpg'),
(2, '', 'laptop-banner2.jpg'),
(3, '', 'laptop-banner3.jpg'),
(4, '', 'laptop-banner4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Asus', '', 'banh-man-thu-vi-nhat-1.jpg', NULL, NULL),
(2, 'Acer', '', '20131108144733.jpg', '2016-10-12 02:16:15', '2016-10-13 01:38:35'),
(3, 'Dell', '', 'banhtraicay.jpg', '2016-10-18 00:33:33', '2016-10-15 07:25:27'),
(4, 'HP', '', 'banhkem.jpg', '2016-10-26 03:29:19', '2016-10-26 02:22:22'),
(5, 'Macbook', '', 'crepe.jpg', '2016-10-28 04:00:00', '2016-10-27 04:00:23'),
(6, 'Lenovo', '', 'pizza.jpg', '2016-10-25 17:19:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Hương Hương', 'huonghuong08.php@gmail.com', '$2y$10$rGY4KT6ZSMmLnxIbmTXrsu2xdgRxm8x0UTwCyYCAzrJ320kYheSRq', '23456789', 'Hoàng Diệu 2', NULL, '2017-03-23 07:17:33', '2017-03-23 07:17:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
