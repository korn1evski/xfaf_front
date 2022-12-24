-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2022 at 12:14 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `orphan_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('1','0','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `requirements` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'OrphanChild/GKuXcoNO3RgQvgMA76yIajSXvTj7xf2diUTuWfXz.png', '2022-12-24 00:37:27', '2022-12-24 00:37:27'),
(2, 'Orphan/9xgceampuXxab09KwSQg0MmkOKYbkcT3zTtU8r4z.png', '2022-12-24 00:46:27', '2022-12-24 00:46:27'),
(3, 'Orphan/v9byjBthzWrWWocoF8kW0807vGnN8N7y7XrgiqHH.jpg', '2022-12-24 01:55:39', '2022-12-24 01:55:39'),
(4, 'Orphan/pcrZIEuSCJPDLi7i68JwjmxOT8n0uPvYxINXmMSB.jpg', '2022-12-24 01:56:57', '2022-12-24 01:56:57'),
(5, 'Orphan/WjsJaUDrpyxHJZeEArl6PTkJJCyGeu5Dh706GJpc.jpg', '2022-12-24 01:57:39', '2022-12-24 01:57:39'),
(6, 'OrphanChild/Q1QZDcSm4L2LaRYy9YtE5iZGfzgDoezJDYz4M6Sq.jpg', '2022-12-24 02:00:56', '2022-12-24 02:00:56'),
(7, 'OrphanChild/PxjYOVFu2ATpmiwti0NPRoghAiGJPoXd0S0jHa2N.jpg', '2022-12-24 02:01:49', '2022-12-24 02:01:49'),
(8, 'Orphan/yfxvYofOcyELLTCCHVfLuB6e7nGWSTHIaRI4tEvk.jpg', '2022-12-24 08:31:25', '2022-12-24 08:31:25'),
(9, 'OrphanChild/1OyrHf6jmiva6H6beGNTsqn1PF5DsC4Kz8hBsmPi.jpg', '2022-12-24 08:34:48', '2022-12-24 08:34:48'),
(10, 'OrphanChild/YuUFW2kEeDt1uVA798b8eFoJaONMrCNLcReTrsfz.jpg', '2022-12-24 08:35:13', '2022-12-24 08:35:13'),
(11, 'OrphanChild/od6ZgKHXoCXesVcs2RZ4HUCKF7XJTLcN70r9oP24.jpg', '2022-12-24 08:35:37', '2022-12-24 08:35:37'),
(12, 'OrphanChild/zt5HiAVTUUeTr5Qodaz8gMWi97TM1FNHKcfzDIwi.jpg', '2022-12-24 08:36:10', '2022-12-24 08:36:10'),
(13, 'OrphanChild/lmN6DhuNChnCCy6CZgutVtXFVkHamAXUjaNGlXnk.jpg', '2022-12-24 08:37:59', '2022-12-24 08:37:59'),
(14, 'OrphanChild/GC6Bt9vURjCRgTJWLe7apBnZYU9ZfbbmWsMYuRGs.jpg', '2022-12-24 08:38:16', '2022-12-24 08:38:16'),
(15, 'OrphanChild/iKR0ElgYaOSyw10TOzJi8RlXBxnpDkKHUTnJmxbb.jpg', '2022-12-24 08:39:20', '2022-12-24 08:39:20');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2022_12_23_193631_create_orphans_table', 3),
(11, '2022_12_23_193632_create_appointments_table', 3),
(12, '2022_12_23_194607_create_orphan_buildings_table', 4),
(13, '2022_12_24_024438_create_images_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orphans`
--

CREATE TABLE `orphans` (
  `id` int(10) UNSIGNED NOT NULL,
  `orphan_building_id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orphans`
--

INSERT INTO `orphans` (`id`, `orphan_building_id`, `firstName`, `lastName`, `birthday`, `image_id`, `text`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dima224', 'koval', '14.03.2006', 1, 'TextKill', NULL, '2022-12-24 00:37:27', '2022-12-24 00:37:27'),
(2, 4, 'Bogdik', 'Koval', '19.04.15', 6, 'History Text', NULL, '2022-12-24 02:00:56', '2022-12-24 02:00:56'),
(3, 4, 'Edik', 'Koval', '19.06.15', 7, 'History Text', NULL, '2022-12-24 02:01:49', '2022-12-24 02:01:49'),
(4, 5, 'Nichita', 'Koval', '13.03.12', 9, 'Natoque pellentesque proin aenean libero arcu dui montes turpis potenti finibus, ligula et quis purus parturient efficitur felis class blandit, metus malesuada lacus adipiscing vehicula pulvinar donec nec tortor. Sollicitudin efficitur fermentum finibus quisque rhoncus facilisi malesuada ornare massa blandit, velit egestas nascetur lacinia euismod at ultrices dui viverra cubilia, posuere et nulla venenatis natoque nostra mus hendrerit tristique.', NULL, '2022-12-24 08:34:48', '2022-12-24 08:34:48'),
(5, 5, 'James', 'Tail', '13.03.12', 10, 'Natoque pellentesque proin aenean libero arcu dui montes turpis potenti finibus, ligula et quis purus parturient efficitur felis class blandit, metus malesuada lacus adipiscing vehicula pulvinar donec nec tortor. Sollicitudin efficitur fermentum finibus quisque rhoncus facilisi malesuada ornare massa blandit, velit egestas nascetur lacinia euismod at ultrices dui viverra cubilia, posuere et nulla venenatis natoque nostra mus hendrerit tristique.', NULL, '2022-12-24 08:35:13', '2022-12-24 08:35:13'),
(6, 5, 'Arsen', 'Mukl', '13.03.10', 11, 'Natoque pellentesque proin aenean libero arcu dui montes turpis potenti finibus, ligula et quis purus parturient efficitur felis class blandit, metus malesuada lacus adipiscing vehicula pulvinar donec nec tortor. Sollicitudin efficitur fermentum finibus quisque rhoncus facilisi malesuada ornare massa blandit, velit egestas nascetur lacinia euismod at ultrices dui viverra cubilia, posuere et nulla venenatis natoque nostra mus hendrerit tristique.', NULL, '2022-12-24 08:35:37', '2022-12-24 08:35:37'),
(7, 5, 'Max', 'Don', '19.03.10', 12, 'Natoque pellentesque proin aenean libero arcu dui montes turpis potenti finibus, ligula et quis purus parturient efficitur felis class blandit, metus malesuada lacus adipiscing vehicula pulvinar donec nec tortor. Sollicitudin efficitur fermentum finibus quisque rhoncus facilisi malesuada ornare massa blandit, velit egestas nascetur lacinia euismod at ultrices dui viverra cubilia, posuere et nulla venenatis natoque nostra mus hendrerit tristique.', NULL, '2022-12-24 08:36:10', '2022-12-24 08:36:10'),
(8, 4, 'Max', 'Don', '19.03.10', 13, 'Natoque pellentesque proin aenean libero arcu dui montes turpis potenti finibus, ligula et quis purus parturient efficitur felis class blandit, metus malesuada lacus adipiscing vehicula pulvinar donec nec tortor. Sollicitudin efficitur fermentum finibus quisque rhoncus facilisi malesuada ornare massa blandit, velit egestas nascetur lacinia euismod at ultrices dui viverra cubilia, posuere et nulla venenatis natoque nostra mus hendrerit tristique.', NULL, '2022-12-24 08:37:59', '2022-12-24 08:37:59'),
(9, 4, 'Criss', 'Tekl', '19.03.10', 14, 'Natoque pellentesque proin aenean libero arcu dui montes turpis potenti finibus, ligula et quis purus parturient efficitur felis class blandit, metus malesuada lacus adipiscing vehicula pulvinar donec nec tortor. Sollicitudin efficitur fermentum finibus quisque rhoncus facilisi malesuada ornare massa blandit, velit egestas nascetur lacinia euismod at ultrices dui viverra cubilia, posuere et nulla venenatis natoque nostra mus hendrerit tristique.', NULL, '2022-12-24 08:38:16', '2022-12-24 08:38:16'),
(10, 4, 'Nichita', 'Tekl', '19.03.10', 15, 'Natoque pellentesque proin aenean libero arcu dui montes turpis potenti finibus, ligula et quis purus parturient efficitur felis class blandit, metus malesuada lacus adipiscing vehicula pulvinar donec nec tortor. Sollicitudin efficitur fermentum finibus quisque rhoncus facilisi malesuada ornare massa blandit, velit egestas nascetur lacinia euismod at ultrices dui viverra cubilia, posuere et nulla venenatis natoque nostra mus hendrerit tristique.', NULL, '2022-12-24 08:39:20', '2022-12-24 08:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `orphan_buildings`
--

CREATE TABLE `orphan_buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orphan_buildings`
--

INSERT INTO `orphan_buildings` (`id`, `user_id`, `name`, `image_id`, `text`, `deleted_at`, `created_at`, `updated_at`, `location`) VALUES
(1, 17, 'Det Dom 1', 2, 'TextKill', NULL, '2022-12-24 00:46:27', '2022-12-24 00:46:27', 'Chisinau'),
(2, 15, 'Det Dom 2', 3, 'TextKill', NULL, '2022-12-24 01:55:39', '2022-12-24 01:55:39', 'сан-Франциско'),
(3, 15, 'Det Dom 4', 4, 'TextKill', NULL, '2022-12-24 01:56:57', '2022-12-24 01:56:57', 'Chisinau'),
(4, 15, 'Det Dom 5', 5, 'TextKill', NULL, '2022-12-24 01:57:39', '2022-12-24 01:57:39', 'san francisco'),
(5, 15, 'Det Dom 6', 8, 'T', NULL, '2022-12-24 08:31:25', '2022-12-24 08:31:25', 'сан-франциско');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `type`, `password`, `access_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@mail.ru', NULL, 0, '$2y$10$QvqoIaGcueeBSSFvNYFWJe1o7AycpEZLufeUyIcGedG5Tfg3RcZBG', NULL, NULL, '2022-12-23 13:28:18', '2022-12-23 13:28:18'),
(3, 'Danny Mante', 'lshanahan@gmail.com', NULL, 0, '$2y$04$VJlumGoGgD7q.7pF2P3a6uFZlWDtwxTJQAc/7VeDaCPc.pSaS.eQW', NULL, NULL, '2022-12-23 15:24:20', '2022-12-23 15:24:20'),
(4, 'Eugenia Stokes', 'wintheiser.camden@parker.net', NULL, 0, '$2y$04$47FeMTFxDIsvqQeAtz5BBON0/xF5gSTMPV14AOprk.139yBvu.DF.', NULL, NULL, '2022-12-23 15:24:20', '2022-12-23 15:24:20'),
(5, 'Nils Medhurst', 'ezekiel.stanton@hotmail.com', NULL, 0, '$2y$04$NEFF1gt9IMubWJdUCCO99ORdPGAlJuu8vUIXmGP2ay9u2O24lkgEq', NULL, NULL, '2022-12-23 15:28:22', '2022-12-23 15:28:22'),
(6, 'Bruce Hermiston', 'upagac@boyer.com', NULL, 0, '$2y$04$7iK0VGanCahfyLE.JcfxvOH.GYfbEvVhIY0HYIckOoJCN8CojEt.a', NULL, NULL, '2022-12-23 15:28:22', '2022-12-23 15:28:22'),
(7, 'Leopold Ward', 'zchristiansen@damore.net', NULL, 0, '$2y$04$/PC5Y1M75e9aZJR3LHzsl.oxqW6V5tTIzsgX4fWfV5ecsdtWC8aim', NULL, NULL, '2022-12-23 15:32:53', '2022-12-23 15:32:53'),
(8, 'Doyle Daniel', 'mueller.reyes@johns.org', NULL, 0, '$2y$04$s97RDlKDIk55yufjgZoYdeTgSgc5CvkkAmDDYbE16chDjTLw0NMoi', NULL, NULL, '2022-12-23 15:32:53', '2022-12-23 15:32:53'),
(9, 'Ms. Queenie Leffler', 'bailey.melody@yahoo.com', NULL, 0, '$2y$04$V/Wfxx50n2GQpomieq5rkeSp.NGGolDyNllLvDw95aG22/I.AbBKC', NULL, NULL, '2022-12-23 15:33:24', '2022-12-23 15:33:24'),
(10, 'Dr. Myrtis Gusikowski', 'giovani53@gmail.com', NULL, 0, '$2y$04$8m1G6o9Vhv9FrkBxszyzFelUxuiTG6ukhw.49InsAElOpMZYijrp2', NULL, NULL, '2022-12-23 15:33:24', '2022-12-23 15:33:24'),
(11, 'Eldred Lemke', 'xking@hotmail.com', NULL, 0, '$2y$04$vj5C7GjGfRVvBNxsqxM8dOlgK0DuymTe7.K/2OlZQu2lN6sGah.xm', NULL, NULL, '2022-12-23 15:34:39', '2022-12-23 15:34:39'),
(12, 'Ivy Torphy', 'ygreenfelder@gmail.com', NULL, 0, '$2y$04$zpNzxhT2sJXxPzcNYNY7fOrvRHxYyzOaDZHfIyzlkYU7xKR132/7K', NULL, NULL, '2022-12-23 15:34:39', '2022-12-23 15:34:39'),
(13, 'test', 'tes23t@mail.ru', NULL, 0, '$2y$10$fwF8zxhBgSN4phFtzOdaTOqZ47ivPnZgFJFD3vLr3zAT7kvhHaX.O', 'YiyYcbov1lB8FtQ7uUpoy3qRXiL1eRovkNyPzvela3bdu5chwA79AwV9nDsVUib3', NULL, '2022-12-23 15:51:32', '2022-12-23 17:30:36'),
(14, 'test', 'tes23tt@mail.ru', NULL, 0, '$2y$10$dDQDQeObP1Jy13sk6FPSv.DUQ9wO0Nd2nB5Z2hHOIEzLSPqtYeDza', 'YpHJmOKLbVmc7yUDHQM3FALYFJorsF6rVronH3P7Qh8HIyYgZ2wAXpbfew6YkbZd', NULL, '2022-12-23 17:43:24', '2022-12-23 17:43:24'),
(15, 'test', 'tes23ttt@mail.ru', NULL, 0, '$2y$10$oKN1ESly.dLRA.ZEwsmPROzOI4XxRTshmybQZNvFSnf9wPFGmAOrK', 'NHiXUJZ9wojkgrkbfUHXvNbadHgZT7UPytYixxyVJxaY5UWpnmq67TSrU7mCHUzJ', NULL, '2022-12-23 17:43:40', '2022-12-23 17:43:40'),
(16, 'test', 'tes23ttu@mail.ru', NULL, 1, '$2y$10$o5qRFAmVLTu29JfM4xkZ1eXGG90LWo7Fh1Q0mMC4PIosWbgT2Ouli', 'wuZEpoQlIBQ06DpA9p6hM7G3l3TpGFg5lp51lKbIYvBbH7GLoiLsYpjA8Bn2qki6', NULL, '2022-12-23 17:44:07', '2022-12-23 17:44:07'),
(17, 'test', 'tes253ttu@mail.ru', NULL, 1, '$2y$10$5c9u2cCngLrK21D6D80xBOBvSmZDr3PWLU42YHjVbZSQ2Tclgfbaq', 'd9BLc4H1RBPgeGIPZ3Tnhn6PkPbLIHbNkOtmQ3OtK9uzBnvIlpnN4IB1lrUiBJkl', NULL, '2022-12-23 18:19:30', '2022-12-23 18:19:30'),
(18, 'sdfdsf', 'brilsram@gmail.com', NULL, 0, '$2y$10$Iq4cW9QZ4S5FfxcjVNa8Y.N/8LMK3CEAC9ioKct.Sp6R6FZZcdTHu', 'RHxc9479C6lD01k2hgL9R70iFRNq8Sdrut725oFWekYO0ZMtGk6Bj6qWFPbO4C52', NULL, '2022-12-24 02:12:28', '2022-12-24 08:51:11'),
(19, 'brils1', 'brils1@gmail.com', NULL, 0, '$2y$10$vqfVKL1mLwBgppVO8MV3lO/Pjw9hmt1SJIvqN/dSbCbATpiYBmx0O', 'EdPlLIVthQH2uvkt0j5gSAnlXBmYumASWQvyIr00YoJJljDBJYxlB3OjSRVmuwHY', NULL, '2022-12-24 03:10:58', '2022-12-24 07:03:23'),
(20, 'fsdfsdf', 'brils12@gmail.com', NULL, 0, '$2y$10$EnHn1y7JdWKeig3wOizxGu7B.RvnYxHkHtDQBe4KP50nWlHerDeGu', '7ViGRnC3yMc6ptbyK7A4JLoQPfk9n1jszbmskgUXFMvgCZDNqm2ZAbOgkHrliagg', NULL, '2022-12-24 05:37:14', '2022-12-24 05:37:14'),
(21, 'corn', 'bril2@gmail.com', NULL, 1, '$2y$10$ezRRI2nJh9wYlm4EdfcN7eYRCcSkrA.Mcm/J8.zvHBWHv9WwEk22q', 'DYxKZYMBGXDni7rnOHPDnOLWP9W1xRafONc8bD8WVUXcoexlwIu8WIQBUP1ZNgWo', NULL, '2022-12-24 05:52:02', '2022-12-24 05:52:02'),
(22, 'fsfds', 'brils3@gmail.com', NULL, 1, '$2y$10$0kVHs0R/CehyY2RMvO/HBOkX9mtFaLORWxIjVOsQ19xqr7OYuwrwi', 'evqwQif6IAKsI3rhWGvJ8nCpiCwXMhXfG6Is9M1RsfzmOKlr570kdJaikITcwyQN', NULL, '2022-12-24 06:10:24', '2022-12-24 06:10:24'),
(23, 'bogdik', 'corn1@gmail.com', NULL, 1, '$2y$10$lrNenzqjGo11By1jB6RM5O0y6H0XioydbO7dwLbBTWzYG39piwBoa', '4m5PYxeWSeJzvMRL1hLp8cLut3RvPRnXq1YlWgyV1VgkZji7YJMONvMFl8LF3Vnj', NULL, '2022-12-24 07:05:43', '2022-12-24 08:42:26'),
(24, 'chisinay', 'ch@gmail.com', NULL, 1, '$2y$10$xCGdIIte8BNOaPojNk1QI.7WT7MRPU/DSO1J1EtN2GeLZUYCW6gP6', 'pzozspOPJYMM5PxHbNXgErDRVHQKdD7oTw5DfX1IzsQ65DiFG7plFg7hBdigLtwg', NULL, '2022-12-24 08:54:19', '2022-12-24 08:54:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphans`
--
ALTER TABLE `orphans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orphan_buildings`
--
ALTER TABLE `orphan_buildings`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orphans`
--
ALTER TABLE `orphans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orphan_buildings`
--
ALTER TABLE `orphan_buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
