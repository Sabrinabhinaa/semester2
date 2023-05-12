-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2023 pada 10.30
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supershop_rdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL COMMENT 'ADMINS ID',
  `admin_name` varchar(64) NOT NULL,
  `admin_email` varchar(64) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `admin_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `admin_type` enum('Root Admin','Content Manager','Sales Manager','Technical Operator') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`, `admin_status`, `admin_type`, `created_at`, `updated_at`) VALUES
(3, 'Jhon Doe', 'asep@gmail.com', 'ADMINIMAGE_20200706021940_jhon.png', '706bcb48a6a2eb09bd6715ee90c423f4a0779148', 'Active', 'Root Admin', '2020-07-06 02:19:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL COMMENT 'CONTACTS ID',
  `contacts_name` varchar(64) NOT NULL,
  `contacts_email` varchar(64) NOT NULL,
  `contacts_phone` varchar(32) NOT NULL,
  `contacts_overview` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `contacts_name`, `contacts_email`, `contacts_phone`, `contacts_overview`, `created_at`, `updated_at`) VALUES
(1, 'Jhon Doe', 'jhondoe@hotmail.com', '01645770422', 'Hi there,\r\nAll in all it was a really easy approach to creating your online store. I have complete control over how and what I want placed within my site, with the additional benefit of being able to change anything as and when I want.', '2020-07-06 10:20:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL COMMENT 'CUSTOMERS ID',
  `customer_name` varchar(128) NOT NULL,
  `customer_email` varchar(64) NOT NULL,
  `customer_mobile` varchar(16) NOT NULL,
  `customer_address` varchar(256) NOT NULL,
  `customer_password` varchar(128) NOT NULL,
  `customer_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES
(1, 'Md. Kabir Khan', 'kabirkhan@gmail.com', '01645770422', 'Rampura-1219, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:40:58', NULL),
(2, 'Jhon Doe', 'jhondoe@gmail.com', '01645770422', 'Panthapath-1205, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:54:22', NULL),
(3, 'Al Mamun Roni', 'almamunroni@gmail.com', '01645770422', 'Chasara-1405, Narayanganj, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:57:10', NULL),
(4, 'Nirjhor Anjum', 'nirjhorsir@gmail.com', '01645770422', 'Dhaka-1206, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:37:53', NULL),
(8, 'Jobayer Tuser', 'jobayertuser@gmail.com', '01645770422', 'Mohammadpur-1216, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:48:31', NULL),
(9, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:53:19', NULL),
(13, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:55:57', NULL),
(14, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:56:40', NULL),
(15, 'asda asdasda', 'asep@gmail.com', '087366323', 'asep', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2023-05-05 10:01:06', NULL),
(16, 'asda asdadsa', 'asep@gmail.com', '03972633', 'asda', '706bcb48a6a2eb09bd6715ee90c423f4a0779148', 'Active', '2023-05-05 20:47:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL COMMENT 'DELIVERIES ID',
  `customer_id` int(11) NOT NULL,
  `shipping_charge` enum('50','120') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL COMMENT 'DISCOUNT ID',
  `discount_code` varchar(256) NOT NULL,
  `price_discount_amount` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL COMMENT 'INVOICE ID',
  `invoice_id` varchar(128) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_amount` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_id`, `customer_id`, `shipping_id`, `order_id`, `transaction_amount`, `created_at`, `updated_at`) VALUES
(5, 'COD#17723', 16, 6, 7, 12624, '2023-05-09 14:28:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) NOT NULL COMMENT 'CATEGORIES ID',
  `category_name` varchar(64) NOT NULL,
  `category_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `category_name`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'MEN', 'Active', NULL, NULL),
(2, 'WOMEN', 'Active', NULL, NULL),
(3, 'WATCHES', 'Active', NULL, NULL),
(4, 'ACCESSORIES', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL COMMENT 'NEWSLETTER ID',
  `newsletter_email` varchar(128) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'ORDERS ID',
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `sub_total` double NOT NULL,
  `tax` double NOT NULL,
  `delivery_charge` int(11) NOT NULL,
  `discount_amount` double NOT NULL,
  `grand_total` double NOT NULL,
  `payment_method` enum('SSL COMMERZ','PayPal','Cash On Delivery') NOT NULL DEFAULT 'Cash On Delivery',
  `transaction_id` varchar(256) NOT NULL,
  `transaction_status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Paid',
  `order_item_status` enum('Pending','Processing','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `sub_total`, `tax`, `delivery_charge`, `discount_amount`, `grand_total`, `payment_method`, `transaction_id`, `transaction_status`, `order_item_status`, `created_at`, `updated_at`) VALUES
(6, 16, '2023-05-09 14:26:37', 11697, 877.275, 50, 0, 12624, 'Cash On Delivery', '', 'Paid', 'Pending', '2023-05-09 14:26:37', NULL),
(7, 16, '2023-05-09 14:28:12', 11697, 877.275, 50, 0, 12624, 'Cash On Delivery', 'COD#16', 'Unpaid', 'Pending', '2023-05-09 14:28:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL COMMENT 'ORDER ITEMS ID',
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `prod_quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `customer_id`, `order_id`, `product_id`, `product_price`, `prod_quantity`, `created_at`, `updated_at`) VALUES
(14, 16, 6, 40, 4799, 1, '2023-05-09 14:26:37', NULL),
(15, 16, 6, 12, 4599, 1, '2023-05-09 14:26:37', NULL),
(16, 16, 6, 48, 2299, 1, '2023-05-09 14:26:37', NULL),
(17, 16, 7, 40, 4799, 1, '2023-05-09 14:28:12', NULL),
(18, 16, 7, 12, 4599, 1, '2023-05-09 14:28:12', NULL),
(19, 16, 7, 48, 2299, 1, '2023-05-09 14:28:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL COMMENT 'PAGES ID',
  `page_title` text NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL COMMENT 'SHIPPING ID',
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipcstmr_name` varchar(128) NOT NULL,
  `shipcstmr_mobile` varchar(32) NOT NULL,
  `shipcstmr_profession` varchar(256) DEFAULT NULL,
  `shipcstmr_streetadd` varchar(256) NOT NULL,
  `shipcstmr_city` varchar(64) NOT NULL,
  `shipcstmr_zip` varchar(6) NOT NULL,
  `shipcstmr_country` varchar(64) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `customer_id`, `order_id`, `shipcstmr_name`, `shipcstmr_mobile`, `shipcstmr_profession`, `shipcstmr_streetadd`, `shipcstmr_city`, `shipcstmr_zip`, `shipcstmr_country`, `created_at`, `updated_at`) VALUES
(5, 16, 6, 'qws qwas dd', '123e221', '', 'sfsdfsd', 'ssdsfsd', 'sdfsdf', 'sdfsdfsd', '2023-05-09 14:27:03', NULL),
(6, 16, 7, 'asda asda', 'asdadsads', 'asd', 'asdasd', 'sadasd', 'asdasd', 'Bangladesadadsh', '2023-05-09 14:28:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL COMMENT 'PRODUCTS ID',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `product_summary` text NOT NULL,
  `product_details` text NOT NULL,
  `product_master_image` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `product_discount_price` double NOT NULL,
  `discount_start` datetime NOT NULL,
  `discount_ends` datetime NOT NULL,
  `product_status` enum('In Stock','Out of Stock') NOT NULL DEFAULT 'In Stock',
  `product_featured` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `product_tags` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `products_image_one` text DEFAULT NULL,
  `products_image_two` text DEFAULT NULL,
  `products_image_three` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES
(2, 4, 11, 'BLACK BRACELET', '									<p>Mina detailed simulated stone studded oxidized gold bracelet.<br></p>								', '									</div><div><br></div><ul><liSimulated Black Stone</li><li>E18.5 CM In Length</li></ul>								', 'PRODUCT_20200706030429_bracelet(2).jpg', 1, 699, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'bracelet,mens bracelet,bracelet collection 2020', '2023-05-06 03:04:29', NULL, 'PRODUCTONE_20200706030429_bracelet(2).jpg', 'PRODUCTTWO_20200706030429_bracelet(2).jpg', NULL),
(3, 4, 11, 'BRACELET 3', '<p>A black woven bracelet, adjustable in size<br></p>', '<ul><li>Econic</li><li>3 layers of thick skin</li><li>Components, and a magnetic clasp.</li></ul>', 'PRODUCT_20200706030627_bracelet(4).jpg', 1, 799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'bracelet,mens bracelet', '2023-05-06 03:06:27', NULL, 'PRODUCTONE_20200706030627_bracelet(4).jpg', 'PRODUCTTWO_20200706030627_bracelet(4).jpg', NULL),
(8, 1, 1, 'MENS LONG SLEEVE WHITE', '									<p>White printed cotton panjabi. Features in-seam side pockets.<br></p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>95% Polyester, 5% Spandex</li><li>button closure</li><li>Breathable Fabric: The men\'s kaftan thobe is made of high-quality, soft and lightweight fabric that ensures maximum comfort in summer. Also healthy for skin and make you relaxed all day.</li></ul>								', 'PRODUCT_20200706031559_mens_panjabi(4).jpg', 2, 1899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'panjabi,white panjabi,mens panjabi', '2020-07-06 03:15:59', NULL, 'PRODUCTONE_20200706031559_mens_panjabi(4).jpg', 'PRODUCTTWO_20200706031559_mens_panjabi(4).jpg', NULL),
(9, 1, 1, 'LIGHT BROWN PANJABI', '									<p>Light brown jacquard textured viscose-cotton panjabi with red, rust and brown embroidery. Features in-seam side pockets.<br></p>								', '								</div><div><br></div><ul><li>Exclusive Hand Embroidery<br></li><li>Regular Fit</li><li>Side Pocket</li><li>Side Open</li></ul>								', 'PRODUCT_20200706031658_mens_panjabi(3).jpg', 1, 1799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'panjabi,mens panjabi,long panjabi', '2020-07-06 03:16:58', NULL, 'PRODUCTONE_20200706031658_mens_panjabi(3).jpg', 'PRODUCTTWO_20200706031658_mens_panjabi(3).jpg', NULL),
(12, 1, 6, 'SUMMER SUIT', '									<p>Consider our linen jacket the perfect warm-weather companion - it\'s lightweight, comfortable, and has you looking great.<br></p>								', '									<div>We\'ve designed this jacket for comfort as well as looks. Its canvas construction and lighter shoulders give a gently relaxed outline, without compromising the styling. The fine linen is naturally breathable for all-day wear, even in warmer weather, while back vents make sure you can move easily. Choose our light grey check jacket for subtle color and texture that will add depth to your look. Pair this understated shade with our dark navy or forest green pants, creating a smart ensemble for warm-weather occasions. Corozo nut buttons add an extra refined touch and are made from renewable material.<div><br></div><ul><li>100% Linen</li><ul><li>Available in slim fit only</li><li>Straight flap pockets with chest pocket</li><li>Single breasted two-button fastening</li><liCanvas chest piece construction</li></ul>								', 'PRODUCT_20200706032108_blazer(8).jpg', 2, 4599, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'pink suit,summer suit', '2023-05-06 03:21:08', NULL, 'PRODUCTONE_20200706032108_blazer(8).jpg', 'PRODUCTTWO_20200706032108_blazer(8).jpg', NULL),
(13, 1, 6, 'BLACK WOOL AND LINEN BLEND', '									<p>The classic jacket features slanting flap pockets, two buttons to fasten, a clean line through the waist and perfectly proportioned notch lapels.<br></p>								', '						</div><div><br></div><ul><li>Cotton</li><li>2 piece</li><li> Exterior: 64% Cotton / 25% Polyester / 5% Viscose / 5% Other Fibres / 1% Elastane</li></ul>								', 'PRODUCT_20200706032202_blazer(3).jpg', 1, 4899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'mens suit,summer suit', '2023-05-06 03:22:02', NULL, 'PRODUCTONE_20200706032202_blazer(3).jpg', 'PRODUCTTWO_20200706032202_blazer(3).jpg', NULL),
(14, 1, 6, 'GIROUD JACKET TAN', '									<p>If you are looking for something a bit different this season, the Giroud jacket will deliver. The large check with ensure you stand out no matter how it\'s styled. Pair with the matching slouch Giroud check trousers and look bang on trend.\r\n\r\nBennett is 6\" and wears a 40R jacket and size 32R trousers, Julia is 5\"8 and wears a size 38R jacket and 30R trousers.<br></p>								', '</div><div><br></div><ul><li>Oversized</li><li>Exterior: 29% Polyester / 16% Viscose / 52% Cotton / 3% Elastane</li><li>Dry Clean Only</li><li>Casual</li></ul>								', 'PRODUCT_20200706032258_blazer(1).jpg', 1, 4799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'suit,mens suit', '2023-05-06 03:22:58', NULL, 'PRODUCTONE_20200706032258_blazer(1).jpg', 'PRODUCTTWO_20200706032258_blazer(1).jpg', NULL),
(15, 1, 6, 'TWO PIECE SUIT IN GREY CHECK', '									<p>Grey Check Suit is a classy edition to your wardrobe, seamlessly suitable for both weddings and the office . Made in Europe using the finest 100%, super 110 pure wool fabric from the luxury Italian mill Tollegno, this slim fitting, 2 button single breasted suit has a peak lapel with a centre vent. The jacket shows the unique Without Prejudice hand mark of the vertical button hole on the lapel and the purple contrast stitch on one of the 4 kissing buttons on the jacket cuff. The trousers are plain front with 2 back pockets and cut to a slim silhouette. The luxury of Italian pure wool wrapped up in Without Prejudices legendary cut, this is for those who appreciate tailoring at its finest.<br></p>								', '								</div><div><br></div><ul><li>Slim</li><li>Wool</li><li>Exterior: 96% Luxury Wool / 4% Elastane</li></ul>								', 'PRODUCT_20200706032356_blazer(5).jpg', 1, 4899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'suit,summer suit', '2023-05-06 03:23:56', NULL, 'PRODUCTONE_20200706032356_blazer(5).jpg', 'PRODUCTTWO_20200706032356_blazer(5).jpg', NULL),
(16, 1, 2, 'EXCLUSIVE BLAZER RED', '									<p>Exclusif catton red<br></p>								', '									</div><div><br></div><ul><li> Solid tone tailored suit blazer</li><li>Slim fit</li><li>One inner pocket</li></ul>								', 'PRODUCT_20200706032445_blazer(4).jpg', 1, 5799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'YES', 'blazer,mens blazer', '2023-05-06 03:24:45', NULL, 'PRODUCTONE_20200706032445_blazer(4).jpg', 'PRODUCTTWO_20200706032445_blazer(4).jpg', NULL),
(20, 1, 5, 'TANJIM DENIM', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>								', '									<div>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</div><div><br></div><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', 'PRODUCT_20200706032852_mens_denim(3).jpg', 2, 2799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'denim,tanjim denim,mens denim', '2020-07-06 03:28:52', NULL, 'PRODUCTONE_20200706032852_mens_denim(3).jpg', 'PRODUCTTWO_20200706032852_mens_denim(3).jpg', NULL),
(33, 3, 7, 'SEIKO', '<p>The watch is characterized by the beautiful tiger eye stone dial, with each stone having a unique veining and color. At th<br></p>', '</p><p><br></p><ul><li>The watch is characterized by the beautiful tiger eye stone dial, with each stone having a unique veining and color. At th</li><li>Sapphire glass with antireflective coating</li><li>Automatic movement</li></ul>', 'PRODUCT_20200706042232_mens_watch(2).jpg', 1, 5899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'watch,seiko', '2023-05-06 04:22:32', NULL, 'PRODUCTONE_20200706042232_mens_watch(2).jpg', 'PRODUCTTWO_20200706042232_mens_watch(2).jpg', NULL),
(37, 3, 7, 'TIMEX', '<p>Part of the G-Timeless collection, this automatic watch is designed with a black onyx stone dial<br></p>', '</p><p><br></p><ul><li>Steel case, black onyx stone dial with bees, steel bracelet</li><li>Water resistance: 5 ATM (160 feet/50 meters)</li><li>Automattic</li></ul>', 'PRODUCT_20200706042657_mens_watch(6).jpg', 1, 6799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'timex,watch', '2023-05-06 04:26:57', NULL, 'PRODUCTONE_20200706042657_mens_watch(6).jpg', 'PRODUCTTWO_20200706042657_mens_watch(6).jpg', NULL),
(38, 3, 7, 'HUGO BOSS', '<p>The watch is characterized by the beautiful tiger eye stone dial, with each stone having a unique veining and color. At the center are bees, a signature symbol of the House<br></p>', '</p><p><br></p><ul><li>Steel case, brown tiger eye stone dial with bees, steel bracelet</li><li>Sapphire glass with antireflective coating</li><li>Wrist size from: 4.7\" to 7.3\"</li></ul>', 'PRODUCT_20200706042743_mens_watch(7).jpg', 1, 5899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'hugo,watch,hugo boss', '2023-05-06 04:27:43', NULL, 'PRODUCTONE_20200706042743_mens_watch(7).jpg', 'PRODUCTTWO_20200706042743_mens_watch(7).jpg', NULL),
(39, 3, 7, 'CASIO EDIFICE', '<p>In a silhouette that mirrors the recognizable details of a diver\'s watch, the Casio Dive has a contemporary appeal with a black dial and steel link bracelet<br></p>', '</p><p><br></p><ul><li>Steel case and bracelet, black bezel, black rubber crown, black dial with multi icon indexes</li><li>Sapphire glass with antireflective coating</li><li>20 ATM (660 feet/200 meters)</li></ul>', 'PRODUCT_20200706042835_mens_watch(8).jpg', 1, 7499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'casio,edifice,watch', '2023-05-06 04:28:35', NULL, 'PRODUCTONE_20200706042835_mens_watch(8).jpg', 'PRODUCTTWO_20200706042835_mens_watch(8).jpg', NULL),
(40, 3, 8, 'FOSSIL', '<p>Part of the G-Timeless collection, this classic watch in yellow gold PVD with a taupe lambskin strap is crafted with a traditional sensibility, juxtaposed with a sunbrushed dial. The bee motif is specially designed to work as the seconds hand.<br></p>', '</p><p><br></p><ul><li>Yellow gold PVD case, silver sunbrushed dial with bee as seconds hand, taupe lambskin strap</li><li>Quartz movement</li><li>Water resistance: 5 ATM (164 feet/50 meters)</li><li>Wrist size adjustable from 140mm to 180mm</li></ul>', 'PRODUCT_20200706043303_womens_watch(1).jpg', 1, 4799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'fossil,womens watch,watch', '2023-05-06 04:33:03', NULL, 'PRODUCTONE_20200706043303_womens_watch(1).jpg', 'PRODUCTTWO_20200706043303_womens_watch(1).jpg', NULL),
(43, 3, 8, 'GUESS', '<p>Part of the G-Timeless collection, this classic watch in steel is designed with a traditional sensibility, juxtaposed with codes inspired by the Gues narrative. A brown lambskin strap and white guilloché dial complete the style.</p>', '</p><p><br></p><ul><li>40mm steel case, white guilloché dial, brown lambskin strap</li><li>Sapphire glass with antireflective coating</li><li>Automatic movement</li><li>Wrist size from 5.9\" to 7.5\"</li></ul>', 'PRODUCT_20200706043618_womens_watch(4).jpg', 1, 4799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'guess,watch', '2023-05-06 04:36:18', NULL, 'PRODUCTONE_20200706043618_womens_watch(4).jpg', 'PRODUCTTWO_20200706043618_womens_watch(4).jpg', NULL),
(45, 3, 8, 'GUCCI', '<p>Part of the G-Timeless collection, this automatic watch is designed with a black onyx stone dial, enriched with silver-toned indexes that take the form of the Gucci bee—a distinctive code of the House. The case continues into a steel bracelet that wraps around the wrist.<br></p>', '</p><p><br></p><ul><li>Steel case, black onyx stone dial with bees, steel bracelet</li><li>Automatic movement</li><li>IWater resistance: 5 ATM (160 feet/50 meters)</li><li>Swiss Made</li></ul>', 'PRODUCT_20200706043756_womens_watch(6).jpg', 1, 4899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'gucci,watch', '2023-05-06 04:37:56', NULL, 'PRODUCTONE_20200706043756_womens_watch(6).jpg', 'PRODUCTTWO_20200706043756_womens_watch(6).jpg', NULL),
(47, 3, 8, 'GUESS', '<p>A clean, streamlined design that fits snugly around the wrist, the Grip watch takes its inspiration from the world of skateboarding, its name recalling the way the rider’s sneakers stick to the grip tape on a skateboard. The steel face has three disks to display the hour, minute and date completed with an alligator strap.<br></p>', '</p><p><br></p><ul><li>38mm steel case, 3 white disks indicating hour, minute & date, brown alligator strap</li><li>Sapphire glass with antireflective coating</li><li>3 ATM (100 feet/30 meters)</li><li>Wrist size from 6.3\" to 7.9\"</li></ul>', 'PRODUCT_20200706043931_womens_watch(8).jpg', 1, 6799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'guess,watch', '2023-05-06 04:39:31', NULL, 'PRODUCTONE_20200706043931_womens_watch(8).jpg', 'PRODUCTTWO_20200706043931_womens_watch(8).jpg', NULL),
(48, 2, 17, 'EXCLUSIVE LONG DRESS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'PRODUCT_20200706044536_women_longdress(3).jpg', 1, 2299, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'long dress', '2020-07-06 04:45:36', NULL, 'PRODUCTONE_20200706044536_women_longdress(3).jpg', 'PRODUCTTWO_20200706044536_women_longdress(3).jpg', NULL),
(50, 2, 16, 'GRAY COLLECTION', '<p>Gray tunik</p>', '</p><p><br></p><ul><li>Cotton</li><li>Hand Embroidery</li><li>Long</li><li>A-Line</li><li>Elastic Waist</li></ul>', 'PRODUCT_20200706044733_women_longdress(1).jpg', 1, 2499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'fashion,womens fashion', '2023-05-06 04:47:33', NULL, 'PRODUCTONE_20200706044733_women_longdress(1).jpg', 'PRODUCTTWO_20200706044733_women_longdress(1).jpg', NULL),
(51, 2, 16, 'EXCLUSIVE BRUNT ORANGE COLLECTION', '<p>Burnt orange cotton saree with black, golden and green prints. Comes with matching unstitched blouse piece. Blouse shown in the photo is a styling suggestion, it is not a part of the actual product.<br></p>', '</p><p><br></p><ul><li>Block Print</li><li>Patterned Aanchal</li><li>With Blouse Piece</li><li>Hand Wash With Mild Detergent In Cold Water And Starch</li></ul>', 'PRODUCT_20200706044828_women_longdress(4).jpg', 1, 2499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'fashion', '2023-05-06 04:48:28', NULL, 'PRODUCTONE_20200706044828_women_longdress(4).jpg', 'PRODUCTTWO_20200706044828_women_longdress(4).jpg', NULL),
(52, 2, 16, 'LIGHT PISTACHIO COTTON', '<p>Light pistachio cotton with blue and dark chocolate prints. Comes with matching unstitched blouse piece. Blouse shown in the photo is a styling suggestion, it is not a part of the actual product.<br></p>', '</p><p><br></p><ul><li>Block Print</li><li>Patterned Aanchal</li><li>With Blouse Piece</li><li>Hand Wash With Mild Detergent In Cold Water And Starch</li></ul>', 'PRODUCT_20200706045032_womens_fashiontop(2).jpg', 1, 2799, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'fashion collection', '2023-05-06 04:50:32', NULL, 'PRODUCTONE_20200706045032_womens_fashiontop(2).jpg', 'PRODUCTTWO_20200706045032_womens_fashiontop(2).jpg', NULL),
(53, 2, 16, 'WHITE BLOUSE', '<p>White tie-dyed cotton with multicolour prints. Comes with matching unstitched blouse piece.<br></p>', '</p><p><br></p><ul><li>Catton</li><li>Screen Print</li><li>Contrast Aanchal</li></ul>', 'PRODUCT_20200706045132_womens_fashiontop(3).jpg', 1, 3499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'fashion', '2023-05-06 04:51:32', NULL, 'PRODUCTONE_20200706045132_womens_fashiontop(3).jpg', 'PRODUCTTWO_20200706045132_womens_fashiontop(3).jpg', NULL),
(63, 2, 12, 'SHAREE MAGENTA', '<p>Magenta muslin saree with all over brown, cyan and dusty pink embroidery embodying a Nakshi Kantha story. Aanchal with tassel trim and comes with unstitched blouse piece. Blouse shown in the photo is a styling suggestion, it is not a part of the actual product.<br></p>', '<p>Magenta muslin saree with all over brown, cyan and dusty pink embroidery embodying a Nakshi Kantha story. Aanchal with tassel trim and comes with unstitched blouse piece. Blouse shown in the photo is a styling suggestion, it is not a part of the actual product.</p><p><br></p><ul><li>Patterned Aanchal</li><li>With Blouse Piece</li><li>Dry Clean</li></ul>', 'PRODUCT_20200706050136_womens_sharee(2).jpg', 1, 3499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'NO', 'sharee', '2023-05-06 05:01:36', NULL, 'PRODUCTONE_20200706050136_womens_sharee(2).jpg', 'PRODUCTTWO_20200706050136_womens_sharee(2).jpg', NULL),
(65, 2, 12, 'EXCLUSIVE SHAREE', '<p>Mauve silk saree with multicolour Nakshi Kantha embroidery. Comes with matching unstitched blouse piece. Blouse shown in the photo is a styling suggestion, it is not a part of the actual product.<br></p>', '</p><p><br></p><ul><li>Nakshi Kantha Embroidery</li><liPatterned Aanchal</li><li>With Blouse Piece</li><li>Dry Clean</li></ul>', 'PRODUCT_20200706050445_womens_sharee(5).jpg', 2, 3199, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'sharee', '2023-05-06 05:04:45', NULL, 'PRODUCTONE_20200706050445_womens_sharee(5).jpg', 'PRODUCTTWO_20200706050445_womens_sharee(5).jpg', NULL),
(66, 2, 12, 'BLUE PRINTED SHAREE', '<p>Blue saree with Nakshi Kantha embroidery. Comes with matching unstitched blouse piece. <br></p>', '</p><p><br></p><ul><li>Patterned Aanchal</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>With Blouse Piece</li></ul>', 'PRODUCT_20200706050536_womens_sharee(6).jpg', 1, 2899, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'sharee', '2023-05-06 05:05:36', NULL, 'PRODUCTONE_20200706050536_womens_sharee(6).jpg', 'PRODUCTTWO_20200706050536_womens_sharee(6).jpg', NULL),
(68, 2, 12, 'SHAREE COLLECTION', '<p>Emerald green and black printed muslin saree with multicolour embroidery and applique from body to aanchal. Aanchal with tassel trim and comes with unstitched blouse piece. Blouse shown in the photo is a styling suggestion, it is not a part of the actual product.\r\n<br></p>', '</p><p><br></p><ul><li>Muslin</li><li>Hand Embroidery</li><li>Patterned Aanchal</li><li>With Blouse Piece</li></ul>', 'PRODUCT_20200706050713_womens_sharee(10).jpg', 1, 3499, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Out of Stock', 'NO', 'sharee', '2023-05-06 05:07:13', NULL, 'PRODUCTONE_20200706050713_womens_sharee(10).jpg', 'PRODUCTTWO_20200706050713_womens_sharee(10).jpg', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shopcarts`
--

CREATE TABLE `shopcarts` (
  `id` int(11) NOT NULL COMMENT 'SHOPCARTS ID',
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `shopcarts`
--

INSERT INTO `shopcarts` (`id`, `customer_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 15, 22, 13, '2023-05-05 10:01:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL COMMENT 'SLIDER ID',
  `slider_title` varchar(128) NOT NULL,
  `slider_file` text NOT NULL,
  `slider_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `slider_sequence` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `slides`
--

INSERT INTO `slides` (`id`, `slider_title`, `slider_file`, `slider_status`, `slider_sequence`, `created_at`, `updated_at`) VALUES
(1, 'EID FESTIVAL COLLECTION 2020', 'SLIDER_20200706022816_slide852r.jpg', 'Active', 1, NULL, NULL),
(2, 'HOME DECOR', 'SLIDER_20200706022832_slider.jpg', 'Active', 2, NULL, NULL),
(3, 'PAHELA BAISHAK COLLECTION 2020', 'SLIDER_20200706022906_slid63er.jpg', 'Active', 3, NULL, NULL),
(4, 'EID COLLECTION 2020', 'SLIDER_20200706022921_slid3er.jpg', 'Active', 4, NULL, NULL),
(5, 'KIDS COLLECTION 2020', 'SLIDER_20200706022936_slide1r.jpg', 'Active', 5, NULL, NULL),
(6, 'SUMMER COLLECTION 2020', 'SLIDER_20200706023006_sli74der.jpg', 'Active', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL COMMENT 'SUBCATEGORIES ID',
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(128) NOT NULL,
  `subcategory_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `subcategory_banner` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_status`, `subcategory_banner`, `created_at`, `updated_at`) VALUES
(1, 1, 'MEN\'S PANJABI', 'Active', 'SUBCATBANNER_20200706024241_banner(5).jpg', '2020-07-06 02:42:41', NULL),
(2, 1, 'MEN\'S BLAZER', 'Active', 'SUBCATBANNER_20200706024406_banner(3).jpg', '2020-07-06 02:44:06', NULL),
(5, 1, 'MEN\'S DENIM', 'Active', 'SUBCATBANNER_20200706024527_banner(4).jpg', '2020-07-06 02:45:27', NULL),
(6, 1, 'MEN\'S SUMMER SUIT', 'Active', 'SUBCATBANNER_20200706024542_banner(3).jpg', '2020-07-06 02:45:42', NULL),
(7, 3, 'MEN\'S WATCH', 'Active', 'SUBCATBANNER_20200706024602_banner(5).jpg', '2020-07-06 02:46:02', NULL),
(8, 3, 'WOMEN\'S WATCH', 'Active', 'SUBCATBANNER_20200706024618_banner(9).jpg', '2020-07-06 02:46:18', NULL),
(11, 4, 'BRACELET', 'Active', 'SUBCATBANNER_20200706024914_banner(5).jpg', '2020-07-06 02:49:14', NULL),
(12, 2, 'WOMEN\'S SHAREE', 'Active', 'SUBCATBANNER_20200706025014_banner(8).jpg', '2020-07-06 02:50:14', NULL),
(16, 2, 'WOMEN\'S FASHION', 'Active', 'SUBCATBANNER_20200706025140_banner(9).jpg', '2020-07-06 02:51:40', NULL),
(17, 2, 'WOMEN\'S LONG DRESS', 'Active', 'SUBCATBANNER_20200706025312_banner(9).jpg', '2020-07-06 02:53:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indeks untuk tabel `shopcarts`
--
ALTER TABLE `shopcarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ADMINS ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CONTACTS ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CUSTOMERS ID', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'DELIVERIES ID', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'DISCOUNT ID';

--
-- AUTO_INCREMENT untuk tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'INVOICE ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CATEGORIES ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'NEWSLETTER ID';

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ORDERS ID', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ORDER ITEMS ID', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PAGES ID';

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SHIPPING ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PRODUCTS ID', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `shopcarts`
--
ALTER TABLE `shopcarts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SHOPCARTS ID', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SLIDER ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SUBCATEGORIES ID', AUTO_INCREMENT=38;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`shipping_id`) REFERENCES `pesanan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
