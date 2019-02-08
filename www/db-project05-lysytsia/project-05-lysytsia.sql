-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 08 2019 г., 23:56
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project-03`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Природа'),
(2, 'Отдых'),
(3, 'Увлечения'),
(6, 'Автомир'),
(12, 'Работа');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`) VALUES
(10, 'Названы претенденты на звание &laquo;World Car of The Year 2019&raquo;', '  Организаторы конкурса «World Car of The Year» (Всемирный автомобиль года) объявили десятку претендентов на победу. Победителя конкурса и лучших в пяти дополнительных категориях, объявят в апреле в рамках Нью-Йоркского автосалона.\r\n						\r\n							', 4, '2019-02-07 18:48:48', '188978103.jpg', '320-188978103.jpg'),
(11, 'Следующий Nissan X-Trail будут выпускать в Японии', 'Компания Nissan объявила о переносе производства кроссовера X-Trail следующего поколения. Вместо Великобритании кроссовер будут собирать на родине марки — в Японии.								\r\n							', 4, '2019-02-07 18:50:33', '629396882.jpg', '320-629396882.jpg'),
(12, 'В Штутгарте представлен необычный &laquo;дом на колесах&raquo; Skydancer Apero', '	На выставке CMT 2019 в Штутгарте выставлен первый серийный моторхоум-кабриолет —Skydancer Apero. Выставочный образец оценивается в 128 520 евро. В Европе «дом на колесах» с открытой крышей уже доступен для заказа.							\r\n							', 4, '2019-02-07 18:52:11', '-277236040.jpg', '320--277236040.jpg'),
(13, 'Genesis G70, Hyundai Kona и Ram 1500 стали &laquo;Автомобилями года&raquo; в Америке', 'На автосалоне в Детройте объявлены победители конкурса «2019 North American Car, Truck and Utility Vehicle of the Year». Ими стали седан Genesis G70, кроссовер Hyundai Kona/Kona EV и пикап Ram 1500.								\r\n							', 4, '2019-02-07 18:53:48', '515660082.jpg', '320-515660082.jpg'),
(14, 'Porsche объявила глобальный отзыв Panamera', 'Компания Porsche отзывает Panamera второго поколения из-за проблем с блоком управления электроусилителем рулевого управления. Под отзыв попали 74 585 автомобилей, выпущенных с 21 марта 2016 года по 6 декабря 2018 года.								\r\n							', 4, '2019-02-07 18:55:27', '-590694188.jpg', '320--590694188.jpg'),
(15, 'Внедорожник Toyota Sequoia дебютировал в самой вездеходной версии TRD Pro', '	Подразделение Toyota Racing Development (TRD), специализирующееся на тюнинге автомобилей Toyota и Lexus, представило «вездеходную» модификацию внедорожника Sequoia. Премьера новинки, ориентированной на американский рынок, состоялась на автосалоне в Чикаго.							\r\n							', 4, '2019-02-07 18:58:36', '1000731526.jpg', '320-1000731526.jpg'),
(16, 'Apple уволила более 200 человек из отдела разработки самоуправляемого автомобиля', '	Apple закрывает «сверхсекретный» проект Titan. Более 200 сотрудников, занимавшихся разработкой электрического беспилотника, уволены или переведены в другие подразделения компании.\r\n							\r\n							', 4, '2019-02-08 13:57:55', '1045621389.jpg', '320-1045621389.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `role`, `password`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'dneprfox@gmail.com', 'user', '$2y$10$xDBxhbWYobfTebVo.v1N9.aBFL1AeSo/rOO8ABMR2csnWnX2wW2BG', 'Юрий', 'Ключевский', 'Киев', 'Украина', '59645485.jpg', '48-59645485.jpg', NULL, NULL),
(3, 'autodnepr-us@mail.ru', 'user', '$2y$10$tyzAs1DR.19THl8U/w117.HsspwYscBFLK4yoRdGdQ0w4FENhxHfG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'info@mail.com', 'admin', '$2y$10$K8Znw5SYvn99sl/ep43RZu8RKnYOeBDF1SCFUfje6pK4LzX0sHHGO', 'Дмитрий', 'Лисица', 'Днепр', 'Украина', '1153428221.jpg', '48-1153428221.jpg', 'SsBmQgZoCPANhVp', 0),
(5, '5info@mail.com', 'user', '$2y$10$fjVUhPyyQl5aGFa4lHSXxu6nG9XmjIO86JwC9inifl9PPZ2hwSIF6', 'Семен', 'Горбунков', 'Оттава', 'Канада', '42982273.jpg', '48-42982273.jpg', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_post_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
