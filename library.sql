-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 18 2018 г., 17:07
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Altos Black', '2018-11-17 22:01:12', '2018-11-17 22:01:12'),
(2, 'Максим Малинин', '2018-11-17 22:01:28', '2018-11-17 22:01:28'),
(3, 'Андрей Любимы', '2018-11-17 22:01:42', '2018-11-17 22:01:42'),
(4, 'Артём Хороший', '2018-11-17 22:01:55', '2018-11-17 22:01:55'),
(5, 'Александр Дюма', '2018-11-18 09:57:15', '2018-11-18 09:57:15'),
(6, 'Александр Дюма 2', '2018-11-18 09:57:34', '2018-11-18 09:57:34');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `file`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Что-то со смыслом', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum omnis error quae dicta quidem illo atque quisquam a enim accusantium molestias iste, consectetur voluptas reiciendis impedit doloribus ea mollitia, excepturi commodi ipsam aperiam, itaque explicabo.\r\n\r\nEt dolore, unde non quod sint, blanditiis doloribus corporis quibusdam tempora commodi itaque cumque, velit officiis assumenda eveniet sed ad. Impedit voluptatibus excepturi ipsa, quidem architecto nulla, explicabo, ex eius quo nesciunt tempore dicta fugiat suscipit ipsum alias iste, vel consequatur optio libero doloremque fuga voluptas nam deleniti sint? Omnis vero voluptatum esse reiciendis veniam, animi quasi assumenda, delectus ut labore culpa pariatur fuga.\r\n\r\nEst suscipit praesentium nihil, aliquid dolore minus, cupiditate natus ipsa magni consequatur animi nisi necessitatibus repellendus, incidunt eveniet atque facere, asperiores quos iste quam debitis eaque reiciendis. Iusto rem laudantium, laboriosam in similique maxime nulla eos, voluptatum sint optio esse dolorem ducimus saepe architecto repellendus. Incidunt cumque aliquam porro et eos?', 'm1R1R10KDd.torrent', '2018-11-17 22:04:39', '2018-11-18 07:33:58', NULL),
(3, 'Ещё одна книга', 'Тут её описание', 'Ua0Ae9Cbvk.torrent', '2018-11-18 08:19:40', '2018-11-18 08:19:40', NULL),
(4, 'Книга 3', 'У неё 4 автора', 'cpuQASyo2e.torrent', '2018-11-18 08:20:06', '2018-11-18 08:20:06', NULL),
(5, 'Три мушкетёра', 'Александр Дюма. Три мушкетера. Роман. Юный гасконец д\'Артаньян полон дерзких планов покорить Париж. Его ловкость и проворство, жизнерадостность и благородство привлекают к нему не только друзей, но и врагов, которые хотели бы видеть этого мужественного и ...', NULL, '2018-11-18 09:58:29', '2018-11-18 09:58:29', NULL),
(6, 'Три мушкетёра', 'Александр Дюма. Три мушкетера. Роман. Юный гасконец д\'Артаньян полон дерзких планов покорить Париж. Его ловкость и проворство, жизнерадостность и благородство привлекают к нему не только друзей, но и врагов, которые хотели бы видеть этого мужественного и ...', 'spKLqPmw9Y.torrent', '2018-11-18 09:59:08', '2018-11-18 09:59:08', NULL),
(7, 'qweqwe', 'ЯВЧПмчя', NULL, '2018-11-18 09:59:30', '2018-11-18 09:59:30', NULL),
(8, 'qweqwe', 'авпт', 'ajnK198S8k.jpeg', '2018-11-18 10:01:19', '2018-11-18 10:01:19', NULL),
(9, 'qweqwebggh', 'ывапритвпсч', 'fQNXL49rrr.jpeg', '2018-11-18 10:02:14', '2018-11-18 10:02:14', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `book_authors`
--

CREATE TABLE `book_authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book_authors`
--

INSERT INTO `book_authors` (`id`, `book_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 2, 2, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 3, 1, NULL, NULL),
(9, 3, 2, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 4, 4, NULL, NULL),
(14, 6, 1, NULL, NULL),
(15, 6, 5, NULL, NULL),
(16, 6, 6, NULL, NULL),
(17, 8, 2, NULL, NULL),
(18, 9, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2018_11_16_204818_create_books_table', 1),
(14, '2018_11_16_204846_create_authors_table', 1),
(15, '2018_11_16_211402_create_books_authors_table', 1);

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book_authors`
--
ALTER TABLE `book_authors`
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
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `book_authors`
--
ALTER TABLE `book_authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
