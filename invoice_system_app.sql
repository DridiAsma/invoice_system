-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 04 avr. 2023 à 01:12
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `invoice_system_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `discount` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_vat` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_vat` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_date`, `due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `discount`, `rate_vat`, `value_vat`, `total`, `status`, `value_status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '#016', '2023-03-18', '2023-03-01', 'بنك التعاون العربي', 1, '20000.00', '500000.00', '30', '5%', '24998.50', '524968.50', 'غير مدفوعة', 2, 'العربية العالمية للإيجار المالي', NULL, NULL, '2023-03-18 22:34:50', '2023-03-18 22:34:50'),
(2, '#016', '2023-03-18', '2023-03-01', 'بنك التعاون العربي', 1, '20000.00', '500000.00', '30', '5%', '24998.50', '524968.50', 'غير مدفوعة', 2, 'العربية العالمية للإيجار المالي', NULL, NULL, '2023-03-18 22:36:10', '2023-03-18 22:36:10'),
(3, '#016', '2023-03-18', '2023-03-01', 'بنك التعاون العربي', 1, '20000.00', '500000.00', '30', '5%', '24998.50', '524968.50', 'غير مدفوعة', 2, 'العربية العالمية للإيجار المالي', NULL, NULL, '2023-03-18 22:36:17', '2023-03-18 22:36:17'),
(4, '#0178', '2023-03-18', '2023-03-06', 'بنك التعاون العربي', 1, '30000.00', '500000.00', '30', '5%', '24998.50', '524968.50', 'مدفوعة جزئيا', 3, 'العربية العالمية للإيجار المالي........', '2023-03-20', NULL, '2023-03-18 22:37:44', '2023-03-18 22:44:40'),
(5, '#0147', '2023-03-07', '2023-03-03', 'التجاري للإيجار المالي', 2, '450000.00', '60000.00', '2', '5%', '2999.90', '62997.90', 'مدفوعة', 1, 'العربية العالمية للإيجار المالي...', '2023-03-19', NULL, '2023-03-18 22:41:28', '2023-03-18 22:43:50'),
(8, '#BB', '2023-03-19', '2023-03-07', 'بنك تونس للأعمال', 3, '1000.00', '50000.00', '0', '5%', '2500.00', '52500.00', 'غير مدفوعة', 2, 'nn', NULL, NULL, '2023-03-19 19:09:50', '2023-03-19 19:09:50');

-- --------------------------------------------------------

--
-- Structure de la table `invoices_attachments`
--

CREATE TABLE `invoices_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `invoices_attachments`
--

INSERT INTO `invoices_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(1, 'im.jpg', '#016', 'Administrat', 1, '2023-03-18 22:34:51', '2023-03-18 22:34:51'),
(2, 'im.jpg', '#016', 'Administrat', 2, '2023-03-18 22:36:10', '2023-03-18 22:36:10'),
(3, 'im.jpg', '#016', 'Administrat', 3, '2023-03-18 22:36:17', '2023-03-18 22:36:17'),
(4, 'aboutImage.png', '#0178', 'Administrat', 4, '2023-03-18 22:37:45', '2023-03-18 22:37:45');

-- --------------------------------------------------------

--
-- Structure de la table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(1, 1, '#016', 'بنك التعاون العربي', '1', 'غير مدفوعة', 2, NULL, 'العربية العالمية للإيجار المالي', 'Administrat', '2023-03-18 22:34:50', '2023-03-18 22:34:50'),
(2, 2, '#016', 'بنك التعاون العربي', '1', 'غير مدفوعة', 2, NULL, 'العربية العالمية للإيجار المالي', 'Administrat', '2023-03-18 22:36:10', '2023-03-18 22:36:10'),
(3, 3, '#016', 'بنك التعاون العربي', '1', 'غير مدفوعة', 2, NULL, 'العربية العالمية للإيجار المالي', 'Administrat', '2023-03-18 22:36:17', '2023-03-18 22:36:17'),
(4, 4, '#0178', 'بنك التعاون العربي', '1', 'غير مدفوعة', 2, NULL, 'العربية العالمية للإيجار المالي........', 'Administrat', '2023-03-18 22:37:44', '2023-03-18 22:37:44'),
(5, 5, '#0147', 'التجاري للإيجار المالي', '2', 'غير مدفوعة', 2, NULL, 'العربية العالمية للإيجار المالي...', 'Administrat', '2023-03-18 22:41:28', '2023-03-18 22:41:28'),
(6, 5, '#0147', 'التجاري للإيجار المالي', '2', 'مدفوعة', 1, '2023-03-19', 'العربية العالمية للإيجار المالي...', 'Administrat', '2023-03-18 22:43:50', '2023-03-18 22:43:50'),
(7, 4, '#0178', 'بنك التعاون العربي', '1', 'مدفوعة جزئيا', 3, '2023-03-20', 'العربية العالمية للإيجار المالي........', 'Administrat', '2023-03-18 22:44:40', '2023-03-18 22:44:40'),
(10, 8, '#BB', 'بنك تونس للأعمال', '3', 'غير مدفوعة', 2, NULL, 'nn', 'basma', '2023-03-19 19:09:51', '2023-03-19 19:09:51');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_02_16_212836_create_sections_table', 1),
(5, '2023_02_16_213507_create_contacts_table', 1),
(6, '2023_02_21_081611_create_products_table', 1),
(7, '2023_02_25_211032_create_invoices_table', 1),
(8, '2023_02_26_172213_create_invoices_details_table', 1),
(9, '2023_02_26_172622_create_invoices_attachments_table', 1),
(10, '2023_03_01_140021_create_notifications_table', 1),
(11, '2023_03_12_185013_create_permission_tables', 1),
(12, '2023_03_19_161909_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0bc5f936-b146-4361-847f-f8bc08a94c03', 'App\\Notifications\\PushInvoices', 'App\\Models\\User', 2, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Administrat\"}', NULL, '2023-03-19 16:57:31', '2023-03-19 16:57:31'),
('76c21d29-faae-43a7-806d-5a9fe722a6b5', 'App\\Notifications\\PushInvoices', 'App\\Models\\User', 1, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Administrat\"}', '2023-03-19 17:01:05', '2023-03-19 16:57:31', '2023-03-19 17:01:05'),
('7e1e5b36-0cf8-4e4c-b862-1e4fde5fc569', 'App\\Notifications\\PushInvoices', 'App\\Models\\User', 1, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Administrat\"}', '2023-03-19 19:41:55', '2023-03-19 17:03:16', '2023-03-19 19:41:55'),
('ae3f3d7d-5a19-477f-80bb-d9cc6162ac37', 'App\\Notifications\\PushInvoices', 'App\\Models\\User', 2, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"basma\"}', NULL, '2023-03-19 19:09:59', '2023-03-19 19:09:59'),
('d02fd161-c7d5-45c4-8bc7-6b6b1ef6f04e', 'App\\Notifications\\PushInvoices', 'App\\Models\\User', 1, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"basma\"}', '2023-03-19 19:41:55', '2023-03-19 19:09:59', '2023-03-19 19:41:55'),
('eb5af730-b6e6-4044-8cc6-7be2a787e982', 'App\\Notifications\\PushInvoices', 'App\\Models\\User', 2, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"Administrat\"}', NULL, '2023-03-19 17:03:16', '2023-03-19 17:03:16');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2023-03-18 04:28:18', '2023-03-18 04:28:18'),
(2, 'قائمة الفواتير', 'web', '2023-03-18 04:28:18', '2023-03-18 04:28:18'),
(3, 'الفواتير المدفوعة', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(5, 'الفواتير الغير مدفوعة', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(6, 'ارشيف الفواتير', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(7, 'التقارير', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(8, 'تقرير الفواتير', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(9, 'تقرير العملاء', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(10, 'المستخدمين', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(11, 'قائمة المستخدمين', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(12, 'صلاحيات المستخدمين', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(13, 'الاعدادات', 'web', '2023-03-18 04:28:19', '2023-03-18 04:28:19'),
(14, 'المنتجات', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(15, 'الاقسام', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(16, 'اضافة فاتورة', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(17, 'حذف الفاتورة', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(18, 'تصدير EXCEL', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(19, 'تغير حالة الدفع', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(20, 'تعديل الفاتورة', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(21, 'ارشفة الفاتورة', 'web', '2023-03-18 04:28:20', '2023-03-18 04:28:20'),
(22, 'طباعةالفاتورة', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(23, 'اضافة مرفق', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(24, 'حذف المرفق', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(25, 'اضافة مستخدم', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(26, 'تعديل مستخدم', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(27, 'حذف مستخدم', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(28, 'عرض صلاحية', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(29, 'اضافة صلاحية', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(30, 'تعديل صلاحية', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(31, 'حذف صلاحية', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(32, 'اضافة منتج', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(33, 'تعديل منتج', 'web', '2023-03-18 04:28:21', '2023-03-18 04:28:21'),
(34, 'حذف منتج', 'web', '2023-03-18 04:28:22', '2023-03-18 04:28:22'),
(35, 'اضافة قسم', 'web', '2023-03-18 04:28:22', '2023-03-18 04:28:22'),
(36, 'تعديل قسم', 'web', '2023-03-18 04:28:22', '2023-03-18 04:28:22'),
(37, 'حذف قسم', 'web', '2023-03-18 04:28:22', '2023-03-18 04:28:22'),
(38, 'الاشعارات', 'web', '2023-03-18 04:28:22', '2023-03-18 04:28:22');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'بنك تونس للأعمال', 'بنك تونس للأعمال', 3, '2023-03-18 22:31:11', '2023-03-18 22:31:11'),
(2, 'بنك التعاون العربي', NULL, 1, '2023-03-18 22:31:38', '2023-03-18 22:31:38'),
(3, 'الاتحاد التونسي للإيجار المالي', 'الاتحاد التونسي للإيجار المالي', 3, '2023-03-18 22:32:01', '2023-03-18 22:32:01'),
(4, 'التجاري للإيجار المالي', 'التجاري للإيجار المالي', 2, '2023-03-18 22:32:21', '2023-03-18 22:32:21'),
(5, 'العربية العالمية للإيجار المالي', NULL, 2, '2023-03-18 22:32:45', '2023-03-18 22:32:45');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2023-03-18 04:28:37', '2023-03-18 04:28:37'),
(2, 'user', 'web', '2023-03-18 04:29:32', '2023-03-18 04:29:32');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 2),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(1, 'بنك اليوباف الدولي', 'خدمات بنك اليوباف', 'Administrat', '2023-03-18 22:21:22', '2023-03-18 22:28:54'),
(2, 'بنك البركة', 'بطاقة التوانسة الكل.\r\nبطاقة Evasion', 'Administrat', '2023-03-18 22:23:09', '2023-03-18 22:23:09'),
(3, 'البنك العربي لتونس', 'إدارة حافظة أوراقكم\r\nالخدمات البنكية الإلكترونية\r\nالتأمين والإسعاف\r\nالتأمين والمساعدة التي تتكيّف مع نمط حياتك\r\nإدارة حافظة أوراقكم\r\n\r\nخدمة تحويل الاموال.', 'Administrat', '2023-03-18 22:28:00', '2023-03-18 22:28:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrat', 'admin@gmail.com', NULL, '$2y$10$yK7hzTI9EZPb.WjdBLuSTOes.3DDboKOGELZUPSso9rBA8rzNfmZu', '[\"owner\"]', 'مفعل', NULL, '2023-03-18 04:28:37', '2023-03-18 04:28:37'),
(2, 'basma', 'basma@mail.com', NULL, '$2y$10$Yk1nvTmA6AsNZ8rcQ.0mROv3M7f.t4r.DLin5BIeofSJwnW1PyK5G', '[\"user\"]', 'غير مفعل', NULL, '2023-03-18 04:30:21', '2023-03-18 04:30:21');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Index pour la table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Index pour la table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  ADD CONSTRAINT `invoices_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
