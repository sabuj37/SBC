-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2024 at 09:54 PM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbccumillaV1`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `className` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `className`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Six', 'six', '2023-10-26 21:28:16', '2023-10-26 21:28:16'),
(2, 'Seven', 'seven', '2023-10-26 21:28:34', '2023-10-26 21:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

CREATE TABLE `class_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `assignClass` varchar(255) DEFAULT NULL,
  `assignDepartment` varchar(255) DEFAULT NULL,
  `assignSession` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cultivation_admins`
--

CREATE TABLE `cultivation_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adminName` text DEFAULT NULL,
  `adminUser` varchar(255) DEFAULT NULL,
  `userType` varchar(255) DEFAULT NULL,
  `loginPassword` varchar(255) DEFAULT NULL,
  `adminMobile` varchar(255) DEFAULT NULL,
  `adminMail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cultivation_admins`
--

INSERT INTO `cultivation_admins` (`id`, `adminName`, `adminUser`, `userType`, `loginPassword`, `adminMobile`, `adminMail`, `created_at`, `updated_at`) VALUES
(1, 'Abu Yousuf', 'yousuf371', 'Admin', '$2y$10$iE9TeFLockDBaP7CV2N48uf6QUVwu6mPi7OFyznUXB.TfdExl3u1i', '01678909091', 'virtualitprofessional@gmail.com', '2024-02-21 16:38:42', '2024-02-22 09:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `departmentName`, `alias`, `created_at`, `updated_at`) VALUES
(2, 'Science', 'science', '2023-10-27 20:06:54', '2023-10-27 20:06:54'),
(3, 'Business Studies', 'business_studies', '2023-10-27 20:07:14', '2023-10-27 20:07:14'),
(4, 'Humanities', 'humanities', '2023-10-27 20:07:23', '2023-10-27 20:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examName` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `examDate` varchar(255) DEFAULT NULL,
  `closeDate` varchar(255) DEFAULT NULL,
  `baseMark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `examName`, `alias`, `className`, `examDate`, `closeDate`, `baseMark`, `created_at`, `updated_at`) VALUES
(2, 'Yearly Final Exam-2023', 'yearly_final_exam-2023', '0', '2023-11-01', '2023-11-10', '80', '2023-11-10 19:05:47', '2023-11-10 19:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routines`
--

CREATE TABLE `exam_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `assignClass` varchar(255) DEFAULT NULL,
  `assignDepartment` varchar(255) DEFAULT NULL,
  `assignSession` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_routines`
--

INSERT INTO `exam_routines` (`id`, `title`, `assignClass`, `assignDepartment`, `assignSession`, `status`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'routine title here', '2', '4', '4', NULL, '159710287820240227.pdf', '2024-02-27 10:20:28', '2024-02-27 10:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `ex_principals`
--

CREATE TABLE `ex_principals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `startFrom` varchar(255) DEFAULT NULL,
  `endTo` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ex_principals`
--

INSERT INTO `ex_principals` (`id`, `fullName`, `mobile`, `email`, `startFrom`, `endTo`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Md Abu Yousuf', '01678909091', 'virtualitprofessional@gmail.com', '2012-07-26', '2015-05-25', 'Principal', '2024-02-24 02:32:23', '2024-02-24 03:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_lists`
--

CREATE TABLE `grade_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `minMark` varchar(255) DEFAULT NULL,
  `maxMark` varchar(255) DEFAULT NULL,
  `gradeName` varchar(255) DEFAULT NULL,
  `gradePoint` varchar(255) DEFAULT NULL,
  `minGp` varchar(255) DEFAULT NULL,
  `maxGp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade_lists`
--

INSERT INTO `grade_lists` (`id`, `minMark`, `maxMark`, `gradeName`, `gradePoint`, `minGp`, `maxGp`, `created_at`, `updated_at`) VALUES
(2, '80', '100', 'A+', '5.00', '5.00', '5.00', '2023-11-17 11:30:29', '2023-11-17 11:44:45'),
(3, '70', '79', 'A', '4.00', '4.00', '4.99', '2023-11-17 11:32:30', '2023-11-17 11:32:30'),
(4, '60', '69', 'A-', '3.50', '3.50', '3.99', '2023-11-17 11:33:12', '2023-11-17 11:33:12'),
(5, '50', '59', 'B', '3.00', '3.00', '3.49', '2023-11-17 11:33:44', '2023-11-17 11:33:44'),
(6, '40', '49', 'C', '2.00', '2.00', '2.99', '2023-11-17 11:34:05', '2023-11-17 11:34:05'),
(7, '33', '39', 'D', '1.00', '1.00', '1.99', '2023-11-17 11:34:31', '2023-11-17 11:34:31'),
(9, '0', '32', 'F', '0.00', '0.00', '0.00', '2023-11-17 11:45:56', '2023-11-17 11:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `institute_details`
--

CREATE TABLE `institute_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `insHeadline` varchar(255) DEFAULT NULL,
  `insDetails` text DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `vision` varchar(255) DEFAULT NULL,
  `landSize` varchar(255) DEFAULT NULL,
  `establishDate` varchar(255) DEFAULT NULL,
  `heroImg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institute_details`
--

INSERT INTO `institute_details` (`id`, `insHeadline`, `insDetails`, `mission`, `vision`, `landSize`, `establishDate`, `heroImg`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to Sonar Bangla University College', 'On the first day of July 2000 the Sonar Bangla College opened its doors to students with Sir P.J. Hartog as the first Vice-Chancellor of the University. The University was set up in a picturesque part of the city known as Ramna on 600 acres of land.The University started its activities with 3 Faculties,12 Departments, 60 teachers, 877 students and 3 dormitories (Halls of Residence) for the students. At present the University consists of 13 Faculties, 83 Departments, 12 Institutes, 20 residential halls, 3 hostels and more than 56 Research Centres. The number of students and teachers has risen to about 37018 and 1992 respectively.The main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students.', 'The number of students and teachers has risen to about 37018 and 1992 respectively.The main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students.', 'Since its inception the University has a distinct character of having distinguished scholars as faculties', '26 Acres', '6 July, 2000', '124322283720240223.jpeg', '2024-02-23 14:05:40', '2024-02-24 01:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `institute_infos`
--

CREATE TABLE `institute_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managing_comittees`
--

CREATE TABLE `managing_comittees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `jobDetails` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `validYear` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managing_comittees`
--

INSERT INTO `managing_comittees` (`id`, `fullName`, `qualification`, `designation`, `jobDetails`, `mobile`, `email`, `address`, `validYear`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Md Abu Yousuf', 'HSC', 'President', 'Business', '+8801678909091', 'virtualitprofessional@gmail.com', 'north shampur', '2026', 'Active', NULL, '2024-02-24 21:31:42', '2024-02-25 08:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `marksheets`
--

CREATE TABLE `marksheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `groupId` varchar(255) DEFAULT NULL,
  `examId` varchar(255) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `subjectMarks` varchar(255) DEFAULT NULL,
  `objectMarks` varchar(255) DEFAULT NULL,
  `practicalMarks` varchar(255) DEFAULT NULL,
  `totalMarks` varchar(255) DEFAULT NULL,
  `laterGrade` varchar(255) DEFAULT NULL,
  `gradePoint` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marksheets`
--

INSERT INTO `marksheets` (`id`, `studentId`, `classId`, `sessionId`, `groupId`, `examId`, `subjectId`, `subjectMarks`, `objectMarks`, `practicalMarks`, `totalMarks`, `laterGrade`, `gradePoint`, `created_at`, `updated_at`) VALUES
(41, 'SBCSTID-1', '2', '4', '4', '2', '2', '18', NULL, '2', '20', 'F', '0.00', '2023-11-18 13:21:09', '2023-11-18 13:21:09'),
(42, 'SBCSTID- 2', '2', '4', '4', '2', '2', '17', NULL, NULL, '17', 'F', '0.00', '2023-11-18 13:21:09', '2023-11-18 13:21:09'),
(43, 'SBCSTID-1', '2', '4', '4', '2', '3', '33', NULL, NULL, '33', 'D', '1.00', '2023-11-18 21:54:01', '2023-11-18 21:54:01'),
(44, 'SBCSTID- 2', '2', '4', '4', '2', '3', '34', NULL, NULL, '34', 'D', '1.00', '2023-11-18 21:54:01', '2023-11-18 21:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_20_061822_create_student_management_table', 1),
(9, '2023_10_20_061841_create_teacher_management_table', 2),
(10, '2023_10_20_061848_create_staff_management_table', 2),
(11, '2023_10_27_020817_create_classes_table', 3),
(12, '2023_10_27_020831_create_departments_table', 3),
(13, '2023_10_27_020850_create_subjects_table', 3),
(14, '2023_10_27_020900_create_exams_table', 3),
(15, '2023_10_27_021314_create_grade_lists_table', 3),
(16, '2023_11_05_204654_create_sessions_table', 4),
(18, '2023_11_11_004923_create_marksheets_table', 5),
(19, '2023_10_17_063755_create_server_configs_table', 6),
(20, '2024_02_18_112352_create_notices_table', 7),
(21, '2024_02_21_081222_create_cultivation_admins_table', 8),
(22, '2024_02_22_115415_create_institute_infos_table', 9),
(23, '2024_02_22_115502_create_ex_principals_table', 9),
(24, '2024_02_22_115520_create_managing_comittees_table', 9),
(25, '2024_02_22_115543_create_photo_galleries_table', 9),
(26, '2024_02_22_115630_create_video_galleries_table', 9),
(27, '2024_02_23_060744_create_institute_details_table', 9),
(28, '2024_02_23_060853_create_placement_cells_table', 9),
(29, '2024_02_23_060915_create_needy_students_table', 9),
(30, '2024_02_23_181937_create_principal_speeches_table', 10),
(39, '2024_02_25_014846_create_syllabi_table', 11),
(40, '2024_02_25_014904_create_class_routines_table', 11),
(41, '2024_02_25_014925_create_exam_routines_table', 11),
(42, '2024_02_25_014955_create_semister_plans_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `needy_students`
--

CREATE TABLE `needy_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `attachFile` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `headline`, `attachment`, `body`, `created_at`, `updated_at`) VALUES
(2, 'This is a test news', NULL, 'Lorem ipsom text will goes here. Thanks for using cultivation a product of Virtual IT Professional.', '2024-02-18 19:28:25', '2024-02-18 19:28:25'),
(3, 'সরকারি কলেজে বিজ্ঞান শিক্ষার সুযোগ সম্প্রসারণ প্রকল্পে নিয়োগ বিজ্ঞপ্তি', NULL, 'মাধ্যমিক ও উচ্চশিক্ষা অধিদপ্তরের সরকারি কলেজসমূহে বিজ্ঞান শিক্ষার সুযােগ সম্প্রসারণ প্রকল্প-এ জনবল নিয়োগ বিজ্ঞপ্তি প্রকাশিত হয়েছে। কোনাে স্বীকৃত শিক্ষা প্রতিষ্ঠান থেকে স্নাতক/সমমানের পরীক্ষায় কমপক্ষে ২য় বিভাগপ্রাপ্ত ১৮ থেকে ৩০ বছর বয়সী ০২ জনকে কম্পিউটার অপারেটর/ডাটা এন্ট্রি কাম অফিস সহকারী নিয়োগ দেওয়া হবে।\r\n\r\nশিক্ষা মন্ত্রণালয়ের মাধ্যমিক ও উচ্চশিক্ষা বিভাগের আওতায়, মাধ্যমিক ও উচ্চ শিক্ষা অধিদপ্তর কর্তৃক বাস্তবায়নাধীন সরকারি কলেজসমূহে বিজ্ঞান শিক্ষার সুযােগ সম্প্রসারণ প্রকল্প এর আওতায় সম্পূর্ণ অস্থায়ী ভিত্তিতে কেবল প্রকল্প মেয়াদকালীন সময়ের জন্য নিম্নবর্ণিত শূন্য পদে সরকারি বিধি অনুযায়ী প্রদেয় পদের পাশে উল্লিখিত গ্রেড অনুযায়ী (সাকুল্য বেতনে) নিয়ােগ/প্যানেল তৈরির লক্ষ্যে প্রকৃত বাংলাদেশি নাগরিকদের নিকট থেকে দরখাস্ত আহবান করা যাচ্ছে', '2024-02-18 20:17:15', '2024-02-18 20:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `galleryHeading` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_cells`
--

CREATE TABLE `placement_cells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `companyLocation` varchar(255) DEFAULT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `principal_speeches`
--

CREATE TABLE `principal_speeches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `generalSpeech` text DEFAULT NULL,
  `importantSpeech` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `principal_speeches`
--

INSERT INTO `principal_speeches` (`id`, `generalSpeech`, `importantSpeech`, `created_at`, `updated_at`) VALUES
(1, 'General speech will goes here', 'Principal main speech will goes here', '2024-02-24 01:46:53', '2024-02-24 01:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `semister_plans`
--

CREATE TABLE `semister_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `assignClass` varchar(255) DEFAULT NULL,
  `assignDepartment` varchar(255) DEFAULT NULL,
  `assignSession` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server_configs`
--

CREATE TABLE `server_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institueName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `einNumber` int(11) DEFAULT NULL,
  `officeMobile` varchar(255) DEFAULT NULL,
  `officeEmail` varchar(255) DEFAULT NULL,
  `loginPass` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `principalSign` varchar(255) DEFAULT NULL,
  `principalName` varchar(255) DEFAULT NULL,
  `principalMobile` varchar(255) DEFAULT NULL,
  `principalMail` varchar(255) DEFAULT NULL,
  `studentIdPrefix` varchar(10) DEFAULT NULL,
  `teacherIdPrefix` varchar(10) DEFAULT NULL,
  `staffIdPrefix` varchar(10) DEFAULT NULL,
  `establishDate` varchar(255) DEFAULT NULL,
  `facebookPage` varchar(255) DEFAULT NULL,
  `twitterLink` varchar(255) DEFAULT NULL,
  `youtubeChanel` varchar(255) DEFAULT NULL,
  `linkedIn` varchar(255) DEFAULT NULL,
  `sm_on_off` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `server_configs`
--

INSERT INTO `server_configs` (`id`, `institueName`, `address`, `einNumber`, `officeMobile`, `officeEmail`, `loginPass`, `avatar`, `logo`, `favicon`, `principalSign`, `principalName`, `principalMobile`, `principalMail`, `studentIdPrefix`, `teacherIdPrefix`, `staffIdPrefix`, `establishDate`, `facebookPage`, `twitterLink`, `youtubeChanel`, `linkedIn`, `sm_on_off`, `created_at`, `updated_at`) VALUES
(4, 'সোনার বাংলা বিশ্ববিদ্যালয় কলেজ', 'গোবিন্দপুর, পয়াত, বুড়িচং, কুমিল্লা', 105330, '01678909091', 'virtualitprofessional2@gmail.com', NULL, '17739559920240216.webp', '69815520820240218.png', '60303201720240218.png', '22828374820240218.png', 'আবু ছালেক মোঃ সেলিম রেজা সৌরভ', '01717114475', 'sbccumilla@gmail.com', 'SBCST', 'SBCTID', 'SBCSTF', '2000', 'https://fb.com', 'https://twitter.com', 'https://youtube.com', NULL, NULL, '2024-02-16 03:29:23', '2024-02-22 10:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sessionName` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `sessionName`, `alias`, `created_at`, `updated_at`) VALUES
(2, '2020-2021', '2020-2021', '2023-11-06 05:52:38', '2023-11-06 05:52:38'),
(3, '2021-2022', '2021-2022', '2023-11-06 05:52:46', '2023-11-06 05:52:46'),
(4, '2022-2023', '2022-2023', '2023-11-06 05:53:23', '2023-11-06 05:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `staff_management`
--

CREATE TABLE `staff_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staffId` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fathersName` varchar(255) DEFAULT NULL,
  `mothersName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `joinDate` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `profileId` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `blGroup` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_management`
--

CREATE TABLE `student_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admitId` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fathersName` varchar(255) DEFAULT NULL,
  `mothersName` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `blGroup` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_management`
--

INSERT INTO `student_management` (`id`, `admitId`, `firstName`, `lastName`, `fathersName`, `mothersName`, `address`, `gender`, `dob`, `roll`, `mobile`, `blGroup`, `class`, `email`, `session`, `section`, `religion`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'SBCSTID-1', 'Abu', 'Yousuf', 'Ayub Ali', 'Jahanara Begum', 'Chattogram', '1', '26/07/1994', '434713', '01678909091', '3', '2', 'virtualitprofessional2@gmail.com', '4', '4', '1', '189968521120231126.png', '2023-10-21 19:37:34', '2023-11-26 07:01:57'),
(3, 'SBCSTID- 3', 'Mohammad', 'Noorun Nobee', 'Nabeel IBN Noor', 'Nabiah Akter', 'Jadupur, Burichong, Cumilla', '1', '26/07/1994', '132345', '01753936352', 'B+', '1', NULL, '3', '3', 'Islam', '66703100520231126.png', '2023-11-26 06:12:03', '2023-11-26 06:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subjectName` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `subjectType` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subjectName`, `alias`, `subjectType`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 'bangla', 'Main', '2023-10-27 20:23:27', '2023-11-19 20:31:11'),
(2, 'English', 'english', 'Main', '2023-10-27 20:23:31', '2023-10-27 20:23:31'),
(3, 'Mathematics', 'mathematics', 'Main', '2023-10-27 20:23:39', '2023-11-05 14:57:43'),
(5, 'ICT', 'ict', 'Main', '2023-11-19 20:29:38', '2023-11-19 20:29:38'),
(6, 'Accouning', 'accouning', 'Main', '2023-11-19 20:30:03', '2023-11-19 20:30:03'),
(7, 'General Science', 'general_science', 'Main', '2023-11-19 20:30:23', '2023-11-19 20:30:23'),
(8, 'Social Science', 'social_science', 'Main', '2023-11-19 20:31:39', '2023-11-19 20:31:39'),
(9, 'Higher Mathmatics', 'higher_mathmatics', 'Main', '2023-11-19 20:32:04', '2023-11-19 20:32:04'),
(10, 'Agriculture', 'agriculture', 'Main', '2023-11-19 20:32:21', '2023-11-19 20:32:21'),
(11, 'Bangla 1st Paper', 'bangla_1st_paper', 'Main', '2023-11-19 20:33:00', '2023-11-19 20:33:00'),
(12, 'Bangla 2nd Paper', 'bangla_2nd_paper', 'Main', '2023-11-19 20:33:08', '2023-11-19 20:33:08'),
(13, 'English 1st Paper', 'english_1st_paper', 'Main', '2023-11-19 20:33:17', '2023-11-19 20:33:17'),
(14, 'English 2nd Paper', 'english_2nd_paper', 'Main', '2023-11-19 20:33:24', '2023-11-19 20:33:24'),
(15, 'Religion', 'religion', 'Main', '2023-11-19 20:33:35', '2023-11-19 20:33:35'),
(16, 'Physics', 'physics', 'Main', '2023-11-19 20:33:42', '2023-11-19 20:33:42'),
(17, 'Chemistry', 'chemistry', 'Main', '2023-11-19 20:33:50', '2023-11-19 20:33:50'),
(18, 'Biology', 'biology', 'Main', '2023-11-19 20:33:59', '2023-11-19 20:33:59'),
(19, 'Finance', 'finance', 'Main', '2023-11-19 20:34:15', '2023-11-19 20:34:15'),
(20, 'Business Entrepreneurship', 'business_entrepreneurship', 'Main', '2023-11-19 20:34:23', '2023-11-19 20:34:23'),
(21, 'Agricultural Studies', 'agricultural_studies', 'Main', '2023-11-19 20:34:34', '2023-11-19 20:34:34'),
(22, 'Bangladesh and Global Studies', 'bangladesh_and_global_studies', 'Main', '2023-11-19 20:35:01', '2023-11-19 20:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `syllabi`
--

CREATE TABLE `syllabi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `assignClass` varchar(255) DEFAULT NULL,
  `assignDepartment` varchar(255) DEFAULT NULL,
  `assignSession` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllabi`
--

INSERT INTO `syllabi` (`id`, `title`, `assignClass`, `assignDepartment`, `assignSession`, `status`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'Syllabus title goes here', '1', '3', '2', NULL, '89610982220240227.pdf', '2024-02-25 11:24:34', '2024-02-27 10:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_management`
--

CREATE TABLE `teacher_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacherId` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `fathersName` varchar(255) DEFAULT NULL,
  `mothersName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `joinDate` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `blGroup` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `profileId` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `galleryHeading` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cultivation_admins`
--
ALTER TABLE `cultivation_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ex_principals`
--
ALTER TABLE `ex_principals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grade_lists`
--
ALTER TABLE `grade_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute_details`
--
ALTER TABLE `institute_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute_infos`
--
ALTER TABLE `institute_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managing_comittees`
--
ALTER TABLE `managing_comittees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marksheets`
--
ALTER TABLE `marksheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needy_students`
--
ALTER TABLE `needy_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_cells`
--
ALTER TABLE `placement_cells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principal_speeches`
--
ALTER TABLE `principal_speeches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semister_plans`
--
ALTER TABLE `semister_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_configs`
--
ALTER TABLE `server_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_management`
--
ALTER TABLE `staff_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_management`
--
ALTER TABLE `student_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabi`
--
ALTER TABLE `syllabi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_management`
--
ALTER TABLE `teacher_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class_routines`
--
ALTER TABLE `class_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cultivation_admins`
--
ALTER TABLE `cultivation_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_routines`
--
ALTER TABLE `exam_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ex_principals`
--
ALTER TABLE `ex_principals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_lists`
--
ALTER TABLE `grade_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `institute_details`
--
ALTER TABLE `institute_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `institute_infos`
--
ALTER TABLE `institute_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managing_comittees`
--
ALTER TABLE `managing_comittees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marksheets`
--
ALTER TABLE `marksheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `needy_students`
--
ALTER TABLE `needy_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_cells`
--
ALTER TABLE `placement_cells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `principal_speeches`
--
ALTER TABLE `principal_speeches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semister_plans`
--
ALTER TABLE `semister_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_configs`
--
ALTER TABLE `server_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_management`
--
ALTER TABLE `staff_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_management`
--
ALTER TABLE `student_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `syllabi`
--
ALTER TABLE `syllabi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_management`
--
ALTER TABLE `teacher_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
