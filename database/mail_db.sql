-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Янв 22 2021 г., 16:53
-- Версия сервера: 8.0.22
-- Версия PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mail_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id_from` int NOT NULL,
  `user_id_to` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `user_id_from`, `user_id_to`, `subject`, `body`, `read`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Message', 'This is a message from Serge to Cris', 0, 0, NULL, NULL),
(2, 2, 1, 'New subject', 'Next message from Cris to Serge', 1, 0, '2021-01-20 14:21:22', '2021-01-20 14:53:27'),
(3, 1, 2, 'Re:Replay to Cris New subject', 'Next message', 0, 0, '2021-01-20 14:23:02', '2021-01-20 14:23:02'),
(4, 3, 1, 'From Mike to Serge', 'First Message From Mike to Serge', 1, 0, '2021-01-20 14:25:57', '2021-01-20 17:53:46'),
(5, 3, 2, 'Message from Mike to Cris', 'First message from Mike to Cris', 0, 0, '2021-01-20 14:27:14', '2021-01-20 14:27:14'),
(6, 3, 1, 'Message # 2 from Mike to Serge', 'Message # 2 from Mike to Serge', 1, 0, '2021-01-20 14:29:04', '2021-01-20 14:56:42'),
(7, 3, 1, 'Message # 3 from Mike to Serge', 'Message # 3 from Mike to Serge', 1, 0, '2021-01-20 14:31:05', '2021-01-20 17:59:45'),
(8, 3, 2, 'Message # 2 from Mike to Cris', 'Message # 2 from Mike to Cris', 1, 0, '2021-01-20 14:32:19', '2021-01-20 18:01:35'),
(9, 1, 2, 'Message from Serge to Cris 34', 'Message from Serge to Cris 34', 1, 0, '2021-01-20 14:35:04', '2021-01-20 15:58:30'),
(10, 1, 2, 'Message from Serge to Cris 35', 'Message from Serge to Cris 35', 1, 0, '2021-01-20 14:36:04', '2021-01-20 14:37:29'),
(11, 2, 1, 'Re: Message from Cris to Serge 39', 'Message from Cris to Serge 39', 1, 0, '2021-01-20 14:38:38', '2021-01-22 11:49:55'),
(12, 1, 3, '№ 1 from Serge to Mike', 'Message № 1  from Serge to Mike', 1, 0, '2021-01-20 15:30:07', '2021-01-20 16:03:02'),
(13, 1, 3, '№ 2 from Serge to Mike', 'Message № 2 from Serge to Mike', 1, 0, '2021-01-20 15:31:08', '2021-01-20 16:03:50'),
(14, 1, 3, '№ 3 from Serge to Mike', 'Message № 3 from Serge to Mike', 0, 0, '2021-01-20 15:55:28', '2021-01-20 15:55:28'),
(15, 1, 3, '№ 4 from Serge to Mike', 'Message № 4 from Serge to Mike', 1, 1, '2021-01-20 15:56:23', '2021-01-20 16:06:51'),
(16, 2, 3, '№ 1 from Cris to Mike', 'Message № 1 from Cris to Mike', 0, 0, '2021-01-20 15:57:28', '2021-01-20 15:57:28'),
(17, 2, 3, '№ 2 from Cris to Mike', 'Message № 2 from Cris to Mike', 0, 0, '2021-01-20 15:57:57', '2021-01-20 15:57:57'),
(18, 2, 3, '№ 3 from Cris to Mike', 'Message № 3 from Cris to Mike', 0, 0, '2021-01-20 15:59:03', '2021-01-20 15:59:03');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_20_152310_create_messages_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Serge', 'admin@admin.com', NULL, '$2y$10$g0C2YICwZaOgiRDVwd0p4O5NqOfQ6PFXiYcVTqsTYWbkUXqhQmL3W', NULL, '2021-01-20 10:39:31', '2021-01-20 10:39:31'),
(2, 'Cris', 'cris@cris.com', NULL, '$2y$10$Aynp3ndJu2ypg6Le70Q/Se3zNzXj9yn8HMw.3fIHLkau0V5svxleG', 'phgDuGlV0luW1HsIW5IqwuJCfEmwevhyXf91OaccgmP4gQsEDRf6AZORvA5I', '2021-01-20 11:10:12', '2021-01-20 11:10:12'),
(3, 'Mike', 'mike@mike.com', NULL, '$2y$10$Wc87DWaUNdCngF5.PxCkO.N3.U6J4LNpI9dDys04L5ihgmhEL1eCG', 'oHVplyxW0DIr6hJZHKefFzS5i87K1GCUMjEQe4vC16rATM43Bd0Ci3KN2l3f', '2021-01-20 14:25:13', '2021-01-20 14:25:13'),
(4, 'Nicolas', 'nicolas@admin.com', NULL, '$2y$10$..KlSVqCSftmbIZ50u6w2eNbZemi8tFHoGnnRVWUPpwyqST5n/1re', NULL, '2021-01-20 18:27:04', '2021-01-20 18:27:04');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
