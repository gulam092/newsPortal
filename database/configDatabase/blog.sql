-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 09:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 'sports', 1, '2020-06-22 00:15:21', '2020-06-22 00:15:37'),
(4, 'mobile', 1, '2020-06-22 00:15:33', '2020-06-22 00:15:33'),
(5, 'Footbal', 0, NULL, NULL),
(7, 'Cricket', 1, NULL, NULL),
(8, 'Politic', 1, NULL, NULL),
(9, 'Entertainment', 0, NULL, NULL),
(10, 'Education', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'gulam ', 'In a move to address mounting concerns about security on Android, Google and Samsung are now issuing.\r\n', 6, 1, '2020-06-22 18:14:12', NULL),
(2, 'king', 'In a move to address mounting concerns about security on Android, Google and Samsung are now issuing.\r\n', 4, 0, '2020-06-21 18:14:12', NULL),
(3, 'admin', '<p>Hi this is nice post</p>', 1, 0, '2020-06-22 13:23:26', '2020-06-22 13:23:26'),
(4, 'admin', '<p>This is nice', 1, 1, '2020-06-22 13:25:21', '2020-06-22 13:25:21'),
(5, 'admin', '<p>this is nice</p>', 6, 1, '2020-06-22 13:26:56', '2020-06-22 13:30:58'),
(6, 'admin', '<p>hello this is very nice</p>', 6, 1, '2020-06-24 01:10:40', '2020-06-24 01:10:40'),
(7, 'arjun', 'hello , your news portal is very good ..', 6, 1, '2020-06-24 01:26:54', '2020-06-24 01:28:30'),
(8, 'admin', '<p>Thnaks for your appriciasan&nbsp;</p>', 6, 1, '2020-06-24 01:28:23', '2020-06-24 01:28:37');

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
(1, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2020_06_20_072353_entrust_setup_tables', 2),
(6, '2020_06_21_195903_create_categories_table', 3),
(7, '2020_06_22_060920_create_posts_table', 4),
(8, '2020_06_22_174656_create_comments_table', 5),
(9, '2020_06_22_191837_create_settings_table', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Permission Add', 'Permission Add', 'Permission Add', '2020-06-21 13:32:00', '2020-06-21 13:32:00'),
(7, 'Permission List', 'Permission List', 'Permission List', '2020-06-21 13:32:20', '2020-06-21 13:32:20'),
(8, 'Permission Update', 'Permission Update', 'Permission Update', '2020-06-21 13:32:33', '2020-06-21 13:32:33'),
(9, 'Permission Delete', 'Permission Delete', 'Permission Delete', '2020-06-21 13:32:44', '2020-06-21 13:32:44'),
(10, 'Role Add', 'Role Add', 'Role Add', '2020-06-21 13:35:16', '2020-06-21 13:35:16'),
(11, 'Role List', 'Role List', 'Role List', '2020-06-21 13:35:27', '2020-06-21 13:35:27'),
(12, 'Role Update', 'Role Update', 'Role Update', '2020-06-21 13:35:39', '2020-06-21 13:35:39'),
(13, 'Role Delete', 'Role Delete', 'Role Delete', '2020-06-21 13:35:50', '2020-06-21 13:35:50'),
(14, 'Category Add', 'Category Add', 'Category Add', '2020-06-21 13:36:00', '2020-06-21 13:36:00'),
(15, 'Category List', 'Category List', 'Category List', '2020-06-21 13:36:11', '2020-06-21 13:36:11'),
(16, 'Category Update', 'Category Update', 'Category Update', '2020-06-21 13:36:21', '2020-06-21 13:36:21'),
(17, 'Category Delete', 'Category Delete', 'Category Delete', '2020-06-21 13:36:33', '2020-06-21 13:36:33'),
(18, 'Post Add', 'Post Add', 'Post Add', '2020-06-21 13:36:51', '2020-06-21 13:36:51'),
(19, 'Post List', 'Post List', 'Post List', '2020-06-21 13:37:02', '2020-06-21 13:37:02'),
(20, 'Post Update', 'Post Update', 'Post Update', '2020-06-21 13:37:12', '2020-06-21 13:37:12'),
(21, 'Post Delete', 'Post Delete', 'Post Delete', '2020-06-21 13:37:24', '2020-06-21 13:37:24'),
(22, 'Comment View', 'Comment View', 'Comment View', '2020-06-21 13:37:34', '2020-06-21 13:37:34'),
(23, 'Comment Reply', 'Comment Reply', 'Comment Reply', '2020-06-21 13:37:44', '2020-06-21 13:37:44'),
(24, 'Comment Approval', 'Comment Approval', 'Comment Approval', '2020-06-21 13:37:56', '2020-06-21 13:37:56'),
(25, 'System Settings', 'System Settings', 'System Settings', '2020-06-21 13:38:17', '2020-06-21 13:38:17'),
(26, 'Author List', 'Author List', 'Author List', '2020-06-21 13:38:29', '2020-06-21 13:38:29'),
(27, 'Author Add', 'Author Add', 'Author Add', '2020-06-21 13:38:39', '2020-06-21 13:38:39'),
(28, 'Author Update', 'Author Update', 'Author Update', '2020-06-21 13:38:49', '2020-06-21 13:38:49'),
(29, 'Author Delete', 'Author Delete', 'Author Delete', '2020-06-21 13:38:59', '2020-06-21 13:38:59'),
(30, 'All', 'All', 'All', '2020-06-21 13:43:28', '2020-06-21 13:43:28'),
(31, 'Permission', 'Permission', 'Permission', '2020-06-21 14:17:29', '2020-06-21 14:17:29'),
(32, 'Category Category', 'Category Category', 'Category Category', '2020-06-21 23:25:21', '2020-06-21 23:25:21'),
(33, 'Category Store', 'Category Store', 'Category Store', '2020-06-21 23:32:26', '2020-06-21 23:32:26'),
(34, 'Category Edit', 'Category Edit', 'Category Edit', '2020-06-22 00:03:18', '2020-06-22 00:03:18'),
(35, 'Post Create', 'Post Create', 'Post Create', '2020-06-22 01:08:00', '2020-06-22 01:08:00'),
(36, 'SystemSetting', 'SystemSetting', 'SystemSetting', '2020-06-22 23:06:24', '2020-06-22 23:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(18, 7),
(18, 8),
(19, 7),
(19, 8),
(20, 7),
(20, 8),
(21, 8),
(22, 7),
(22, 8),
(23, 7),
(23, 8),
(24, 8),
(30, 6),
(31, 7);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL,
  `hot_news` int(11) NOT NULL,
  `blockquote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_description`, `description`, `slug`, `category_id`, `created_by`, `main_image`, `thumb_image`, `list_image`, `view_count`, `hot_news`, `blockquote`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Chevrolet car-saving technology delivers', 'Chevrolet car-saving technology delivers', '<h1><a href=\"http://localhost/ecommrece-Udemy/newPortal/single.html\" target=\"_self\">Chevrolet car-saving technology delivers</a></h1>', 'chevrolet-car-saving-technology-delivers', 3, 1, 'post_main_6.jpg', 'post_thumb_6.jpg', 'post_list_6.jpg', 22, 0, NULL, 1, '2020-06-22 10:30:39', '2020-06-24 01:29:47'),
(7, 'इंटरनेशनल क्रिकेट की वापसी / वेस्टइंडीज टीम ने इंग्लैंड में 14 दिन का आइसोलेशन पूरा किया; मैनचेस्टर में 3 दिन का प्रैक्टिस मैच खेलेगी', 'वेस्टइंडीज टीम 3 मैचों की टेस्ट सीरीज के लिए 9 जून को इंग्लैंड पहुंचीं थी। खिलाड़ी ओल्ड टैफर्ड मैदान पर प्रैक्टिस कर रहे हैं।', '<p>तीन मैचों की टेस्ट सीरीज खेलने इंग्लैंड गई वेस्टइंडीज टीम ने 14 दिन का आइसोलेशन पूरा कर लिया है। मेहमान&nbsp;टीम 9 जून को&nbsp;इंग्लैंड पहुंचीं थी और तब से ही मैनचेस्टर के एक होटल में क्वारैंटाइन है। टीम होटल के पास ओल्ड टैफर्ड मैदान पर प्रैक्टिस कर रही है। इसी मैदान पर उसे तीन दिन का वॉर्म-अप मैच खेलना है।</p>\r\n\r\n<p>वहीं, इंग्लैंड की 30 सदस्यीय टीम गुरुवार से साउथैम्पटन में ट्रेनिंग करेगी।&nbsp;मेजबान टीम को मैदान के पास एक होटल में&nbsp;रखा गया है। खिलाड़ी दो अलग-अलग ग्रुप्स में प्रैक्टिस करेंगे। एक ग्रुप सुबह और दूसरा शाम को ट्रेनिंग करेगा।</p>\r\n\r\n<p>इससे पहले, सभी खिलाड़ियों और टीम मैनेजमेंट का कोरोना टेस्ट होगा। इसकी रिपोर्ट निगेटिव आने पर खिलाड़ी ट्रेनिंग शुरू करेंगे। मेजबान टीम&nbsp;1 जुलाई को तीन दिन का वॉर्म-अप मैच खेलेगी।</p>\r\n\r\n<p><strong>तीन टेस्ट मैच का सीरीज 8 जुलाई से</strong></p>\r\n\r\n<p>वेस्टइंडीज-इंग्लैंड के बीच पहला टेस्ट 8-12 जुलाई तक साउथैम्पटन के एजिस बॉल में होगा,&nbsp;जबकि बाकी दो टेस्ट ओल्ड ट्रैफर्ड में 16 से 20 जुलाई और 24-28 जुलाई तक खेले जाएंगे।&nbsp;</p>\r\n\r\n<p><strong>इंग्लैंड दौरे पर जाने वाले पाकिस्तान के 3 खिलाड़ी कोरोना पॉजिटिव</strong></p>\r\n\r\n<p>इधर, इसी महीने के आखिर में इंग्लैंड दौरे पर जाने वाली पाकिस्तान टीम के तीन खिलाड़ी कोरोना पॉजिटिव पाए गए हैं।&nbsp;इनमें हैदर अली, हैरिस&nbsp;रउफ और शादाब खान&nbsp;शामिल हैं। इंग्लैंड दौरे पर पाकिस्तान को&nbsp;तीन मैचों की टेस्ट और इतने ही टी-20 मैच की सीरीज खेलनी है। दोनों देशों के बीच&nbsp;पहला टेस्ट 30 जुलाई को लॉर्ड्स में खेला जाएगा। वहीं, टी-20 सीरीज की शुरुआत 29 अगस्त से होगी।&nbsp;</p>', 'il-i-il-14-aail-3-l', 7, 1, 'post_main_7.jpg', 'post_thumb_7.jpg', 'post_list_7.jpg', 2, 1, NULL, 1, '2020-06-23 04:01:10', '2020-06-24 01:05:34'),
(8, 'इंटरनेशनल क्रिकेट की वापसी / वेस्टइंडीज टीम ने इंग्लैंड में 14 दिन का आइसोलेशन पूरा किया; मैनचेस्टर में 3 दिन का प्रैक्टिस मैच खेलेगी', 'वेस्टइंडीज टीम 3 मैचों की टेस्ट सीरीज के लिए 9 जून को इंग्लैंड पहुंचीं थी। खिलाड़ी ओल्ड टैफर्ड मैदान पर प्रैक्टिस कर रहे हैं।', '<p>तीन मैचों की टेस्ट सीरीज खेलने इंग्लैंड गई वेस्टइंडीज टीम ने 14 दिन का आइसोलेशन पूरा कर लिया है। मेहमान&nbsp;टीम 9 जून को&nbsp;इंग्लैंड पहुंचीं थी और तब से ही मैनचेस्टर के एक होटल में क्वारैंटाइन है। टीम होटल के पास ओल्ड टैफर्ड मैदान पर प्रैक्टिस कर रही है। इसी मैदान पर उसे तीन दिन का वॉर्म-अप मैच खेलना है।</p>\r\n\r\n<p>वहीं, इंग्लैंड की 30 सदस्यीय टीम गुरुवार से साउथैम्पटन में ट्रेनिंग करेगी।&nbsp;मेजबान टीम को मैदान के पास एक होटल में&nbsp;रखा गया है। खिलाड़ी दो अलग-अलग ग्रुप्स में प्रैक्टिस करेंगे। एक ग्रुप सुबह और दूसरा शाम को ट्रेनिंग करेगा।</p>\r\n\r\n<p>इससे पहले, सभी खिलाड़ियों और टीम मैनेजमेंट का कोरोना टेस्ट होगा। इसकी रिपोर्ट निगेटिव आने पर खिलाड़ी ट्रेनिंग शुरू करेंगे। मेजबान टीम&nbsp;1 जुलाई को तीन दिन का वॉर्म-अप मैच खेलेगी।</p>\r\n\r\n<p><strong>तीन टेस्ट मैच का सीरीज 8 जुलाई से</strong></p>\r\n\r\n<p>वेस्टइंडीज-इंग्लैंड के बीच पहला टेस्ट 8-12 जुलाई तक साउथैम्पटन के एजिस बॉल में होगा,&nbsp;जबकि बाकी दो टेस्ट ओल्ड ट्रैफर्ड में 16 से 20 जुलाई और 24-28 जुलाई तक खेले जाएंगे।&nbsp;</p>\r\n\r\n<p><strong>इंग्लैंड दौरे पर जाने वाले पाकिस्तान के 3 खिलाड़ी कोरोना पॉजिटिव</strong></p>\r\n\r\n<p>इधर, इसी महीने के आखिर में इंग्लैंड दौरे पर जाने वाली पाकिस्तान टीम के तीन खिलाड़ी कोरोना पॉजिटिव पाए गए हैं।&nbsp;इनमें हैदर अली, हैरिस&nbsp;रउफ और शादाब खान&nbsp;शामिल हैं। इंग्लैंड दौरे पर पाकिस्तान को&nbsp;तीन मैचों की टेस्ट और इतने ही टी-20 मैच की सीरीज खेलनी है। दोनों देशों के बीच&nbsp;पहला टेस्ट 30 जुलाई को लॉर्ड्स में खेला जाएगा। वहीं, टी-20 सीरीज की शुरुआत 29 अगस्त से होगी।&nbsp;</p>', 'il-i-il-14-aail-3-l', 7, 1, 'post_main_8.jpg', 'post_thumb_8.jpg', 'post_list_8.jpg', 0, 0, NULL, 1, '2020-06-23 04:01:39', '2020-06-23 04:01:40'),
(9, 'साउथ अफ्रीका बोर्ड के 7 कर्मचारियों की रिपोर्ट पॉजिटिव, 100 से ज्यादा स्टाफ और खिलाड़ियों का टेस्ट कराया था', 'दक्षिण अफ्रीका सरकार ने लॉकडाउन के तीसरे फेज में नॉन कॉन्टैक्ट स्पोर्ट्स को इजाजत दी है। लेकिन 7 स्टाफ की कोरोना रिपोर्ट पॉजिटिव आने के बाद लाइव क्रिकेट की वापसी में देरी हो सकती है। -फाइल', '<p>क्रिकेट साउथ अफ्रीका (सीएसए) के 7 कर्मचारी कोरोनावायरस से संक्रमित पाए गए हैं। सोमवार को क्रिकेट बोर्ड ने इसकी पुष्टि की। बोर्ड ने पूरे देश में 100 से ज्यादा स्टाफ और खिलाड़ियों के टेस्ट कराए थे। इसमें प्रोफेशनल प्लेयर्स के अलावा लीग क्रिकेट से जुड़ी फ्रेंचाइजी का ट्रेनिंग स्टाफ शामिल है।</p>\r\n\r\n<p>यहां सरकार ने लॉकडाउन के तीसरे फेज में नॉन कॉन्टैक्ट स्पोर्ट्स की इजाजत दी है। इसके बाद कई जगह क्रिकेट की शुरुआत हुई।&nbsp;</p>\r\n\r\n<p><strong>संक्रमितों की संख्या कम है: सीएसए</strong></p>\r\n\r\n<p>सीएसए के एक्टिंग सीईओ जैक्स फॉल ने कहा, &lsquo;&lsquo;हमें पता था कि टेस्टिंग में स्टाफ की रिपोर्ट पॉजिटिव आ सकती है। वैसे हमने 100 लोगों के टेस्ट कराए थे, इसमें से 7 ही संक्रमित पाए गए हैं। ऐसे में यह संख्या कम है।&rsquo;&rsquo; हालांकि, फॉल ने यह खुलासा नहीं किया कि किसी खिलाड़ी की रिपोर्ट तो पॉजिटिव नहीं आई है।&nbsp;</p>\r\n\r\n<p><strong>बोर्ड ने किसी खिलाड़ी के संक्रमित होने की जानकारी नहीं दी</strong></p>\r\n\r\n<p>फॉल ने बताया कि हमारा मेडिकल प्रोटोकॉल हमें उन लोगों की जानकारी सार्वजनिक नहीं करने की इजाजत देता है, जिनकी रिपोर्ट पॉजिटिव आई है।</p>\r\n\r\n<p><strong>पिछले हफ्ते सॉलिडैरिटी कप टाला गया</strong></p>\r\n\r\n<p>दक्षिण अफ्रीका में फर्स्ट क्लास क्रिकेटर सोलो न्क्वेनी कोविड-19 की चपेट में आने वाले पहले खिलाड़ी है। पिछले महीने की उनकी रिपोर्ट पॉजिटिव आई थी। 7 स्टाफ के कोरोना संक्रमित होने के बाद देश में क्रिकेट की वापसी में और देरी हो सकती है।</p>', 'u-a-b-7-100-l', 3, 1, 'post_main_9.jpg', 'post_thumb_9.jpg', 'post_list_9.jpg', 0, 1, NULL, 1, '2020-06-23 04:03:10', '2020-06-23 04:03:11'),
(10, 'Bhuvneshwar Kumar Steals The Show In Yuvraj Singh\'s Hilarious Gender-Swap Photo', 'Yuvraj Singh took to Instagram to share a photo of the Indian men\' cricket team, but with a twist - all the players were gender-swapped to show how they would look if they were women. \"Who will you select as your girlfriend\'? I will reply tomorrow,\" he captioned the picture. W', '<p><a href=\"https://sports.ndtv.com/cricket/international-yoga-day-yuvraj-singh-gets-trolled-by-mandeep-singh-after-sharing-workout-video-2249898\" target=\"_self\">Yuvraj Singh</a>&nbsp;took to Instagram to share a photo of the Indian men&#39; cricket team, but with a twist - all the players were gender-swapped to show how they would look if they were women. &quot;Who will you select as your girlfriend&#39;? I will reply tomorrow,&quot; he captioned the picture. While the a lot of the players looked quite pretty in long locks and without the beards that most of the Indian team sport, seamer&nbsp;<a href=\"https://sports.ndtv.com/cricket/bhuvneshwar-kumar-sets-up-friendship-goals-as-he-shares-adorable-pictures-with-his-pet-dog-2241401\" target=\"_self\">Bhuvneshwar Kumar</a>&nbsp;emerged as the popular choice among those who responded.</p>\r\n\r\n<p>&quot;I will select bhuvi,&quot; wrote off-spinner&nbsp;<a href=\"https://sports.ndtv.com/cricket/yuvraj-singh-posts-throwback-photo-harbhajan-singh-has-this-amusing-question-2249803\" target=\"_self\">Harbhajan Singh</a>, while former India pacer.</p>\r\n\r\n<p>Actor Karan Wahi also commented, saying &quot;My Vote BHUVI.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bhuvneshwar Kumar himself also put in a cheeky comment saying &quot;I choose Bhuvi.&quot;</p>\r\n\r\n<p>Former England international&nbsp;<a href=\"https://sports.ndtv.com/cricket/yuvraj-singh-trolled-for-his-best-club-in-the-world-reply-to-kevin-pietersen-2249384\" target=\"_self\">Kevin Pietersen</a>, who has been involved in some banter with Yuvraj Singh recently, left a flurry of laughing emojis on his post.</p>', 'bhuvneshwar-kumar-steals-the-show-in-yuvraj-singhs-hilarious-gender-swap-photo', 3, 1, 'post_main_10.jpg', 'post_thumb_10.jpg', 'post_list_10.jpg', 0, 1, NULL, 1, '2020-06-23 04:09:01', '2020-06-23 04:09:02'),
(11, 'CGBSE Result 2020 declared: Girls outshine boys, topper gets 100 percent', 'GBSE Result 2020: Attention students, the Chhattisgarh Board of Secondary Education, CGBSE, has declared CGBSE Result 2020 or CGBSE 10th Result 2020 and CGBSE 12th Result 2020 today. Students who have been waiting for their CGBSE Result 2020 are requested to visit the official website of the board i.e. cgbse.nic.in. This year the pass percentage for 10th stands at 73.62 percent and for 12th stands at 78.59 percent.\r\n\r\n\r\n\r\nStep 6: Download it and take a printout for future reference.\r\n\r\nCGBSE Result 2020: Websites to keep in mind\r\nCgbse.nic.in\r\nResults.cg.nic.in\r\nIndiaresults.com\r\nADVERTISEMENT\r\n\r\nCGBSE Result 2020: Other information to keep in mind\r\nIn 2019, CGBSE declared the board results on May 10. The pass percentage for class 10 was 68% and for class 12 was 78.45%\r\nThis year, due to the ongoing Coronavirus outbreak, CGBSE had to postpone the board exams.', '<p><strong>GBSE Result 2020:&nbsp;</strong>Attention students, the Chhattisgarh Board of Secondary Education, CGBSE, has declared CGBSE Result 2020 or CGBSE 10th Result 2020 and CGBSE 12th Result 2020 today. Students who have been waiting for their CGBSE Result 2020 are requested to visit the official website of the board i.e. cgbse.nic.in. This year the pass percentage for 10th stands at 73.62 percent and for 12th stands at 78.59 percent.</p>\r\n\r\n<p>This year Class 10th topper has scored a perfect 100. Pragya Kashyap from Mungeli district has scored a perfect 100 percent by obtaining 600/600. While in class 12, the topper scored 97.80 percent.Tikesh Vaishnav emerged as the topper of class 12 with 489/500 score. Further, girls have outshined the boys in both 10th and 12th.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>CGBSE Result 2020: Pass Percentage</strong></h3>\r\n\r\n<ul>\r\n	<li>Pass percentage of Class 10 in 2020: 73. 62%</li>\r\n	<li>Pass percentage of Class 10 in 2019: 68%</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Pass percentage of Class 12 in 2020: 78.59%</li>\r\n	<li>Pass percentage of Class 12 in 2019: 78.45%</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>CGBSE Result 2020: Girls outshines boys</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>In CGBSE 10th results, the pass percentage of girls is 76.28, while the pass percentage of boys is 70.53.</li>\r\n	<li>In CGBSE 12th results, the pass percentage of girls is 82.02, while the pass percentage of boys is 74.40.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>CGBSE Result 2020: Steps to check</strong></h3>\r\n\r\n<p><strong>Step 1:&nbsp;</strong>Visit the official website of CGBSE i.e. cgbse.nic.in</p>\r\n\r\n<p><strong>Step 2:&nbsp;</strong>On the homepage, click on the link which says &lsquo;CGBSE 10th result 2020&rsquo; or &lsquo;CGBSE 12th result 2020&rsquo;</p>\r\n\r\n<p><strong>Step 3</strong>: A new page will appear on the screen</p>\r\n\r\n<p><strong>Step 4:&nbsp;</strong>Enter the required credentials</p>\r\n\r\n<p><strong>Step 5:&nbsp;</strong>Your &lsquo;CHBSE 10th Result 2020&rsquo; or &lsquo;CGBSE 12th result 2020&rsquo; will appear on the screen</p>\r\n\r\n<p><strong>Step 6:&nbsp;</strong>Download it and take a printout for future reference.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>CGBSE Result 2020: Websites to keep in mind</strong></h3>\r\n\r\n<ul>\r\n	<li>Cgbse.nic.in</li>\r\n	<li>Results.cg.nic.in</li>\r\n	<li>Indiaresults.com</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ADVERTISEMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>CGBSE Result 2020: Other information to keep in mind</strong></h3>\r\n\r\n<ul>\r\n	<li>In 2019, CGBSE declared the board results on May 10. The pass percentage for class 10 was 68% and for class 12 was 78.45%</li>\r\n	<li>This year, due to the ongoing Coronavirus outbreak, CGBSE had to postpone the board exams.</li>\r\n	<li>The board later cancelled the exams for remaining papers and announced that marks would be given in the cancelled papers based on internal assessment mark</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Read:&nbsp;<a href=\"https://www.indiatoday.in/education-today/notification/story/cgbse-result-2020-declared-check-this-year-s-10th-12th-pass-percentage-here-1691796-2020-06-23\">CGBSE Result 2020 declared: Check this year&rsquo;s 10th, 12th pass percentage here</a></strong></p>\r\n\r\n<p><strong>Read:&nbsp;<a href=\"https://www.indiatoday.in/education-today/news/story/declared-cgbse-chhattisgarh-board-class-10-12-results-2020-at-cgbse-nic-in-1691620-2020-06-23\">Declared! CGBSE Chhattisgarh Board Class 10, 12 Results 2020 at cgbse.nic.in</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.indiatoday.in/education-today/notification/story/cgbse-result-2020-declared-girls-outshine-boys-topper-gets-100-percent-1691839-2020-06-23#\">Read More</a></p>', 'cgbse-result-2020-declared-girls-outshine-boys-topper-gets-100-percent', 10, 1, 'post_main_11.jpg', 'post_thumb_11.jpg', 'post_list_11.jpg', 0, 1, NULL, 1, '2020-06-23 04:10:42', '2020-06-23 04:10:42'),
(12, 'APPSC Group 1 Main exam 2020: Exam dates out, check details here', 'he APPSC Group 1 Main Exam 2020 dates have been released by Andhra Pradesh Public Service Commission. The Group 1 examination will be held by the Commission from November 2, 2020, and will end on November 13, 2020.', '<p>The APPSC Group 1 Main Exam 2020 dates have been released by Andhra Pradesh Public Service Commission. The Group 1 examination will be held by the Commission from November 2, 2020, and will end on November 13, 2020.</p>\r\n\r\n<p>The official date sheet is available on the official site of APPSC at psc.ap.gov.in.</p>\r\n\r\n<h3><strong>APPSC Group 1 Main Exam 2020: Original schedule</strong></h3>\r\n\r\n<p>The examination was originally scheduled by the Commission in March but was postponed due to the pandemic.</p>\r\n\r\n<p>Earlier the APPSC Group 1 Main examination was scheduled to be held from December 12 to December 23, 2019, which was postponed due to some administrative reasons.</p>\r\n\r\n<p>The Main examination for the recruitments of Jr. Lecturers, Polytechnic Lecturers, Forest Range Officers, Divisional Accounts Officers, Degree College Lecturers, and Non-Gazetted posts will be conducted.</p>\r\n\r\n<h3><strong>APPSC Group 1 Main Exam 2019: Number of recruitments</strong></h3>\r\n\r\n<p>This is the third time in the row when APPSC Group 1 Main Exam 2019 was postponed. This recruitment drive is aiming to fill 169 posts of Deputy Collector, Welfare Officer, and others under Group 1 Services in the organization.</p>\r\n\r\n<p><strong>Read:&nbsp;<a href=\"https://www.indiatoday.in/education-today/notification/story/bseb-dummy-registration-card-released-for-2021-exam-see-steps-to-download-here-1691802-2020-06-23\">BSEB Dummy Registration Card released for 2021 exam: See steps to download here</a></strong></p>\r\n\r\n<p><strong>Read:&nbsp;<a href=\"https://www.indiatoday.in/education-today/notification/story/icsi-postpones-cs-june-examination-2020-check-new-dates-and-time-table-here-1688588-2020-06-13\">ICSI postpones CS June examination 2020, check new dates and time table here</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>IndiaToday.in</strong>&nbsp;has plenty of useful resources that can help you better understand the coronavirus pandemic and protect yourself.&nbsp;<a href=\"https://www.indiatoday.in/india/story/coronavirus-pandemic-covid-19-precautions-symptoms-global-impact-complete-guide-1657761-2020-03-20\" target=\"_blank\">Read our comprehensive guide</a>&nbsp;(with information on how the virus spreads, precautions and symptoms),&nbsp;<a href=\"https://www.indiatoday.in/newsmo/video/coronavirus-outbreak-5-big-myths-busted-1654318-2020-03-11\" target=\"_blank\">watch an expert debunk myths</a>, and access our&nbsp;<a href=\"https://www.indiatoday.in/coronavirus\" target=\"_blank\">dedicated coronavirus page</a>.</em></p>', 'appsc-group-1-main-exam-2020-exam-dates-out-check-details-here', 3, 1, 'post_main_12.jpg', 'post_thumb_12.jpg', 'post_list_12.jpg', 1, 0, NULL, 1, '2020-06-23 04:11:40', '2020-06-24 00:58:16'),
(13, 'PGIMER PG Result 2020 declared: See how to check here', 'The Postgraduate Institute of Medical Education and Research, PGIMER, Chandigarh, has released the PGIMER result 2020 for the July session. Candidates who applied for the PGIMER PG exam 2020 can now check their result on the official website-- cdn.digialm.com. Results can be viewed online, using the required login credentials.', '<h2 style=\"font-style:italic;\"><strong>T</strong>he Postgraduate Institute of Medical Education and Research, PGIMER, Chandigarh, has released the PGIMER result 2020 for the July session. Candidates who applied for the PGIMER PG exam 2020 can now check their result on the official website--&nbsp;<strong><a href=\"https://cdn.digialm.com/EForms/configuredHtml/2650/64962/login.html\" target=\"_blank\">cdn.digialm.com</a></strong>. Results can be viewed online, using the required login credentials.</h2>\r\n\r\n<p>Along with PGI 2020 result, merit list of candidates selected for Masters of Surgery (MS) and Doctor of Medicine (MD) programmes.</p>\r\n\r\n<p>In January session, 483 candidates qualified for admission to MD and MS programmes in PGIMER, Chandigarh.</p>\r\n\r\n<h3><strong>About PGIMER</strong></h3>\r\n\r\n<p>PGIMER entrance is held twice every year for admission to MS and MD programmes in the institute. This year, PGIMER Chandigarh has been ranked as the second-best institute in the NIRF ranking of medical colleges.</p>\r\n\r\n<h3><strong>PGIMER PG Result 2020: How to Check</strong></h3>\r\n\r\n<p>Step 1: Go to the official website&nbsp;<strong><a href=\"https://cdn.digialm.com/EForms/configuredHtml/2650/64962/login.html\" target=\"_blank\">cdn.digilam.com</a></strong>.</p>\r\n\r\n<p>Step 2: Enter login credentials (username, password, captcha code) and submit.</p>\r\n\r\n<p>Step 3: Result will appear on the screen.</p>\r\n\r\n<p><strong>Read:&nbsp;<a href=\"https://www.indiatoday.in/education-today/notification/story/up-bed-jee-2020-exam-date-released-check-details-here-1691454-2020-06-22\">UP BEd JEE 2020 exam date released: Check details here</a></strong></p>\r\n\r\n<p><strong>Read:&nbsp;<a href=\"https://www.indiatoday.in/education-today/notification/story/aiims-pg-july-2020-first-round-of-counselling-seat-allocation-begins-today-1691195-2020-06-21\">AIIMS PG July 2020 first round of counselling, seat allocation begins today</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>IndiaToday.in</strong>&nbsp;has plenty of useful resources that can help you better understand the coronavirus pandemic and protect yourself.&nbsp;<a href=\"https://www.indiatoday.in/india/story/coronavirus-pandemic-covid-19-precautions-symptoms-global-impact-complete-guide-1657761-2020-03-20\" target=\"_blank\">Read our comprehensive guide</a>&nbsp;(with information on how the virus spreads, precautions and symptoms),&nbsp;<a href=\"https://www.indiatoday.in/newsmo/video/coronavirus-outbreak-5-big-myths-busted-1654318-2020-03-11\" target=\"_blank\">watch an expert debunk myths</a>, and access our&nbsp;<a href=\"https://www.indiatoday.in/coronavirus\" target=\"_blank\">dedicated coronavirus page</a>.</em></p>', 'pgimer-pg-result-2020-declared-see-how-to-check-here', 10, 1, 'post_main_13.jpg', 'post_thumb_13.jpg', 'post_list_13.jpg', 41, 1, NULL, 1, '2020-06-23 04:13:25', '2020-06-23 04:13:26'),
(14, 'Manipur political crisis | BJP pursuing patch-up with NPP to secure government in Manipur', 'Meghalaya CM Conrad K. Sangma and Assam Minister Himanta Biswa Sarma meet in Imphal.', '<p>The Bharatiya Janata Party (BJP) and National People&rsquo;s Party (NPP) are pursuing the possibility of patching up in&nbsp;<a href=\"https://www.thehindu.com/opinion/editorial/revolving-door-the-hindu-editorial-on-politics-in-manipur/article31873062.ece\">Manipur</a>&nbsp;to bring the Nongthombam Biren government back on rails.</p>\r\n\r\n<p>The NPP, which had four MLAs in the BJP-led coalition government,&nbsp;<a href=\"https://www.thehindu.com/news/national/other-states/manipur-political-crisis-several-mlas-including-ones-from-bjp-pull-out-of-biren-singh-government/article31854878.ece\">had pulled out on June 17</a>&nbsp;along with five other legislators, including three of the BJP. This reduced the Biren government to a minority, but the BJP pulled off the Rajya Sabha election two days later with the support of a few MLAs of the Opposition Congress, which had staked claim to form an alternative coalition government.</p>\r\n\r\n<p>On Sunday, Meghalaya Chief Minister and NPP national president Conrad K. Sangma and Assam Finance Minister Himanta Biswa Sarma took a special flight to Manipur capital Imphal to hammer out an agreement between the legislators of the two parties.</p>', 'manipur-political-crisis-bjp-pursuing-patch-up-with-npp-to-secure-government-in-manipur', 8, 1, 'post_main_14.jpg', 'post_thumb_14.jpg', 'post_list_14.jpg', 0, 0, 'But I must explain to you how all this mistaken idea of denouncing pleasure', 1, '2020-06-23 04:15:05', '2020-06-23 04:15:06'),
(15, 'बिहार में सियासी उठापटक / विधान परिषद चुनाव से पहले राजद को झटका; 5 एमएलसी जदयू में शामिल हुए', 'बिहार में सियासी उठापटक / विधान परिषद चुनाव से पहले राजद को झटका; 5 एमएलसी जदयू में शामिल हुएबिहार विधान परिषद और विधानसभा चुनाव से पहले राजद में टूट तेजस्वी के लिए बड़ा झटका मानी जा रही है।', '<h2>&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>बिहार विधान परिषद की 9 सीट के लिए 6 जुलाई को चुनाव होना है</li>\r\n	<li>जदयू का दावा- राजद में फिर टूट होगी, कई बड़े नेता हमारे संपर्क में</li>\r\n</ul>\r\n\r\n<p>दैनिक भास्कर</p>\r\n\r\n<p>Jun 23, 2020, 01:21 PM IST</p>\r\n\r\n<p><strong>पटना.&nbsp;</strong>बिहार विधान परिषद चुनाव से पहले राजद को बड़ा झटका लगा है। पार्टी के पांच एमएलसी ने मंगलवार को जदयू का दामन थाम लिया। इनमें राधा चरण सेठ, संजय प्रसाद, रणविजय सिंह, कमरे आलम और दिलीप राय का नाम शामिल है। राज्य में&nbsp;नौ&nbsp;सीट के लिए छह जुलाई को विधान परिषद के चुनाव होने हैं। इससे पहले राजद में यह टूट तेजस्वी यादव के लिए बड़ा झटका मानी&nbsp;जा रही है।</p>\r\n\r\n<p><strong>जदयू का दावा- राजद के कई बड़े नेता हमारे संपर्क में</strong><br />\r\nराजद के विधान परिषद में आठ सदस्य थे और एक साथ दो तिहाई नेताओं ने पार्टी छोड़ दी। विधान परिषद के सभापति ने इस गुट को मान्यता दे दी है। अब विधान परिषद में राजद के केवल तीन सदस्य बचे हैं। जदयू के करीबी सूत्रों का कहना है कि आने वाले दिनों में राजद के कई बड़े नेता हमारी पार्टी में शामिल होंगे। यह तो बस शुरुआत है। कई नेता लगातार संपर्क में बने हुए हैं। बिहार विधानसभा चुनाव से पहले राजद में बड़ी टूट होगी।</p>\r\n\r\n<p><strong>मुस्लिम वोटों पर भी जदयू की नजर</strong><br />\r\nराजनीतिक जानकारों का कहना है कि संजय प्रसाद जदयू के ललन सिंह के काफी करीबी थे। उनका जाना पहले से तय था। इसके अलावा, जदयू ने कमरे आलम को तोड़कर मुस्लिम वोटों को भी अपने पाले में लाने की कोशिश की है। बाकी चार नेता भी लगातार तेजस्वी के नेतृत्व पर सवाल खड़े रहे थे और पार्टी के खिलाफ बयान दे रहे थे। ऐसे में उन चारों का भी राजद छोड़ना लगभग पहले से तय था। विधानसभा चुनाव जैसे-जैसे नजदीक आता जाएगा, नेता सुरक्षित सीट देखते हुए तेजी से पाला बदलेंगे।</p>', 'b-u-l-5-eel-l-e', 8, 1, 'post_main_15.jpg', 'post_thumb_15.jpg', 'post_list_15.jpg', 13, 0, 'But I must explain to you how all this mistaken idea of denouncing pleasure', 1, '2020-06-23 04:16:07', '2020-06-24 01:04:16'),
(16, 'बिहार में सियासी उठापटक / विधान परिषद चुनाव से पहले राजद को झटका; 5 एमएलसी जदयू में शामिल हुए', 'बिहार में सियासी उठापटक / विधान परिषद चुनाव से पहले राजद को झटका; 5 एमएलसी जदयू में शामिल हुएबिहार विधान परिषद और विधानसभा चुनाव से पहले राजद में टूट तेजस्वी के लिए बड़ा झटका मानी जा रही है।', '<h2>&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>बिहार विधान परिषद की 9 सीट के लिए 6 जुलाई को चुनाव होना है</li>\r\n	<li>जदयू का दावा- राजद में फिर टूट होगी, कई बड़े नेता हमारे संपर्क में</li>\r\n</ul>\r\n\r\n<p>दैनिक भास्कर</p>\r\n\r\n<p>Jun 23, 2020, 01:21 PM IST</p>\r\n\r\n<p><strong>पटना.&nbsp;</strong>बिहार विधान परिषद चुनाव से पहले राजद को बड़ा झटका लगा है। पार्टी के पांच एमएलसी ने मंगलवार को जदयू का दामन थाम लिया। इनमें राधा चरण सेठ, संजय प्रसाद, रणविजय सिंह, कमरे आलम और दिलीप राय का नाम शामिल है। राज्य में&nbsp;नौ&nbsp;सीट के लिए छह जुलाई को विधान परिषद के चुनाव होने हैं। इससे पहले राजद में यह टूट तेजस्वी यादव के लिए बड़ा झटका मानी&nbsp;जा रही है।</p>\r\n\r\n<p><strong>जदयू का दावा- राजद के कई बड़े नेता हमारे संपर्क में</strong><br />\r\nराजद के विधान परिषद में आठ सदस्य थे और एक साथ दो तिहाई नेताओं ने पार्टी छोड़ दी। विधान परिषद के सभापति ने इस गुट को मान्यता दे दी है। अब विधान परिषद में राजद के केवल तीन सदस्य बचे हैं। जदयू के करीबी सूत्रों का कहना है कि आने वाले दिनों में राजद के कई बड़े नेता हमारी पार्टी में शामिल होंगे। यह तो बस शुरुआत है। कई नेता लगातार संपर्क में बने हुए हैं। बिहार विधानसभा चुनाव से पहले राजद में बड़ी टूट होगी।</p>\r\n\r\n<p><strong>मुस्लिम वोटों पर भी जदयू की नजर</strong><br />\r\nराजनीतिक जानकारों का कहना है कि संजय प्रसाद जदयू के ललन सिंह के काफी करीबी थे। उनका जाना पहले से तय था। इसके अलावा, जदयू ने कमरे आलम को तोड़कर मुस्लिम वोटों को भी अपने पाले में लाने की कोशिश की है। बाकी चार नेता भी लगातार तेजस्वी के नेतृत्व पर सवाल खड़े रहे थे और पार्टी के खिलाफ बयान दे रहे थे। ऐसे में उन चारों का भी राजद छोड़ना लगभग पहले से तय था। विधानसभा चुनाव जैसे-जैसे नजदीक आता जाएगा, नेता सुरक्षित सीट देखते हुए तेजी से पाला बदलेंगे।</p>', 'b-u-l-5-eel-l-e', 8, 1, 'post_main_16.jpg', 'post_thumb_16.jpg', 'post_list_16.jpg', 78, 0, 'But I must explain to you how all this mistaken idea of denouncing pleasure', 1, '2020-06-23 04:16:08', '2020-06-23 04:16:08'),
(17, 'A lot of the things Apple introduced at its online WWDC keynote today were very much expected, but the company still managed to surprise us somewhat, with an update that\'s coming to its true wireless earbuds.', 'A lot of the things Apple introduced at its online WWDC keynote today were very much expected, but the company still managed to surprise us somewhat, with an update that\'s coming to its true wireless earbuds.', '<p>The headphones will automatically switch audio inputs based on which Apple device you&#39;re using, or need to be using. If you&#39;re listening to something on your iPhone but start playing a video on your MacBook, the earbuds will automagically switch over. And if then you get a call on your iPhone, the audio will switch to that. It all sounds very neat and seamless, provided, that is, that all of your devices are made by Apple.</p>\r\n\r\n<p>The AirPods Pro are also getting a form of 3D sound, which Apple is calling Spatial Audio. This will give you a 3D, surround sound-like experience, and will constantly recalibrate where sounds feel like they&#39;re coming from - based on the position of your head relative to whichever device you happen to be using.</p>', 'a-lot-of-the-things-apple-introduced-at-its-online-wwdc-keynote-today-were-very-much-expected-but-the-company-still-managed-to-surprise-us-somewhat-with-an-update-thats-coming-to-its-true-wireless-earbuds', 4, 1, 'post_main_17.jpg', 'post_thumb_17.jpg', 'post_list_17.jpg', 0, 0, NULL, 1, '2020-06-23 04:21:33', '2020-06-23 04:21:33'),
(18, 'These are all of the iPhones that will support iOS 14', 'Apple has unveiled iOS 14 with a variety of new features, including a redesigned home screen, the ability to set default email and browser apps, and much more. Will iOS 14 support your iPhone? Head below for the full list of compatible hardware.', '<p>Apple has unveiled iOS 14 with a variety of new features, including a redesigned home screen, the ability to set default email and browser apps, and much more. Will iOS 14 support your iPhone? Head below for the full list of compatible hardware.</p>', 'these-are-all-of-the-iphones-that-will-support-ios-14', 4, 1, 'post_main_18.jpg', 'post_thumb_18.jpg', 'post_list_18.jpg', 0, 1, NULL, 1, '2020-06-23 04:23:15', '2020-06-23 04:23:16'),
(19, 'Apple has unveiled iOS 14 with a variety of new features, including a redesigned home screen,', 'Apple has unveiled iOS 14 with a variety of new features, including a redesigned home screen, the ability to set default email and browser apps, and much more. Will iOS 14 support your iPhone? Head below for the full list of compatible hardware.', '<p>OnePlus has already launched the&nbsp;<a href=\"https://www.androidauthority.com/oneplus-8-review-1107418/\">OnePlus 8</a>&nbsp;and&nbsp;<a href=\"https://www.androidauthority.com/oneplus-8-pro-review-1104400/\">OnePlus 8 Pro</a>&nbsp;earlier this year, but it looks like the firm isn&rsquo;t stopping there though.</p>\r\n\r\n<p>Now, OnePlus founder and CEO Pete Lau has teased an announcement on Twitter, suggesting that &ldquo;something new&rdquo; is coming. Check out the tweet below.</p>', 'apple-has-unveiled-ios-14-with-a-variety-of-new-features-including-a-redesigned-home-screen', 4, 11, 'post_main_19.jpg', 'post_thumb_19.jpg', 'post_list_19.jpg', 42, 0, NULL, 1, '2020-06-23 04:25:56', '2020-06-23 04:25:58'),
(20, 'Is OnePlus 8 Lite/OnePlus Z Meant For The Indian Market?', 'Hence, to satisfy all its enthusiasts, in India, the company could launch a OnePlus device for everyone, which includes OnePlus 8 Pro, OnePlus 8, and the new OnePlus 8 Lite/OnePlus Z smartphone.', '<p>OnePlus launched its much-anticipated flagship smartphones this week. The&nbsp;<a href=\"https://phoneradar.com/oneplus-8-pro-and-oneplus-8-launched-with-new-cameras-5g-connectivity/\" target=\"_blank\">OnePlus 8 Pro and the OnePlus 8</a>&nbsp;were announced globally via online-only streaming event. While these flagships&rsquo; launch was imminent, there were reports suggesting that there would also be a trimmed down version of the flagships &mdash; named OnePlus 8 Lite/ OnePlus Z.</p>\r\n\r\n<blockquote>\r\n<p><em>Hence, to satisfy all its enthusiasts, in India, the company could launch a OnePlus device for everyone, which includes OnePlus 8 Pro, OnePlus 8, and the new OnePlus 8 Lite/OnePlus Z smartphone.</em></p>\r\n</blockquote>', 'is-oneplus-8-liteoneplus-z-meant-for-the-indian-market', 4, 11, 'post_main_20.jpg', 'post_thumb_20.jpg', 'post_list_20.jpg', 0, 0, NULL, 1, '2020-06-23 04:26:58', '2020-06-23 04:26:58'),
(21, 'Is the OnePlus 8 Lite or the OnePlus Z Meant For The Indian Market?', 'However, it didn’t happen. OnePlus has decided to showcase only its flagship series. What this means is that the company either had put an end to all the rumors and speculations of the OnePlus Z device or likely postponed the launch for a suitable time. The reason could probably be our very own Indian market.\r\n\r\nIs the OnePlus 8 Lite or the OnePlus Z Meant For The Indian Market?\r\nIf you haven’t noticed already, OnePlus had decided to unveil the OnePlus 8 Series on April 14th, globally, which coincidentally happens to be the last day of the lockdown imposed by the Government of India — unfortunately due to ongoing coronavirus pandemic.', '<p>However, it didn&rsquo;t happen. OnePlus has decided to showcase only its flagship series. What this means is that the company either had put an end to all the rumors and speculations of the OnePlus Z device or likely postponed the launch for a suitable time. The reason could probably be our very own Indian market.</p>\r\n\r\n<h3>Is the OnePlus 8 Lite or the OnePlus Z Meant For The Indian Market?</h3>\r\n\r\n<p>If you haven&rsquo;t noticed already, OnePlus had decided to unveil the OnePlus 8 Series on April 14th, globally, which coincidentally happens to be the last day of the lockdown imposed by the Government of India &mdash; unfortunately due to ongoing coronavirus pandemic.</p>\r\n\r\n<p>It is feasible that OnePlus could have assumed that the lockdown in India would be lifted off and the company could have launched the&nbsp;<a href=\"https://phoneradar.com/oneplus-8-pro-and-oneplus-8-launched-with-new-cameras-5g-connectivity/\" target=\"_blank\">OnePlus 8 Series</a>&nbsp;in India as well. Meaning, along with the&nbsp;<a href=\"https://phoneradar.com/oneplus-8-series-gets-a-launch-date-what-to-expect/\" target=\"_blank\">reportedly&nbsp;</a>cheaper OnePlus 8 Lite/OnePlus Z. Though the company had launched the devices already, the Indian pricing is yet to be known.</p>', 'is-the-oneplus-8-lite-or-the-oneplus-z-meant-for-the-indian-market', 4, 11, 'post_main_21.jpg', 'post_thumb_21.jpg', 'post_list_21.jpg', 3, 1, NULL, 1, '2020-06-23 04:27:52', '2020-06-24 00:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Master Admin', 'Master Admin', 'Master Admin', '2020-06-21 13:43:50', '2020-06-21 13:43:50'),
(7, 'Blogger', 'Blogger', 'Blogger', '2020-06-21 13:44:42', '2020-06-21 13:44:42'),
(8, 'Editor', 'Editor', 'Editor', '2020-06-21 13:45:37', '2020-06-21 13:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 6),
(10, 7),
(11, 8);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_name', 'My online news', NULL, '2020-06-23 00:13:03'),
(2, 'fav_icon', 'favicon.png', '2020-06-22 19:20:16', '2020-06-23 00:12:39'),
(3, 'front_logo', 'front_logo.png', '2020-06-23 05:17:24', '2020-06-23 00:13:03'),
(4, 'admin_logo', 'admin_logo.png', '2020-06-23 05:17:24', '2020-06-23 00:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2a$04$HrSijmOXbvsVbZz7Ftrw/ugkm3TYLk7qt4TO.QvZdN05H2SqxBycS', 1, NULL, '2020-06-20 05:49:38', '2020-06-20 05:49:38'),
(10, 'gulam', 'gulam@gmail.com', NULL, '$2y$10$YOFRrgoY4FGYLp/DbrHHnuxIIdjFyCZWzf/asCe6kpBxkkvc.c3HK', 2, NULL, '2020-06-21 13:46:37', '2020-06-21 13:46:37'),
(11, 'khan', 'khan@gmail.com', NULL, '$2y$10$q8Ae4ka6ZQ00yZUWt/CYRuENzUXZinXEOKH3rzGQT/cpWJuH.GjIW', 2, NULL, '2020-06-21 13:47:31', '2020-06-21 13:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
