-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 02:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'velit illo', 'velit-illo', '2021-03-23 08:01:35', '2021-03-23 08:01:35'),
(2, 'harum commodi', 'harum-commodi', '2021-03-23 08:01:35', '2021-03-23 08:01:35'),
(3, 'repudiandae ad', 'repudiandae-ad', '2021-03-23 08:01:35', '2021-03-23 08:01:35'),
(4, 'sint voluptatem', 'sint-voluptatem', '2021-03-23 08:01:35', '2021-03-23 08:01:35'),
(5, 'perspiciatis deserunt', 'perspiciatis-deserunt', '2021-03-23 08:01:35', '2021-03-23 08:01:35'),
(6, 'est est', 'est-est', '2021-03-23 08:01:35', '2021-03-23 08:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_19_111458_create_sessions_table', 1),
(7, '2021_03_23_121129_create_categories_table', 2),
(8, '2021_03_23_122011_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `sku`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ad autem', 'ad-autem', 'Expedita et omnis error ipsam culpa. Natus est mollitia neque nisi.', 'Itaque quo vero et voluptatum aut fugit sunt. Accusantium reiciendis ex non atque necessitatibus qui ad. Aut ea perferendis in ipsum voluptas.', '125.00', NULL, '16', 'instock', 0, 163, 'digital_1.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(2, 'quo ipsam', 'quo-ipsam', 'Tempore similique rerum nemo vel molestias possimus illum. Iure vitae nemo amet blanditiis. Incidunt dolorem aut at est dolore atque. Sed est cupiditate alias voluptas facere alias expedita vero.', 'Quas laboriosam dignissimos doloribus est ut pariatur. Voluptas sunt aspernatur ducimus. Impedit at aliquid asperiores.', '87.00', NULL, '140', 'instock', 0, 153, 'digital_18.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(3, 'perspiciatis dicta', 'perspiciatis-dicta', 'Veritatis totam incidunt officia. Non tempore dolores in delectus. Velit dignissimos nihil cupiditate voluptate alias dolores. Sed omnis dolores officia ea.', 'Velit eos rerum magnam qui dignissimos mollitia vel aut. Dolorem et quibusdam ipsum odit aut. Error iusto laborum blanditiis id labore veniam quae rerum.', '18.00', NULL, '154', 'instock', 0, 183, 'digital_6.jpg', NULL, 5, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(4, 'earum ex', 'earum-ex', 'Rem vel perspiciatis eius itaque iure dolorum ad deserunt. Omnis voluptas occaecati cupiditate distinctio aut. Minima aut sit quasi aliquam aliquam perspiciatis.', 'Corporis aut architecto aut quod. Velit animi repellendus cupiditate autem quaerat tenetur natus.', '173.00', NULL, '46', 'instock', 0, 124, 'digital_13.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(5, 'aut fugit', 'aut-fugit', 'Minima omnis qui ducimus iusto inventore vel. Voluptates unde est delectus omnis quis hic laborum.', 'Sed nemo odio praesentium non praesentium. Quis sint esse assumenda et veniam omnis doloremque repellendus. Incidunt qui nam qui soluta maxime officiis ipsa. Maxime aut eveniet consequatur mollitia.', '30.00', NULL, '139', 'instock', 0, 173, 'digital_17.jpg', NULL, 2, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(6, 'maxime perferendis', 'maxime-perferendis', 'Beatae minus fugiat eveniet reprehenderit. Quaerat omnis asperiores numquam enim qui deleniti. Et a nemo exercitationem ea dolor. Error est aliquid tempora aut quisquam eos.', 'Iste reprehenderit nihil dicta est. Aut ea laudantium expedita veniam ut. Quidem autem consequatur omnis voluptates et laudantium id.', '195.00', NULL, '98', 'instock', 0, 178, 'digital_7.jpg', NULL, 2, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(7, 'voluptatem odit', 'voluptatem-odit', 'Consequatur provident mollitia voluptas sed. Accusamus vel qui sequi accusantium officiis iure. Possimus ratione natus omnis qui.', 'Sit occaecati accusamus sit sit voluptate. Reiciendis optio deserunt id illo. Dignissimos recusandae et recusandae nihil perspiciatis sed.', '83.00', NULL, '42', 'instock', 0, 184, 'digital_5.jpg', NULL, 1, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(8, 'facere quam', 'facere-quam', 'Non voluptas non temporibus in. Facere pariatur nobis esse vitae nam. Dolor temporibus delectus commodi doloremque dolorem ut beatae. Maxime autem fugiat expedita pariatur.', 'Dolores qui ratione qui. Aut natus et blanditiis sunt. Voluptatem culpa rerum dolore. Neque porro nesciunt rerum sed.', '89.00', NULL, '163', 'instock', 0, 111, 'digital_22.jpg', NULL, 5, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(9, 'quasi sit', 'quasi-sit', 'Ratione dolorum sed repellendus quo. Perferendis non voluptas omnis voluptatem.', 'Ut quos quis occaecati. Ullam cupiditate ea aliquam minus nostrum. Sit adipisci aut autem dolor exercitationem placeat architecto.', '50.00', NULL, '128', 'instock', 0, 173, 'digital_2.jpg', NULL, 1, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(10, 'facere deleniti', 'facere-deleniti', 'Consequatur architecto ipsa quidem ut ipsum. Cupiditate cumque vitae sequi ut dolorem. Voluptatem quis sed et voluptatum dicta. Dolores qui delectus qui sint placeat.', 'Qui blanditiis et non aut architecto. Nesciunt est tempora vel. Amet architecto similique fugit et ipsam minima. Quasi qui rem rerum culpa.', '188.00', NULL, '131', 'instock', 0, 197, 'digital_1.jpg', NULL, 5, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(11, 'quisquam facilis', 'quisquam-facilis', 'Hic aperiam unde nihil porro perspiciatis illum. Optio voluptatem odio voluptatem. Et id sunt autem iusto ex repudiandae id. A recusandae voluptatem vero autem debitis.', 'Qui voluptatem sunt perferendis et distinctio quasi libero. Nostrum iusto quam provident. Est repellat fugiat suscipit odit adipisci.', '78.00', NULL, '32', 'instock', 0, 107, 'digital_10.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(12, 'doloribus impedit', 'doloribus-impedit', 'Iusto omnis itaque recusandae ea. Quia voluptatem quo voluptatem voluptate voluptatibus quam. Facere expedita aut magni illo modi non vitae. Sunt illo voluptatem quidem.', 'Fuga id magni et et consequatur. Commodi eligendi eligendi aut a quibusdam quaerat. Similique quas consequuntur voluptatem recusandae. Voluptas qui natus ut ut.', '40.00', NULL, '175', 'instock', 0, 182, 'digital_22.jpg', NULL, 1, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(13, 'at saepe', 'at-saepe', 'Numquam a enim et sed velit asperiores. Totam blanditiis fugit fugit et sint et. Commodi ex consequatur omnis molestias.', 'Voluptatem officia aut explicabo. Tenetur omnis architecto minus nostrum dolorum optio qui. Explicabo illum quas quaerat nesciunt a magnam aut. Aut qui adipisci delectus est.', '187.00', NULL, '158', 'instock', 0, 131, 'digital_6.jpg', NULL, 5, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(14, 'reprehenderit doloremque', 'reprehenderit-doloremque', 'Eum facilis quod eos. Nesciunt non recusandae voluptatem libero minima eius. Quasi iste officia aut velit. Dolores vitae tempore dolorem occaecati.', 'Minus dolorum reprehenderit numquam fugit tenetur beatae. Praesentium fugiat eos optio est. Et in quod fugiat ipsam. Quaerat nemo doloremque saepe impedit et repellat.', '166.00', NULL, '87', 'instock', 0, 193, 'digital_19.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(15, 'aliquid rem', 'aliquid-rem', 'Corrupti sequi eaque quisquam itaque sed quia impedit. Aut placeat necessitatibus accusamus illum ipsa atque ipsa. Qui iusto quo et est. Ipsa reiciendis consequatur incidunt omnis quae sunt.', 'Quaerat est debitis facere voluptatem omnis dolorem aut eaque. Quisquam quibusdam debitis numquam temporibus occaecati velit.', '120.00', NULL, '198', 'instock', 0, 104, 'digital_11.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(16, 'culpa ut', 'culpa-ut', 'Nihil sunt ea delectus hic vel rerum rerum. Consequuntur architecto accusantium beatae tempore delectus modi. Commodi qui nam voluptatem ut. Reprehenderit aut repellat iusto qui.', 'Consequuntur velit aut non ut. Quisquam aspernatur laboriosam ut blanditiis nam non. Numquam ullam quia consequatur aliquid. Ut corrupti maiores neque ipsum odio unde. Et ab dolorem sunt officia.', '128.00', NULL, '45', 'instock', 0, 123, 'digital_5.jpg', NULL, 1, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(17, 'dolorum fugiat', 'dolorum-fugiat', 'Est tempora ut qui placeat totam similique. Aspernatur aspernatur necessitatibus ab et enim eaque. Non molestiae unde voluptatem nostrum. Iste doloribus provident est dolorum.', 'Pariatur fuga perferendis qui eligendi et quibusdam ipsum. Quis incidunt non non. Qui repudiandae voluptatibus aspernatur repudiandae perspiciatis qui quisquam.', '81.00', NULL, '28', 'instock', 0, 170, 'digital_7.jpg', NULL, 4, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(18, 'perspiciatis et', 'perspiciatis-et', 'Aut laborum rerum dolores laudantium nobis. Explicabo error commodi dolores corporis. Facilis porro sit quidem non eos et quos. Dolorum veritatis et culpa blanditiis.', 'Esse sed expedita et saepe. Quaerat natus qui quisquam qui et quis. Qui ipsum id recusandae iusto in omnis libero. Nostrum qui quaerat error et aut a nam.', '158.00', NULL, '146', 'instock', 0, 142, 'digital_2.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(19, 'ut repellendus', 'ut-repellendus', 'Molestias molestias dicta consequatur. Quo hic architecto ea aperiam non explicabo deserunt nihil. Sequi eius adipisci iusto exercitationem. Voluptatem sed ut ab est eligendi sint libero.', 'Eum quidem tempora qui consequatur in sequi. Non id ipsa dolor. Fuga laborum nihil aut et asperiores. At unde non quia vel soluta expedita.', '183.00', NULL, '106', 'instock', 0, 118, 'digital_2.jpg', NULL, 3, '2021-03-23 08:04:05', '2021-03-23 08:04:05'),
(20, 'et fugiat', 'et-fugiat', 'Incidunt totam sit et facilis ipsam quia. Amet pariatur saepe nulla. Omnis laboriosam maiores quidem.', 'Similique fugit asperiores voluptatibus tempora eos. Laudantium dolorem ipsam ut ullam. Distinctio rem molestiae qui aperiam sit ut voluptatem. Recusandae commodi qui dolore rem.', '99.00', NULL, '199', 'instock', 0, 136, 'digital_15.jpg', NULL, 1, '2021-03-23 08:04:06', '2021-03-23 08:04:06'),
(21, 'repellat veritatis', 'repellat-veritatis', 'Et sit consequuntur laudantium nostrum totam neque. Labore aut veniam magnam magni. Sint accusantium excepturi distinctio culpa.', 'Et omnis accusantium explicabo minus molestiae facilis est. Dolor sequi corporis voluptas ullam et rem. Aspernatur porro aut dolorem sit repellendus voluptatem.', '79.00', NULL, '152', 'instock', 0, 123, 'digital_15.jpg', NULL, 5, '2021-03-23 08:04:06', '2021-03-23 08:04:06'),
(22, 'adipisci consequuntur', 'adipisci-consequuntur', 'Magni provident consequatur est quo. Inventore possimus doloribus facere possimus ab ut voluptate. Architecto sed neque possimus atque rem.', 'Qui quidem quae sed nostrum porro. Accusantium velit modi sint. Perspiciatis ex sit facere eligendi nostrum autem.', '116.00', NULL, '63', 'instock', 0, 111, 'digital_5.jpg', NULL, 3, '2021-03-23 08:04:06', '2021-03-23 08:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8VwYLXAP67I6NHniTK7TWmLL5sY0mIwd5TU58FI9', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWGtTNWswdGhlOG1Sb0VoYVFzczRERmFzM0lKellGUUhDdmprdFRmbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRJeVNZaDEyUmdWTFBMZ2xULy5hdmJlTDI0eEZJb0d0VjdhV2YuVHhKM2JIUGZnLlhUUUd5TyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkSXlTWWgxMlJnVkxQTGdsVC8uYXZiZUwyNHhGSW9HdFY3YVdmLlR4SjNiSFBmZy5YVFFHeU8iO30=', 1616161432),
('eapbNzXuEV73EZAKJGx3oY7kk4Ph8knLyienvk8K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3FzSVlKM2NVMmtJQXJwelRQMmVYTThCRkc3M1lLZHIxZGlEZ21lbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wP3BhZ2U9MiI7fX0=', 1616505932),
('fwvTlTinx6aGnq6X6uCwdnHBMufBwIyM2OPGjYRD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia1dEelNrNm9MR2lzNDUwTk95UEdYQUllaE5MT25MemlUR2t2aHRKNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MTp7aTowO3M6MTU6InN1Y2Nlc3NfbWVzc2FnZSI7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjA6e319', 1616590174),
('KekkZLnKEpfA8HhILgg39ezMZjsa90ryQcgbUgpp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1hGU05iQnlRTG40Wm9LaGhYMzd1TkxYNWV1YlRPVmFoaVI4VHA3dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIwMjdjOTEzNDFmZDVjZjRkMjU3OWI0OWM0YjZhOTBkYSI7czoyOiJpZCI7aToxO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjg6ImFkIGF1dGVtIjtzOjU6InByaWNlIjtkOjEyNTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7czoyOiJpZCI7aToyO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjk6InF1byBpcHNhbSI7czo1OiJwcmljZSI7ZDo4NztzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fX19fQ==', 1616572237);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin ,USR for user/customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$IySYh12RgVLPLglT/.avbeL24xFIoGtV7aWf.TxJ3bHPfg.XTQGyO', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-03-19 06:54:25', '2021-03-19 06:54:25'),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$Oi3fp957QPiwyPLrQqlil.0LqcEEWASdXUmXrrUr5suqjJBHv.cKS', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-03-19 06:55:01', '2021-03-19 06:55:01'),
(3, 'Moazam Ali', 'contactmoazam@gmail.com', NULL, '$2y$10$BGQ492q7VekpfThKD4bR7er8ut09Zkogb38snTgmv76TIxpdYGmMi', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-03-23 06:42:16', '2021-03-23 06:42:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
