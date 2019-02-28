-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Fev-2019 às 02:12
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gonodemodulo2`
--
CREATE DATABASE IF NOT EXISTS `gonodemodulo2` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `gonodemodulo2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `appointments`
--

INSERT INTO `appointments` (`id`, `date`, `user_id`, `provider_id`, `created_at`, `updated_at`) VALUES
(1, '2019-02-28 12:00:00', 7, 7, '2019-02-28 01:06:37', '2019-02-28 01:06:37'),
(2, '2019-02-28 13:00:00', 7, 7, '2019-02-28 01:06:43', '2019-02-28 01:06:43'),
(3, '2019-02-28 12:00:00', 7, 7, '2019-02-28 01:06:48', '2019-02-28 01:06:48'),
(4, '0000-00-00 00:00:00', 7, 7, '2019-02-28 01:06:49', '2019-02-28 01:06:49'),
(5, '0000-00-00 00:00:00', 7, 5, '2019-02-28 01:06:54', '2019-02-28 01:06:54'),
(6, '2019-02-28 14:00:00', 7, 7, '2019-02-28 01:06:59', '2019-02-28 01:06:59'),
(7, '2019-02-28 15:00:00', 7, 7, '2019-02-28 01:07:05', '2019-02-28 01:07:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20181120111105-create-users.js'),
('20181120164208-create-appointments.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(255) COLLATE utf8_bin NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_bin NOT NULL,
  `provider` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password_hash`, `provider`, `created_at`, `updated_at`) VALUES
(1, 'nero', 'nero@gmail.com', '7773bdebcd436c7274d4ce9bb568ae1f.png', '$2a$08$vpyrltHsDI4Ix./me64Is.PPm6DC.bcFKfAi2l/JV9znTEaE3ZipK', 0, '2019-02-28 00:10:08', '2019-02-28 00:10:08'),
(2, 'neroBarber', 'nerobarber@barber.com', '5f7c74810c04108bc2cc9f5ecfc8dc14.png', '$2a$08$Px9vj59ouSVKM/gcPr6iFOinSnuPCHKgvtEkOz.YW0FqW7oSp334S', 0, '2019-02-28 00:13:30', '2019-02-28 00:13:30'),
(3, 'neroBarber2', 'nerobarber3@gmail.com', '3ee54f0c3b3d5336270a99289e5e40d5.png', '$2a$08$9IriuKEl.NQn./GaWnVZDehsJzH8pXAImXLw4CVhnzfIjlYRmwbuS', 1, '2019-02-28 00:14:39', '2019-02-28 00:14:39'),
(4, 'Irineu', 'irineu@email.com', '16e76e42aa2e41fbe5c82aa2ddc97c47.jpg', '$2b$10$31.qaP8NErcm2AZeKltX.O3iYmn/szdwwNS9LzdI4jd.CMGlus8Mm', 0, '2019-02-28 00:27:15', '2019-02-28 00:27:15'),
(5, 'sdfdf', 'sdff@gmail.com', '5d217da039aeacdcfd1b9e84d2059689.jpg', '$2a$08$IIUz8SftY2DjccLmCbgfuOtwE4zZMKrbgql1sv4zNjd1ZUA6y34OG', 1, '2019-02-28 00:49:13', '2019-02-28 00:49:13'),
(6, 'loop', 'loop@mail.com', '01a7d7db71b159c3ecd53a4729b108b1.jpg', '$2a$08$iFw6HZGdiegJzsTtYuqTxuGr1ea7pf.aaM6W/aHA1.vG/ylToYxOC', 0, '2019-02-28 00:49:35', '2019-02-28 00:49:35'),
(7, 'felipe', 'felipe@gmail.com', '7c53898ae97d421281258f2673568325.jpg', '$2a$08$eYqgRhebYgTmcCLaOpb6ae5o1vHgrYAc7EYuLtIW8hqmlfmXccfyG', 1, '2019-02-28 01:03:34', '2019-02-28 01:03:34'),
(8, 'felipe2', 'felipe2@gmail.com', 'abacf83720e2f8b9efe1df40ca62bc71.jpg', '$2a$08$EXbLF48wiLw9C/ziENl10.s8cHoCM2oPcWfKhH42ggI9XF2R8A9f2', 0, '2019-02-28 01:03:46', '2019-02-28 01:03:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
