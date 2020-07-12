-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 07:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_12_113719_create_posts_table', 2),
(5, '2020_07_12_145639_add_user_id_to_posts', 3),
(6, '2020_07_12_164434_add_image_url_to_post', 4);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keys` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `image_url`, `meta`, `meta_keys`, `created_at`, `updated_at`) VALUES
(1, 1, 'How to SEO a website with robots.txt file', '<h3 class=\"text-dark\">\r\n        What is robots.txt file ?\r\n    </h3>\r\n    \r\n    <div class=\"mt-3\">\r\n        <p class=\"text-dark\">\r\n            The <b>robots.txt</b> file is a simple text file that should upload to web server root folder.\r\n            This file tells webcrawlers if they should access a file / folder or not.\r\n        </p>\r\n    \r\n        <p class=\"text-dark\">\r\n            Block Non-Public Pages: Sometimes you have pages on your site that you do not want to be indexed. For example,\r\n            you might have a\r\n            staging version of a page. Or a login page. These pages need to exist. But you do not want random people landing\r\n            on them.\r\n            This is a case where you would use robots.txt to block these pages from search engine crawlers and bots.\r\n        </p>\r\n    \r\n        <p class=\"text-dark\">\r\n            Prevent Indexing of Resources: Using meta directives can work just as well as Robots.txt for preventing pages\r\n            from getting indexed. However, meta directives do not work well for multimedia resources, like PDFs and images.\r\n            That is where\r\n            robots.txt comes into play.\r\n        </p>\r\n    </div>\r\n    \r\n    <hr class=\"divider\">\r\n    \r\n    \r\n    <h3 class=\"text-dark mt-3\">\r\n        Why do you need a robots.txt file?\r\n    </h3>\r\n    \r\n    <div class=\"mt-3\">\r\n        <p class=\"text-dark\">\r\n            It\'s not compulsory to contain a robots.txt file in your web site but if you looking for a better seo <small\r\n                class=\"text-primary\">(Search Enging Optimization)</small> for your website, you may want to place a\r\n            robots.txt file inside your root directory.\r\n        </p>\r\n    </div>\r\n    \r\n    <div class=\"mt-3\">\r\n        <h5 class=\"text-dark font-weight-bold\">Reasons you might want to have a robots.txt file:</h5>\r\n    </div>\r\n    \r\n    <ul>\r\n        <li> You want to fine tune access to your site from reputable robots.</li>\r\n        <li> They help you follow some Google guidelines in some certain situations.</li>\r\n        <li> You need to some content you want blocked from search engines.</li>\r\n        <li> You need some or all of the above, but do not have full access to your webserver and how it is configured.</li>\r\n    </ul>\r\n    \r\n    <div class=\"mt-3\">\r\n        <p class=\"text-dark\">\r\n            Each of the above situations can be controlled by other methods, however the robots.txt file is a good central\r\n            place to\r\n            take care of them and most webmasters have the ability and access required to create and use a robots.txt file.\r\n        </p>\r\n    </div>\r\n    \r\n    <div class=\"mt-3\">\r\n        <h5 class=\"text-dark font-weight-bold\">Reasons you may not want to have a robots.txt file:</h5>\r\n    </div>\r\n    \r\n    <ul>\r\n        <li>You do not have any files you want or need to be blocked from search engines.</li>\r\n    </ul>\r\n    \r\n    <hr class=\"divider\">\r\n    \r\n    <h3 class=\"text-dark mt-3\">\r\n        How to create a robots.txt file ?\r\n    </h3>\r\n    \r\n    <ul class=\"mt-3\">\r\n        <li>Use robots.txt file generator. <a href=\"https://www.seoptimer.com/robots-txt-generator\">Free robots.txt File\r\n                Generator</a></li>\r\n        <li> Code your own\r\n            <div class=\"text-dark p-3\" style=\"width: 300px; background-color: #f0efe4;\">\r\n                <ul>\r\n                    <li>User-agent: *</li>\r\n                    <li>Disallow: /cgi-bin/</li>\r\n                    <li>Disallow: /tmp/</li>\r\n                    <li>Disallow: /~joe/</li>\r\n    \r\n                </ul>\r\n                <small><span class=\"text-danger\">* </span> <span class=\"text-info\">User / before the folder name or file\r\n                        name.</span> </small>\r\n            </div>\r\n        </li>\r\n    </ul>\r\n    \r\n    <hr class=\"divider\">\r\n    \r\n    <h3 class=\"text-dark mt-3\">\r\n        Basic Examples of robots.txt file\r\n    </h3>\r\n    \r\n    <div class=\"mt-3\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-3 col-md-3 col-sm-6 col-12\">\r\n                <div class=\"text-center mb-2\">Allow Full Access</div>\r\n                <div class=\"mb-2 p-2\" style=\"width: 200px; background-color: #f0efe4; margin: 0 auto;\">\r\n                    <p>User-agent: *</p>\r\n                    <p>Disallow:</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-3 col-md-3 col-sm-6 col-12\">\r\n                <div class=\"text-center mb-2\">Block all access</div>\r\n                <div class=\"mb-2 p-2\" style=\"width: 200px; background-color: #f0efe4; margin: 0 auto;\">\r\n                    <p>User-agent: *</p>\r\n                    <p>Disallow: /</p>\r\n                </div>\r\n            </div>\r\n    \r\n            <div class=\"col-lg-3 col-md-3 col-sm-6 col-12\">\r\n                <div class=\"text-center mb-2\">Block one folder</div>\r\n                <div class=\"mb-2 p-2\" style=\"width: 200px; background-color: #f0efe4; margin: 0 auto;\">\r\n                    <p>User-agent: *</p>\r\n                    <p>Disallow: /images/</p>\r\n                </div>\r\n            </div>\r\n    \r\n            <div class=\"col-lg-3 col-md-3 col-sm-6 col-12\">\r\n                <div class=\"text-center mb-2\">Block one file</div>\r\n                <div class=\"mb-2 p-2\" style=\"width: 200px; background-color: #f0efe4; margin: 0 auto;\">\r\n                    <p>User-agent: *</p>\r\n                    <p>Disallow: /index.html</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    \r\n    <hr class=\"divider\">\r\n    \r\n    <h3 class=\"text-dark mt-3\">\r\n        Where Do I Put this robots.txt file?\r\n    </h3>\r\n    \r\n    <div class=\"mt-3\">\r\n        <h5 class=\"text-dark ml-5\">\r\n            The Answer is simple.\r\n        </h5>\r\n        <p class=\"text-dark ml-5\">\r\n            Go to your C Panel.\r\n        </p>\r\n        <p class=\"text-dark ml-5\">\r\n            Find \'File Explore\'.\r\n        </p>\r\n        <p class=\"text-dark ml-5\">\r\n            Upload robots.txt file to your root directory in the server.\r\n        </p>\r\n    </div>', 'blog_cover_robots_1594575204.png', 'How to seo a website with robots.txt file for web crawlers and indexing', 'seo, search, search engine, robots, optimization, website, host, index, indexing, User-agent, Disallow, allow, root folder', '2020-07-12 12:03:24', '2020-07-12 12:03:24');

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
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rusiru Ashan Kulathunga', 'rusiruofficial@gmail.com', NULL, '$2y$10$iHiv93pp/8BeTWJUD3Ii6ehSRe.XrY4fLPHz9uyFpXr7gMkKWUSpq', 'not.jpg', NULL, '2020-07-12 12:01:01', '2020-07-12 12:01:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
