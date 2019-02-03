-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 11 2018 г., 15:13
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(4, 'info@mail.com', '$2y$10$k.kWKjvnleWXsVOmKeBmmugpF1JpxiDOsOXB0mZ3aH3xwxJmd5kcW', 'admin', 'Юрий', 'Ключевский', 'Москва', 'Россия', '435071807.jpg', '48-435071807.jpg', 'MPdGUCB1bz9XY58', 0),
(7, 'user@mail.com', '$2y$10$nbXNtd8k1IPOwmhCSLYM.efHK7k/lwjgwvFsdEVmyjCcV475jaM/y', 'user', 'Емельян', 'Казаков', 'Рязань', 'Россия', '585811612.jpg', '48-585811612.jpg', NULL, NULL),
(8, 'info2@mail.com', '$2y$10$V6rXC1PA.go9GfSAcEpkXOj.s7rdm09LngQMigWJbK6hRXYyyiuKG', 'user', 'Василий', 'Давыдов', 'Киев', 'Украина', '67591643.jpg', '48-67591643.jpg', NULL, NULL),
(9, 'info3@mail.com', '$2y$10$ho31CYy3SXUK/AcQxOGTD.m0FsOUR1CUeBkZrXfGt/qa4i1zSLmXK', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'info4@mail.com', '$2y$10$SEzxf4yqSQxkT6wFYTisQ.ZCflDHeRt.B11EMbNbrCv9rMUpYkLTu', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
