-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2018 г., 16:31
-- Версия сервера: 5.6.34
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
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Путешествия'),
(2, 'Покупки'),
(3, 'PHP'),
(4, 'Заметки'),
(6, 'HTML заметки');

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
(5, 25, 4, 'В стартапе не раскрывают первые регионы, в которых будет запущен проект, но говорят, что рассматривают несколько городов, в том числе Сан-Франциско.', '2018-07-22 13:13:36'),
(6, 25, 9, 'Лидерами раунда инвестиций стали сооснователь Atlassian Майк Кэннон-Брукс и основатель китайского фонда Primavera Capital Фред Ху. В общей сложности компания привлекла уже $800 млн.', '2018-07-22 13:26:05'),
(7, 17, 9, 'Стартап основан выходцем из России Эдуардом Шендеровичем, который участвовал в создании SUP Media и покупке &laquo;Живого журнала&raquo;.', '2018-07-22 13:40:38'),
(8, 15, 9, 'Хольцхаузен успел поработать восемь лет в концерне Volkswagen &mdash; именно он и его команда стояли за разработкой дизайна модели New Beetle, которая покорила сердца и кошельки публики.', '2018-07-22 13:42:54');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
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
(1, 'info@rightblog.ru', '+7-903-555-77-55', 'г. Москва', 'Юрий', 'Ключевский', 'yurij', 'twitter', 'twitter', 'nobleworkshop', 'twitter');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(11, '&laquo;Яндекс&raquo; договорился с властями Москвы о развитии беспилотного транспорта', '<p>Вместе они подготовят законодательную базу для запуска самоуправляемых автомобилей.</p>\r\n\r\n<p>&laquo;Яндекс&raquo; подписал соглашение с правительством Москвы о сотрудничестве в развитии беспилотного транспорта, сообщили vc.ru в пресс-службе компании.</p>\r\n\r\n<p>Соглашением предусмотрено развитие в Москве технологий беспилотного управления транспортом, создание необходимой для их внедрения законодательной базы, подготовка кадров в этой сфере и разработка решений, связанных с кибербезопасностью при эксплуатации беспилотного транспорта,&nbsp;<a href=\"http://tass.ru/ekonomika/5380611\" rel=\"nofollow noopener\" target=\"_blank\">уточняет</a>&nbsp;ТАСС со ссылкой на столичную мэрию.</p>\r\n\r\n<blockquote>\r\n<p>Светофоры, камеры, детекторы, трекеры на городском транспорте &mdash; вся инфраструктура имеет потенциал к работе по технологии интернета вещей и взаимодействию с интеллектуальными системами автомобилей. Это позволит транспорту без помощи водителя безошибочно ориентироваться в городском пространстве.&nbsp;<br />\r\n<br />\r\nпресс-служба мэрии Москвы</p>\r\n</blockquote>\r\n\r\n<p>Тестирование беспилотных автомобилей с водителем за рулём в реальных условиях поможет быстрее научить машины нюансам вождения и повысить конкурентоспособность российских технологий на мировом уровне, считает гендиректор &laquo;Яндекса&raquo; в России Елена Бунина.</p>\r\n\r\n<p>&laquo;Яндекс&raquo; работает над технологией беспилотного управления автомобилем с 2016 года. В феврале 2018 года беспилотная машина компании впервые проехала по улицам Москвы, а в июне&nbsp;<a href=\"https://vc.ru/40656-yandeks-pokazal-pervuyu-mezhdugorodnyuyu-poezdku-bespilotnogo-avtomobilya\" rel=\"nofollow noopener\" target=\"_blank\">преодолела</a>&nbsp;789 километров, доехав от Москвы до Казани. Во время испытаний за рулём находился водитель, который контролировал ситуацию.</p>\r\n', 4, '2018-07-17 15:49:43', NULL, NULL, 3, '2018-07-18 11:43:44'),
(15, 'Кто работает на Маска: 15 ключевых сотрудников Tesla', '<p>Компания переманила их из ведущих корпораций: от Apple до Amazon.</p>\r\n\r\n<p>Илон Маск редко рассказывает о команде Tesla.&nbsp;<a href=\"https://www.bloomberg.com/graphics/2018-tesla-org-chart/\" rel=\"nofollow noopener\" target=\"_blank\">Исключения</a>&nbsp;бывают на ежегодных собраниях акционеров: в этом году вместе с Маском на сцену вышли пять человек, но даже не все из них были представлены публике.</p>\r\n\r\n<p>Tesla &mdash; компания с 15-летней историей, успех которой зависел не только от Илона Маска, но и от его команды. Компания набирает на ключевые позиции сотрудников с блестящей карьерой и идеальным образованием.</p>\r\n\r\n<p>В устройстве Tesla есть три позиции ключевых сотрудников высшего звена, а также около 20 вице-президентов. Одна из отличительных особенностей компании &mdash; в категорию высшего звена входит главный дизайнер.</p>\r\n\r\n<h2>Главный дизайнер, арт-директор Франц фон Хольцхаузен</h2>\r\n\r\n<p>Именитый дизайнер&nbsp;<a href=\"https://www.tesla.com/blog/franz-von-holzhausen-joins-tesla-motors-chief-designer\" rel=\"nofollow noopener\" target=\"_blank\">перешёл</a>&nbsp;в Tesla в 2008 году. На самом старте у него уже было много работы: Францу предстояло исправить все ошибки его предшественника Фиксера и сделать из Tesla Model S культовый продукт.</p>\r\n\r\n<p>Хольцхаузен успел поработать восемь лет в концерне Volkswagen &mdash; именно он и его команда стояли за разработкой дизайна модели New Beetle, которая покорила сердца и кошельки публики.</p>\r\n\r\n<p>Затем карьера продолжилась на должности шеф-дизайнера Mazda &mdash; стабильного концерна с большими продажами и денежными оборотами, в то время как Tesla в 2008 году была близка к банкротству и не представляла из себя стабильную компанию. Несмотря на это, Хольцхаузен&nbsp;<a href=\"http://www.apple.com/\" rel=\"nofollow noopener\" target=\"_blank\">согласился</a>&nbsp;на переход в компанию: &laquo;Это было волнительное чувство. Как будто я снова засяду в гараже и буду делать крутые тачки&raquo;.</p>\r\n\r\n<h2>Финансовый директор Дипак Ахьюджа</h2>\r\n\r\n<p>В руках 55-летнего управленца сосредоточены все деньги Tesla &mdash; он&nbsp;<a href=\"https://www.tesla.com/blog/deepak-ahuja-seasoned-auto-industry-finance-executive-joins-tesla-motors-cfo\" rel=\"nofollow noopener\" target=\"_blank\">занимает</a>должность финансового директора с 2008 года. Ахьюджа &mdash; специалист с большим опытом в сфере автомобильной техники: до Tesla он 15 лет работал в Ford Motor Company и занимал должность финансового директора подразделения в Южной Африке стоимостью $3 млрд.</p>\r\n\r\n<p>До этого Дипак работал финансовым директором Auto Alliance International, совместного предприятия между Ford и Mazda с доходом более чем $4 млрд.</p>\r\n\r\n<p>Генеральный директор Tesla Зеев Дрори&nbsp;<a href=\"http://www.apple.com/\" rel=\"nofollow noopener\" target=\"_blank\">отмечал</a>, что опыт Дипака в качестве финансового директора многомиллиардных бизнес-единиц с глобальными источниками поставок и производственными операциями делает его идеальным человеком для руководства компанией.</p>\r\n\r\n<p>Опытный руководитель среди топ-менеджеров оправдал ожидания и&nbsp;<a href=\"https://economictimes.indiatimes.com/magazines/panache/meet-the-man-who-elon-musk-says-will-decide-teslas-future-in-india/articleshow/64444503.cms\" rel=\"nofollow noopener\" target=\"_blank\">завоевал</a>полное доверие Илона Маска: когда у него спросили про выход Tesla на индийский рынок, он заявил, что такое решение будет принято только тогда, когда Дипак сочтёт его необходимым.</p>\r\n\r\n<h2>Технический директор Джеффри Брайан Штробель</h2>\r\n\r\n<p>В Штатах американского инженера зовут &laquo;ДжейБи&raquo; Штробель. Он стал техническим директором Tesla Motors в 2004 году. &laquo;Я рассказал, что разрабатываю нужный им батарейный блок на деньги Илона прямо за углом. Мы согласились объединить усилия и сформировали нашу группу отщепенцев&raquo;, &mdash; так он&nbsp;<a href=\"http://www.forbes.ru/tekhnologii/tekhnika-i-biznes/290255-istoriya-tesla-kak-milliarder-ilon-mask-perevernul-mirovoi-avto?page=0,0\" rel=\"nofollow noopener\" target=\"_blank\">вспоминает</a>&nbsp;свой переход в Tesla Motors.</p>\r\n\r\n<p>ДжейБи &mdash; ответственный за все исследования, разработки и производство программного обеспечения для двигателей и электроники. Без него не обходится ни одна техническая экспертиза и переговоры с ключевыми подрядчиками. Сейчас он единственный в компании, помимо Маска, при чьём участии создавались все продукты Tesla.</p>\r\n\r\n<p>За время работы в Tesla Штробель завоевал уважение Маска и стал посредником между сотрудниками компании и Илоном &mdash; он мог от лица сотрудников высказывать претензии и недовольства, зная, что его точно выслушают.</p>\r\n\r\n<h2>Вице-президент, директор по управлению человеческими ресурсами Габриэль Толедано</h2>\r\n\r\n<p>Одна из новых сотрудниц Tesla,&nbsp;<a href=\"https://www.tesla.com/blog/tesla-welcomes-gaby-toledano\" rel=\"nofollow noopener\" target=\"_blank\">присоединившаяся</a>&nbsp;к компании в мае 2017 года. До работы в автоконцерне Габриэль на протяжении десяти лет занимала аналогичную должность в компании Electronic Arts.</p>\r\n\r\n<p>Она зарекомендовала себя как человек, чётко разбирающийся в индустрии и готовый дать ответы на все вопросы по трудоустройству &mdash; в особенности общественность обратила внимание на её статью в&nbsp;<a href=\"https://www.forbes.com/sites/forbeswomanfiles/2013/01/18/women-and-video-gamings-dirty-little-secrets/%237efac8ea2e8c\" rel=\"nofollow noopener\" target=\"_blank\">Forbes</a>&nbsp;о сексизме в игровой индустрии. Габриэль аргументированно рассказала, что в игровой индустрии отсутствует сексизм &mdash; женщины сами неохотно идут в индустрию работать.</p>\r\n\r\n<h2>Вице-президент по правовому регулированию Джонатан Чан</h2>\r\n\r\n<p>Джонатан&nbsp;<a href=\"https://www.linkedin.com/in/jchanger\" rel=\"nofollow noopener\" target=\"_blank\">работает</a>&nbsp;в Tesla уже семь лет. Он успешно разбирался с правовыми регулированиями разных стран при выходе компании на тот или иной рынок. До Tesla он несколько лет работал руководителем отдела по юридическому развитию в Lithium &mdash; компании по разработке программного обеспечения для социальных сервисов.</p>\r\n\r\n<h2>Временный вице-президент по мировым продажам Робин Рен</h2>\r\n\r\n<p>Он&nbsp;<a href=\"https://bec.org.hk/files/images/BEC_EnviroSeries/2017/speakers_bios/Mr_Robin_Bio_revised.pdf\" rel=\"nofollow noopener\" target=\"_blank\">присоединился</a>&nbsp;к Tesla в мае 2015 года и занял должность вице-президента азиатско-тихоокеанского региона, а сейчас руководит отделом международных продаж.</p>\r\n\r\n<p>Робин закончил университет Пенсильвании, а потом получил степень магистра электротехники в Стэнфордском университете. Его карьера началась с корпорации Yahoo, где он возглавил команду инженеров по разработке и обслуживанию.</p>\r\n\r\n<p>После Yahoo Роберт перешёл в XtremIO &mdash; компанию, занимающуюся уникальными разработками по системам хранения данных. Он стал техническим директором в 2010 году и на протяжении пяти лет занимался разработкой накопителей. Под его руководством XtremIO стала первой компанией в сфере информационных технологий с денежным оборотом в $1 млрд.</p>\r\n\r\n<h2>Вице-президент по грузовым разработкам и программам Джером Гиллен</h2>\r\n\r\n<p>Джером&nbsp;<a href=\"https://cleantechnica.com/2016/08/04/curious-case-jerome-guillen-tesla-semi-trucks-nikola-one/\" rel=\"nofollow noopener\" target=\"_blank\">пришёл</a>&nbsp;в компанию в 2012 году и стал вице-президентом по части машинной инженерии. Он пробыл на этой должности чуть больше года, после чего возглавил всю программу Tesla по разработке модели S &mdash; он напрямую взаимодействовал с Маском и обсуждал с ним дальнейшее развитие проекта. Спустя три года Джером занял должность вице-президента по продажам и обслуживанию во всём мире.</p>\r\n\r\n<p>Владельцы Tesla относятся к Джерому с глубоким уважением и доверием &mdash; они часто рекомендуют &laquo;обратиться к Джерому, чтобы решить любую проблему&raquo;.</p>\r\n\r\n<p>Однако история развития в компании была не так проста &mdash; после выпуска производственной версии модели Х Джером ушёл в долгий отпуск, который мог стать бессрочным. Подробности такого отдыха в компании не раскрываются, а Илон Маск всегда отзывался о Джероме как о незаменимом специалисте.</p>\r\n\r\n<p>После отдыха длиной в несколько месяцев Гиллен вернулся на работу в Tesla и стал президентом по разработкам грузовых программ.</p>\r\n\r\n<h2>Вице-президент по всемирному подбору персонала Синди Никола</h2>\r\n\r\n<p>В 2015 году Tesla не просто&nbsp;<a href=\"https://electrek.co/2017/05/23/tesla-chief-people-officer/\" rel=\"nofollow noopener\" target=\"_blank\">переманила</a>&nbsp;к себе рядовых сотрудников Apple, что компания делает уже на протяжении многих лет, а перекупила Синди Николу &mdash; директора по корпоративному подбору персонала Apple.</p>\r\n\r\n<p>Примечательно, что Apple в 2014 году перекупила из Tesla ведущего специалиста по персоналу для ведения проекта по созданию собственного электромобиля.</p>\r\n\r\n<p>Синди уже проявила себя как профессиональный &laquo;охотник за головами&raquo; &mdash; все назначения после 2015 года произошли благодаря ей, особенно известным стал переход Габриэль Толедано из Electronic Arts. Говоря о ключевых сотрудниках на должностях вице-президентов, помимо Толедано были&nbsp;<a href=\"https://www.bloomberg.com/graphics/2018-tesla-org-chart/\" rel=\"nofollow noopener\" target=\"_blank\">наняты</a>ещё минимум пять специалистов высшего звена.</p>\r\n\r\n<h2>Вице-президент по технологиям Дрю Баглино</h2>\r\n\r\n<p>Дрю Баглино&nbsp;<a href=\"https://www.zoominfo.com/p/Drew-Baglino/1455788803\" rel=\"nofollow noopener\" target=\"_blank\">присоединился</a>&nbsp;к Tesla в 2006 году &mdash; сейчас он один из старейших инженеров в компании. До 2014 года Баглино занимал должность директора по архитектуре, моделированию и управлению Powertrain Systems. После этого он работал в главе команды инженеров Tesla Energy, а в начале 2016 года был назначен вице-президентом по технологиям.</p>\r\n\r\n<h2>Вице-президент по инжинирингу, снабжению и операциям Кевин Кассекерт</h2>\r\n\r\n<p>Tesla&nbsp;<a href=\"https://www.linkedin.com/in/kevinkassekert\" rel=\"nofollow noopener\" target=\"_blank\">переманила</a>&nbsp;Кевина в 2012 году из SVTC Technologies &mdash; компании по разработке полупроводниковых технологий, где он занимал должность директора по инжинирингу.</p>\r\n\r\n<p>В автомобильной компании Кевин начал путь с руководителя департамента по развитию инфраструктур, в 2016 году занял должность вице-президента по развитию инфраструктур, и спустя год перешёл в отдел по инжинирингу, снабжению и операциям.</p>\r\n\r\n<h2>Вице-президент по производству Гилберт Пассин</h2>\r\n\r\n<p>Гилберт перешёл в компанию в 2010 году и&nbsp;<a href=\"https://www.crunchbase.com/person/gilbert-passin%23section-overview\" rel=\"nofollow noopener\" target=\"_blank\">принёс</a>&nbsp;в Tesla 23 года своего международного автомобильного опыта: он возглавлял одни из самых крупных подразделений в Toyota, Volvo, Mack и Renault по всей Северной Америке и Европе.</p>\r\n\r\n<p>До прихода в Tesla Гилберт занимал пост генерального менеджера по производству района западного побережья в Toyota North America, а также был главным инженером по производству модели Corolla в Северной Америке.</p>\r\n\r\n<p>До руководства подразделением на западном побережье Гилберт был вице-президентом завода Toyota в Кембридже, который производит более 350 тысяч автомобилей в год. На его счету запуск известного внедорожника Lexus RX 350, а также популярной по всему миру линейки Corolla.</p>\r\n\r\n<h2>Вице-президент по коммуникациям Сара О&#39;Брин</h2>\r\n\r\n<p>Ещё один из ключевых сотрудников, которого переманили из Apple. Сара восемь лет&nbsp;<a href=\"https://www.linkedin.com/in/saraho4\" rel=\"nofollow noopener\" target=\"_blank\">работала</a>&nbsp;в PR-службе Apple: сначала занималась продвижением музыки, а потом &mdash; самого iPhone. С 2016 года она работает на Tesla и всего за год смогла вырасти от руководителя отдела коммуникаций до вице-президента.</p>\r\n\r\n<h2>Вице-президент по программному обеспечению автомобилей Дэвид Лэу</h2>\r\n\r\n<p>Дэвид&nbsp;<a href=\"https://www.linkedin.com/in/david-lau-13b6032a\" rel=\"nofollow noopener\" target=\"_blank\">присоединился</a>&nbsp;к компании в 2012 году и тогда занял должность старшего менеджера про программному обеспечению, а через два года уже возглавил этот отдел. Он вырос от менеджера до директора подразделения и в начале 2017 года стал вице-президентом.</p>\r\n\r\n<p>Лэу получил степень бакалавра по электронной инженерии в университете Стэнфорда, а потом пошёл работать в Altera &mdash; компанию по полупроводниковым технологиям: сейчас она аффилировалась с Intel.</p>\r\n\r\n<h2>Вице-президент европейского подразделения Ян Охмик</h2>\r\n\r\n<p>Новейший из ключевых сотрудников Tesla&nbsp;<a href=\"https://www.tesla.com/blog/welcome-sanjay-shah-and-jan-oehmicke\" rel=\"nofollow noopener\" target=\"_blank\">начал</a>&nbsp;карьеру в компании в июле 2018 года. Он занимается управлением финансами, продажами и всеми операциями по европейскому региону.</p>\r\n\r\n<p>До Tesla Ян 18 лет строил карьеру в BMW &mdash; он был вице-президентом по продажам и маркетингу сервисов BMW в Германии и Франции.</p>\r\n\r\n<h2>Вице-президент по энергетическим операциям Санджа Шах</h2>\r\n\r\n<p>Переход Санджа в Tesla был&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2018-05-31/tesla-taps-amazon-executive-to-take-over-its-energy-division\" rel=\"nofollow noopener\" target=\"_blank\">анонсирован</a>&nbsp;вместе с переходом Охмика, но он присоединился в компании в июне и уже второй месяц занимает должность вице-президента по энергетическим операциям &mdash; в его ответственность входит размещение солнечных батарей и продуктов хранения.</p>\r\n\r\n<p>Шах&nbsp;<a href=\"http://phx.corporate-ir.net/phoenix.zhtml?c=176060&amp;p=irol-newsArticle_pf&amp;ID=2341053\" rel=\"nofollow noopener\" target=\"_blank\">работал</a>&nbsp;в Amazon последние семь лет в качестве вице-президента по работе с заказчиками в Северной Америке.</p>\r\n\r\n<p><strong>Источник:&nbsp;</strong>https://vc.ru/41884-kto-rabotaet-na-maska-15-klyuchevyh-sotrudnikov-tesla</p>\r\n', 4, '2018-07-17 15:58:53', '45532159.jpeg', '320-45532159.jpeg', 4, '2018-07-18 11:39:22'),
(16, 'ИТ-компания &laquo;Такском&raquo; запустила акселератор для стартапов в финтехе, страховании и GR-индустриях', '<p>15 июня 2018 года венчурный фонд&nbsp;<a href=\"https://tvc.taxcom.ru/?utm_source=vc_ru&amp;utm_medium=news&amp;utm_campaign=Taxcom_Startup_College\" rel=\"nofollow noopener\" target=\"_blank\">Taxcom Venture Capital</a>&nbsp;открыл приём заявок в корпоративный акселератор&nbsp;<a href=\"http://tvc.taxcom.ru/?utm_source=vc_ru&amp;utm_medium=news&amp;utm_campaign=Taxcom_Startup_College\" rel=\"nofollow noopener\" target=\"_blank\">Taxcom Startup College</a>. Его задача &mdash; помочь ИТ-проектам предпосевной и посевной стадий, которые работают в сферах финтеха, инноваций в страховании и регуляторики.</p>\r\n\r\n<ul>\r\n	<li>Финтех. Новые приложения, продукты и сервисы в сфере финансовой деятельности. Небанковское финансирование, электронный документооборот, новые форматы взаимодействия с клиентами в финансовой сфере.</li>\r\n	<li>Инновации в регуляторике. Технологии, позволяющие компаниям эффективнее выполнять нормативные требования регуляторов рынка. Цифровые платформы управления интеллектуальными правами, риск-менеджмент, b2g-сервисы.</li>\r\n	<li>Инновации в страховании. P2p-страхование, распределённые сети и &laquo;умные&raquo; контракты, страхование по требованию.</li>\r\n</ul>\r\n\r\n<p>Предпочтение отдадут командам из Москвы и Московской области. Каждый из отобранных проектов будет работать по индивидуальной программе и получит доступ к компетенциям, знаниям, технологиям и каналам продаж компании &laquo;Такском&raquo;.</p>\r\n\r\n<p>Предварительный анализ заявок кандидатов в акселератор проведут эксперты компании &laquo;Такском&raquo;, при необходимости &mdash; с привлечением внешней отраслевой экспертизы. Решение о допуске команд для участия в акселерационной программе будет принимать Инвестиционный комитет венчурного фонда.</p>\r\n', 4, '2018-07-17 16:50:56', '83365360.jpeg', '320-83365360.jpeg', 6, '2018-07-18 11:45:00'),
(17, 'Инвестор сервиса для аренды офисов Knotel рассказал о планах компании выйти в Россию', '<p>Стартап основан выходцем из России Эдуардом Шендеровичем, который участвовал в создании SUP Media и покупке &laquo;Живого журнала&raquo;.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://knotel.com/\" rel=\"nofollow noopener\" target=\"_blank\">Knotel</a>&nbsp;предлагает в аренду офисные пространства для компаний в Нью-Йорке, Сан-Франциско, Лондоне и Берлине. Сервис создан в 2016 году Эдуардом Шендеровичем и Амолом Сарвой. Шендерович&nbsp;<a href=\"https://vc.ru/40119-shenderovich-bell\" rel=\"nofollow noopener\" target=\"_blank\">известен</a>&nbsp;как один из основателей медиакомпании SUP Media, которая купила &laquo;Живой журнал&raquo;.</li>\r\n	<li>В России партнёром Knotel может стать фонд Invest AG, который управляет инвестициями акционеров металлургической Evraz Group Александра Абрамова и Александра Фролова. В феврале 2017 года Invest AG с партнёрами&nbsp;<a href=\"https://techcrunch.com/2017/02/22/knotel-series-a/\" rel=\"nofollow noopener\" target=\"_blank\">инвестировал</a>&nbsp;в Knotel $25 млн.</li>\r\n	<li>&laquo;Москва действительно попала в список городов, где Knotel планирует начать работать в ближайшие год-два&raquo;, &mdash; рассказал президент Invest AG Сергей Братухин. Сейчас, по его словам, Invest AG рассматривает возможность инвестировать в лидеров российского рынка, чтобы затем их выкупила Knotel. В Knotel не ответили на запрос &laquo;Ведомостей&raquo;.</li>\r\n	<li>В июне 2018 года Шендерович&nbsp;<a href=\"https://thebell.io/vyhodets-iz-rossii-za-dva-goda-sozdal-v-ssha-startap-stoimostyu-v-500-mln/\" rel=\"nofollow noopener\" target=\"_blank\">говорил</a>, что пока у компании нет планов по выходу на российский рынок: &laquo;Нам пока непонятно, как работать на рынке, где очень высокий уровень вакантности, то есть очень много было построено недвижимости, и много недвижимости пустует. Мы пока работаем на рынках, на которых спрос превышает предложение&raquo;.</li>\r\n	<li>С момента основания Knotel привлекла $95 млн. В ходе последнего раунда в апреле 2018 года компанию&nbsp;<a href=\"https://www.wsj.com/articles/wework-rival-knotel-builds-its-war-chest-makes-a-bet-on-blockchain-1523365200\" rel=\"nofollow noopener\" target=\"_blank\">оценили</a>&nbsp;в $500 млн.</li>\r\n</ul>\r\n\r\n<p><strong>Источник:&nbsp;</strong>https://vc.ru/42029-investor-servisa-dlya-arendy-ofisov-knotel-rasskazal-o-planah-kompanii-vyyti-v-rossiyu</p>\r\n', 4, '2018-07-18 00:13:12', '36577907.jpeg', '320-36577907.jpeg', 4, '2018-07-18 11:45:50'),
(24, 'Кейс Brooklinen: заработать $100 млн на рынке постельного белья за пять лет', '<p>Компания Brooklinen из Нью-Йорка появилась пять лет назад, ежегодно растёт кратными темпами, через два года планирует достичь оборота в $100 млн и выйти на IPO. При этом она делает не AI, AR или блокчейн, а постельное бельё.</p>\r\n\r\n<p><em>Сооснователь One Commerce Group Никита Бовыкин в рамках проекта &laquo;<a href=\"https://www.the-value.ru/\" rel=\"nofollow noopener\" target=\"_blank\">Добавленная Стоимость</a>&raquo; несколько раз в неделю рассказывает о молодых компаниях, которые на простом продукте построили крупный бизнес за счёт креативного подхода к упаковке и маркетингу.</em></p>\r\n\r\n<h2>Вводные</h2>\r\n\r\n<ul>\r\n	<li>Сайт:&nbsp;<a href=\"http://brooklinen.com/\" rel=\"nofollow noopener\" target=\"_blank\">http://brooklinen.com/</a>.</li>\r\n	<li>Год старта: 2013.</li>\r\n	<li>Бизнес сегодня:&nbsp;<a href=\"https://www.inverse.com/article/38358-brooklinen-rich-fulop-interview\" rel=\"nofollow noopener\" target=\"_blank\">оборот</a>&nbsp;$60 млн за 2017 год.</li>\r\n	<li>Сотрудников: около 50.</li>\r\n	<li>Возраст основателей на старте: 28 лет.</li>\r\n	<li>Предыдущая деятельность основателей: бизнес-аналитика.</li>\r\n</ul>\r\n\r\n<h2>Возможность</h2>\r\n\r\n<p>Проведите эксперимент: вбейте в &laquo;Яндекс&raquo; или Google &laquo;купить постельное бельё&raquo;, посмотрите, какие сайты вам выпадают и какого качества продукция, и вы быстро обнаружите две закономерности.</p>\r\n\r\n<p>Во-первых, 95% предложений &mdash; это старомодные &laquo;бабушкины&raquo; принты. Создаётся ощущение, что рынок постельного белья не менялся с 1990-х годов.</p>\r\n\r\n<p>Во-вторых, всё, что выглядит более-менее прилично и сделано из неплохих материалов, стоит дорого. А всё, что стоит дёшево, собрано на &laquo;ужасных&raquo; сайтах и выглядит соответствующе.</p>\r\n\r\n<p>Примерно такую же возможность увидела семейная пара из Бруклина в 2013 году. Основатели &mdash; муж и жена Рич и Викки Фулоп &mdash; обратили внимание, что на рынке продаётся либо дешёвое постельное бельё низкого качества, либо бельё с хорошим качеством и приятными принтами, но уже по $300-600 за комплект.</p>\r\n\r\n<p>Почему так происходит? В сегменте &laquo;массового&raquo; белья, которое можно купить в Walmart и Target, главная ставка сделана на доступность, поэтому производители экономят на всём. Оттого в дизайн и упаковку, видимо, никто не вкладывается.</p>\r\n\r\n<p>В дорогом же белье, где особое внимание уделено качеству, дизайну и упаковке, главная причина дороговизны &mdash; вереница посредников: прежде чем бельё дойдёт до покупателя, оно от производителя пройдёт через дистрибьютера и ритейлера. Каждый из участников цепи получает свою долю доходов, что увеличивает конечную цену для покупателя. По словам основателей, наценка в этом сегменте доходит до 1300%.</p>\r\n\r\n<h2>Как начинали</h2>\r\n\r\n<p>Первые вложения &mdash; $25 тысяч (по тогдашнему курсу около 750 тысяч рублей) &mdash; это собственные сбережения.</p>\r\n\r\n<p>Основатели отшили несколько десятков комплектов, арендовали машину в Нью-Йорке (свою продали), раздали комплекты блогерам и попросили их оставить честный отзыв. И поскольку массовый опыт покупки постельного белья был плох (ужасные сайты, некрасивые комплекты), Brooklinen сразу получила положительные отклики от инфлюенсеров, что привлекло первые продажи.</p>\r\n\r\n<p>Чтобы выделиться на &laquo;скучном&raquo; рынке, Brooklinen в качестве креатива просила инфлюенсеров фотографировать животных в своём белье. &laquo;Ми-ми-ми&raquo; сработал.</p>\r\n\r\n<p>До середины 2015 года компания не нанимала сторонних людей и не привлекая платный трафик &mdash; получала заказы только с помощью сарафанного радио.</p>\r\n\r\n<p>Через несколько месяцев пара запустила&nbsp;<a href=\"https://www.kickstarter.com/projects/890193903/brooklinen-all-the-quality-only-a-fraction-of-the\" rel=\"nofollow noopener\" target=\"_blank\">кампанию</a>&nbsp;на Kickstarter и собрала около $237 тысяч (и опять собаки!). Это также подстегнуло продажи.</p>\r\n\r\n<h2>Состояние сейчас</h2>\r\n\r\n<ul>\r\n	<li>2014 год компания закончила с оборотом в $500 тысяч.</li>\r\n	<li>2015 год &mdash; $2,5 млн.</li>\r\n	<li>2016 год &mdash; $25 млн.</li>\r\n	<li>2017 &mdash; $60 млн (по&nbsp;<a href=\"https://www.inverse.com/article/38358-brooklinen-rich-fulop-interview\" rel=\"nofollow noopener\" target=\"_blank\">прогнозу</a>&nbsp;генерального директора от ноября 2017 года).</li>\r\n</ul>\r\n\r\n<p>Трафик: со слов основателей, 50% покупок &mdash; органика, 50% &mdash; платный трафик. Начинали они с найма сторонних агентств, которые закупали трафик. Сейчас в компании три маркетинг-менеджера, которые закупают рекламу в Facebook, Instagram и Google.</p>\r\n\r\n<p>Интересный факт: соотношение покупателей женщин и мужчин на рынке постельного белья &mdash; 80 к 20, тогда как у Brookline &mdash; 50 к 50. Brooklinen первыми заметили, что мужчинам тяжело ориентироваться в этом &laquo;женском рынке&raquo;. Поэтому сегодня компания тратит часть маркетингового бюджета только на мужчин.</p>\r\n\r\n<h2>Почему у них получилось</h2>\r\n\r\n<p>По моему мнению, у успеха Brooklinen есть несколько слагаемых:</p>\r\n\r\n<ul>\r\n	<li>Основатели изначально пошли на большой рынок, где заняв даже небольшой процент, выручка будет измеряться десятками и сотнями миллионов.</li>\r\n	<li>Основатели сумели снизить цену на бельё высокого качества за счёт продажи напрямую без посредников.</li>\r\n	<li>Низкая креативная конкуренция. Brooklinen сделал опыт покупки постельного белья приятным и удобным.</li>\r\n	<li>Компания изначально делала упор на соцсети. Сегодня это кажется очевидным, но тем не менее далеко не все компании ведут соцсети так, чтобы их контентом хотелось поделиться.</li>\r\n</ul>\r\n\r\n<p><strong>Источник:</strong>&nbsp;https://vc.ru/41995-keys-brooklinen-zarabotat-100-mln-na-rynke-postelnogo-belya-za-pyat-let&nbsp;</p>\r\n', 4, '2018-07-18 11:32:20', '325308085.jpeg', '320-325308085.jpeg', 4, '2018-07-18 11:34:19'),
(25, 'Инвесторы оценили независимого разработчика беспилотных машин Zoox в $3,2 млрд', '<p>Стартап&nbsp;<a href=\"https://zoox.com/\" rel=\"nofollow noopener\" target=\"_blank\">Zoox</a>, который занимается разработкой беспилотного автомобиля с нуля, привлёк $500 млн и достиг постинвестиционной оценки в $3,2 млрд,&nbsp;<a href=\"https://www.axios.com/self-driving-car-company-zoox-e9603fa4-c814-47a9-9249-e196c3b268c0.html?utm_source=twitter&amp;utm_medium=social&amp;utm_campaign=organic&amp;utm_content=1100\" rel=\"nofollow noopener\" target=\"_blank\">сообщает</a>&nbsp;Axios.</p>\r\n\r\n<p>Лидерами раунда инвестиций стали сооснователь Atlassian Майк Кэннон-Брукс и основатель китайского фонда Primavera Capital Фред Ху. В общей сложности компания привлекла уже $800 млн.</p>\r\n\r\n<p><strong>Zoox основана в 2014 году</strong>, сейчас в компании работает около 500 человек. Автомобили Zoox уже могут самостоятельно передвигаться на пути в 65 км из Стэнфордского университета до офиса компании.</p>\r\n\r\n<p>Zoox не планирует продавать свои беспилотные машины &mdash; они будут использоваться в собственном такси-сервисе компании. В стартапе не раскрывают первые регионы, в которых будет запущен проект, но говорят, что рассматривают несколько городов, в том числе Сан-Франциско.</p>\r\n', 4, '2018-07-18 11:34:13', '84017657.png', '320-84017657.png', 4, NULL);

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
(9, 'info3@mail.com', '$2y$10$ho31CYy3SXUK/AcQxOGTD.m0FsOUR1CUeBkZrXfGt/qa4i1zSLmXK', 'user', 'Георгий', 'Харламов', '', '', '527757218.jpg', '48-527757218.jpg', NULL, NULL),
(10, 'info4@mail.com', '$2y$10$SEzxf4yqSQxkT6wFYTisQ.ZCflDHeRt.B11EMbNbrCv9rMUpYkLTu', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'info7@mail.com', '$2y$10$49BM.VMjgGS/wGhFRiKvpOmhj4T0TqQP2J.RrZxH2YTlErpZp9x.i', 'user', 'Петр', 'Васильев', 'Сочи', 'Россия', '314396942.jpg', '48-314396942.jpg', 'OKdsDk5vcrICMBu', 0);

--
-- Индексы сохранённых таблиц
--

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
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
