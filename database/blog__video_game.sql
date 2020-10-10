-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 10, 2020 at 08:02 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog__video_game`
--

CREATE DATABASE IF NOT EXISTS `blog__video_game`;
USE `blog__video_game`;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_type_id` int(11) NOT NULL,
  `video_game_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `posted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_000003` (`user_id`),
  KEY `IDX_000004` (`article_type_id`),
  KEY `IDX_000005` (`video_game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `user_id`, `article_type_id`, `video_game_id`, `content`, `posted_at`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit', 1, 1, 3, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-08-14 20:45:32'),
(2, 'Aliquid iusto voluptatibus dicta saepe deserunt?', 1, 3, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-08-15 14:22:04'),
(3, 'Dolores praesentium accusantium dolorum distinctio quae!', 1, 2, 10, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-04 16:00:54'),
(4, 'Labore ipsum a mollitia nam nulla eligendi, modi accusamus illum iusto eius', 1, 2, 8, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-07 13:07:31'),
(5, 'Tenetur doloribus repellendus debitis', 1, 1, 9, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-07 23:54:11'),
(6, 'Laborum nam, autem aliquid rerum culpa fugit minus dolores aperiam cumque, expedita explicabo fuga', 1, 3, 7, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-10 09:46:29'),
(7, 'Nesciunt excepturi fuga maxime nemo aliquid!', 1, 4, 7, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-11 13:31:41'),
(8, 'Aliquid iusto voluptatibus dicta saepe deserunt?  Animi neque fugiat quibusdam beatae ut qui consequatur', 1, 1, 2, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-12 06:51:17'),
(9, 'Quisquam laborum distinctio, quod aliquam repellat dolore qui facere, quia excepturi, dicta amet perspiciatis obcaecati veritatis', 1, 1, 4, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-12 19:05:34'),
(10, 'Porro corporis sequi quaerat nihil impedit soluta', 1, 2, 4, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-12 22:48:46'),
(11, 'Laudantium fuga similique odio voluptas obcaecati amet illo', 1, 1, 5, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-14 11:53:25'),
(12, 'Consequuntur voluptatum laborum dolor eligendi incidunt molestiae', 1, 1, 6, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-15 03:26:57'),
(13, 'Quia, ut cum perferendis, consequuntur recusandae ad?', 1, 3, 6, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-17 18:21:24'),
(14, 'Obcaecati modi dolorem deleniti ipsum labore', 1, 4, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-18 01:02:40'),
(15, 'A non alias placeat in! Recusandae ea facilis delectus', 1, 4, 3, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-18 05:18:54'),
(16, 'Porro eius earum sed totam accusantium voluptates', 1, 1, 10, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-19 12:00:39'),
(17, 'Quisquam saepe vero tenetur magnam eum sit expedita laborum nemo quas necessitatibus eaque quibusdam accusamus', 1, 1, 1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-20 16:05:18'),
(18, 'Pariatur quibusdam cumque facilis corporis voluptatibus vero dolores ut', 1, 2, 2, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis animi cumque quae quo labore fuga quibusdam ex, tenetur nam. Accusamus dolor explicabo tenetur facere, exercitationem error molestias? Repudiandae, ratione provident. Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis blanditiis, commodi, voluptatem aspernatur quam aliquam nemo cum sint corporis quo, sunt vel doloribus! Hic vero id fuga illum earum eveniet. Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem odit veritatis id animi delectus magni atque necessitatibus est tempore repellendus cupiditate accusamus quam modi similique, voluptate minima praesentium numquam deleniti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto dicta nisi facilis ad tenetur deleniti officia, consequuntur nobis iusto inventore quo quidem dolorem! Veniam sunt itaque autem quis in aut? Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus aut eaque, rerum commodi dignissimos, cum animi labore perferendis doloremque magni eos facere? Iste iusto, quasi laudantium magnam sint consequatur quo.', '2020-09-22 23:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `article_list_commentary`
--

DROP TABLE IF EXISTS `article_list_commentary`;
CREATE TABLE IF NOT EXISTS `article_list_commentary` (
  `article_id` int(11) NOT NULL,
  `list_commentary_id` int(11) NOT NULL,
  UNIQUE KEY `UK_nxcvv2hu7o7t3n3e9t3rrw3fm` (`list_commentary_id`),
  KEY `FKdwag0f7hj44qly4iao13enrug` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `article_type`
--

DROP TABLE IF EXISTS `article_type`;
CREATE TABLE IF NOT EXISTS `article_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinytext NOT NULL,
  `description` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_type`
--

INSERT INTO `article_type` (`id`, `type`, `description`) VALUES
(1, 'News', 'Reporting news regarding the video games we try.'),
(2, 'Review', 'We test and review games and post our opinion on this blog.'),
(3, 'Editorial', 'We analyze parts of the game and give you our opinion. Feel free to give yours as well.'),
(4, 'Rumors', 'Here we discuss the rumors travelling the Web to you.');

-- --------------------------------------------------------

--
-- Table structure for table `commentary`
--

DROP TABLE IF EXISTS `commentary`;
CREATE TABLE IF NOT EXISTS `commentary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `posted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_000006` (`user_id`),
  KEY `IDX_000007` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentary`
--

INSERT INTO `commentary` (`id`, `user_id`, `article_id`, `comment`, `posted_at`) VALUES
(1, 1, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-12 13:59:51'),
(2, 2, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-12 22:45:31'),
(3, 3, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-13 19:43:54'),
(4, 2, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-14 00:53:58'),
(5, 3, 3, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-14 05:13:21'),
(6, 1, 4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-14 06:17:06'),
(7, 2, 5, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-15 03:46:45'),
(8, 2, 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-15 15:14:01'),
(9, 2, 7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-15 23:18:54'),
(10, 1, 7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-17 02:23:57'),
(11, 3, 7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-17 09:04:16'),
(12, 2, 8, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-17 10:37:44'),
(13, 1, 9, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-17 11:59:28'),
(14, 2, 9, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-17 14:38:37'),
(15, 3, 9, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-17 16:57:38'),
(16, 2, 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-18 04:26:42'),
(17, 3, 11, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-19 07:23:15'),
(18, 3, 12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-19 11:14:58'),
(19, 3, 13, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-19 12:35:20'),
(20, 2, 14, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-19 15:09:29'),
(21, 1, 15, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-19 17:41:30'),
(22, 2, 16, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-19 18:29:20'),
(23, 3, 16, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-20 12:13:10'),
(24, 1, 16, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-20 12:40:58'),
(25, 2, 17, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-20 14:10:47'),
(26, 3, 17, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-20 19:37:51'),
(27, 1, 18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-21 00:33:11'),
(28, 2, 18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-21 17:32:03'),
(29, 1, 18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-22 19:01:56'),
(30, 3, 18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-22 19:47:42'),
(31, 2, 18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus, voluptatum minima consequuntur repudiandae explicabo quidem magni officia saepe voluptates? Dolores recusandae corrupti magni voluptates iure neque blanditiis reprehenderit non voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae officiis inventore ab porro molestias, adipisci illum totam quae aspernatur blanditiis quis laborum suscipit quasi dolor veritatis asperiores assumenda quod eligendi.', '2020-09-23 21:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `description`) VALUES
(1, 'Stealth', 'A stealth game is a type of video game in which the player primarily uses stealth to avoid or overcome antagonists. Games in the genre typically allow the player to remain undetected by hiding, sneaking, or using disguises. Some games allow the player to choose between a stealthy approach or directly attacking antagonists, but rewarding the player for greater use of stealth.'),
(2, 'First-person shooter', 'First-person shooter (FPS) is a video game genre centered on gun and other weapon-based combat in a first-person perspective; that is, the player experiences the action through the eyes of the protagonist.'),
(3, 'Action role-playing', 'Action role-playing (often abbreviated action RPG or ARPG) is a subgenre of video games that combines core elements from both the action game and of role-playing video games.'),
(4, 'Hack and slash', 'Hack and slash or hack and slay refers to a type of gameplay that emphasizes combat with melee based weapons (such as swords or blades) and a few projectile based weapons as well (such as guns). It is a subgenre of the Beat \'em up genre which focuses on melee combat usually with fists.'),
(5, 'Simulation', 'A simulation game attempts to copy various activities from real life in the form of a game for various purposes such as training, analysis, or prediction. Usually there are no strictly defined goals in the game, with the player instead allowed to control a character or environment freely. Well-known examples are war games, business games, and role play simulation.'),
(6, 'Platform-puzzle', 'Platform games are a video game genre and subgenre of action games. Platformers are characterized by their heavy use of jumping and climbing to navigate the player\'s environment and reach their goal while solving puzzles.');

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
CREATE TABLE IF NOT EXISTS `platform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `description` text NOT NULL,
  `image` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`id`, `name`, `description`, `image`) VALUES
(1, 'Steam', 'Steam is the ultimate destination for playing, discussing, and creating games.', 'Steam'),
(2, 'Battle.net', 'At Blizzard Entertainment, we pour our hearts and souls into everything we create. We embrace our core values every day so that we can continue creating epic entertainment experiences for all our players. It doesn’t matter who you are or where you’re located—if you’re a member of our evolving and vibrant community, working with us at one of our offices around the globe, or taking a piece of Blizzard with you into space—you’re welcome here.', 'Battle_net'),
(3, 'Uplay', 'Get more from your games. The more you play, the more you get.', 'Uplay'),
(4, 'Origin', 'Play great PC games and connect with your friends, all in one place.', 'Origin'),
(5, 'Indies', 'A collection of independant (indie) video games', 'Indies');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `avatar` tinytext,
  `role` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `avatar`, `role`) VALUES
(1, 'Grimm', 'Secured_password', 'fake_email@hotmail.com', 'Diablo_IV', 9),
(2, 'Toto', 'totototo', 'toto@yahoo.fr', 'Far_Cry_5', 1),
(3, 'Buddha', 'boubou', 'buddha123@hotmail.com', 'Human_Fall_Flat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_game`
--

DROP TABLE IF EXISTS `video_game`;
CREATE TABLE IF NOT EXISTS `video_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `series` tinytext,
  `genre_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `developer` text NOT NULL,
  `publisher` text NOT NULL,
  `first_released` date DEFAULT NULL,
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `image` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_000001` (`genre_id`),
  KEY `IDX_000002` (`platform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video_game`
--

INSERT INTO `video_game` (`id`, `name`, `series`, `genre_id`, `platform_id`, `developer`, `publisher`, `first_released`, `rating`, `image`) VALUES
(1, 'Hitman 2', 'Hitman', 1, 1, 'IO Interactive', 'Warner Bros. Interactive Entertainment', '2018-11-13', 5, 'Hitman_2'),
(2, 'Bioshock', 'Bioshock', 2, 1, '2K Boston', '2K Games', '2007-08-21', 4, 'Bioshock'),
(3, 'Overwatch', 'Overwatch', 2, 2, 'Blizzard Entertainment', 'Blizzard Entertainment', '2016-05-24', 5, 'Overwatch'),
(4, 'Diablo III: Reaper of Souls', 'Diablo', 4, 2, 'Blizzard Entertainment', 'Blizzard Entertainment', '2014-03-25', 3, 'Diablo_III_Reaper_of_Souls'),
(5, 'Diablo IV', 'Diablo', 4, 2, 'Blizzard Entertainment', 'Blizzard Entertainment', NULL, 4, 'Diablo_IV'),
(6, 'Far Cry 5', 'Far Cry', 2, 3, 'Ubisoft Montreal', 'Ubisoft', '2018-03-27', 4, 'Far_Cry_5'),
(7, 'Assassin\'s Creed Odyssey', 'Assassin\'s Creed', 3, 3, 'Ubisoft Quebec', 'Ubisoft', '2018-10-05', 3, 'Assassins_Creed_Odyssey'),
(8, 'The Sims 4', 'The Sims', 5, 4, 'Maxis', 'Electronic Arts', '2014-09-02', 3, 'The_Sims_4'),
(9, 'Battlefield 4', 'Battlefield', 2, 4, 'EA Dice', 'Electronic Arts', '2013-10-29', 4, 'Battlefield_4'),
(10, 'Human: Fall Flat', NULL, 6, 5, 'No Brakes Games', 'Curve Digital', '2016-07-22', 4, 'Human_Fall_Flat');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_000003` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_000004` FOREIGN KEY (`article_type_id`) REFERENCES `article_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_000005` FOREIGN KEY (`video_game_id`) REFERENCES `video_game` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_list_commentary`
--
ALTER TABLE `article_list_commentary`
  ADD CONSTRAINT `FKdwag0f7hj44qly4iao13enrug` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FKnhdrrnwm60ahmkv1cnqlikidc` FOREIGN KEY (`list_commentary_id`) REFERENCES `commentary` (`id`);

--
-- Constraints for table `commentary`
--
ALTER TABLE `commentary`
  ADD CONSTRAINT `FK_000006` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_000007` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_game`
--
ALTER TABLE `video_game`
  ADD CONSTRAINT `FK_000001` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_000002` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
