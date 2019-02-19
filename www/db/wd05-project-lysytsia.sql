-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2019 г., 11:27
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
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'ДМИТРИЙ ЛИСИЦА', '<p>test</p>\r\n', '-360314902.jpg'),
(2, 'ДМИТРИЙ ЛИСИЦА', '<p>test</p>\r\n', '279588026.jpg');

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
(12, 'Работа'),
(13, 'Туризм'),
(14, 'Спорт'),
(15, 'Дайвинг'),
(16, 'Охота'),
(17, 'HTML'),
(25, 'Музыка');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(27, 37, 4, 'начинается от 70500 гривен на двоих								\r\n							', '2019-02-13 20:24:30'),
(81, 38, 4, 'Оставить комментарий', '2019-02-14 19:34:14');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` double DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'dneprfox@gmail.com', 380508583678, 'Днепр,Украина', 'Дмитрий', 'Лисица', '1', '2', '3', '4', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(2, '17.02.2019', 'Menager', 'test2														\r\n						');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci,
  `date_time` datetime DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `message`, `date_time`, `message_file_name_original`, `message_file`) VALUES
(12, '222info@mail.com', 'Виктор Караваев', 'тестовое сообщение							\r\n\r\n						', '2019-02-15 19:34:22', '159074.jpg', '-628764587.jpg');

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
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(10, 'Названы претенденты на звание &laquo;World Car of The Year 2019&raquo;', '  Организаторы конкурса «World Car of The Year» (Всемирный автомобиль года) объявили десятку претендентов на победу. Победителя конкурса и лучших в пяти дополнительных категориях, объявят в апреле в рамках Нью-Йоркского автосалона.\r\n						\r\n							', 4, '2019-02-07 18:48:48', '188978103.jpg', '320-188978103.jpg', '1', NULL),
(11, 'Следующий Nissan X-Trail будут выпускать в Японии', 'Компания Nissan объявила о переносе производства кроссовера X-Trail следующего поколения. Вместо Великобритании кроссовер будут собирать на родине марки — в Японии.								\r\n							', 4, '2019-02-07 18:50:33', '629396882.jpg', '320-629396882.jpg', '2', NULL),
(14, 'Porsche объявила глобальный отзыв Panamera', 'Компания Porsche отзывает Panamera второго поколения из-за проблем с блоком управления электроусилителем рулевого управления. Под отзыв попали 74 585 автомобилей, выпущенных с 21 марта 2016 года по 6 декабря 2018 года.								\r\n							', 4, '2019-02-07 18:55:27', '-590694188.jpg', '320--590694188.jpg', '3', NULL),
(29, 'новый тест', 'новый пост								\r\n							', 4, '2019-02-11 19:43:08', '-565669720.jpg', '320--565669720.jpg', '6', NULL),
(33, 'Представлен обновленный Mitsubishi ASX 2020', '<p>Со времени своего дебюта в 2009 году, Mitsubishi ASX разошелся тиражом около 1,32 миллиона экземпляров. Глобальная модель была представлена в почти 90 странах мира. Крупнейшими рынками для ASX стали США, Европа, Австралия и Китай. Нынешнее третье поколение кроссовера является одной из ключевых моделей бренда и играет важную роль в глобальной стратегии компании.</p>\r\n', 4, '2019-02-12 15:58:42', '625957501.jpg', '320-625957501.jpg', '6', NULL),
(34, 'Инженеры Audi и Porsche пришли в шок после разборки Tesla Model 3', '<p>В этом году Tesla Model 3 выйдет на европейский рынок. Разумеется, только если все пойдет по плану, что совсем необязательно в случае расписания Илона Маска. Тем не менее, европейские компании готовятся встречать амбициозную заокеанскую новинку. Что это значит?</p>\r\n', 4, '2019-02-12 16:02:57', '623051816.jpg', '320-623051816.jpg', '6', NULL),
(36, 'Манчестер Юнайтед сыграет с ПСЖ, а Порту приедет в Рим - анонс матчей Лиги чемпионов', '<p>12 февраля стартует решающая часть Лиги чемпионов. В турнире осталось 16 команд, которые решат между собой, кто сыграет в майском финале в Мадриде. Слабых уже нет, и в каждом матче присутствует интрига. &quot;Вести&quot; разобрали все восемь пар плей-офф Лиги чемпионов и взвесили все &ldquo;за&rdquo; и &ldquo;против&rdquo; успеха каждого из претендентов на трофей.</p>\r\n', 4, '2019-02-12 16:14:02', '-384449875.jpeg', '320--384449875.jpeg', '14', '2019-02-12 16:14:42'),
(37, 'В Африке выпал снег! Слонов и жирафов, бродящих по сугробам, вы еще не видели', '<p>В Южно-Африканской Республике, в природном заповеднике Sneeuberg Nature Reserve, выпал снег. В соцсетях появились фотографии жирафов и слонов, идущих на фоне деревьев, покрытых толстым слоем снега. Об этом в воскресенье, 9 сентября, сообщило сообщество Cyclone Of Rhodes в Facebook.</p>\r\n', 4, '2019-02-12 16:16:50', '973928067.jpg', '320-973928067.jpg', '1', NULL),
(38, 'Доминикана не падает в цене, но спросом всё равно пользуется', '<p>Минимальная стоимость пакетного тура с прямым перелётом в Доминикану по состоянию на понедельник 4 февраля начинается от 70500 гривен на двоих (причём даже не на февраль, а с вылетом в начале марта). Стоимость туров на ближайшие даты ощутимо выше, но при этом рейсы закрываются хорошо: судя по онлайн-монитору Anex Tour, основная часть мест на вылеты 13 и 23 февраля уже продана.&nbsp;</p>\r\n', 4, '2019-02-12 16:19:35', '-675136943.jpg', '320--675136943.jpg', '13', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` int(11) UNSIGNED DEFAULT NULL,
  `css` int(11) UNSIGNED DEFAULT NULL,
  `js` int(11) UNSIGNED DEFAULT NULL,
  `jquery` int(11) UNSIGNED DEFAULT NULL,
  `php` int(11) UNSIGNED DEFAULT NULL,
  `mysql` int(11) UNSIGNED DEFAULT NULL,
  `git` int(11) UNSIGNED DEFAULT NULL,
  `gulp` int(11) UNSIGNED DEFAULT NULL,
  `npm` int(11) UNSIGNED DEFAULT NULL,
  `yarn` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `npm`, `yarn`) VALUES
(1, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50);

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
(1, 'dneprfox@gmail.com', 'user', '$2y$10$xDBxhbWYobfTebVo.v1N9.aBFL1AeSo/rOO8ABMR2csnWnX2wW2BG', 'Михаил', 'Светлов', 'Киев', 'Украина', '171840494.jpeg', '48-171840494.jpeg', NULL, NULL),
(4, 'info@mail.com', 'admin', '$2y$10$K8Znw5SYvn99sl/ep43RZu8RKnYOeBDF1SCFUfje6pK4LzX0sHHGO', 'Дмитрий', 'Лисица', 'Днепр', 'Украина', '-256184651.jpg', '48--256184651.jpg', 'SsBmQgZoCPANhVp', 0),
(5, '5info@mail.com', 'user', '$2y$10$fjVUhPyyQl5aGFa4lHSXxu6nG9XmjIO86JwC9inifl9PPZ2hwSIF6', 'Семен', 'Горбунков', 'Оттава', 'Канада', '42982273.jpg', '48-42982273.jpg', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_post_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
