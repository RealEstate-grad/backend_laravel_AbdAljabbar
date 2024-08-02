-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 12:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestates`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `companies_id` bigint(20) UNSIGNED NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agents_rates`
--

CREATE TABLE `agents_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `agents_id` bigint(20) UNSIGNED NOT NULL,
  `rate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `image`) VALUES
(1, NULL, NULL, 'Damascus', '');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `places_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `emploies_num` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `work_days` varchar(255) NOT NULL,
  `profile_images` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `user_id`, `places_id`, `company_name`, `website`, `emploies_num`, `description`, `work_days`, `profile_images`, `banner_image`) VALUES
(1, '2024-07-31 08:45:46', '2024-07-31 08:45:46', 10, 1, 'MOHAMADCO', NULL, '4', 'TEST', '[{\"day\":\"Sunday\",\"start\":\"14:45\",\"end\":\"14:46\"}]', 'profile_images/MetHnymqgeiCCIiH0ZLXXm0SA1CtT3qvw2csUYGq.jpg', 'banner_image/7ecTt0U2W8456B1ZRoDuUiAss7QtV6O1DdEtX8LW.jpg'),
(2, '2024-07-31 11:21:43', '2024-07-31 11:21:43', 11, 1, 'MHD Company', NULL, '5', 'TEST', '[{\"day\":\"Sunday\",\"start\":\"17:21\",\"end\":\"23:21\"}]', 'profile_images/p9K8Ws1bQrgG4h8bM8wdkKbrWL55SgL9qLoyJSVb.jpg', 'banner_image/l07FVVinff4K5nZIIGMCoqUgkmczW4wBv4BQ8jo9.jpg'),
(3, '2024-07-31 11:29:49', '2024-07-31 11:29:49', 12, 1, 'Morhaf Company', NULL, '5', 'TEST', '[{\"day\":\"Sunday\",\"start\":\"19:29\",\"end\":\"23:29\"}]', 'profile_images/12.jpg', 'banner_image/12.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `estates`
--

CREATE TABLE `estates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `places_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country_code_phone` varchar(255) NOT NULL,
  `space_of_estate` varchar(255) NOT NULL,
  `price_of_meter` varchar(255) NOT NULL,
  `rent_kind` varchar(255) DEFAULT NULL,
  `is_furnished_text` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `num_of_bedrooms` varchar(255) NOT NULL,
  `num_of_livingrooms` varchar(255) NOT NULL,
  `num_of_receptions` varchar(255) NOT NULL,
  `num_of_bathrooms` varchar(255) NOT NULL,
  `num_of_kitchens` varchar(255) NOT NULL,
  `num_of_balconies` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `type_text` varchar(255) NOT NULL,
  `social_media_id` bigint(20) UNSIGNED NOT NULL,
  `kind_text` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `real_number` varchar(255) NOT NULL,
  `date_of_build` varchar(255) NOT NULL,
  `state_of_build_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite-estates`
--

CREATE TABLE `favorite-estates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `estate_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_agents`
--

CREATE TABLE `favorite_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `agents_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_estate_ads`
--

CREATE TABLE `f_estate_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estate_id` bigint(20) UNSIGNED NOT NULL,
  `ads` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_estate_images`
--

CREATE TABLE `f_estate_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estate_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_estate_videos`
--

CREATE TABLE `f_estate_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estate_id` bigint(20) UNSIGNED NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_07_28_171043_create_social_media_table', 1),
(5, '2024_07_28_171044_create_users_table', 1),
(6, '2024_07_28_172015_create_cities_table', 1),
(7, '2024_07_28_174706_create_notifications_table', 1),
(8, '2024_07_28_175624_create_places_table', 1),
(9, '2024_07_28_180235_create_messages_table', 1),
(10, '2024_07_28_183236_create_companies_table', 1),
(11, '2024_07_28_194556_create_agents_table', 1),
(12, '2024_07_28_195404_create_favorite_agents_table', 1),
(13, '2024_07_28_195651_create_agents_rates_table', 1),
(14, '2024_07_28_200237_create_estates_table', 1),
(15, '2024_07_28_201952_create_favorite-estates_table', 1),
(16, '2024_07_28_202217_create_f_estate_ads_table', 1),
(17, '2024_07_28_202345_create_f_estate_videos_table', 1),
(18, '2024_07_28_202556_create_f_estate_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `is_read` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'af4e395c823853c5130047f2e88074b9c1b9c2df69a555e8de87a703d36a8502', '[\"*\"]', NULL, NULL, '2024-07-31 09:14:28', '2024-07-31 09:14:28'),
(2, 'App\\Models\\User', 1, 'auth_token', '29a69db09036616099971ec6bf75ccc19ec2608562c75f36d2b1e84676f3a7a5', '[\"*\"]', NULL, NULL, '2024-07-31 09:15:49', '2024-07-31 09:15:49'),
(3, 'App\\Models\\User', 1, 'auth_token', 'c105a9ddb09c3d425f5f17e7d1885b51eee709edef92f6160c765eae19d9f8a7', '[\"*\"]', NULL, NULL, '2024-07-31 09:20:14', '2024-07-31 09:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `cities_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `created_at`, `updated_at`, `name`, `cities_id`) VALUES
(1, NULL, NULL, 'Baramkeh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `created_at`, `updated_at`, `facebook`, `instagram`) VALUES
(1, '2024-07-31 08:32:10', '2024-07-31 08:32:10', NULL, NULL),
(2, '2024-07-31 08:33:14', '2024-07-31 08:33:14', NULL, NULL),
(3, '2024-07-31 08:36:04', '2024-07-31 08:36:04', 'facebook', 'instagram'),
(4, '2024-07-31 08:36:29', '2024-07-31 08:36:29', 'facebook', 'instagram'),
(5, '2024-07-31 08:37:10', '2024-07-31 08:37:10', 'facebook', 'instagram'),
(6, '2024-07-31 08:38:34', '2024-07-31 08:38:34', NULL, NULL),
(7, '2024-07-31 08:39:22', '2024-07-31 08:39:22', NULL, NULL),
(8, '2024-07-31 08:40:03', '2024-07-31 08:40:03', NULL, NULL),
(9, '2024-07-31 08:42:06', '2024-07-31 08:42:06', NULL, NULL),
(10, '2024-07-31 08:45:25', '2024-07-31 08:45:25', NULL, NULL),
(11, '2024-07-31 08:45:46', '2024-07-31 08:45:46', NULL, NULL),
(12, '2024-07-31 11:21:42', '2024-07-31 11:21:42', NULL, NULL),
(13, '2024-07-31 11:29:49', '2024-07-31 11:29:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `countre_code_phone` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `social_media_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `status`, `type`, `email`, `password`, `phone`, `countre_code_phone`, `gender`, `social_media_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MHD', 'Mohammed', 'Hegazy', 'active', 'user', 'mhd123heg@gmail.com', '$2y$10$7qcgg.vT1hw/GxfyP7XtPuCvsuTOXtBHuJC6MQ3qBGldHC7ImypS.', '933097404', '+963', 'Male', 2, NULL, '2024-07-31 08:33:14', '2024-07-31 08:33:14'),
(2, 'MHD123', 'Mohammed', 'Hegazy', 'active', 'user', 'mhd123heg123@gmail.com', '$2y$10$/HJPOjhoATvvpg0H8taT8upqjq8ag1DJp.BVHVQiY35MskNnp3Pq2', '938578394', '+963', 'Male', 3, NULL, '2024-07-31 08:36:04', '2024-07-31 08:36:04'),
(4, 'MHD123123', 'Mohammed', 'Hegazy', 'active', 'user', 'mhd123he123g123@gmail.com', '$2y$10$f01ndTb0dMoEB1elDoqXYOvRwjNzo0xVzcgX7lMa8z1RNvqeIP/0W', '938578394', '+963', 'Male', 5, NULL, '2024-07-31 08:37:10', '2024-07-31 08:37:10'),
(5, 'MHDSD', 'Mohammed', 'Hegazy', 'active', 'user', 'mhd123hesdg@gmail.com', '$2y$10$LnSpj891Vm0hbbKfJRZa1.bJwmEXuPX/eMh5TBuQvGDTVO0ywWdCq', '933097404', '+963', 'Male', 6, NULL, '2024-07-31 08:38:34', '2024-07-31 08:38:34'),
(6, 'MHDSS', 'Mohammed', 'Hegazy', 'active', 'user', 'mhd123hegSS@gmail.com', '$2y$10$InsJ3V7bLIlb/H.bHSn3uuN.ySym4i0g.RBKN8A9d9c2EnYb6iF2y', '933097404', '+963', 'Male', 7, NULL, '2024-07-31 08:39:22', '2024-07-31 08:39:22'),
(7, 'MHD123SS', 'Mohammed', 'Hegazy', 'active', 'user', 'mhd123hegSSDD@gmail.com', '$2y$10$3kfAT4fRZ7tErQOeapISMewB.2Neyyyv/ZFoVeiMSFy0MRxI9K//G', '933097404', '+963', 'Male', 8, NULL, '2024-07-31 08:40:03', '2024-07-31 08:40:03'),
(10, 'MHDCO', 'Mohammed', 'Hegazy', 'pending', 'company', 'mhd123hegCO@gmail.com', '$2y$10$KVr/qSFoOmTBYcmpmoIGL.rfu.2csrYD8hwFbkakNpvRyp8RAwB5a', '933097404', '+963', 'Male', 11, NULL, '2024-07-31 08:45:46', '2024-07-31 08:45:46'),
(11, 'MHDCO1', 'Mohammed', 'Hegazy', 'pending', 'company', 'mhd123hegMHDCO@gmail.com', '$2y$10$sgQX2trCaC3MgtM0oRnT..h.8N5GOgkPV4JGuaXafL7Zvo1NsbLfW', '933097404', '+963', 'Male', 12, NULL, '2024-07-31 11:21:42', '2024-07-31 11:21:42'),
(12, 'MORHAF', 'MORHAF', 'ALDAKAK', 'pending', 'company', 'mhd123hegMorhaf@gmail.com', '$2y$10$0s2ePifpagfIpL/nHcQoPupdePYBfW8Sada/btZA.QZegAUIWseqG', '933097404', '+963', 'Male', 13, NULL, '2024-07-31 11:29:49', '2024-07-31 11:29:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agents_companies_id_foreign` (`companies_id`);

--
-- Indexes for table `agents_rates`
--
ALTER TABLE `agents_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agents_rates_user_id_foreign` (`user_id`),
  ADD KEY `agents_rates_agents_id_foreign` (`agents_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`),
  ADD KEY `companies_places_id_foreign` (`places_id`);

--
-- Indexes for table `estates`
--
ALTER TABLE `estates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estates_user_id_foreign` (`user_id`),
  ADD KEY `estates_places_id_foreign` (`places_id`),
  ADD KEY `estates_social_media_id_foreign` (`social_media_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite-estates`
--
ALTER TABLE `favorite-estates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_estates_user_id_foreign` (`user_id`),
  ADD KEY `favorite_estates_estate_id_foreign` (`estate_id`);

--
-- Indexes for table `favorite_agents`
--
ALTER TABLE `favorite_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_agents_user_id_foreign` (`user_id`),
  ADD KEY `favorite_agents_agents_id_foreign` (`agents_id`);

--
-- Indexes for table `f_estate_ads`
--
ALTER TABLE `f_estate_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_estate_ads_estate_id_foreign` (`estate_id`);

--
-- Indexes for table `f_estate_images`
--
ALTER TABLE `f_estate_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_estate_images_estate_id_foreign` (`estate_id`);

--
-- Indexes for table `f_estate_videos`
--
ALTER TABLE `f_estate_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_estate_videos_estate_id_foreign` (`estate_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_cities_id_foreign` (`cities_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_social_media_id_foreign` (`social_media_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agents_rates`
--
ALTER TABLE `agents_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `estates`
--
ALTER TABLE `estates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite-estates`
--
ALTER TABLE `favorite-estates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_agents`
--
ALTER TABLE `favorite_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_estate_ads`
--
ALTER TABLE `f_estate_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_estate_images`
--
ALTER TABLE `f_estate_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_estate_videos`
--
ALTER TABLE `f_estate_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agents_rates`
--
ALTER TABLE `agents_rates`
  ADD CONSTRAINT `agents_rates_agents_id_foreign` FOREIGN KEY (`agents_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agents_rates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_places_id_foreign` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estates`
--
ALTER TABLE `estates`
  ADD CONSTRAINT `estates_places_id_foreign` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estates_social_media_id_foreign` FOREIGN KEY (`social_media_id`) REFERENCES `social_media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite-estates`
--
ALTER TABLE `favorite-estates`
  ADD CONSTRAINT `favorite_estates_estate_id_foreign` FOREIGN KEY (`estate_id`) REFERENCES `estates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_estates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_agents`
--
ALTER TABLE `favorite_agents`
  ADD CONSTRAINT `favorite_agents_agents_id_foreign` FOREIGN KEY (`agents_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_agents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `f_estate_ads`
--
ALTER TABLE `f_estate_ads`
  ADD CONSTRAINT `f_estate_ads_estate_id_foreign` FOREIGN KEY (`estate_id`) REFERENCES `estates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `f_estate_images`
--
ALTER TABLE `f_estate_images`
  ADD CONSTRAINT `f_estate_images_estate_id_foreign` FOREIGN KEY (`estate_id`) REFERENCES `estates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `f_estate_videos`
--
ALTER TABLE `f_estate_videos`
  ADD CONSTRAINT `f_estate_videos_estate_id_foreign` FOREIGN KEY (`estate_id`) REFERENCES `estates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_cities_id_foreign` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_social_media_id_foreign` FOREIGN KEY (`social_media_id`) REFERENCES `social_media` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
