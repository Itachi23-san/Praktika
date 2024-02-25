-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 26 2024 г., 01:54
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Prince`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(4, 'nike');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) UNSIGNED DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `price`, `url`, `link`) VALUES
(1, 'HOODIE «DEMON»', 5000, 'http://praktika/assets/img/HOODIE%20DEMON.webp', 'http://praktika/HOODIE.php'),
(3, 'SCARF «JAM»', 2500, 'http://praktika/assets/img/SCARF%20JAM.webp', 'http://praktika/SCARF JAM.php'),
(4, '«RYODAN» DOWN JACKET', 7999, 'http://praktika/assets/img/RYODAN%20DOWN%20JACKET.webp', 'http://praktika/DOWN JACKET.php'),
(5, 'SCARF «SUZUYA»', 2500, 'http://praktika/assets/img/SCARF%20SUZUYA.webp', 'http://praktika/SCARF SUZUYA.php'),
(6, 'SWEATER «WHOAMI»', 4500, 'http://praktika/assets/img/SWEATER%20WHOAMI.webp', 'http://praktika/SWEATER.php'),
(7, 'LONGSLEEVE «HISOKA»', 3200, 'http://praktika/assets/img/LONGHISOKA.png', 'http://praktika/LONGH.php'),
(9, '«AOGIRI TREE» LONGSLEEVe', 4000, 'http://praktika/assets/img/Long%20AOGIRI.webp', 'http://praktika/LONGA.php');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_snek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reklama`
--

CREATE TABLE `reklama` (
  `id` int(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reklama`
--

INSERT INTO `reklama` (`id`, `name`, `url`) VALUES
(1, 'gvozdi', 'http://randomaze.ru/useruploads/images/2_style/gvozd_logo.jpg'),
(2, 'gvozdi', 'http://randomaze.ru/useruploads/images/2_style/gvozd_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `slides`
--

CREATE TABLE `slides` (
  `id` int(64) NOT NULL,
  `image_url` varchar(191) NOT NULL,
  `alt_text` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `slides`
--

INSERT INTO `slides` (`id`, `image_url`, `alt_text`) VALUES
(3, 'https://onlywoman.xyz/wp-content/uploads/2022/01/foto-pitanie.jpg', 'Протеин');

-- --------------------------------------------------------

--
-- Структура таблицы `snek`
--

CREATE TABLE `snek` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `snek`
--

INSERT INTO `snek` (`id`, `name`, `des`, `brand`, `price`) VALUES
(10, 'Cortez', '▪ В наличии на складе (доставку уточняйте)\n▪ Размеры 36-40, 41-45\n▪ Реальные фото из нашего магазина', 'Nike', 4999),
(13, '1', '1', 'nike', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pswd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pswd`, `access`) VALUES
(1, '', 'Creator@mail.ru', 'admen', 2),
(2, '', 'sad@mail.ru', '202cb962ac59075b964b07152d234b70', 0),
(5, '', 'danya@lol', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(6, 'Данил', 'Ars@dadvas', 'QjlvWz(EZSn_b', 2),
(7, 'Даниил Николаевич Герасимов', 'daniildoter23@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 1),
(8, 'Daniil', 'Danger@ru', 'ab9e02a837cf800696883ae090fb1d5d', 1),
(9, 'Стас', 'Sts@ru', 'a4c6649354bfa00a1410f749470df3fa', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) UNSIGNED DEFAULT NULL,
  `fio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adres` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ind` int(11) UNSIGNED DEFAULT NULL,
  `tele` int(11) UNSIGNED DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`id`, `name`, `size`, `price`, `fio`, `country`, `adres`, `ind`, `tele`, `link`) VALUES
(1, 'HOODIE «DEMON»', 'S', 4699, 'а', 'паыв', 'ыфа', 45, 43, 'hgfsd');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reklama`
--
ALTER TABLE `reklama`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `reklama`
--
ALTER TABLE `reklama`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
