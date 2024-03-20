-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 09:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_se`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `AnswerID` bigint(20) UNSIGNED NOT NULL,
  `AnswerContent` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QuizID` bigint(20) UNSIGNED NOT NULL,
  `UserID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`AnswerID`, `AnswerContent`, `QuizID`, `UserID`, `created_at`, `updated_at`) VALUES
(1, 'The American Revolution, which took place from 1775 to 1783, was a\r\n                monumental event in the history of the United States. Fueled by a\r\n                growing discontent with British colonial rule, American colonists rose\r\n                up to challenge the authority of the British Empire', 1, 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(2, 'The American Revolution, which took place from 1775 to 1783, was a\r\n                monumental event in the history of the United States. Fueled by a\r\n                growing discontent with British colonial rule, American colonists rose\r\n                up to challenge the authority of the British Empire', 1, 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(3, 'The American Revolution, which took place from 1775 to 1783, was a\r\n                monumental event in the history of the United States. Fueled by a\r\n                growing discontent with British colonial rule, American colonists rose\r\n                up to challenge the authority of the British Empire', 1, 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `ArticleID` bigint(20) UNSIGNED NOT NULL,
  `ArticlePicture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ArticleTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ArticleDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ArticleLink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`ArticleID`, `ArticlePicture`, `ArticleTitle`, `ArticleDescription`, `ArticleLink`, `created_at`, `updated_at`) VALUES
(1, 'path/to/article1.jpg', 'Article 1', 'Description of Article 1', 'https://example.com/article1', '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(2, 'path/to/article2.jpg', 'Article 2', 'Description of Article 2', 'https://example.com/article2', '2024-03-20 01:21:11', '2024-03-20 01:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `BadgesID` bigint(20) UNSIGNED NOT NULL,
  `BadgesName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BadgesDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`BadgesID`, `BadgesName`, `BadgesDescription`, `created_at`, `updated_at`) VALUES
(1, 'Agile Writer', 'Wrote an article in 10 minutes', '2024-03-20 01:21:10', '2024-03-20 01:21:10'),
(2, 'First Step Learner', 'Read an article for the first time', '2024-03-20 01:21:10', '2024-03-20 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `badges_users`
--

CREATE TABLE `badges_users` (
  `BadgesID` bigint(20) UNSIGNED NOT NULL,
  `UserID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges_users`
--

INSERT INTO `badges_users` (`BadgesID`, `UserID`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(2, 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `ClassroomID` bigint(20) UNSIGNED NOT NULL,
  `ClassroomName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`ClassroomID`, `ClassroomName`, `created_at`, `updated_at`) VALUES
(1, '10 Science 1', '2024-03-20 01:21:10', '2024-03-20 01:21:10'),
(2, '11 Social 2', '2024-03-20 01:21:10', '2024-03-20 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_courses`
--

CREATE TABLE `classroom_courses` (
  `ClassroomID` bigint(20) UNSIGNED NOT NULL,
  `CourseID` bigint(20) UNSIGNED NOT NULL,
  `ClassProgress` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classroom_courses`
--

INSERT INTO `classroom_courses` (`ClassroomID`, `CourseID`, `ClassProgress`, `created_at`, `updated_at`) VALUES
(1, 1, 50, '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(1, 2, 100, '2024-03-20 01:21:11', '2024-03-20 01:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` bigint(20) UNSIGNED NOT NULL,
  `CourseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseName`, `created_at`, `updated_at`) VALUES
(1, 'Historical Literacy', '2024-03-20 01:21:10', '2024-03-20 01:21:10'),
(2, 'English Literacy', '2024-03-20 01:21:10', '2024-03-20 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_05_27_235500_create_badges_table', 1),
(21, '2023_05_27_235502_create_classrooms_table', 1),
(22, '2023_05_27_235503_create_users_table', 1),
(23, '2023_05_27_235504_create_courses_table', 1),
(24, '2023_05_27_235506_create_articles_table', 1),
(25, '2023_05_27_235508_create_sessions_table', 1),
(26, '2023_05_27_235510_create_resources_table', 1),
(27, '2023_05_27_235512_create_quizzes_table', 1),
(28, '2023_05_27_235514_create_questions_table', 1),
(29, '2023_05_27_235548_create_answers_table', 1),
(30, '2023_05_28_015107_create_badges_users_table', 1),
(31, '2023_05_28_015125_create_user_quizzes_table', 1),
(32, '2023_05_28_015147_create_classroom_courses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` bigint(20) UNSIGNED NOT NULL,
  `QuestionTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QuizID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `QuestionTitle`, `QuizID`, `created_at`, `updated_at`) VALUES
(1, 'Main topic', 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(2, 'The purpose of the article', 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(3, 'Conclusion', 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `QuizID` bigint(20) UNSIGNED NOT NULL,
  `QuizTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QuizArticle` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QuizDate` date NOT NULL,
  `QuizStart` time DEFAULT NULL,
  `QuizEnd` time DEFAULT NULL,
  `QuizPrepare` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SessionID` bigint(20) UNSIGNED NOT NULL,
  `CourseID` bigint(20) UNSIGNED NOT NULL,
  `ClassroomID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`QuizID`, `QuizTitle`, `QuizArticle`, `QuizDate`, `QuizStart`, `QuizEnd`, `QuizPrepare`, `SessionID`, `CourseID`, `ClassroomID`, `created_at`, `updated_at`) VALUES
(1, 'Literacy Quiz #5', 'The American Revolution, which took place from 1775 to 1783, was a monumental event in the history of the United States. Fueled by a growing discontent with British colonial rule, American colonists rose up to challenge the authority of the British Empire. The Revolution was ignited by events like the Boston Tea Party and the publication of influential writings such as Thomas Paines Common Sense. The colonists fought for their rights, freedom, and representation, ultimately leading to the Declaration of Independence in 1776. The war that followed was marked by key battles like Lexington and Concord, Saratoga, and Yorktown, where the determined colonists, led by figures like George Washington, fought against the British forces. With the support of France, the Americans secured a decisive victory at Yorktown in 1781, leading to the Treaty of Paris in 1783, which recognized the United States as an independent nation. The American Revolution not only shaped the destiny of a new nation but also became an inspiration for other movements for freedom and self-determination around the world.', '2023-06-01', '10:00:00', '11:00:00', 'This is an individual quiz that you need to do to get bonus score for your exam. The aim of this quiz is to enhance your knowledge about The American Revolution', 1, 1, 1, '2024-03-20 01:21:10', '2024-03-20 01:21:10'),
(2, 'Literacy Quiz #4', 'The American Revolution, which took place from 1775 to 1783, was a monumental event in the history of the United States. Fueled by a growing discontent with British colonial rule, American colonists rose up to challenge the authority of the British Empire. The Revolution was ignited by events like the Boston Tea Party and the publication of influential writings such as Thomas Paines Common Sense. The colonists fought for their rights, freedom, and representation, ultimately leading to the Declaration of Independence in 1776. The war that followed was marked by key battles like Lexington and Concord, Saratoga, and Yorktown, where the determined colonists, led by figures like George Washington, fought against the British forces. With the support of France, the Americans secured a decisive victory at Yorktown in 1781, leading to the Treaty of Paris in 1783, which recognized the United States as an independent nation. The American Revolution not only shaped the destiny of a new nation but also became an inspiration for other movements for freedom and self-determination around the world.', '2023-06-02', '12:00:00', '13:00:00', 'This is an individual quiz that you need to do to get bonus score for your exam. The aim of this quiz is to enhance your knowledge about The American Revolution', 2, 1, 1, '2024-03-20 01:21:10', '2024-03-20 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `ResourceID` bigint(20) UNSIGNED NOT NULL,
  `ResourceTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ResourceLink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SessionID` bigint(20) UNSIGNED NOT NULL,
  `CourseID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`ResourceID`, `ResourceTitle`, `ResourceLink`, `SessionID`, `CourseID`, `created_at`, `updated_at`) VALUES
(1, 'Resource 1', 'https://example.com/resource1', 1, 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(2, 'Resource 2', 'https://example.com/resource2', 1, 2, '2024-03-20 01:21:11', '2024-03-20 01:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `SessionID` bigint(20) UNSIGNED NOT NULL,
  `SessionTopic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SessionIntroduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CourseID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`SessionID`, `SessionTopic`, `SessionIntroduction`, `CourseID`, `created_at`, `updated_at`) VALUES
(1, 'American Revolution', 'Introduction to Session 1', 1, '2024-03-20 01:21:10', '2024-03-20 01:21:10'),
(2, 'Industrial Revolution', 'Introduction to Session 2', 1, '2024-03-20 01:21:10', '2024-03-20 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` bigint(20) UNSIGNED NOT NULL,
  `UserName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserXP` int(11) NOT NULL DEFAULT 0,
  `UserDateJoined` date NOT NULL DEFAULT '2024-03-20',
  `UserRole` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Student',
  `ClassroomID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `UserEmail`, `UserPassword`, `UserXP`, `UserDateJoined`, `UserRole`, `ClassroomID`, `created_at`, `updated_at`) VALUES
(1, 'Michael Varian', 'michael@google.com', 'mikel123', 200, '2024-03-20', 'Student', 1, '2024-03-20 01:21:10', '2024-03-20 01:21:10'),
(2, 'Jane Smith', 'janesmith@example.com', 'jane123', 100, '2024-03-20', 'Student', 1, '2024-03-20 01:21:10', '2024-03-20 01:21:10'),
(3, 'Michelle Angela', 'michelle@google.com', 'micel123', 50, '2024-03-20', 'Teacher', 1, '2024-03-20 01:21:10', '2024-03-20 01:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_quizzes`
--

CREATE TABLE `user_quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `UserID` bigint(20) UNSIGNED NOT NULL,
  `QuizID` bigint(20) UNSIGNED NOT NULL,
  `QuizScore` int(11) NOT NULL,
  `StatusPlayed` tinyint(1) NOT NULL,
  `FinishedDateTime` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_quizzes`
--

INSERT INTO `user_quizzes` (`id`, `UserID`, `QuizID`, `QuizScore`, `StatusPlayed`, `FinishedDateTime`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 80, 0, '2024-03-20 01:21:11', '2024-03-20 01:21:11', '2024-03-20 01:21:11'),
(2, 1, 2, 90, 1, '2024-03-20 01:21:11', '2024-03-20 01:21:11', '2024-03-20 01:21:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`AnswerID`),
  ADD KEY `answers_quizid_foreign` (`QuizID`),
  ADD KEY `answers_userid_foreign` (`UserID`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ArticleID`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`BadgesID`);

--
-- Indexes for table `badges_users`
--
ALTER TABLE `badges_users`
  ADD PRIMARY KEY (`BadgesID`,`UserID`),
  ADD KEY `badges_users_userid_foreign` (`UserID`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`ClassroomID`);

--
-- Indexes for table `classroom_courses`
--
ALTER TABLE `classroom_courses`
  ADD PRIMARY KEY (`ClassroomID`,`CourseID`),
  ADD KEY `classroom_courses_courseid_foreign` (`CourseID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `questions_quizid_foreign` (`QuizID`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`QuizID`),
  ADD KEY `quizzes_sessionid_foreign` (`SessionID`),
  ADD KEY `quizzes_courseid_foreign` (`CourseID`),
  ADD KEY `quizzes_classroomid_foreign` (`ClassroomID`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`ResourceID`),
  ADD KEY `resources_sessionid_foreign` (`SessionID`),
  ADD KEY `resources_courseid_foreign` (`CourseID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`SessionID`),
  ADD KEY `sessions_courseid_foreign` (`CourseID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `users_useremail_unique` (`UserEmail`),
  ADD KEY `users_classroomid_foreign` (`ClassroomID`);

--
-- Indexes for table `user_quizzes`
--
ALTER TABLE `user_quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_quizzes_userid_foreign` (`UserID`),
  ADD KEY `user_quizzes_quizid_foreign` (`QuizID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `AnswerID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `ArticleID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `BadgesID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `ClassroomID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `QuizID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `ResourceID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `SessionID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_quizzes`
--
ALTER TABLE `user_quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_quizid_foreign` FOREIGN KEY (`QuizID`) REFERENCES `quizzes` (`QuizID`),
  ADD CONSTRAINT `answers_userid_foreign` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `badges_users`
--
ALTER TABLE `badges_users`
  ADD CONSTRAINT `badges_users_badgesid_foreign` FOREIGN KEY (`BadgesID`) REFERENCES `badges` (`BadgesID`),
  ADD CONSTRAINT `badges_users_userid_foreign` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `classroom_courses`
--
ALTER TABLE `classroom_courses`
  ADD CONSTRAINT `classroom_courses_classroomid_foreign` FOREIGN KEY (`ClassroomID`) REFERENCES `classrooms` (`ClassroomID`),
  ADD CONSTRAINT `classroom_courses_courseid_foreign` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quizid_foreign` FOREIGN KEY (`QuizID`) REFERENCES `quizzes` (`QuizID`);

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_classroomid_foreign` FOREIGN KEY (`ClassroomID`) REFERENCES `classrooms` (`ClassroomID`),
  ADD CONSTRAINT `quizzes_courseid_foreign` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `quizzes_sessionid_foreign` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`);

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_courseid_foreign` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `resources_sessionid_foreign` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_courseid_foreign` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_classroomid_foreign` FOREIGN KEY (`ClassroomID`) REFERENCES `classrooms` (`ClassroomID`);

--
-- Constraints for table `user_quizzes`
--
ALTER TABLE `user_quizzes`
  ADD CONSTRAINT `user_quizzes_quizid_foreign` FOREIGN KEY (`QuizID`) REFERENCES `quizzes` (`QuizID`),
  ADD CONSTRAINT `user_quizzes_userid_foreign` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
