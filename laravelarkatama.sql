-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravelarkatama
CREATE DATABASE IF NOT EXISTS `laravelarkatama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravelarkatama`;

-- Dumping structure for table laravelarkatama.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelarkatama.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table laravelarkatama.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelarkatama.migrations: ~4 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2023_12_06_071700_create_userss_table', 1);

-- Dumping structure for table laravelarkatama.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelarkatama.password_resets: ~0 rows (approximately)

-- Dumping structure for table laravelarkatama.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelarkatama.users: ~17 rows (approximately)
REPLACE INTO `users` (`id`, `name`, `age`, `city`, `created_at`, `updated_at`) VALUES
	(1, 'Dr. Ezra Shanahan V', 30, 'Powlowskitown', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(2, 'Jana Durgan', 55, 'Dawsonside', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(3, 'Pattie Hansen DVM', 32, 'North Jeweltown', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(4, 'Katelynn Hartmann', 32, 'South Clarabelle', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(5, 'Napoleon Bradtke', 31, 'Schadenburgh', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(6, 'Hazel Ondricka IV', 48, 'Maudefort', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(7, 'Alessandra Bins', 24, 'South Aleenbury', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(8, 'Mrs. Madilyn Brakus Jr.', 51, 'North Kenny', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(9, 'Abigale Davis', 49, 'East Coby', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(10, 'Norris Maggio', 41, 'Lake Theodoremouth', '2023-12-06 00:27:19', '2023-12-06 00:27:19'),
	(29, 'CUT MINI MEIRISKA 28', 0, 'ACEH', '2023-12-06 01:07:18', '2023-12-06 01:07:18'),
	(30, 'CUT', 0, 'MEIRISKA', '2023-12-06 01:09:06', '2023-12-06 01:09:06'),
	(31, 'CUT MEIRISKA', 28, 'BANDA ACEH', '2023-12-06 01:17:52', '2023-12-06 01:17:52'),
	(32, 'ARISTA DWIT', 22, 'BANDA ACEH', '2023-12-06 01:18:27', '2023-12-06 01:18:27'),
	(33, 'ARISTA DWI SETIA BUDI', 22, 'BANDA ACEH', '2023-12-06 01:19:38', '2023-12-06 01:19:38'),
	(34, 'IMAM', 22, 'BANDA ACEH', '2023-12-06 01:26:05', '2023-12-06 01:26:05'),
	(35, 'ARISTA DWI SETIA BUDI', 22, 'BANDA ACEH', '2023-12-06 01:26:19', '2023-12-06 01:26:19');

-- Dumping structure for table laravelarkatama.userss
CREATE TABLE IF NOT EXISTS `userss` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelarkatama.userss: ~10 rows (approximately)
REPLACE INTO `userss` (`id`, `name`, `age`, `city`, `created_at`, `updated_at`) VALUES
	(1, 'Lorena Carroll', 44, 'South Stone', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(2, 'Matilda Bradtke', 34, 'Port Rosalinda', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(3, 'Susie Satterfield', 37, 'Glennieport', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(4, 'Tanya Monahan', 40, 'South Austen', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(5, 'Maymie Hills', 46, 'West Juliusside', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(6, 'Shanel Padberg III', 38, 'South Don', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(7, 'Dr. Alexzander Little IV', 35, 'East Janick', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(8, 'Prof. Ernie Stracke PhD', 53, 'South Elishaview', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(9, 'Dr. Estell Bauch', 39, 'Drewburgh', '2023-12-06 00:26:19', '2023-12-06 00:26:19'),
	(10, 'Theron Nolan', 42, 'Joshmouth', '2023-12-06 00:26:19', '2023-12-06 00:26:19');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
