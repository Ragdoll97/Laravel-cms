-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2022 a las 18:25:09
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `educambientaldb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `module`, `parent`, `name`, `slug`, `file_path`, `icon`, `order`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Repostería', 'reposteria', '2022-12-14', '165-unnamed.png', 0, NULL, '2022-12-14 17:31:19', '2022-12-14 17:31:19'),
(2, 0, 0, 'Verduras', 'verduras', '2022-12-14', '433-84ee27382f9f9819097b29fe78be814d.png', 0, NULL, '2022-12-14 17:31:31', '2022-12-14 17:31:31'),
(3, 0, 0, 'Frutas', 'frutas', '2022-12-14', '594-580b57fcd9996e24bc43c163.png', 0, NULL, '2022-12-14 17:31:38', '2022-12-14 17:31:38'),
(4, 0, 0, 'Comida Rapida', 'comida-rapida', '2022-12-14', '594-58727fc4f3a71010b5e8ef0a.png', 0, NULL, '2022-12-14 17:31:44', '2022-12-14 17:31:44'),
(5, 0, 1, 'Tortas', 'tortas', '2022-12-14', '493-clipart-cake-cake.png', 0, NULL, '2022-12-14 17:31:57', '2022-12-14 17:31:57'),
(6, 0, 1, 'Muffin', 'muffin', '2022-12-14', '511-580b57fbd9996e24bc43c0bb.png', 0, NULL, '2022-12-14 17:32:12', '2022-12-14 17:32:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coverage`
--

CREATE TABLE `coverage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `ctype` int(11) NOT NULL,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `days` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coverage`
--

INSERT INTO `coverage` (`id`, `status`, `ctype`, `state_id`, `name`, `price`, `days`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 'cobetura 1', '0.00', 1, NULL, '2022-12-14 20:14:43', '2022-12-14 20:14:43'),
(2, 1, 1, 1, 'Puerto montt', '5433.00', 37, NULL, '2022-12-14 20:15:12', '2022-12-14 20:15:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_29_171837_create_categories_table', 1),
(5, '2020_09_30_183232_create_products_table', 1),
(6, '2020_09_30_185411_add_field_file_path_to_products_table', 1),
(7, '2020_10_02_143826_create_product_gallery_table', 1),
(8, '2020_10_05_152940_add_field_avatar_status_to_users_table', 1),
(9, '2020_10_09_145429_add_password_code_to_users_table', 1),
(10, '2020_10_13_151716_add_field_permissions_to_users_table', 1),
(11, '2020_10_14_145426_add_field_inventory_and_code_to_products_table', 1),
(12, '2020_10_21_175154_add_fields_phone_year_gender', 1),
(13, '2020_10_26_191041_add_field_file_path_to_categories_table', 1),
(14, '2020_10_27_174631_create_sliders_table', 1),
(15, '2020_10_30_185335_create_table_user_favorites', 1),
(16, '2020_11_02_201052_add_flied_parent_to_categories', 1),
(17, '2020_11_02_210050_add_field_order_to_categories', 1),
(18, '2020_11_03_145226_add_field_subcategory_id_to_product_table', 1),
(19, '2020_11_04_180323_create_products_inventory_table', 1),
(20, '2020_11_08_232903_create_table_cart', 1),
(21, '2020_11_09_184443_add_field_total_to_cart', 1),
(22, '2020_11_09_204915_create_product_inventory_variant', 1),
(23, '2020_11_09_213726_add_field_price_to_cart', 1),
(24, '2020_11_11_201138_add_delete_at_cart_table', 1),
(25, '2021_01_29_171253_create_table_orders3', 1),
(26, '2021_01_29_172335_create_order_items_table', 1),
(27, '2021_01_30_182026_add_field_price_org_to_table_orders_items', 1),
(28, '2021_01_30_190733_add_field_discount_until_date_to_table_product', 1),
(29, '2021_02_06_191816_add_field_discount_until_date_to_table_orders_items', 1),
(30, '2021_02_07_204945_create_coverage_table', 1),
(31, '2021_02_08_180236_add_field_state_id_to_coverage_table', 1),
(32, '2021_02_08_181422_add_field_status_to_coverage_table', 1),
(33, '2022_12_14_143554_add_price_to_product_table', 2),
(34, '2022_12_14_143654_add_price_to_product_table', 3),
(35, '2022_12_14_160840_add_price_to_product_table', 4),
(36, '2022_12_14_165123_add_label_itemto_order__items', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `o_number` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `o_type` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `user_address_id` int(11) DEFAULT NULL,
  `user_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT 0.00,
  `delivery` decimal(8,2) DEFAULT 0.00,
  `total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` int(11) NOT NULL DEFAULT 0,
  `payment_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `o_number`, `status`, `o_type`, `user_id`, `user_address_id`, `user_comment`, `subtotal`, `delivery`, `total`, `payment_method`, `payment_info`, `paid_at`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 1, NULL, NULL, '0.00', '0.00', '0.00', 0, NULL, NULL, '2022-12-14 19:47:04', '2022-12-14 19:47:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_items`
--

CREATE TABLE `orders_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `label_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount_status` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL,
  `discount_until_date` date DEFAULT NULL,
  `original_price` decimal(11,2) NOT NULL,
  `price_unit` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders_items`
--

INSERT INTO `orders_items` (`id`, `user_id`, `order_id`, `product_id`, `inventory_id`, `variant_id`, `label_item`, `quantity`, `discount_status`, `discount`, `discount_until_date`, `original_price`, `price_unit`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 2, NULL, 'Muffin Rosado / nuevo inventario', 4, 0, 0, NULL, '167567.00', '167567.00', '670268.00', '2022-12-14 19:52:36', '2022-12-14 20:13:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) DEFAULT 0.00,
  `category_Id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL DEFAULT 0,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory` int(11) NOT NULL DEFAULT 0,
  `in_discount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_until_date` date DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `status`, `code`, `name`, `slug`, `price`, `category_Id`, `subcategory_id`, `file_path`, `image`, `inventory`, `in_discount`, `discount`, `discount_until_date`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '551513535', 'Muffin Azul', 'muffin-azul', '5555.00', 1, 5, '2022-12-14', '127-unnamed.png', 0, 0, 0, NULL, '&lt;p&gt;Rico muffin azul.&lt;/p&gt;', NULL, '2022-12-14 17:37:16', '2022-12-14 19:12:28'),
(2, 1, '0', 'Muffin Rosado', 'muffin-rosado', '1.00', 1, 5, '2022-12-14', '177-580b57fbd9996e24bc43c0bb.png', 0, 0, 0, NULL, '&lt;p&gt;Es m&amp;aacute;s rico que el muffin azul, ya que es rosado.&lt;/p&gt;', NULL, '2022-12-14 18:23:09', '2022-12-14 19:31:23'),
(3, 1, '551513535', 'Muffin Azul', 'muffin-azul', '5555.00', 1, 5, '2022-12-14', '127-unnamed.png', 0, 0, 0, NULL, '&lt;p&gt;Rico muffin azul.&lt;/p&gt;', NULL, '2022-12-14 17:37:16', '2022-12-14 19:12:28'),
(4, 1, '0', 'Muffin Rosado', 'muffin-rosado', '1.00', 1, 5, '2022-12-14', '177-580b57fbd9996e24bc43c0bb.png', 0, 0, 0, NULL, '&lt;p&gt;Es m&amp;aacute;s rico que el muffin azul, ya que es rosado.&lt;/p&gt;', NULL, '2022-12-14 18:23:09', '2022-12-14 19:31:23'),
(5, 1, '551513535', 'Muffin Azul', 'muffin-azul', '5555.00', 1, 5, '2022-12-14', '127-unnamed.png', 0, 0, 0, NULL, '&lt;p&gt;Rico muffin azul.&lt;/p&gt;', NULL, '2022-12-14 17:37:16', '2022-12-14 19:12:28'),
(6, 1, '0', 'Muffin Rosado', 'muffin-rosado', '1.00', 1, 5, '2022-12-14', '177-580b57fbd9996e24bc43c0bb.png', 0, 0, 0, NULL, '&lt;p&gt;Es m&amp;aacute;s rico que el muffin azul, ya que es rosado.&lt;/p&gt;', NULL, '2022-12-14 18:23:09', '2022-12-14 19:31:23'),
(7, 1, '551513535', 'Muffin Azul', 'muffin-azul', '5555.00', 1, 5, '2022-12-14', '127-unnamed.png', 0, 0, 0, NULL, '&lt;p&gt;Rico muffin azul.&lt;/p&gt;', NULL, '2022-12-14 17:37:16', '2022-12-14 19:12:28'),
(8, 1, '0', 'Muffin Rosado', 'muffin-rosado', '1.00', 1, 5, '2022-12-14', '177-580b57fbd9996e24bc43c0bb.png', 0, 0, 0, NULL, '&lt;p&gt;Es m&amp;aacute;s rico que el muffin azul, ya que es rosado.&lt;/p&gt;', NULL, '2022-12-14 18:23:09', '2022-12-14 19:31:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `limited` int(11) NOT NULL,
  `minimum` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_inventory`
--

INSERT INTO `product_inventory` (`id`, `product_id`, `name`, `quantity`, `price`, `limited`, `minimum`, `created_at`, `updated_at`) VALUES
(1, 2, 'nuevo inventario', 1, 1, 1, 1, '2022-12-14 19:31:07', '2022-12-14 19:31:07'),
(2, 2, 'nuevo inventario', 1, 167567, 1, 1, '2022-12-14 19:31:23', '2022-12-14 19:31:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_inventory_variant`
--

CREATE TABLE `product_inventory_variant` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorder` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `user_id`, `status`, `name`, `file_path`, `file_name`, `content`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'imagen 1', '2022-12-14', '810-imagen.jpg', 'Buen dia', 1, '2022-12-14 19:00:02', '2022-12-14 19:00:02'),
(2, 1, 1, '2', '2022-12-14', '788-6966c9b5da83cb2c8346d61629d5b65a.jpg', 'asd', 0, '2022-12-14 19:00:39', '2022-12-14 19:00:39'),
(3, 1, 1, '3', '2022-12-14', '850-1081121.png', 'df', 0, '2022-12-14 19:00:45', '2022-12-14 19:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `status`, `role`, `name`, `lastname`, `email`, `email_verified_at`, `password`, `password_code`, `permissions`, `remember_token`, `created_at`, `updated_at`, `avatar`, `phone`, `birthday`, `gender`) VALUES
(1, 0, 1, 'Danilo', 'Soto', 'daniloandressoto@gmail.com', NULL, '$2y$10$FL/h8GS5U0CEOGSrqutCIe9NtIAmMAPgTUwLmjSWRC7ZmquZws.vC', NULL, '{\"dashboard\":\"true\",\"dashboard_small_stats\":\"true\",\"dashboard_factured_today\":\"true\",\"dashboard_sell_today\":\"true\",\"products\":\"true\",\"product_add\":\"true\",\"product_edit\":\"true\",\"product_inventory\":\"true\",\"product_search\":\"true\",\"product_delete\":\"true\",\"product_gallery_add\":\"true\",\"product_gallery_delete\":\"true\",\"categories\":\"true\",\"category_edit\":\"true\",\"category_delete\":\"true\",\"category_add\":\"true\",\"user_list\":\"true\",\"user_edit\":\"true\",\"user_permissions\":\"true\",\"user_banned\":\"true\",\"sliders\":\"true\",\"slider_add\":\"true\",\"slider_edit\":\"true\",\"slider_delete\":\"true\",\"settings\":\"true\",\"coverage_list\":\"true\",\"coverage_add\":\"true\",\"coverage_edit\":\"true\",\"coverage_delete\":\"true\",\"coverage_city\":\"true\",\"coverage_city_add\":\"true\",\"coverage_city_edit\":\"true\",\"orders\":\"true\",\"select-all\":\"on\"}', '8TNRE1Ls4uYrbpDtPGyhKvViAC4jwtVDnPC6iTZEyUqVGgAdy4o0X0LUExKa', '2022-12-05 18:45:18', '2022-12-14 19:40:20', '458_asd.png', 932843113, '1997-04-05', 0),
(2, 0, 1, 'Danilo', 'Soto', 'muucito.uwu@gmail.com', NULL, '$2y$10$lQ6aI8gnhMu/jNG3X50.quRv0PvqYUaTaPFAyoMRYZZZZBx1DwVn.', NULL, '{\"dashboard\":\"true\",\"dashboard_small_stats\":\"true\",\"dashboard_factured_today\":\"true\",\"dashboard_sell_today\":\"true\",\"products\":\"true\",\"product_add\":\"true\",\"product_edit\":\"true\",\"product_inventory\":\"true\",\"product_search\":\"true\",\"product_delete\":\"true\",\"product_gallery_add\":\"true\",\"product_gallery_delete\":\"true\",\"categories\":\"true\",\"category_edit\":\"true\",\"category_delete\":\"true\",\"category_add\":\"true\",\"user_list\":\"true\",\"user_edit\":\"true\",\"user_permissions\":\"true\",\"user_banned\":\"true\",\"sliders\":\"true\",\"slider_add\":\"true\",\"slider_edit\":\"true\",\"slider_delete\":\"true\",\"settings\":\"true\",\"coverage_list\":\"true\",\"coverage_add\":\"true\",\"coverage_edit\":\"true\",\"coverage_delete\":\"true\",\"coverage_city\":\"true\",\"coverage_city_add\":\"true\",\"coverage_city_edit\":\"true\",\"orders\":\"true\",\"select-all\":\"on\"}', 'aSuwJnS7JGpVVjN11uJERvgVHdInEbiI7L3X1FZRTcjeMZ4dQGbFUtxprc7X', '2022-12-14 16:29:54', '2022-12-14 20:14:26', 'NULL', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_favorites`
--

INSERT INTO `user_favorites` (`id`, `user_id`, `module`, `object_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2022-12-14 19:27:24', '2022-12-14 19:27:24'),
(2, 1, 1, 1, '2022-12-14 20:16:15', '2022-12-14 20:16:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coverage`
--
ALTER TABLE `coverage`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_inventory_variant`
--
ALTER TABLE `product_inventory_variant`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `coverage`
--
ALTER TABLE `coverage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `product_inventory_variant`
--
ALTER TABLE `product_inventory_variant`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
