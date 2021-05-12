-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Mar-2021 às 17:28
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marketplace`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Games', NULL, 'games', '2021-01-16 00:53:03', '2021-01-16 00:53:03'),
(2, 'Notebooks', NULL, 'notebooks', '2021-01-16 00:53:03', '2021-01-16 00:53:03'),
(3, 'Alexander Kruger2', 'ok', 'alexander-kruger', '2021-01-21 03:38:43', '2021-01-21 03:38:50'),
(4, 'Livros do Alex', 'testando com loja Auth', 'livros-do-alex', '2021-01-30 02:40:27', '2021-01-30 02:40:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `category_product`
--

CREATE TABLE `category_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `category_product`
--

INSERT INTO `category_product` (`product_id`, `category_id`) VALUES
(40, 2),
(45, 2),
(43, 1),
(46, 2),
(47, 3),
(48, 1),
(49, 3),
(50, 2),
(50, 3),
(51, 3),
(52, 2),
(53, 3),
(54, 3),
(55, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_14_192021_create_store_table', 1),
(5, '2021_01_14_203136_create_products_table', 1),
(6, '2021_01_15_163846_create_categories_table', 1),
(7, '2021_01_15_164247_create_category_product_table', 1),
(8, '2021_01_23_150544_create_product_photos_table', 2),
(9, '2021_01_23_150731_alter_table_stores_add_column_logo', 3),
(14, '2021_03_05_124304_create_user_order_table', 4),
(15, '2021_03_10_012028_create_order_store_table', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_store`
--

CREATE TABLE `order_store` (
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `order_store`
--

INSERT INTO `order_store` (`store_id`, `order_id`) VALUES
(47, 3),
(43, 3),
(47, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `store_id`, `name`, `description`, `body`, `price`, `slug`, `created_at`, `updated_at`) VALUES
(6, 6, 'Jakob Walter', 'Qui delectus nulla ut ut non aut.', 'Aut ratione voluptas ut praesentium deleniti quia corporis. Rem quod facere non eveniet voluptates. Rerum sunt pariatur nemo eos suscipit. Ut magnam aliquid neque sit nam. Ratione rem vero omnis delectus et tempora sint.', '9.66', 'modi-accusamus-omnis-eos-et', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(7, 7, 'Bernhard Adams', 'Assumenda eos aut dolores ut qui asperiores.', 'Molestiae beatae aspernatur laudantium nulla alias ex. Rem reiciendis sed totam vel quia voluptatem. Itaque ut esse eum officiis minus maxime. Praesentium harum sed velit. Laborum omnis voluptatem eum perspiciatis aut.', '6.47', 'qui-quae-quia-sint-reprehenderit-enim-impedit-labore-pariatur', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(8, 8, 'Bailee McClure', 'Eum nihil enim harum nihil dolores inventore.', 'Quaerat dolore quae quisquam ipsa et molestiae. Qui ut libero debitis dolore et. Perspiciatis itaque expedita neque non voluptatem a nulla sapiente. Quae eum et ut porro mollitia. Voluptas debitis enim tenetur quae magni rerum et.', '6.02', 'enim-officiis-possimus-dolor-incidunt-ipsa-consequatur-rerum', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(9, 9, 'Carrie Jast', 'Aut enim voluptate iusto occaecati ad.', 'Aliquid facilis totam ad beatae eum rerum aliquid beatae. Corporis odio aliquid id provident nihil. Dolorem quisquam omnis dolores omnis fuga perferendis sunt. Dolores sunt deserunt ea sed aut autem dolor eum. A rerum sapiente qui non quia aliquid laudantium. Commodi nihil assumenda a qui.', '9.75', 'voluptas-corrupti-ullam-qui-voluptates-dolores-sunt-ut', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(10, 10, 'Lonie Ruecker', 'Minima ratione labore architecto harum quam voluptatibus architecto.', 'Illo officia delectus nisi illo est. Error ex consequuntur possimus repellat. Ipsam sunt delectus eligendi placeat ut. Quis maxime error neque ipsam ut. Expedita distinctio distinctio nostrum natus quo ullam.', '9.30', 'a-voluptatibus-autem-perspiciatis-sed-sint-nulla', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(12, 12, 'Curt Krajcik', 'Quisquam praesentium at illo quibusdam est.', 'Accusamus aperiam porro nam enim exercitationem nemo repellendus. Dolore non quae voluptatibus et provident eius incidunt. Ut in aspernatur tempore eos eligendi ut. Delectus officia amet quas nulla aut cumque aut. Distinctio veritatis dolorum officia magnam aut maxime.', '5.72', 'et-atque-corporis-quibusdam-et-rem-numquam-ea', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(13, 13, 'Prof. Shirley Feest', 'Quod quod fuga debitis eos.', 'Enim aperiam quae ut vero eveniet. Odit velit consequatur earum ea et excepturi ratione. Porro enim excepturi commodi et est eligendi sed dicta. Nihil explicabo nemo molestiae voluptatum deserunt. Vero molestias sequi quae officia quo. Cupiditate ut nesciunt tempore vitae officiis in laboriosam.', '9.41', 'consequatur-quibusdam-excepturi-soluta-soluta-eos', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(14, 14, 'Ursula Larson', 'Nisi vel dolor dolores.', 'Facere similique aut molestias commodi. Consequuntur ducimus sed suscipit dicta similique quo autem. Quo ducimus ut ipsum quis. Corrupti consequatur adipisci esse doloribus.', '2.91', 'odit-cumque-commodi-consequuntur-eius-sit', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(15, 15, 'Mr. Leopold Kessler', 'Ea aut hic esse qui.', 'Dignissimos similique quis voluptatem nisi consectetur dignissimos. Amet iure eum omnis consequatur qui. Dolorum consequuntur corrupti eius et aut aliquid. Dolor voluptate neque reprehenderit vitae ut reiciendis.', '3.05', 'nobis-qui-iusto-odio-reiciendis', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(16, 16, 'Miller Rath', 'Expedita maxime est itaque incidunt.', 'Illo sit similique sint consequuntur molestias ut. Quaerat et nesciunt quisquam vitae. Voluptatum consequatur sunt qui nesciunt facere aut ut voluptate. Possimus est aut itaque commodi natus.', '5.03', 'ut-minus-impedit-eum-minima', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(17, 17, 'Darby Little', 'Cumque atque labore tenetur ex quibusdam repellat explicabo.', 'Qui in nisi exercitationem dolor. Repellendus et dolorum tenetur et. Maxime illum quo numquam dolores consequatur est. Maiores ut harum sunt.', '3.28', 'repellat-voluptatem-et-voluptas-earum-itaque-modi-harum', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(18, 18, 'Ms. Kelli Zemlak', 'Sit quia cum enim blanditiis quasi reprehenderit.', 'Nemo perspiciatis quo excepturi a. At et vel non. Provident quaerat nobis et itaque sed. Non maiores dolores minima laudantium minima.', '9.84', 'repellat-et-ipsam-minus-rem-doloribus-nulla-quia', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(19, 19, 'Pattie Renner DDS', 'Recusandae qui nam accusantium repellendus ipsa dicta sed.', 'Et voluptas provident autem voluptas dolores. Quasi voluptatem delectus ipsa. Nobis nostrum enim quia vel sit eligendi non quaerat. Sit voluptatem aliquam quasi ullam illum occaecati iusto. Et ad consectetur quo doloremque consequatur. Et eaque facere in facilis repudiandae dolores.', '4.14', 'maiores-illum-nisi-aut', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(20, 20, 'Zora DuBuque MD', 'Enim ad praesentium mollitia culpa reiciendis.', 'Et quae porro officia natus ut nulla. Voluptatem architecto molestias distinctio minus dolores voluptatem dolorum. Quas commodi soluta cumque est laudantium. Possimus dolores quo perspiciatis non temporibus ut quaerat. Et eaque ad aut amet quibusdam. Repellendus quae rerum non vel occaecati hic.', '8.69', 'et-debitis-quasi-minus-deleniti', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(21, 21, 'Ocie Powlowski DVM', 'Ratione sapiente sequi consequatur et consequatur quia est hic.', 'Sed sint incidunt modi occaecati laborum suscipit. Doloribus dolores itaque consectetur in nulla velit. Repudiandae hic sunt culpa mollitia voluptas. Dolor nulla et doloremque hic.', '8.58', 'quis-possimus-provident-labore-quos-officiis-repellendus', '2021-01-15 23:41:25', '2021-01-15 23:41:25'),
(22, 22, 'Abelardo Mitchell V', 'Voluptatibus ut perferendis magni consequuntur et.', 'Blanditiis minus laborum aspernatur omnis dolores. Beatae dolor atque aut qui. Omnis nobis voluptatibus non aut et. Tenetur nihil et consequatur suscipit voluptas. Deleniti consectetur nihil quaerat quia. Aut amet aut laudantium fuga harum aliquam illo. Aut sit hic possimus odio.', '9.48', 'nemo-fugit-et-maiores-delectus-dicta-dolor-eos', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(23, 23, 'Delphine Yost', 'Et omnis officiis ut voluptatum veritatis non.', 'Tempora aut dolores nam beatae debitis blanditiis. Sit in ex aut dignissimos est eos. Dolor aliquid cum aut soluta quae et officia. Debitis maiores sit veritatis id vero non sint. Quidem veritatis ratione quisquam eius et est velit. Labore dolor est minus porro incidunt illum delectus.', '5.82', 'qui-sequi-quod-totam-assumenda-maxime', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(24, 24, 'Velma Beatty', 'Sit voluptas sunt omnis laborum officiis.', 'Consequatur fuga in possimus dolore ut. Nesciunt consequatur laboriosam temporibus unde cumque et. Aut quod non adipisci eligendi. Laborum nobis voluptatem quasi.', '9.02', 'aliquam-consectetur-consequatur-eos-maxime', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(25, 25, 'Edna Prohaska', 'Omnis ut molestias itaque ea et qui.', 'Soluta et et nesciunt qui sed quisquam. Deleniti quia soluta corporis eligendi. Modi odio et ipsam nemo enim. Ut ipsam incidunt aliquam voluptates. Vitae temporibus quod neque consequatur ut voluptatem. Et praesentium itaque reiciendis tempore laboriosam. At dolores facilis commodi repellendus.', '9.56', 'fuga-soluta-explicabo-architecto-laudantium-in-nisi-aut', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(26, 26, 'Emile Robel', 'Qui rem et quia numquam consequatur.', 'Quasi error voluptas consectetur quas ab delectus. Eveniet in molestiae odit minus saepe et. Necessitatibus qui earum dolorem itaque non natus et. Dignissimos excepturi qui et soluta.', '4.52', 'eum-id-rerum-ipsam-deserunt-alias-saepe', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(27, 27, 'Ms. Ivy Parisian', 'Sequi voluptas sunt incidunt omnis quam debitis odit.', 'Sed non iste itaque reiciendis commodi. Quis debitis quidem et vel veniam deleniti impedit. Et nihil est ducimus qui voluptatem aperiam sunt. Esse et porro eaque.', '5.45', 'qui-qui-et-quas-non', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(28, 28, 'Miss Lola Feest', 'Repudiandae nobis inventore ut repellendus.', 'Ullam magnam aut quia. Quis optio hic et quas. Ut ea fugit sit et quas sit eius aut. Odit et praesentium tempore doloribus nihil quia. Ut in sit repudiandae fuga. Non corporis aut et fugiat. Quae ea error est.', '6.80', 'delectus-facilis-beatae-qui-placeat-et-ad', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(29, 29, 'Titus Kautzer', 'Sunt et incidunt alias blanditiis.', 'Laboriosam eligendi asperiores harum sed enim ullam veritatis. Harum ut reiciendis temporibus. Dolores vel beatae eum ut. Voluptatem omnis accusamus veritatis et accusantium. Rem assumenda blanditiis vero quo. Qui sunt et et natus unde qui et.', '7.44', 'aut-delectus-quis-omnis', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(30, 30, 'Prof. Guy Gislason DDS', 'Impedit qui aspernatur nobis voluptate amet.', 'Autem nihil atque quia officia animi odit. Optio sit consequatur nemo. Voluptas aspernatur eveniet magni et dolor architecto aut. Vero voluptatem ducimus dolore non. Ea voluptate velit animi.', '8.83', 'quia-sapiente-tenetur-et-ut-ut-suscipit', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(31, 31, 'Bertrand Roob', 'Ducimus ut delectus nulla debitis velit.', 'Neque velit quis qui et autem nam voluptatem saepe. Eos beatae aperiam tempore distinctio. Exercitationem aspernatur non occaecati nam non cum unde. Sit veniam quia ut ut nihil eos natus debitis. Totam et saepe odit deleniti ipsam qui.', '8.76', 'non-rerum-veniam-omnis-ullam-eaque-beatae', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(32, 32, 'Blanche Bosco', 'Expedita eius consequatur laboriosam laborum aliquid optio animi.', 'Non est tempore velit quidem. Cumque totam iusto illum tempore possimus. Nam delectus ad necessitatibus consequatur repellat qui rerum illum. Nihil est et temporibus culpa eum. Quidem aut ab repudiandae consequatur nostrum qui possimus saepe. Qui soluta architecto voluptate quasi dolor in vero ut.', '4.45', 'aperiam-in-impedit-distinctio-expedita-reprehenderit-ea-quia', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(33, 33, 'Madelynn Orn PhD', 'Earum inventore consequatur nihil odit a.', 'Deserunt ad tenetur iste odio alias cum temporibus. A quo numquam et placeat at rerum. Rem corporis aperiam aut veritatis molestiae. Id impedit qui ab facilis. Sit reprehenderit sit aut alias quo. Rem minima aut hic odio ut.', '7.13', 'consectetur-voluptas-laborum-dolore-placeat-illo-et', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(34, 34, 'Prof. Bart Rohan I', 'Eos in sunt qui voluptas.', 'Sunt quas magni minima. Quos quos fuga nobis possimus harum. Veritatis magni officia et fuga. Voluptatum ipsum perspiciatis necessitatibus officiis sequi necessitatibus. Suscipit nihil sunt vel id eius omnis placeat.', '5.38', 'atque-atque-doloremque-sunt-earum-et-ea-dolorum', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(35, 35, 'Margot Gusikowski Jr.', 'Maiores reprehenderit velit aut maiores laborum eveniet.', 'Voluptates libero culpa ratione quis. Magni distinctio eum sequi aspernatur qui aut. Rerum architecto dolorem sed quidem quia repudiandae dolores maxime. Rerum nam dicta id voluptas fugit. Qui voluptas velit amet ut debitis nihil sunt.', '8.08', 'debitis-inventore-molestias-et', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(36, 36, 'Serena Jast', 'Enim excepturi laboriosam et ut.', 'Ad ad saepe at qui. Quidem voluptates ipsam quam quasi amet officia enim. Dolorem ut magni est libero sequi qui pariatur nobis. Quae quia non tempora consequatur quas unde qui. Et consectetur ut qui.', '7.22', 'velit-veniam-libero-voluptate-consequuntur-recusandae-et-necessitatibus-debitis', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(37, 37, 'Arlo Pagac IV', 'Sit eius deserunt sequi explicabo reiciendis neque animi.', 'Cupiditate incidunt ipsum molestias accusantium omnis odit sequi. Laborum rerum iste aliquam inventore voluptatem expedita pariatur. Eius voluptatem labore quis dolorum ratione adipisci. Id et eaque est voluptatum cumque eius.', '8.49', 'fuga-dicta-velit-enim-magnam-ratione', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(38, 38, 'Art Bruen', 'Ad consequuntur cumque maxime laborum sit quasi id ducimus.', 'Facere dolorem blanditiis autem quam excepturi. Repellat fuga deleniti pariatur. Mollitia earum autem iure adipisci alias. Aut consequatur id eveniet cum unde eos autem.', '4.23', 'suscipit-architecto-nesciunt-consectetur-repudiandae-eum-inventore-nihil', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(39, 39, 'Dr. Maurine Schmidt DVM', 'Ad aliquam amet exercitationem consequatur.', 'Sed non illo possimus et eius delectus pariatur. Iusto maiores quis eos et. Quaerat ad assumenda harum voluptatem qui qui. Facilis odio dolorem qui earum facere et recusandae autem. Incidunt itaque nisi perferendis et quidem sed. Atque placeat error consequatur voluptatum.', '9.48', 'et-aut-commodi-dolorem-mollitia-voluptatem', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(40, 40, 'Mrs. Shany Graham', 'Eum nesciunt dolorum ducimus hic sed.', 'Omnis est veritatis necessitatibus autem adipisci et. Velit facilis ex facere optio dolores at perspiciatis voluptatem. Repudiandae omnis aut consequatur animi et ratione. Enim dicta quia molestiae quia.', '8.96', 'aperiam-distinctio-autem-cupiditate-architecto', '2021-01-15 23:41:26', '2021-01-15 23:41:26'),
(41, 41, 'NOtebook Dell', 'Loja teste de informatica', 'qualquer coisa', '2999.90', 'notebook-dell', '2021-01-16 00:42:18', '2021-01-16 00:42:18'),
(42, 2, 'Produto Teste123', 'Prodtu Descrição', 'dfadfa', '19.99', 'produto-teste', '2021-01-16 17:58:05', '2021-01-16 18:11:45'),
(43, 43, 'testando com loja Auth', 'testando com loja Auth', 'testando com loja Auth', '19.90', 'testando-om12', '2021-01-20 16:43:56', '2021-01-20 16:43:56'),
(44, 43, 'testando com loja Auth', 'testando com loja Auth', 'testando com loja Auth', '18.00', 'testando123', '2021-01-20 16:47:31', '2021-01-20 16:47:31'),
(45, 43, 'Produto Aexander Kruger', 'descrição do produto Alex', 'produto Alex', '12.90', 'alexander-kruger12345', '2021-01-22 18:10:44', '2021-01-22 18:10:44'),
(46, 43, 'Alexander Kruger', 'testando com loja Auth', 'atestando com loja Auth', '12.00', '02-hoteis123456', '2021-01-25 04:54:22', '2021-01-25 04:54:22'),
(47, 43, 'Alexander Kruger', 'testando com loja Auth', 'testando com loja Auth', '12.00', '05-shopping2345', '2021-01-25 05:01:44', '2021-01-25 05:01:44'),
(48, 43, 'Alexander Kruger', 'testando com loja Auth', 'ccccccccccccccccccccc', '12.00', '06-pontos-turisticos456', '2021-01-28 23:40:30', '2021-01-28 23:40:30'),
(49, 43, 'Alexander Kruger', 'testando com loja Auth', 'ererere', '12.00', '01-restaurantes567', '2021-01-28 23:43:00', '2021-01-28 23:43:00'),
(50, 43, 'Alexander Kruger', 'testando com loja Auth', '343434', '12.00', 'foz-do-iguacu356', '2021-01-28 23:45:25', '2021-01-28 23:45:25'),
(51, 43, 'Alexander Kruger', 'testando com loja Auth', 'ttttttttttttttttt', '12.00', '04-academias6789', '2021-01-28 23:49:22', '2021-01-28 23:49:22'),
(52, 43, 'Alexander Kruger', 'testando com loja Auth', 'eeee', '12.00', 'foz-do-iguacu2789', '2021-01-28 23:56:42', '2021-01-28 23:56:42'),
(53, 47, 'Alexander Kruger', 'testando com loja Auth', 'sdfsfsdfs', '12.00', '04-academias45454', '2021-01-30 01:42:10', '2021-01-30 01:42:10'),
(54, 47, 'Alexander Kruger', 'testando com loja Auth', 'fsdsdsd', '12.00', '01-restaurantes33', '2021-01-30 01:52:24', '2021-01-30 01:52:24'),
(55, 47, 'Alexander Kruger teste', 'testando com loja Auth', 'aadada', '12.00', 'alexander-kruger-teste5454', '2021-01-30 02:37:28', '2021-01-30 02:39:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_photos`
--

CREATE TABLE `product_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `product_photos`
--

INSERT INTO `product_photos` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(11, 52, 'products/jDKZijuQgzMJNf16S13I7S5ePRuWBUBaraZJIhtt.jpg', '2021-01-28 23:57:05', '2021-01-28 23:57:05'),
(14, 53, 'products/GC0eDm6FeZw4puB9Xi4pfa4ARms7NWQ057rBoZuf.jpg', '2021-01-30 01:47:53', '2021-01-30 01:47:53'),
(15, 53, 'products/T6vbZQtGlbqZcnfcxspD4qVas5zKxQJ2LVb0c2k4.jpg', '2021-01-30 01:48:14', '2021-01-30 01:48:14'),
(16, 54, 'products/FKJwrIJOupx42pOeMgyNH9B7xeQyGb711i7ZCXge.jpg', '2021-01-30 01:52:24', '2021-01-30 01:52:24'),
(17, 55, 'products/2NUPrdFexlhcJ15aCWTBE6VNVyKoNnVyDhEVQMHw.jpg', '2021-01-30 02:37:28', '2021-01-30 02:37:28'),
(18, 47, 'products/c98PYfqZPW4BKPc1TJhiLR7fdnq8Rhl2pjABYvvU.jpg', '2021-02-16 02:46:35', '2021-02-16 02:46:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `name`, `description`, `phone`, `mobile_phone`, `slug`, `created_at`, `updated_at`, `logo`) VALUES
(2, 2, 'Nils Farrell123', 'Nulla facilis est eaque quibusdam quae.', '+1-384-691-6736', '+1-429-504-7307', 'dolor-impedit-ab-velit-numquam', '2021-01-15 23:32:05', '2021-01-16 19:34:49', NULL),
(3, 3, 'Adrien Johnson', 'Provident non possimus deserunt nihil distinctio aut qui quasi.', '1-951-389-0875 x295', '514-285-0524', 'fuga-quibusdam-et-rerum-alias', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(6, 6, 'Dr. Bernardo Sporer', 'Et sed eius molestias delectus.', '303.375.9187', '457.591.0483', 'et-est-voluptatem-et-cupiditate-et-alias-facere', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(7, 7, 'Oma Kuhlman II', 'Enim ipsa quis numquam impedit est autem voluptas et.', '+17533832612', '+1 (784) 892-8359', 'eos-autem-mollitia-nam-nostrum', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(8, 8, 'Gardner Schinner', 'Eius unde possimus molestias velit totam earum aut mollitia.', '+16828834440', '(431) 684-8851 x5634', 'sapiente-est-voluptatem-est-tempora', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(9, 9, 'Marjolaine Waters', 'Aspernatur adipisci autem mollitia expedita ab itaque.', '1-710-864-7035', '885-791-3397 x6511', 'placeat-sit-libero-omnis-molestiae-facilis-aspernatur', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(10, 10, 'Paula Lebsack', 'Eum consequatur optio tempore repudiandae labore numquam.', '819-683-8344', '425.700.4915', 'iure-cum-harum-saepe-sed-enim-similique-molestias', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(12, 12, 'Amelia Veum III', 'Sit et sed ex unde earum aut necessitatibus.', '(536) 473-1824 x94806', '726-279-8154 x1815', 'nihil-ut-voluptatem-nisi-rerum-est-aut-aliquam', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(13, 13, 'Rossie Quigley', 'Magnam sit consequatur ab placeat nobis.', '926.409.5503 x299', '1-696-305-6602 x520', 'dolores-laboriosam-eum-tenetur-alias-placeat-qui-atque', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(14, 14, 'Dr. Akeem Gutkowski I', 'Quia velit esse sit consequatur dolorem.', '(493) 632-7254 x28577', '601.891.2161 x6188', 'laudantium-unde-rerum-ipsa-velit', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(15, 15, 'Alene Deckow', 'Impedit consequatur dolorum facilis reiciendis.', '(721) 794-3137', '+1.483.871.6751', 'fugit-quas-omnis-voluptas-expedita', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(16, 16, 'Antonietta Herman', 'Rerum fuga rerum necessitatibus nobis.', '(964) 358-8458 x42116', '(781) 396-8590 x32468', 'voluptas-delectus-autem-magni-enim-quia-explicabo', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(17, 17, 'Noel Schaden', 'Alias quae id reprehenderit temporibus.', '+1.430.662.4134', '934-289-9942', 'fugit-sunt-sunt-veritatis', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(18, 18, 'Fiona Brown', 'Quia rerum sed sed quia.', '+1 (761) 233-4074', '1-836-515-2758 x65456', 'qui-dolorum-placeat-nemo-delectus-inventore-dolorem-ratione', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(19, 19, 'Ms. Iva Jacobson', 'Sed consectetur neque quia.', '957-486-5167', '1-732-347-6601 x7097', 'quo-ut-eos-enim-adipisci-qui-natus-odio-eligendi', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(20, 20, 'Heloise Kiehn DVM', 'Exercitationem est et qui et soluta nemo et nihil.', '1-965-730-1804 x4614', '(767) 385-3267', 'assumenda-eum-atque-recusandae-omnis-reprehenderit-hic-earum', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(21, 21, 'Prof. Roberta O\'Keefe', 'Nemo earum veniam laboriosam nihil laboriosam est.', '+1.812.819.5810', '+1 (469) 992-7754', 'officiis-voluptas-voluptatem-voluptatum-veniam-perspiciatis-deserunt', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(22, 22, 'Chyna Bednar', 'Nobis aut debitis non accusamus dolorum aliquam.', '+13962703844', '613.612.0290 x9175', 'expedita-ut-suscipit-ea-alias-quo', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(23, 23, 'Eden Bartoletti', 'Maxime nesciunt est voluptatem sint nisi consequatur aut.', '(946) 471-3212', '873.430.2050', 'eaque-voluptatem-laudantium-consequuntur-ut-quo-atque', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(24, 24, 'Dr. Shakira Considine II', 'Veritatis quisquam libero a nobis.', '(239) 769-5609', '878-522-4007 x4412', 'cumque-doloribus-accusantium-magni-recusandae-ipsa', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(25, 25, 'Norval Koelpin', 'Aut ut sit doloremque suscipit repudiandae.', '1-408-818-2100 x42584', '1-467-747-0710 x226', 'laudantium-et-qui-omnis', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(26, 26, 'Cristal Lebsack', 'Vel iusto nemo quo dolorem minus est.', '1-612-239-6709 x579', '+1-545-780-5146', 'qui-qui-explicabo-sed-sunt', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(27, 27, 'Ms. Danika Feeney', 'Eos consequuntur adipisci iste non sit.', '1-218-508-0623 x715', '(751) 806-6834 x800', 'minus-dolor-esse-distinctio-deleniti-animi-enim-provident', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(28, 28, 'Austin Ruecker', 'Quia qui necessitatibus ratione eligendi nam fuga saepe.', '+1 (660) 420-7826', '(923) 806-7567 x43190', 'aspernatur-facilis-magnam-provident-nesciunt-id', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(29, 29, 'Alvera Aufderhar', 'Voluptate at impedit eaque quia aperiam repudiandae.', '+19283305666', '1-861-450-6764 x1433', 'possimus-soluta-vitae-est-excepturi-id', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(30, 30, 'Linnea Medhurst MD', 'Et vitae ducimus repellat sint impedit iusto.', '1-597-552-9516 x970', '+1-713-737-3362', 'qui-amet-non-aliquam-voluptatem-qui-vel-debitis-reprehenderit', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(31, 31, 'Junior Fadel', 'Esse vero doloremque voluptates quae magni nobis mollitia in.', '521-894-1209 x20264', '(973) 805-2644', 'tempora-fugiat-possimus-rerum-voluptas-mollitia-natus-non', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(32, 32, 'Ariane Wuckert V', 'Ut numquam est eligendi qui.', '448-231-1251 x43300', '815-221-9266', 'aliquam-ullam-et-ut-animi', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(33, 33, 'Alejandra Crona', 'Ipsum voluptatem esse est fuga optio.', '+1 (809) 994-4867', '1-812-719-8014', 'temporibus-qui-enim-alias-praesentium-illum-magni-distinctio', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(34, 34, 'Mckayla Collins DDS', 'Non qui accusamus at et non velit non est.', '(723) 364-1239 x42141', '(898) 292-2668 x532', 'deleniti-sunt-perspiciatis-est-cum-earum-consequatur-sint-nisi', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(35, 35, 'Mona Gorczany DVM', 'Expedita ut reiciendis vel quae.', '780-397-9127', '+1.393.769.9263', 'quibusdam-et-et-rerum-tempora-amet', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(36, 36, 'Marge Heaney', 'Est dicta aspernatur distinctio rerum quae aut.', '462-623-1919', '408.942.6238 x0111', 'et-dolorem-et-odio-nemo-aspernatur-quasi-earum-reprehenderit', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(37, 37, 'Prof. Keenan Bergstrom III', 'Tenetur quo impedit quod temporibus.', '(362) 964-2074 x70382', '+15483557884', 'quasi-et-ea-aut-quam', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(38, 38, 'Prof. Furman Kilback', 'Et incidunt qui dolor praesentium aut itaque illo laboriosam.', '1-626-590-2482', '669.335.0337', 'laborum-expedita-doloribus-doloremque-repellendus-cupiditate-fuga-dolor', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(39, 39, 'Brandon Hauck', 'Quae sunt mollitia et et dicta.', '1-545-200-8196 x8642', '+17543266990', 'fuga-illum-enim-voluptas-dolore-et', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(40, 40, 'Gabe Ritchie DDS', 'Et quidem quis eos.', '+12679747649', '882-807-1010 x96253', 'sed-est-itaque-libero-quibusdam-nihil', '2021-01-15 23:32:05', '2021-01-15 23:32:05', NULL),
(41, 10, 'Loja teste', 'Loja teste2', 'xx-xxxx-xxxx', 'xx-xxxx-xxxx', 'loja-teste', '2021-01-16 00:40:47', '2021-01-16 00:40:47', NULL),
(42, 2, 'Loja Via Form', 'Uma loja descolada', '99778037', '99778037', 'loja-via-form', '2021-01-16 13:28:14', '2021-01-16 13:28:14', NULL),
(43, 1, 'Loja teste123', 'lojat teste', '99778037', '99778037', 'loja-teste', '2021-01-16 16:17:54', '2021-01-30 01:27:08', 'logo/KPZFvS79xFGhqnazZInpYR76YUPyKujqCGQwVJLZ.png'),
(44, 1, 'Loja 1', 'loja 2', '99778037', '99778037', 'loja-1', '2021-01-16 16:18:29', '2021-01-16 16:18:29', NULL),
(45, 1, 'Loja tal', 'Loja tal', '99778037', '99778037', 'loja-tal', '2021-01-18 19:25:59', '2021-01-18 19:25:59', NULL),
(46, 1, 'Alexander Kruger', 'testando com loja Auth', '45991075087', '45991075087', '04-academias', '2021-01-28 23:20:28', '2021-01-28 23:20:28', 'logo/ovsaP8TphdBIGkmtIsVYx2kRhoKTH2wbjJm2aSBv.jpg'),
(47, 41, 'Loja AlexTeste', 'Loja AlexTeste', '45991075087', '45991075087', '06-pontos-turisticos', '2021-01-30 01:37:54', '2021-01-30 01:37:54', 'logo/DNCYR7zfeLJQZTKIrLGIhVRpr2OGQ7UxkA9gAMP8.jpg'),
(48, 42, 'Alexander Kruger2', 'testando com loja Auth', '45991075087', '45991075087', 'alexander-kruger2', '2021-01-30 02:43:38', '2021-01-30 02:43:38', 'logo/kvQJnXCMRwL5r73GJau0a4gYq6Cty8s5hNSx2ach.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Aryanna Donnelly Sr.', 'lkohler@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4N4zGnlPJJDSXh403HJWevxRncRsYVq56MGroEERVICIfF8AY1sA9Hy4hGxT', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(2, 'Estrella Parker', 'pfritsch@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hnozaRibHV', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(3, 'Vincenza Conroy', 'sophia20@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gy4sBrRnji', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(4, 'Mr. Lawson King', 'kohler.deondre@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '58HAgLSmvD', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(5, 'Albin Nicolas', 'fisher.carlie@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AR9Jirzc0y', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(6, 'Everardo Hamill', 'mzemlak@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mAYDhh05Oa', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(7, 'Kenton Baumbach', 'lheaney@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lg58v8EotG', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(8, 'Prof. Omer Adams IV', 'orin.gleichner@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X4Lt3wfuS0', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(9, 'Dr. Zoey Crona PhD', 'thalia.lemke@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5KWxmflVoY', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(10, 'Isom Jacobs', 'weston.halvorson@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oc8Yr90g4s', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(11, 'Prof. Audrey Schultz IV', 'dessie.batz@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D805rTjbXv', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(12, 'Prof. Bart Dach Jr.', 'mquigley@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tujh9my4Uq', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(13, 'Orval Russel', 'blarson@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NJM2DAIoFd', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(14, 'Chaz Wunsch', 'qruecker@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WuituH1xBY', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(15, 'Helmer Morissette', 'nora36@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oa7tUl2QYz', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(16, 'Devante Weissnat', 'heathcote.francesca@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XnXGnrdKy9', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(17, 'Mrs. Faye Pfeffer II', 'conor27@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tcUnVKGz3u', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(18, 'Cruz Kerluke', 'tyreek.windler@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e7Fu6B2rkE', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(19, 'Wilburn Kub', 'csatterfield@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LT7w4figFS', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(20, 'Mr. Antone Batz IV', 'davonte55@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3FaEFy4eE2', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(21, 'Devon Bayer', 'gleason.jaclyn@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7lN1wu9hNO', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(22, 'Frederic Olson', 'terrell.friesen@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9jPjznBU4n', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(23, 'Prof. Novella Schmeler Jr.', 'aditya54@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FqCDamt6CQ', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(24, 'Mathias Herman', 'donnelly.rosemary@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vt4trzusZh', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(25, 'Mr. Xzavier Hills', 'jo.denesik@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u04ak1nzKV', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(26, 'Dr. Lea Torphy', 'wyman.izaiah@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hrujNyNu7X', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(27, 'Elijah Willms', 'lily84@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VikJH5oe3h', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(28, 'Dahlia Satterfield', 'albertha.witting@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gErcZmeb66', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(29, 'Eleonore Kutch', 'adella.damore@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kM1JCrBNVB', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(30, 'Donato Moore', 'veichmann@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VwNJLF7JOn', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(31, 'Prof. Ellis Ortiz V', 'concepcion25@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RFOi3ws1qU', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(32, 'Mallie Botsford', 'spencer.dixie@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wE6T0mVRCl', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(33, 'Robyn Bergstrom I', 'cartwright.angie@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B6vgJ26UUI', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(34, 'Chaim Feil', 'bode.lillie@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dMSIMVEVAA', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(35, 'Darby Heathcote', 'elton15@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uRPkcZ0mhb', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(36, 'Prof. Johnnie Schimmel DDS', 'marcelina56@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BisX6UBJYY', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(37, 'Loyal Weber', 'ynienow@example.net', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tlB6xzviki', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(38, 'Dr. Laurine Miller', 'qrogahn@example.org', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M3QKF3Xnm4', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(39, 'Allie Erdman', 'nleffler@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n8Tke0Nkrg', '2021-01-15 23:32:04', '2021-01-15 23:32:04'),
(40, 'Maryse Schmeler', 'wkreiger@example.com', '2021-01-15 23:32:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xqxJzEerx2', '2021-01-15 23:32:05', '2021-01-15 23:32:05'),
(41, 'Alexander Teste', 'teste@email.com', NULL, '$2y$10$xV.4w8OqopXGWfzpmy/K8uZEAo4FdcUc6id6ybu1b5FQzFQ5yHMPe', NULL, '2021-01-30 01:35:12', '2021-01-30 01:35:12'),
(42, 'Alexander Kruger', 'alex.brikbom@gmail.com', NULL, '$2y$10$jf7tQ5En1PmTwdHnHFA5KuZ10OYnQhRLk471XMNV5q3.EnrPPt.le', NULL, '2021-01-30 02:42:48', '2021-01-30 02:42:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_orders`
--

CREATE TABLE `user_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagseguro_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagseguro_status` int(11) NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_orders`
--

INSERT INTO `user_orders` (`id`, `user_id`, `store_id`, `reference`, `pagseguro_code`, `pagseguro_status`, `items`, `created_at`, `updated_at`) VALUES
(1, 1, 42, 'XPTO', '9B4FD40E-B1EE-47F2-8190-4EF8ABF6AAE4', 1, 'a:3:{i:0;a:5:{s:4:\"name\";s:22:\"Alexander Kruger teste\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:26:\"alexander-kruger-teste5454\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:47;}i:1;a:5:{s:4:\"name\";s:16:\"Alexander Kruger\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:17:\"foz-do-iguacu2789\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:43;}i:2;a:5:{s:4:\"name\";s:16:\"Alexander Kruger\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:17:\"04-academias45454\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:47;}}', '2021-03-10 05:03:10', '2021-03-10 05:03:10'),
(2, 1, 42, 'XPTO', 'A5E1F514-6D2F-4C78-8C82-B0E782AB77A3', 1, 'a:3:{i:0;a:5:{s:4:\"name\";s:22:\"Alexander Kruger teste\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:26:\"alexander-kruger-teste5454\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:47;}i:1;a:5:{s:4:\"name\";s:16:\"Alexander Kruger\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:17:\"foz-do-iguacu2789\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:43;}i:2;a:5:{s:4:\"name\";s:16:\"Alexander Kruger\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:17:\"04-academias45454\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:47;}}', '2021-03-10 05:04:10', '2021-03-10 05:04:10'),
(3, 1, 42, 'XPTO', 'FA5A2961-409E-4895-98FF-4D2D3F4166F7', 1, 'a:3:{i:0;a:5:{s:4:\"name\";s:22:\"Alexander Kruger teste\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:26:\"alexander-kruger-teste5454\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:47;}i:1;a:5:{s:4:\"name\";s:16:\"Alexander Kruger\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:17:\"foz-do-iguacu2789\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:43;}i:2;a:5:{s:4:\"name\";s:16:\"Alexander Kruger\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:17:\"04-academias45454\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:47;}}', '2021-03-10 05:04:48', '2021-03-10 05:04:48'),
(4, 1, 42, 'XPTO', 'AE00D841-20D5-4AF0-9D2B-5EB9D2668627', 1, 'a:1:{i:0;a:5:{s:4:\"name\";s:22:\"Alexander Kruger teste\";s:5:\"price\";s:5:\"12.00\";s:4:\"slug\";s:26:\"alexander-kruger-teste5454\";s:6:\"amount\";s:1:\"1\";s:8:\"store_id\";i:47;}}', '2021-03-10 05:09:04', '2021-03-10 05:09:04');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `category_product`
--
ALTER TABLE `category_product`
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `order_store`
--
ALTER TABLE `order_store`
  ADD KEY `order_store_store_id_foreign` (`store_id`),
  ADD KEY `order_store_order_id_foreign` (`order_id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_store_id_foreign` (`store_id`);

--
-- Índices para tabela `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_product_id_foreign` (`product_id`);

--
-- Índices para tabela `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_user_id_foreign` (`user_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_orders_user_id_foreign` (`user_id`),
  ADD KEY `user_orders_store_id_foreign` (`store_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `order_store`
--
ALTER TABLE `order_store`
  ADD CONSTRAINT `order_store_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `user_orders` (`id`),
  ADD CONSTRAINT `order_store_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Limitadores para a tabela `product_photos`
--
ALTER TABLE `product_photos`
  ADD CONSTRAINT `product_photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `user_orders`
--
ALTER TABLE `user_orders`
  ADD CONSTRAINT `user_orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `user_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
