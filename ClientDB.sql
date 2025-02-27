-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 27 2025 г., 20:16
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ClientDB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `id` int NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`id`, `firstName`, `lastName`, `gender`, `address`, `city`, `phone`, `email`, `status`, `createdDate`) VALUES
(1, 'Travis', 'Keeling', 'male', '4113 Ford Hill', 'Lake Tod', '501-953-997', 'Madaline8@gmail.com', 'Available', '2020-01-01 09:09:00'),
(2, 'Marcel', 'Huels', 'male', '8079 Tyson Oval', 'Nevahaven', '501-719-108', 'Tyler72@gmail.com', 'Busy', '2020-01-01 09:10:00'),
(4, 'Loma', 'Cronin', 'male', '98338 Marielle Cliffs', 'Jeraldboro', '501-681-720', 'Chaim_Schumm@yahoo.com', 'Offline', '2020-01-01 09:12:00'),
(5, 'Carmelo', 'Bogisich', 'male', '74919 Burnice Tunnel', 'Goodwinland', '501-549-195', 'Elna17@hotmail.com', 'Busy', '2020-01-01 09:13:00'),
(6, 'Clement', 'Graham', 'male', '0187 Runolfsdottir Mission', 'New Maudechester', '501-880-002', 'Abigail.Bashirian@yahoo.com', 'Busy', '2020-01-01 09:14:00'),
(7, 'Green', 'Braun', 'male', '7642 Hannah Landing', 'New Dockshire', '501-520-162', 'Johanna.Beatty@gmail.com', 'Available', '2020-01-01 09:15:00'),
(8, 'Dessie', 'Block', 'male', '76124 Daphne Knolls', 'Lake Sigurd', '501-484-389', 'Jaydon_Blanda0@gmail.com', 'Offline', '2020-01-01 09:16:00'),
(9, 'Laury', 'Senger', 'female', '8032 Marquardt Radial', 'Felicityton', '501-534-386', 'Lavonne_Prohaska@gmail.com', 'Do not disturb', '2020-01-01 09:17:00'),
(10, 'Kylee', 'Wisoky', 'male', '29933 Ryan Drives', 'Kingfield', '501-932-573', 'Tomas.Moore75@hotmail.com', 'Do not disturb', '2020-01-01 09:18:00'),
(11, 'Vito', 'Torp', 'female', '009 Candelario Haven', 'Christiansenview', '501-474-791', 'Anahi_Stracke@hotmail.com', 'Offline', '2020-01-01 09:19:00'),
(12, 'Eduardo', 'Stracke', 'female', '368 Lind Cliffs', 'Domingoland', '501-997-294', 'Lloyd_Gleason@hotmail.com', 'Offline', '2020-01-01 09:20:00'),
(13, 'Newell', 'Reinger', 'female', '26783 Bogisich Squares', 'South Deannahaven', '501-556-233', 'Garfield_Nolan@yahoo.com', 'Available', '2020-01-01 09:21:00'),
(14, 'Vivian', 'Towne', 'male', '660 Aleen Groves', 'Fort Garrick', '501-282-056', 'Marcus_Mayert@yahoo.com', 'Offline', '2020-01-01 09:22:00'),
(15, 'Marcelino', 'Davis', 'male', '7147 Bernhard Park', 'South Kavonside', '501-555-586', 'Lonie.Hickle@hotmail.com', 'Offline', '2020-01-01 09:23:00'),
(16, 'Colt', 'Lindgren', 'female', '19372 Emmitt Valley', 'Bentoncester', '501-995-050', 'Lillian2@yahoo.com', 'Available', '2020-01-01 09:24:00'),
(17, 'Noemy', 'Windler', 'female', '328 Flatley Burgs', 'Fort Titomouth', '501-246-808', 'Mylene_Goodwin65@gmail.com', 'Busy', '2020-01-01 09:25:00'),
(18, 'Solon', 'Greenfelder', 'male', '3874 Osinski Field', 'Jonathonchester', '501-501-255', 'Priscilla_Schroeder@yahoo.com', 'Available', '2020-01-01 09:26:00'),
(19, 'Ruth', 'Bechtelar', 'male', '92285 Sadye Square', 'Klockofield', '501-296-946', 'Duncan_Kemmer18@gmail.com', 'Do not disturb', '2020-01-01 09:27:00'),
(20, 'Casey', 'Friesen', 'male', '3176 Destin Camp', 'Town \'n\' Country', '501-329-028', 'Aida.Ankunding@yahoo.com', 'Offline', '2020-01-01 09:28:00'),
(21, 'Esperanza', 'Thiel', 'male', '551 Green Meadow', 'South Laurine', '501-241-973', 'Rico.Hilll@hotmail.com', 'Busy', '2020-01-01 09:29:00'),
(22, 'Kaci', 'McGlynn', 'male', '3673 Dickens Knoll', 'Tamiami', '501-405-098', 'Virgie_Witting@hotmail.com', 'Busy', '2020-01-01 09:30:00'),
(23, 'Neil', 'Ondricka', 'female', '36353 Beau Villages', 'Lake Jacky', '501-947-049', 'Diana_Schaefer3@hotmail.com', 'Do not disturb', '2020-01-01 09:31:00'),
(24, 'Marta', 'Stanton', 'male', '0782 Grady Common', 'Olliestad', '501-856-928', 'Forest.Schinner@hotmail.com', 'Available', '2020-01-01 09:32:00'),
(25, 'Teagan', 'Dickinson', 'male', '818 Wintheiser Street', 'South Hannabury', '501-908-347', 'Lizzie42@gmail.com', 'Available', '2020-01-01 09:33:00'),
(26, 'Ezekiel', 'Rempel', 'female', '97942 Ed Land', 'Alyssonton', '501-588-658', 'Wanda30@gmail.com', 'Offline', '2020-01-01 09:34:00'),
(27, 'Austen', 'Crona', 'female', '9207 Jaquelin Road', 'Turcotteport', '501-393-669', 'Wellington51@yahoo.com', 'Busy', '2020-01-01 09:35:00'),
(28, 'Jacques', 'Bogan', 'male', '63605 Abshire Common', 'Fort Emmett', '501-454-540', 'Gunner_Schneider33@hotmail.com', 'Busy', '2020-01-01 09:36:00'),
(29, 'Elsa', 'Stanton', 'male', '7410 Cremin Mountain', 'Maceyfurt', '501-817-266', 'Nathanial_Moore@gmail.com', 'Busy', '2020-01-01 09:37:00'),
(30, 'Maureen', 'Krajcik', 'male', '594 Luella Terrace', 'Baumbachview', '501-700-162', 'Kaylah29@yahoo.com', 'Do not disturb', '2020-01-01 09:38:00'),
(31, 'Wayne', 'Hyatt', 'female', '30409 Mueller Heights', 'Fort Halieside', '501-813-194', 'Andres_Heidenreich@gmail.com', 'Busy', '2020-01-01 09:39:00'),
(32, 'Davon', 'Moore', 'female', '71508 Virginie Ville', 'Port Kiara', '501-664-695', 'Erling64@yahoo.com', 'Do not disturb', '2020-01-01 09:40:00'),
(33, 'Sophia', 'Barrows', 'male', '039 Annette Camp', 'Raymondfurt', '501-906-442', 'Zelda_Wehner85@gmail.com', 'Do not disturb', '2020-01-01 09:41:00'),
(34, 'Junior', 'Legros', 'female', '529 Manuela Cape', 'Traceworth', '501-520-408', 'Liliane45@yahoo.com', 'Busy', '2020-01-01 09:42:00'),
(35, 'Harmon', 'Moore', 'male', '4394 Kozey Burg', 'East Magalitown', '501-556-392', 'Vilma_Abshire@gmail.com', 'Available', '2020-01-01 09:43:00'),
(36, 'Fabian', 'Sauer', 'female', '154 Denesik Rest', 'Lynwood', '501-893-797', 'Torrey86@yahoo.com', 'Available', '2020-01-01 09:44:00'),
(37, 'Daphney', 'Gusikowski', 'female', '1229 Doug Wells', 'West Forestberg', '501-722-197', 'Arlene_Mraz81@hotmail.com', 'Offline', '2020-01-01 09:45:00'),
(38, 'Kevon', 'Sawayn', 'male', '2945 Pouros Terrace', 'Fisherstad', '501-275-011', 'Vinnie_Haley38@yahoo.com', 'Offline', '2020-01-01 09:46:00'),
(39, 'Earline', 'Mayer', 'male', '70907 Mitchel Field', 'Ashtynfurt', '501-486-493', 'Lloyd39@yahoo.com', 'Available', '2020-01-01 09:47:00'),
(40, 'Ramiro', 'Hartmann', 'male', '1890 Cali Crossing', 'Lake Faustino', '501-326-633', 'Federico59@yahoo.com', 'Do not disturb', '2020-01-01 09:48:00'),
(41, 'Ari', 'Ratke', 'male', '096 Von Crossroad', 'Juddshire', '501-762-809', 'Ferne64@yahoo.com', 'Do not disturb', '2020-01-01 09:49:00'),
(42, 'Judah', 'Graham', 'male', '70675 Elyssa Station', 'Wesley Chapel', '501-335-354', 'Bria_Walter71@hotmail.com', 'Do not disturb', '2020-01-01 09:50:00'),
(43, 'Eloy', 'Fritsch', 'female', '080 Bradtke Branch', 'Reichelview', '501-796-786', 'Darrel.Hagenes@gmail.com', 'Do not disturb', '2020-01-01 09:51:00'),
(44, 'Izaiah', 'DuBuque', 'male', '71181 Rau Flats', 'Lorenzaland', '501-566-956', 'Lewis82@hotmail.com', 'Busy', '2020-01-01 09:52:00'),
(45, 'Mariam', 'Schumm', 'male', '71853 Rosamond Terrace', 'Lamarview', '501-121-320', 'Alberto_Williamson@hotmail.com', 'Do not disturb', '2020-01-01 09:53:00'),
(46, 'Eudora', 'Tremblay', 'female', '17515 Cummerata Spring', 'Fort Claudeton', '501-341-671', 'Erwin79@yahoo.com', 'Offline', '2020-01-01 09:54:00'),
(47, 'Sam', 'Fadel', 'female', '4652 Goyette Squares', 'East Alisonshire', '501-178-583', 'Vanessa_Herzog81@gmail.com', 'Offline', '2020-01-01 09:55:00'),
(48, 'Dante', 'Fadel', 'female', '8181 Grimes Cove', 'New Rubyeton', '501-712-793', 'Darrick_Ziemann@yahoo.com', 'Busy', '2020-01-01 09:56:00'),
(49, 'Brett', 'Miller', 'male', '8887 Hauck Garden', 'North Bud', '501-801-579', 'Cory54@yahoo.com', 'Do not disturb', '2020-01-01 09:57:00'),
(50, 'Patrick', 'Kris', 'female', '544 Grant Field', 'Erikamouth', '501-653-540', 'Obie.Padberg@hotmail.com', 'Do not disturb', '2020-01-01 09:58:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
