-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 07:51 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rccblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogId` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'good',
  `blogTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogContent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifiedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewCounter` int(11) NOT NULL,
  `featured` tinyint(2) NOT NULL DEFAULT 0,
  `visibility` tinyint(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogId`, `userId`, `preference`, `blogTitle`, `blogImg`, `metaDescription`, `blogContent`, `createdAt`, `modifiedAt`, `slug`, `category`, `viewCounter`, `featured`, `visibility`) VALUES
(1, 1, 'good', 'Your Mood Depends on The Food', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_594248672.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:28:55', '2021-04-30 17:28:55', 'your-mood-depends-on-the-food', 'Health', 10, 1, 1),
(2, 2, 'good', '8 Yoga Poses for a Strong Core', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_125340167.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:41:26', '2021-04-30 17:41:26', '8-yoga-poses-for-a-strong-core', 'Health', 11, 1, 1),
(3, 3, 'good', 'Do This 20-Minute HIIT Workout Routine', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_125340167.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:46:47', '2021-04-30 17:46:47', 'do-this-20-minute-hiit-workout-routine', 'Health', 12, 0, 1),
(4, 1, 'good', 'A First Timer’s Marathon Training Plan', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_498434587.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 17:11:58', '2021-04-30 17:11:58', 'a-first-timers-marathon-training-plan', 'Health', 13, 0, 1),
(5, 2, 'good', 'Cold Weather Running Warm Up Mistakes', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_498434587.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:02:46', '2021-04-30 18:02:46', 'cold-weather-running-warm-up-mistakes', 'Workout', 14, 0, 1),
(6, 3, 'good', 'Our Most Important Piece of Running Gear', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_700450099.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:08:32', '2021-04-30 18:08:32', 'our-most-important-piece-of-running-gear', 'Fitness', 15, 0, 1),
(7, 1, 'good', 'Healthy No-Bake Strawberry Mug Cakes Served', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_654900490.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:12:12', '2021-04-30 18:12:12', 'healthy-no-bake-strawberry-mug-cakes-served', 'Fitness', 16, 1, 1),
(8, 2, 'good', 'A Low Effort Ab Burn Out Plan', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_695214214-1024x682.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:15:17', '2021-04-30 18:15:17', 'a-low-effort-ab-burn-out-plan', 'Fitness', 17, 0, 1),
(9, 3, 'good', '7 Lessons to Crush Your Next Running Goal', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/martine-jacobsen-343530.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:17:53', '2021-04-30 18:17:53', '7-lessons-to-crush-your-next-running-goal', 'Fitness', 18, 0, 1),
(10, 1, 'good', 'Choose The Right Running Shoes', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_556889842.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 18:19:35', '2021-04-30 18:19:35', 'choose-the-right-sunning-shoes', 'Workout', 19, 0, 1),
(11, 2, 'good', 'No-Running Cardio Workout', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/Death_to_Stock_Chasing_Sunrise_9.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 19:36:15', '2021-04-30 19:36:15', 'no-running-cardio-workout', 'Workout', 20, 0, 1),
(12, 3, 'good', 'Healthy Grain Bowls to Rescue', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_737674996.jpg', '', 'More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much unstinting violently pessimistically far camel inanimately. Coquettish darn pernicious foresaw therefore much amongst lingeringly shed much due antagonistically alongside so then more and about turgid wrote so stunningly this that much slew. More off this less hello salamander lied porpoise much over tightly circa horse taped so innocuously outside crud mightily rigorous negative one inside gorilla and drew humbly shot tortoise inside opaquely. Crud much Tonx cray commodo, exercitation you probably haven’t heard of them beard cred. Stumptown bespoke, biodiesel minim beard High Life incididunt retro sustainable 90′s Echo Park Tumblr. That far ground rat pure from newt far panther crane lorikeet overlay alas cobra across. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse nihil, flexitarian Truffaut synth.', '2021-04-30 19:37:22', '2021-04-30 19:37:22', 'healthy-grain-bowls-to-rescue', 'Workout', 21, 0, 1),
(16, 1, 'good', 'Tech world', 'https://firebasestorage.googleapis.com/v0/b/rcc-blog-image-upload.appspot.com/o/blog-upload%2Ftechnology.jpg?alt=media&token=54a0c3f9-12bb-41da-9fca-de51c6823e17', 'Technical world', 'This is about the technical world', '2021-12-22 05:46:29', '2021-12-22 05:46:29', 'tech-world', 'Workout', 0, 0, 1),
(17, 1, 'good', 'Food Mania', '', 'food', '', '2021-12-22 09:03:53', '2021-12-22 09:03:53', 'food-mania', 'Health', 0, 0, 0),
(18, 1, 'good', 'abc fun world of wonders!', '', 'lorem', '', '2021-12-22 09:07:51', '2021-12-22 09:07:51', 'abc-fun-world-of-wonders', '', 0, 0, 0),
(20, 1, 'good', 'abc fun world of wonders!', 'https://firebasestorage.googleapis.com/v0/b/rcc-blog-image-upload.appspot.com/o/blog-upload%2Fgame-developer-working-on-laptop.jpg?alt=media&token=8f57087d-391c-42ae-aa96-2ff5af800f88', 'lorem ', '<p>&nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Nisi, atque. Quam possimus deserunt in. Veritatis eos voluptatibus cumque maxime labore, harum reprehenderit aliquam eaque, excepturi illo ratione nam dolore eligendi.</p>', '2021-12-22 09:09:06', '2021-12-22 09:09:06', 'abc-fun-world-of-wonders', 'Workout', 0, 0, 0),
(21, 1, 'good', 'test blog publicate', '', 'metamon', '', '2021-12-22 09:17:32', '2021-12-22 09:17:32', 'test-blog-publicate', '', 0, 0, 1),
(22, 1, 'good', 'lorem ipsum dollAAAR', '', 'dadasasdasd', '', '2021-12-22 09:25:57', '2021-12-22 09:25:57', 'lorem-ipsum-dollaaar', 'Fitness', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryImg` varchar(250) NOT NULL,
  `categoryValue` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`categoryId`, `categoryName`, `categoryImg`, `categoryValue`, `slug`) VALUES
(1, 'Health', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2018/01/Untitled-6.jpg', 'Health', 'health'),
(2, 'Fitness', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2018/01/Untitled-4.jpg', 'Fitness', 'fitness'),
(3, 'Workout', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2018/01/Untitled-5.jpg', 'Workout', 'workout');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `blogId` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedAt` timestamp NULL DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `userId`, `blogId`, `comment`, `author`, `createdAt`, `modifiedAt`, `visibility`) VALUES
(1, 1, 1, 'Inspiring post', 'Sanchit', '2021-08-09 19:14:22', NULL, 1),
(2, 1, 2, 'Good blog', 'Sanchit', '2021-08-09 19:14:25', NULL, 1),
(3, 2, 1, 'Good work is done by the writer', 'Ravi', '2021-08-09 19:05:19', NULL, 1),
(4, 2, 2, 'Efforts appreciated', 'Ravi', '2021-03-26 04:52:02', NULL, 1),
(5, 3, 1, 'Great work done', 'Vansh', '2021-08-09 19:05:22', NULL, 1),
(6, 2, 2, 'new test message', 'Sanchit Bajaj', '2021-09-14 07:14:05', NULL, 1),
(7, 2, 2, 'new test message', 'Sanchit Bajaj', '2021-09-14 07:41:59', NULL, 1),
(8, 2, 2, 'hello', 'Sanchit Bajaj', '2021-09-14 07:49:32', NULL, 1),
(9, 2, 2, 'hello', 'Sanchit Bajaj', '2021-09-14 08:44:06', NULL, 1),
(10, 1, 1, 'jjjj', 'Sanchit Bajaj', '2021-09-14 08:51:58', NULL, 1),
(11, 1, 1, 'added ne comment', 'Sanchit Bajaj', '2021-09-14 08:52:51', NULL, 1),
(12, 1, 1, 'ne coom', 'Sanchit Bajaj', '2021-09-14 08:55:08', NULL, 1),
(13, 3, 3, 'my first comment on \"Do This 20-Minute HIIT Workout Routine\"', 'Sanchit Bajaj', '2021-09-14 09:03:19', NULL, 1),
(14, 2, 8, 'thanks for posting.', 'Sanchit Bajaj', '2021-09-19 08:02:27', NULL, 1),
(15, 2, 11, 'nice post', 'Khushi Arora', '2021-09-19 08:04:42', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactId` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactId`, `email`, `message`, `createdAt`) VALUES
(1, 'ciais2020.mru@gmail.com', 'fcsdlvcndfnvlfdnvld', '2021-05-02 11:43:11'),
(2, 'sanchibajaj02@gmail.com', 'this is my message', '2021-05-05 12:54:35'),
(3, 'qwerty@gmail.com', 'this is a qwerty message', '2021-05-09 11:17:42'),
(4, 'test1@gmail.com', 'This is a test message', '2021-05-13 10:46:27'),
(5, 'test1', 'This is a test message', '2021-05-13 10:47:38'),
(6, '', 'This is a test message', '2021-05-13 10:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `like_master`
--

CREATE TABLE `like_master` (
  `likeid` int(11) NOT NULL,
  `blogid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `like_status` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` tinyint(5) NOT NULL DEFAULT 2,
  `mobileNo` bigint(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forgetPassToken` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forgetTokenActive` int(11) NOT NULL,
  `dob` date NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifiedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `email`, `about`, `roles`, `mobileNo`, `password`, `forgetPassToken`, `forgetTokenActive`, `dob`, `isActive`, `preference`, `profileImg`, `createdAt`, `modifiedAt`) VALUES
(1, 'Sanchit', 'Bajaj', 'sanchitbajaj02@gmail.com', 'Hello, my name is Sanchit Bajaj. Nice to meet you😀', 0, 8743811303, 'root', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aW1lIjoxNjIzNzAwNzMyMDcxLCJ1c2VySWQiOjEsImlhdCI6MTYyMzcwMDczMiwiZXhwIjoxNjIzNzA0MzMyfQ.aU69dwA_7V90lrJ_3Fqes2xRreV471CMC0X2f_h4Hyw', 0, '2001-04-02', 1, 'Fitness', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_700450099-1024x682.jpg', '2021-06-09 05:42:36', '2021-10-12 15:28:16'),
(2, 'Kunal', 'Arora', '10kunalji@gmail.com', 'Manuel Iglesias draws from his life story when writing about the experiences of migrant workers. His first series of poems, My Father\'s Hands, appeared in The New Yorker and describes how his family c', 1, 9810362734, 'password', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aW1lIjoiRnJpIEp1biAwNCAyMDIxIDE5OjUwOjMzIEdNVCswNTMwIChJbmRpYSBTdGFuZGFyZCBUaW1lKSIsInVzZXJJZCI6MiwiaWF0IjoxNjIyODE2NDMzLCJleHAiOjE2MjI4MjAwMzN9._oLnKFkLYl02gEWcknOgKl3XFnzpnvyCArl6z44YCHI', 1, '2002-06-10', 1, 'Workout', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2016/05/shutterstock_700450099-1024x682.jpg', '2021-06-04 14:20:37', '2021-10-12 15:28:16'),
(3, 'Khushi', 'Arora', 'akhushi72@gmail.com', 'Debra Carroll knows that successful students become successful adults. This is her 15th year at Edison Elementary School and her 10th year teaching fourth grade. So far, fourth grade is her favorite g', 1, 8368059827, 'password', '', 0, '2002-05-23', 1, 'Fitness', 'https://cheerup.theme-sphere.com/fitness/wp-content/uploads/sites/11/2018/01/Untitled-3.jpg', '2021-05-18 05:50:26', '2021-10-12 15:28:16'),
(5, 'Chhaya', 'Tyagi', 'tyagi.chhaya4@gmail.com', '', 1, 0, 'password', '', 0, '0000-00-00', 1, '', '', '2021-05-26 20:02:26', '2021-08-08 19:05:44'),
(6, 'Vansh', 'Bisht', 'vanshbishtmru@gmail.com', 'NA', 1, 8447533975, 'undefined', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aW1lIjoiRnJpIE1heSAyOCAyMDIxIDE5OjIxOjQ4IEdNVCswNTMwIChJbmRpYSBTdGFuZGFyZCBUaW1lKSIsInVzZXJJZCI6NiwiaWF0IjoxNjIyMjA5OTA4LCJleHAiOjE2MjIyMTM1MDh9.adsMyrrclRpUoileLWC4Om3CREqdlXGnN2cG_HBc6KY', 1, '2002-07-07', 1, '', '', '2021-05-28 13:57:36', '2021-08-08 18:56:43'),
(10, 'Kunal', 'Arora', 'itskunal00@gmail.com', '', 1, 0, '123456789', '', 0, '0000-00-00', 1, 'Fitness', '', '2021-06-04 13:46:38', '2021-08-08 19:05:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD UNIQUE KEY `comments_commentid_unique` (`commentId`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `like_master`
--
ALTER TABLE `like_master`
  ADD PRIMARY KEY (`likeid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `like_master`
--
ALTER TABLE `like_master`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
