-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2024 a las 22:27:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dicta', 'dicta', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(2, 'omnis', 'omnis', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(3, 'recusandae', 'recusandae', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(4, 'vel', 'vel', '2024-02-24 03:28:46', '2024-02-24 03:28:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `name`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'hola', 1, 50, '2024-02-24 17:36:56', '2024-02-24 17:36:56'),
(2, 'prueba', 1, 50, '2024-02-24 17:41:34', '2024-02-24 17:41:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'posts/e99a4ce96c3dfebab0a985c5c6545064.png', 1, 'App\\Models\\Post', '2024-02-24 03:28:47', '2024-02-24 03:28:47'),
(2, 'posts/a9454606541da3c239a8c58cf83b765b.png', 2, 'App\\Models\\Post', '2024-02-24 03:28:48', '2024-02-24 03:28:48'),
(3, 'posts/8ba318ed1dcf925aeaf1f7482e1fb721.png', 3, 'App\\Models\\Post', '2024-02-24 03:28:48', '2024-02-24 03:28:48'),
(4, 'posts/9c23c929cb53bfc45aab90ac5a8eb693.png', 4, 'App\\Models\\Post', '2024-02-24 03:28:49', '2024-02-24 03:28:49'),
(5, 'posts/0265b259e111d9ee9016f9eca9c0578d.png', 5, 'App\\Models\\Post', '2024-02-24 03:28:50', '2024-02-24 03:28:50'),
(6, 'posts/144e2b772aae3bf79abc7de661ed2227.png', 6, 'App\\Models\\Post', '2024-02-24 03:28:51', '2024-02-24 03:28:51'),
(7, 'posts/a143ce6414612b9cd1f867610dccedc4.png', 7, 'App\\Models\\Post', '2024-02-24 03:28:52', '2024-02-24 03:28:52'),
(8, 'posts/9d7fee67de0e2e12cf8c82966d054bde.png', 8, 'App\\Models\\Post', '2024-02-24 03:28:53', '2024-02-24 03:28:53'),
(9, 'posts/811def607eed95d41cec8d22350f5aa2.png', 9, 'App\\Models\\Post', '2024-02-24 03:28:54', '2024-02-24 03:28:54'),
(10, 'posts/415d6ccd1f901404aa77bc6c3440fc3b.png', 10, 'App\\Models\\Post', '2024-02-24 03:28:55', '2024-02-24 03:28:55'),
(11, 'posts/adc038f5a445819ede869337850a7a12.png', 11, 'App\\Models\\Post', '2024-02-24 03:28:56', '2024-02-24 03:28:56'),
(12, 'posts/15b1e54cc0b719884172e26a675a8cbf.png', 12, 'App\\Models\\Post', '2024-02-24 03:28:58', '2024-02-24 03:28:58'),
(13, 'posts/be26a15f5dcbb6a3dcaac2bae8042459.png', 13, 'App\\Models\\Post', '2024-02-24 03:29:07', '2024-02-24 03:29:07'),
(14, 'posts/b57586f4ac65eaa780fa33cce093f19a.png', 14, 'App\\Models\\Post', '2024-02-24 03:29:08', '2024-02-24 03:29:08'),
(15, 'posts/6b5dc7815fd4b8843997b76f895d6d07.png', 15, 'App\\Models\\Post', '2024-02-24 03:29:10', '2024-02-24 03:29:10'),
(16, 'posts/402c81aae9baf112c5da170da00220b6.png', 16, 'App\\Models\\Post', '2024-02-24 03:29:11', '2024-02-24 03:29:11'),
(17, 'posts/bee629de7d7ff07f0c29c3134a5b076b.png', 17, 'App\\Models\\Post', '2024-02-24 03:29:13', '2024-02-24 03:29:13'),
(18, 'posts/286114698b832695dc1f9161ba3a07d3.png', 18, 'App\\Models\\Post', '2024-02-24 03:29:14', '2024-02-24 03:29:14'),
(19, 'posts/6b622b3a7e0e0e709e7b5019567a0ec0.png', 19, 'App\\Models\\Post', '2024-02-24 03:29:15', '2024-02-24 03:29:15'),
(20, 'posts/f7ae140369f32df72dad29fca28a4e52.png', 20, 'App\\Models\\Post', '2024-02-24 03:29:16', '2024-02-24 03:29:16'),
(21, 'posts/ee7f921d7214ffb1867a4c11fd13faab.png', 21, 'App\\Models\\Post', '2024-02-24 03:29:17', '2024-02-24 03:29:17'),
(22, 'posts/c377026859849cc1d94eee3997d68200.png', 22, 'App\\Models\\Post', '2024-02-24 03:29:18', '2024-02-24 03:29:18'),
(23, 'posts/6a971861eeb65025600139dabdba61ff.png', 23, 'App\\Models\\Post', '2024-02-24 03:29:19', '2024-02-24 03:29:19'),
(24, 'posts/dbb3d7a5192fc108080e4cf9207c194e.png', 24, 'App\\Models\\Post', '2024-02-24 03:29:20', '2024-02-24 03:29:20'),
(25, 'posts/7890680ef69c72bfbae27e18c0ab6711.png', 25, 'App\\Models\\Post', '2024-02-24 03:29:21', '2024-02-24 03:29:21'),
(26, 'posts/2608446feb082ab2c8609ac2c58d90f8.png', 26, 'App\\Models\\Post', '2024-02-24 03:29:21', '2024-02-24 03:29:21'),
(27, 'posts/5a44f1bbfeaf3d29c8a71c6ae794349f.png', 27, 'App\\Models\\Post', '2024-02-24 03:29:22', '2024-02-24 03:29:22'),
(28, 'posts/670afad378019b548cff7c4ee28c1c10.png', 28, 'App\\Models\\Post', '2024-02-24 03:29:23', '2024-02-24 03:29:23'),
(29, 'posts/ea42cb11c771fbd6007237aabc40125c.png', 29, 'App\\Models\\Post', '2024-02-24 03:29:25', '2024-02-24 03:29:25'),
(30, 'posts/90f7a3ad449d3bb36ca2125a4f323015.png', 30, 'App\\Models\\Post', '2024-02-24 03:29:26', '2024-02-24 03:29:26'),
(31, 'posts/70efd128e8b93880fbd1f0dcc81e71a1.png', 31, 'App\\Models\\Post', '2024-02-24 03:29:27', '2024-02-24 03:29:27'),
(32, 'posts/956809cafe12bd772a2c952596ebcb58.png', 32, 'App\\Models\\Post', '2024-02-24 03:29:27', '2024-02-24 03:29:27'),
(33, 'posts/500778aa6b45e8accc40cc1529aee213.png', 33, 'App\\Models\\Post', '2024-02-24 03:29:28', '2024-02-24 03:29:28'),
(34, 'posts/17d2d91d61ea075d0272829f9da7062f.png', 34, 'App\\Models\\Post', '2024-02-24 03:29:29', '2024-02-24 03:29:29'),
(35, 'posts/481ae26b6b26157dbfeac410c9adec5a.png', 35, 'App\\Models\\Post', '2024-02-24 03:29:29', '2024-02-24 03:29:29'),
(36, 'posts/083daa4df8e88947c84de28d40c6f890.png', 36, 'App\\Models\\Post', '2024-02-24 03:29:30', '2024-02-24 03:29:30'),
(37, 'posts/2eabd95cc4d197615379aff9936104b6.png', 37, 'App\\Models\\Post', '2024-02-24 03:29:31', '2024-02-24 03:29:31'),
(38, 'posts/a539737ca82b629005c03db21f74c90d.png', 38, 'App\\Models\\Post', '2024-02-24 03:29:32', '2024-02-24 03:29:32'),
(39, 'posts/7e47a372cfde7890e4bf591d78acf8d7.png', 39, 'App\\Models\\Post', '2024-02-24 03:29:33', '2024-02-24 03:29:33'),
(40, 'posts/1c0338e0c897006978b40d7125f9424f.png', 40, 'App\\Models\\Post', '2024-02-24 03:29:34', '2024-02-24 03:29:34'),
(41, 'posts/b0dee90ec1a6807e4d2083f1dd4a59a1.png', 41, 'App\\Models\\Post', '2024-02-24 03:29:36', '2024-02-24 03:29:36'),
(42, 'posts/5ee03b0dba370f28847db1d5590a248b.png', 42, 'App\\Models\\Post', '2024-02-24 03:29:43', '2024-02-24 03:29:43'),
(43, 'posts/96a21519d65583747ab04d843009f46f.png', 43, 'App\\Models\\Post', '2024-02-24 03:29:48', '2024-02-24 03:29:48'),
(44, 'posts/0397e5c1eecf1d7e57403bd830d570b5.png', 44, 'App\\Models\\Post', '2024-02-24 03:29:50', '2024-02-24 03:29:50'),
(45, 'posts/38d19fd8d5205b49dd06c2363a2a6e98.png', 45, 'App\\Models\\Post', '2024-02-24 03:29:51', '2024-02-24 03:29:51'),
(46, 'posts/7278f2d943c484d413c7ffbc9e02516d.png', 46, 'App\\Models\\Post', '2024-02-24 03:29:52', '2024-02-24 03:29:52'),
(47, 'posts/22caa21c99b566f9f6736b149a70ed6f.png', 47, 'App\\Models\\Post', '2024-02-24 03:29:53', '2024-02-24 03:29:53'),
(48, 'posts/5b74d1495bd4f959b577e6170320b8d3.png', 48, 'App\\Models\\Post', '2024-02-24 03:29:54', '2024-02-24 03:29:54'),
(49, 'posts/e1c59883eabf5015585160c03ae480fc.png', 49, 'App\\Models\\Post', '2024-02-24 03:29:56', '2024-02-24 03:29:56'),
(50, 'posts/2f6162a5b083e8ee45569b64a6291d70.png', 50, 'App\\Models\\Post', '2024-02-24 03:29:57', '2024-02-24 03:29:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_14_134321_create_sessions_table', 1),
(7, '2024_02_14_135434_create_categories_table', 1),
(8, '2024_02_14_135717_create_posts_table', 1),
(9, '2024_02_14_140520_create_tags_table', 1),
(10, '2024_02_14_140719_create_post_tag_table', 1),
(11, '2024_02_14_141040_create_images_table', 1),
(12, '2024_02_20_145335_create_permission_tables', 1),
(13, '2024_02_22_201945_comments', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.home', 'Ver el dashboard', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(2, 'admin.users.index', 'Ver Listado de usuario', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(3, 'admin.users.edit', 'Asignar un rol', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(4, 'admin.categories.index', 'Ver categorias', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(5, 'admin.categories.create', 'Crear Categorias', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(6, 'admin.categories.edit', 'Editar Categorias', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(7, 'admin.categories.destroy', 'Eliminar Categorias', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(8, 'admin.tags.index', 'Ver etiquetas', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(9, 'admin.tags.create', 'Crear Etiquetas', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(10, 'admin.tags.edit', 'Editar Etiquetas', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(11, 'admin.tags.destroy', 'Eliminar Etiquetas', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(12, 'admin.posts.index', 'Ver publicaciones', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(13, 'admin.posts.create', 'Crear Publicaciones', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(14, 'admin.posts.edit', 'Editar publicaciones', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(15, 'admin.posts.destroy', 'Eliminar Publicaciones', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `extract` text DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `extract`, `body`, `status`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Sint laudantium soluta recusandae animi sit dicta voluptatem.', 'sint-laudantium-soluta-recusandae-animi-sit-dicta-voluptatem', 'Quo saepe iste laboriosam nostrum eaque quam quibusdam. Est laudantium dolorem cupiditate. Dicta quia maxime dolorum ratione error qui omnis.', 'Beatae qui possimus sunt fugiat minus quo. Et ullam adipisci sit est libero in sed. Nostrum ducimus sed dignissimos et rerum modi sed hic. Est ea ut aut facere numquam iure pariatur inventore. Reiciendis molestias voluptatem id qui. Est aut ut unde eaque suscipit est quod. Voluptas perspiciatis rem ab quas quasi soluta. Omnis praesentium ut aut labore laborum ullam vel. Nulla aut culpa error laborum dolore quia eum. Et rem dolor rerum architecto et. Doloremque animi quasi enim ut magnam voluptas rerum. Ut expedita laudantium hic modi voluptatem omnis voluptatibus. Laboriosam similique facere molestiae. Optio molestiae et deleniti cumque nihil. Numquam quas alias beatae accusamus modi. Cupiditate ad placeat sed. Cumque voluptate est fugiat temporibus aut facilis. Inventore aut sint sit dolorem culpa beatae. Possimus amet cum aspernatur dolorem magnam ea. Sed sit nam perspiciatis fuga odit. Quo quo voluptas unde dicta culpa reprehenderit eum. Illum quia omnis et quaerat provident molestias nostrum. Distinctio molestiae doloremque repudiandae facere ut ea. Et rerum voluptas quaerat rerum. Consequatur atque qui et suscipit et quia. Magnam repellendus incidunt voluptas praesentium voluptates aliquam. Sed corrupti dicta quos aut est. Laborum laborum aut quasi amet. Minus laudantium qui voluptatum vero sint consequuntur eveniet. Eveniet possimus dolorem possimus neque nihil enim. Possimus sed quia et perferendis nihil. Ut sed eum quis voluptatibus et expedita. Qui et at necessitatibus dolor eaque rerum unde. Consectetur non aspernatur at quasi autem maxime. Modi magnam rerum unde at. Excepturi quam quisquam ut sit mollitia possimus. Minima similique rerum consectetur pariatur unde totam et. Laboriosam repudiandae voluptas et iusto beatae reprehenderit. Aut natus nihil qui dolores fugit hic neque.', '1', 19, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(2, 'Doloremque ducimus tempora accusantium voluptatem modi qui.', 'doloremque-ducimus-tempora-accusantium-voluptatem-modi-qui', 'Itaque consequatur iusto ab deleniti error veniam quam. Architecto laudantium repudiandae non sunt. Sunt aperiam est excepturi quod voluptatem. Quos magnam nisi dicta enim quod.', 'Ut pariatur culpa culpa qui commodi accusantium. Voluptates quidem quo veritatis quo. Pariatur excepturi maxime recusandae est. Et dolores quam quo voluptatem in sequi. Asperiores tempore corrupti voluptatem autem quia. Unde consequatur repellat maiores libero aut in vitae deserunt. Voluptatem odio voluptas consequuntur aliquam. Pariatur quibusdam eos temporibus fugiat voluptas quam labore. Aut necessitatibus qui iste quia dolorum. Non officiis quo hic sequi. Possimus non quo et voluptatem sed alias. Facere praesentium odit reprehenderit consequatur eos quisquam. Qui quos voluptatem illum corporis velit. Pariatur quia rerum ipsa aliquid. Dolorum rerum quos eveniet. Nemo possimus beatae esse dignissimos facere qui est. Omnis vel ipsa ipsa corporis nam et. Facilis debitis rerum aliquid mollitia cum consectetur. Voluptas sit ratione repellat quis ut facere porro. Molestias dolor nulla voluptatibus nulla. Quia ut adipisci sit id veniam placeat. Molestiae mollitia aut id occaecati placeat quis. Voluptatem sunt eum reiciendis. Et provident ut aut modi corrupti. Qui ea amet ratione maiores autem. Fugit aliquam quas amet fuga. Ipsum possimus laborum consequatur nihil ratione sed sunt est. Explicabo omnis non nisi sed quisquam. Et fuga id dignissimos amet dicta minima. Possimus suscipit rem vero ratione quasi eos sint fugit. Mollitia temporibus officia quam iusto non. Optio ipsum quaerat ea placeat id. Itaque eaque architecto odit culpa ut sit eos. Iusto veniam quia sunt rerum dolorem necessitatibus ut. Omnis distinctio dolorem illo debitis et perspiciatis. Doloremque alias at incidunt alias ut officiis est. Est quae impedit inventore qui autem corporis. Incidunt voluptas sint voluptatem fugiat rerum et ad. Quidem fuga dolorum ipsa. Enim officia voluptates minima sed. Ab consequuntur soluta sed nisi. Ipsum blanditiis recusandae veritatis maxime. Odio qui dolore minima est molestiae molestias.', '2', 12, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(3, 'Vel aut maiores velit quisquam totam ipsum.', 'vel-aut-maiores-velit-quisquam-totam-ipsum', 'Inventore aut rerum deserunt quia deleniti quis. Blanditiis ducimus fuga dolores alias autem. Et rerum quas vero cupiditate. Pariatur distinctio qui ea eum dolorem voluptatem minima. Odio eveniet velit qui rem aspernatur.', 'Voluptatum voluptatum ut eaque pariatur recusandae odio aliquam numquam. Velit quia impedit nihil accusantium laboriosam et. Maxime commodi quia corrupti modi soluta aliquid dicta. Voluptatem labore corporis voluptatem et. Voluptas ut optio autem amet nesciunt quasi saepe. Molestiae nam ratione perferendis cum. Magnam quae ducimus ut quas. Officia consequuntur quisquam eaque est. Ducimus est asperiores dolorem rerum qui. Nobis expedita placeat nam consequatur. Qui non voluptatem quia. Quos non cum voluptatibus vero. Sequi iure odit quia necessitatibus. Voluptatem est dolorem sed ullam perspiciatis ullam dolor. Iure natus sint rerum consequatur vel voluptate aut. Facilis qui sit et dolore. Ad ut eius accusantium minus architecto et. Delectus culpa accusantium et asperiores esse sunt recusandae facilis. Reprehenderit id consequuntur est quam assumenda. Iusto ullam sequi voluptatem provident sequi aut et. Voluptate quasi doloribus aut provident consequuntur voluptatem. Et possimus consequuntur architecto saepe ut officia. Quia similique ut qui ut veritatis sunt. Laboriosam placeat quo quia autem quidem. Aut amet repellendus expedita animi. Ratione libero aperiam et et dolores eos corporis. Ut qui et accusantium. Tempore quis quod eos. Repudiandae rem labore quis. Necessitatibus aut quis provident maiores ad voluptatem. Et perferendis quod cum nihil delectus. Maxime ut aut eius exercitationem. Fugit exercitationem rerum quia labore sit quae. Quis ullam vel eos asperiores beatae ut laboriosam. Et numquam optio vitae quae. Voluptatem fugiat odit doloremque. Et possimus voluptas pariatur maiores deleniti qui. Nisi officiis aperiam quae. Est cumque facilis aut eveniet tempore repellat officia provident. Odio eos deserunt dignissimos impedit nihil ex magni. Omnis voluptates cumque est iure minima debitis. Quam dolores atque quia excepturi aut.', '2', 4, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(4, 'In dolorem eaque optio ullam rerum ea amet.', 'in-dolorem-eaque-optio-ullam-rerum-ea-amet', 'Eligendi nisi incidunt alias. Nostrum at iste nihil in explicabo. Consequuntur placeat provident sed voluptatibus nemo molestias provident. Vero eveniet deleniti magni in fuga et fugiat.', 'Cum odio ipsa distinctio. Et officia animi animi rerum quidem enim est. Dolores doloremque fugiat nihil eveniet debitis et. Necessitatibus non animi officiis non ipsam est unde voluptatum. Dignissimos nihil consectetur nihil explicabo voluptates dolorem nesciunt beatae. Itaque laboriosam magnam beatae earum ab iste id doloremque. Et totam quia dolor. Eum tempora atque autem est veniam et suscipit maxime. Quasi odit omnis non saepe cupiditate vel. Corrupti vitae et fuga. Fugiat libero sequi quis ut voluptates neque. Nihil ea quas quas facere quo et nulla. Est aliquam totam similique voluptatum sed explicabo et. Amet eius sed dolorem blanditiis voluptates similique. Id adipisci ea quo vel ab. Provident dolore rerum voluptatibus fugit nostrum. A nesciunt magni ad est. Dolorem voluptatem et laborum et itaque. Nobis officia consequuntur temporibus eum nesciunt eos cum. A eum tenetur perspiciatis ut magni omnis ullam. Non accusantium odit eum et ducimus. Ut et non repellat ut dicta quis. Vitae suscipit et molestiae sint est. Quisquam dolorem officia impedit et quia sint blanditiis. Voluptatem id laborum at maiores possimus. Nobis repellendus omnis ut ut omnis. Hic aliquam id at similique laudantium sequi. Aut non et et amet ipsa sit saepe velit. Natus repellendus aut minus ex. Sit temporibus soluta repudiandae quisquam temporibus dignissimos mollitia. Ut nisi est temporibus omnis provident non. Veniam aut asperiores possimus sunt consequuntur totam voluptatem. Optio reiciendis ea qui fugiat laboriosam. Quae sunt est vero eum dicta eum. Quam rerum fugit earum vel temporibus. Sint consequatur sed labore quis quisquam qui. Mollitia est et voluptatum sit est optio. Enim aliquam vitae pariatur et amet temporibus modi qui. Omnis facilis aut molestiae voluptatibus. Necessitatibus sed eligendi et beatae maiores.', '2', 12, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(5, 'Est voluptatibus consectetur est illo.', 'est-voluptatibus-consectetur-est-illo', 'Commodi quia eaque natus. Voluptatem ea tempora eaque nihil. Placeat omnis dolore ut quaerat.', 'Alias natus dicta officia voluptatem quis ad consequuntur. Voluptatibus et aspernatur modi eos ad repellendus aut voluptas. Deleniti iure ex similique eos ut. Sunt aut ullam molestiae qui distinctio inventore. Velit recusandae occaecati velit a qui praesentium minus. Quia consequuntur quisquam commodi animi. Quaerat nam non consequuntur magni in aut labore. Cumque illo ut occaecati nihil nobis excepturi. Fugit beatae quod labore quaerat doloribus. Rerum accusantium consectetur et. Eos molestias rerum sunt voluptatem. Ut commodi ea non provident et repellendus. Tempora ut quasi aspernatur. Ratione officiis veritatis sunt est eos optio. Earum nisi ut modi. Laborum molestiae distinctio omnis porro. Optio dolor facere ipsam aliquid nostrum expedita. Explicabo ipsum rerum maiores itaque temporibus in. At omnis numquam porro dolor est. Illum magni et iusto quasi culpa quis molestiae facere. Quae dicta hic voluptatibus in explicabo cumque ut non. Voluptas rerum deleniti voluptatem placeat laborum unde recusandae. Repellendus omnis rerum expedita consequatur dolorum beatae magni. Quasi quae a culpa sed tempore consequatur non. Ea perferendis quas soluta vitae. Reprehenderit et qui corrupti et quas commodi. Voluptatem reiciendis sit sit vel modi voluptatibus possimus. Qui necessitatibus neque eos. Saepe et fugiat illum nam. Recusandae similique saepe et voluptatum nobis nemo. Debitis voluptates aut officiis itaque qui veritatis voluptatem. Amet est occaecati et. Quia est voluptas earum pariatur voluptatem voluptatem ipsam. Aut et voluptas recusandae et impedit illo qui. Perspiciatis et odio repudiandae nihil corrupti porro. Et natus sed fugit aut dignissimos deleniti et. Qui blanditiis nesciunt ipsam omnis adipisci nulla quia. Consequuntur corporis modi cum non qui. Et ut consequatur rerum occaecati incidunt. Maxime est et ab nemo voluptatibus.', '1', 14, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(6, 'Et corrupti minus voluptate rerum nihil quasi.', 'et-corrupti-minus-voluptate-rerum-nihil-quasi', 'Ratione quis ut repellat voluptas qui ipsum. Et ratione quia culpa praesentium rerum quos et vero. Odit et quas sit cupiditate iste. Et rerum et debitis deleniti vitae neque beatae.', 'Fuga omnis voluptas voluptatum at similique. Explicabo consequatur eveniet dolor. Quidem qui error at et. Reiciendis earum fuga minima facere dolores. Odit quia veritatis similique dignissimos excepturi eum. Et aut provident repellendus amet impedit est nulla. Aliquam pariatur aspernatur ut dolore laudantium perspiciatis et. Autem et odio sunt laudantium sint voluptas fugit. Mollitia iste doloremque hic quia voluptas distinctio libero nostrum. Laboriosam nostrum porro minima quia dolore rem consequatur est. Esse odio aspernatur dolor non. Enim atque nulla aut modi veritatis. Itaque aut culpa tempore aut tempora. Et nobis numquam temporibus eius asperiores qui totam. Repellendus sit qui voluptas vitae veritatis et. Quisquam aut animi pariatur et aut nihil omnis. Quasi iusto libero porro ut. Provident labore aut et facere nulla. Ipsum maxime eveniet voluptatem aut perferendis alias. Rerum rerum repudiandae voluptatibus in rem qui. Asperiores eos sunt et eveniet ut eum. Quasi sed qui iste porro. Voluptate ea amet qui eveniet consequatur. Perferendis consequatur eos in corporis. Quia quia et suscipit voluptatibus impedit repudiandae. Cupiditate totam labore aspernatur animi enim fugiat. Similique blanditiis fugiat harum velit qui et. Officia dolor vel delectus est molestias officia ipsam cupiditate. Ab culpa neque sit ex. Soluta incidunt error quia ut perspiciatis. Nobis molestiae explicabo incidunt eos placeat repudiandae quo. Nihil dolores quae suscipit labore expedita. Voluptatem vitae ut veniam cumque voluptas. Magni omnis deleniti reiciendis consequatur temporibus. Similique qui iure unde sunt. Cumque ex ut hic consectetur consequatur et. Nobis dolorem et magni voluptatem optio. Quia ipsam quam consequatur omnis non vel. Sapiente ipsam quod non dolores eum mollitia perspiciatis. Ut labore ipsa sapiente est. Enim sint eos error alias. Minima est qui recusandae at doloremque fugit eos.', '1', 34, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(7, 'Et asperiores dolor ipsam quia deleniti sequi.', 'et-asperiores-dolor-ipsam-quia-deleniti-sequi', 'Amet vel ut et quidem sed non. Iure modi accusantium et consequatur consequatur. Beatae dolores dicta nulla.', 'Quas praesentium perspiciatis rerum ut tenetur similique et. Molestiae ullam sit corrupti quidem. Consectetur quo numquam nemo et assumenda placeat. Dignissimos dicta repellendus minima a. Repellat eum voluptatum quas aliquam. Ut sit recusandae hic rerum provident et. Perferendis rerum iusto eum voluptate tenetur natus consequatur voluptatum. Molestiae perferendis modi repellendus suscipit. Rerum incidunt similique consequatur expedita atque omnis dignissimos sint. Quis labore ipsum necessitatibus temporibus possimus et dolor perferendis. Voluptatem voluptate quam distinctio. Minus culpa autem qui accusantium amet sapiente asperiores velit. Facere similique qui ducimus ut ut repellendus modi omnis. Sunt id dolorem aspernatur reiciendis voluptas possimus assumenda laudantium. Nemo est quo et aut velit pariatur. Magni quis in esse aut. Veniam error odit quidem. Eos deleniti consequuntur aut exercitationem voluptatem tempore et rerum. Ut vel pariatur quia quis voluptatem. Rerum eum ducimus eum id. Libero sed soluta eveniet est dicta. Aut est rerum in. Totam voluptatem et omnis quia et non et. Expedita saepe id est id omnis modi. Quidem aperiam autem eum dolor eaque laboriosam molestias. Laborum voluptates ut totam autem id aut fugit. Optio provident qui sapiente voluptatum nihil magnam. Delectus soluta unde sint. Minus labore est voluptatem ut architecto quos. Vero fugiat alias eum voluptatum. Quas culpa qui adipisci accusamus veritatis. Consequatur praesentium libero natus quaerat. Deserunt iste consequuntur officia. Dolore officia eum omnis officia blanditiis aut voluptatibus animi. Perferendis aliquam doloremque et beatae sed quia. Libero sit quis ratione qui aut sed omnis. Et nihil eius ad aut assumenda. Amet itaque in in maiores laborum ex.', '1', 40, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(8, 'Delectus et expedita eum ratione iste odio.', 'delectus-et-expedita-eum-ratione-iste-odio', 'Numquam dolor et et esse voluptas facilis. Dolor error eos assumenda numquam illum nisi ut. Optio velit voluptate magnam autem provident.', 'Et et et iusto quasi voluptas. Consequuntur laboriosam magnam molestiae occaecati ut fugit beatae. Sit omnis cupiditate cum unde sequi veritatis. Facilis ex esse blanditiis est voluptate. Dolore laboriosam ab neque eos nemo. Hic maiores consequatur minima qui enim libero numquam. Commodi ullam optio ut optio dolor ducimus incidunt. Enim fugit ratione aut id minus. Voluptatem ratione est molestias quia assumenda assumenda omnis velit. Odio ipsam sit et et consectetur. Aperiam ea omnis quod et culpa. Ea aliquid iste commodi a omnis sit. Quam atque dolorem commodi et eveniet et ut. Quidem delectus debitis et. Quas non ut ut commodi. Quasi quia quaerat enim neque voluptatum est aut. Error perspiciatis quasi id sunt. Error repellat optio et labore asperiores. Distinctio voluptatem ut praesentium culpa ut et. Beatae nesciunt aut molestiae explicabo quas excepturi. Eaque aut quaerat qui id nesciunt ut. Officiis itaque harum facilis enim pariatur. Possimus minus repellendus sed eius veniam repellat. Voluptatem architecto placeat qui cupiditate qui. Saepe dignissimos magnam quibusdam similique ratione. Officiis facilis aut quo sapiente quo dolores voluptatum. Hic quia ab voluptatem. Consequatur eligendi voluptate placeat incidunt dolores culpa quidem. Qui molestiae voluptatibus quos quae deleniti dolor. Iusto accusantium nisi est numquam. Dolores nulla tempore quia in consectetur. Vel molestiae commodi qui optio voluptates eum. Sint nam omnis reprehenderit dignissimos blanditiis. Sit non vel quia. Eveniet aut dolorum rem nostrum. Dicta neque nesciunt fuga sed dicta ducimus. Vero quod et qui non et incidunt commodi. Illum aut quia atque autem sit voluptatibus blanditiis. Sed omnis saepe unde et voluptas aperiam velit sed. Harum est non et a qui. Id nesciunt rerum et quo ut sed qui. Facere illum voluptas a velit consequuntur deleniti assumenda. Deleniti et asperiores debitis qui voluptates. Quo nam id in.', '1', 28, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(9, 'Architecto molestias a rerum magnam.', 'architecto-molestias-a-rerum-magnam', 'Quis velit fugit ea est. Ipsum voluptatem facilis quo accusamus ea enim. Dolorem vel architecto ex rerum quis. Autem est reprehenderit nisi maiores molestiae velit quis quis.', 'Quia ratione recusandae tempore odit earum qui autem. Et sed ullam incidunt at id eius. Rerum ea placeat autem libero delectus. Qui possimus quibusdam omnis quasi aperiam autem. Quo tempora earum laboriosam ut consectetur amet ea. Quos inventore sed consequuntur. Eaque ipsum quia quis ut totam omnis rerum. Sunt porro iusto eos molestiae libero. Laborum in at voluptas natus consectetur. Quidem eum porro nam odit alias. Nemo consequatur nesciunt error. Est architecto dolores sed qui officia maxime. Autem quo itaque officiis atque autem et sit. Fugit et voluptatem et quo excepturi ea. Occaecati voluptatum quia magnam facilis laborum rerum eum sit. Aliquid ut ut numquam eveniet veritatis aut quis. Ut ut saepe ratione corrupti. Quod magni ut debitis quis odit. Et reiciendis blanditiis nihil sunt iste quod ratione aperiam. Voluptates non veniam voluptas quod et est dolore. Reiciendis aut itaque qui velit rem eveniet sed placeat. Dolorem aut ut quaerat qui sunt. Eaque sed qui iure beatae ducimus. Libero voluptatem tempore molestias nisi fugiat eum. Non sit ea velit mollitia ut. Labore cum harum natus enim. Qui qui earum fugit itaque impedit similique provident. Dolore debitis quae distinctio sed quia libero rerum recusandae. Provident aliquid mollitia aliquam fugit eum sunt laborum. Maiores nihil aut optio. Provident eligendi a et aut. Quisquam excepturi non ut dolorum veniam doloremque voluptatem. Nulla ut similique tempore corrupti. In necessitatibus accusamus excepturi occaecati. At dolor a amet magni. Aperiam et aut totam exercitationem deserunt. Fugit ratione est qui officiis commodi. Ea maxime eaque molestias recusandae vel. Dignissimos in pariatur corporis ducimus. Molestiae porro voluptas ea doloribus iste magni enim. Reiciendis cupiditate consequatur quis sit eos iste beatae. Sint quos tempora quidem quasi. Sit laborum sed expedita voluptatem.', '2', 6, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(10, 'Nihil non ipsam autem possimus est.', 'nihil-non-ipsam-autem-possimus-est', 'Exercitationem reprehenderit fugiat ea consequatur. Quisquam animi veritatis quo dolore at suscipit laborum. Vel impedit dignissimos facilis. Sunt tempora beatae ut.', 'Unde voluptatem rem impedit eligendi maiores vero quibusdam. Neque dolorem perspiciatis non ut sit non. Eum qui sunt possimus sed numquam. Mollitia vitae qui voluptatem suscipit ullam. Aut aspernatur nobis iusto ex unde ut et officiis. Sunt itaque tenetur doloribus possimus ad velit. Aut quis et voluptas odio totam voluptatem dolorem voluptatum. Autem fugiat odio aliquid beatae alias sunt quibusdam. Et voluptatem explicabo ut sint dolorem. Non impedit eligendi ratione et explicabo rerum laboriosam. Hic ea ut qui voluptatem. Sed quo velit odit. Repellendus et sit rerum. Est non optio porro iure repellendus iure. Sed eos sequi sit minus id. Expedita tempore in eos earum ea deserunt voluptatem. Ratione autem accusantium est quia nostrum incidunt cumque. Et qui dolor iure sint. Est est quo vel. Officiis ea deserunt et et ad nisi. Perferendis voluptatem sint corrupti possimus vel eius et non. Quas ab cupiditate fugiat. Voluptatem fugiat voluptatem rem repellat. Non labore tempora magni quaerat aut. Temporibus amet labore quos eum ratione iure. Consequatur ipsam voluptate tenetur eos ea velit. Non accusamus rem eligendi vel dolorum cupiditate. Temporibus est aspernatur et totam aut recusandae quas. Omnis provident ut quidem id possimus ipsum. Quasi asperiores porro autem aspernatur quaerat. Est architecto odit sint voluptatum magnam earum sit consequatur. Possimus fuga atque quia et molestiae at. Non commodi quam dignissimos et. Dolorem veritatis aut sunt et ducimus voluptatem voluptas. Hic qui qui omnis quaerat possimus qui iusto. Alias voluptas excepturi ratione. Et consequatur ea ipsum et. Consequatur qui quo dicta voluptatibus in. Sequi quis voluptatem rerum ipsum explicabo sit alias. Et voluptas autem accusamus in occaecati aliquam. Temporibus nemo nihil dolorum rerum id. Laudantium quos in ea harum. Quia natus hic eius ut.', '2', 28, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(11, 'Et itaque eveniet ut explicabo.', 'et-itaque-eveniet-ut-explicabo', 'Nostrum aperiam minima officia repellat sed ut in. Quia nesciunt voluptas velit recusandae fugiat et. Qui delectus qui officia asperiores totam. Eos natus qui quia officia totam provident.', 'Sed distinctio et tenetur reiciendis quaerat. Sit quia nihil officiis ullam aut. Exercitationem ea et et nihil sed. Libero unde placeat amet eius cumque. In aut reiciendis et nostrum possimus magni. Tenetur non et ratione soluta dignissimos repellat id. Provident ipsum inventore saepe qui voluptatem totam ut asperiores. Nesciunt nisi est ut qui sunt possimus ducimus magnam. Eos repellat earum natus cumque. Voluptate consequatur sit eos ad dolor quia enim vero. Qui ea recusandae optio est unde. Unde repudiandae delectus hic cum dolor nisi ea dolorem. Totam officia amet ea. Deserunt magnam qui consequuntur. Libero est et iusto quia voluptatibus non tempore. Nisi blanditiis dolorem unde sit sed dolor est. Necessitatibus ea dolor commodi nulla est eius voluptatem. Dolorum rerum non enim harum et dolores perspiciatis. Cumque excepturi veritatis quasi ea. Suscipit odio vel perferendis odit quo. Qui provident ipsam commodi. Qui et nihil sequi veniam. Ut et earum atque quia repellendus deserunt quam quo. Quo maxime praesentium omnis dolore. Nulla libero amet amet eum labore aut aut dolores. Eligendi consequuntur ea eum veritatis nemo minus perspiciatis. Earum enim quia et sit odio saepe rem. Itaque ut doloribus nostrum distinctio qui harum perspiciatis. Amet est libero est consequatur. Commodi ut eum veniam voluptas assumenda. Aut rerum maxime velit est repellendus blanditiis excepturi quod. Sint deserunt consequatur recusandae maiores ipsum omnis dolorem et. Qui architecto minus eius. Aliquam aut inventore asperiores quasi doloremque suscipit. Perferendis in expedita facere cupiditate asperiores consequuntur aut. Placeat rerum sit repellat rerum quos rerum. Consequatur deleniti facilis est praesentium ab ut odio. Quas a inventore molestiae rem exercitationem. Laboriosam voluptatem repellat qui voluptatem. Nisi magnam rerum sed. Voluptatem repudiandae nobis quo reiciendis ducimus ea. Iusto reiciendis atque et totam assumenda.', '1', 48, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(12, 'Veniam optio at dolores voluptatem saepe sapiente.', 'veniam-optio-at-dolores-voluptatem-saepe-sapiente', 'Rerum sit ad quis consequatur ullam culpa qui. Omnis ut totam in quisquam et eos voluptate. Accusamus ea vitae dolor accusantium.', 'Unde explicabo ducimus doloribus et earum repellat reiciendis dolorem. Est est iste quidem quis rerum repudiandae qui. Non placeat nemo assumenda atque optio ut laudantium. Voluptate nihil accusantium dolores tenetur numquam. Debitis voluptatem itaque rem voluptatibus mollitia esse. Qui cumque et voluptate amet. Quia a ut nihil. Modi dolores voluptatum tempore voluptatem atque laudantium quam et. Illum minus perspiciatis unde totam voluptatibus alias ducimus. Possimus saepe quas sit deserunt est. Adipisci aut nihil ipsam est qui quaerat. Aliquam tenetur delectus commodi doloribus. Rerum sint fugit eaque veniam saepe tempore nulla aut. Nobis ut debitis ut eos veritatis. Earum quidem tempore magnam corrupti. Error eligendi maiores nisi totam qui. Ratione aut soluta accusamus ullam omnis odit magni porro. Nihil sit dolor rerum voluptatem laborum omnis qui. Fugiat delectus voluptatem nam voluptas sint suscipit quae provident. Odit vel magni porro voluptates. Placeat facere natus ex maxime suscipit enim. Ducimus voluptatibus maiores nesciunt atque enim est officia. Voluptas voluptatem maiores molestiae tenetur. Consectetur consequatur eveniet quaerat. Est ab quo qui molestias assumenda sit. Sint cum hic aut. Dolorum illum aliquid id animi ea et incidunt. Similique esse illum sed repellendus nostrum. Similique quidem voluptas fugiat architecto. At ipsum atque dolore nihil nisi esse pariatur et. Non sunt qui laudantium numquam sunt. Recusandae esse et et voluptas quis cumque. Est est voluptas doloribus qui et dolores consequatur aut. Non laboriosam labore harum vitae quae expedita accusamus. Voluptatum fugiat ullam quis rerum eius ullam nihil. Aut sunt sequi magni beatae. Consequuntur voluptates quaerat et magni eos ut. Enim et autem soluta et amet debitis perspiciatis eveniet. Sunt odit distinctio facilis magnam officia et sit. Dolor ad blanditiis sint. Qui voluptates at velit quia ut sed sed fugiat. Quae qui saepe odit voluptates molestiae dolore.', '2', 20, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(13, 'Saepe impedit quas consequatur iure accusantium.', 'saepe-impedit-quas-consequatur-iure-accusantium', 'Odio nisi dolores magni modi ipsum. Nostrum magni nisi sequi perferendis eos. Hic iusto sed blanditiis odit in commodi.', 'Et odit assumenda et non modi non quia. At quisquam deleniti earum enim dolores quia. Maiores quis neque nihil et. Sit similique quia eveniet vel delectus nihil. Voluptatem laboriosam dolor voluptas molestias dignissimos. Ipsam omnis rerum soluta nobis. Asperiores non est voluptatibus placeat voluptates ratione. Laborum modi magnam ullam id corporis omnis. Consequatur rerum est velit eligendi. Voluptatem rerum maiores ab dignissimos et sunt vel ducimus. Voluptas atque omnis eos autem similique quae. Dolorem enim et nemo dicta. Pariatur nobis distinctio quam distinctio. Sunt et qui sit voluptatem corporis. Maiores et eveniet voluptatem rem quidem necessitatibus. Fugiat officia quo consequatur in aperiam culpa. Omnis aut veritatis error voluptatum corporis deleniti deleniti. Perferendis exercitationem adipisci magni distinctio illo blanditiis. Illo rerum ipsam omnis asperiores velit. Voluptatibus commodi aut nobis qui placeat vero placeat. Qui voluptas voluptatibus voluptas corporis facere. Magnam illo dolorem perferendis perferendis perferendis. Labore sed sit est tempore. Voluptatum ut officiis natus libero. Ad sint quidem omnis. Excepturi quia vitae fuga architecto labore. Minus placeat nihil quae tempora quaerat. Rerum tempore vel sunt. Qui eum sapiente labore esse. Eos omnis rerum et dolorum. Nam nisi saepe facilis. Adipisci quidem ut debitis facilis voluptatum. Sequi fuga rerum at. Laudantium sint rerum velit iste beatae. Beatae officia deleniti autem ut est sit quia iste. Quidem est cumque vitae. Quia quidem consequuntur sint dolor ullam. Illo aliquid similique autem inventore vel. Quis dolore rerum culpa aut aut odit maxime id. Qui voluptates tenetur qui deserunt. Tenetur dicta dolor et amet consequatur maxime omnis. Aut itaque sed et dignissimos dolore animi doloremque. Accusamus ipsum adipisci dolores doloremque. Quia fugiat doloribus veritatis. In illo quas veritatis voluptatem. Nihil ex aperiam excepturi non voluptatibus.', '2', 42, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(14, 'Veniam praesentium inventore necessitatibus consequatur.', 'veniam-praesentium-inventore-necessitatibus-consequatur', 'Eveniet laborum et iusto et. Similique ex eos et suscipit assumenda quidem in. Labore dolorem ut est aut ut fuga officiis. Consequuntur nostrum alias nihil omnis.', 'Error et distinctio dolor culpa quia minima sint ipsam. Velit consequuntur est earum doloribus. Labore debitis aliquam est natus saepe provident. Ut porro magni laboriosam sit non similique. Eveniet qui omnis accusantium quos. Velit voluptatem expedita sapiente praesentium velit. Pariatur harum aut sapiente eum esse modi aspernatur. Sit perspiciatis quae modi voluptatum. Delectus dolorem sapiente sint qui. Necessitatibus est eum accusamus dolorem qui repudiandae quia. Rerum consectetur qui eveniet qui est voluptatem. Quam sapiente facilis illum. Aperiam est blanditiis soluta fuga suscipit. Ullam quaerat ut ducimus id voluptas qui esse. Nisi dolores vero suscipit. Nihil nam aut occaecati id et. Totam consequatur omnis sapiente aut. Dolorum itaque expedita vel porro velit ut ducimus. Sed rerum sit est. Corporis qui sed fuga itaque. Quidem nihil distinctio perferendis. Nesciunt qui et quidem a est laboriosam recusandae. Ad tempora quis dolorum dolorum quia. Sequi ex sed repellat et ab. Aspernatur maxime id at aut iusto alias ratione. Amet ut et voluptas laboriosam voluptatum autem assumenda. Ipsum ipsa natus molestiae maiores animi qui perspiciatis corporis. Nostrum perspiciatis tempore magnam. Voluptatum tempore et cupiditate harum maiores ea. Odit quae quia tenetur harum cumque. Tempore animi illum voluptatem. Soluta aut dolore facere velit rem. Eum est omnis id sit odio libero omnis. Delectus quos omnis vitae voluptas laborum. Laudantium hic laboriosam eius incidunt aut nesciunt. Minus suscipit doloremque magnam in optio. Cum eaque ut corporis commodi amet repudiandae delectus. Consequatur voluptatem illum veritatis at voluptatem vitae sed vitae. Ut iure esse optio omnis sequi vel. Repellendus cupiditate temporibus eius voluptates. Necessitatibus dicta quod ad accusantium consectetur similique delectus non.', '1', 6, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(15, 'Non porro dolorem asperiores.', 'non-porro-dolorem-asperiores', 'Corporis nemo eos illo. Soluta nobis itaque architecto numquam assumenda dolor. Veritatis eos accusantium perspiciatis ipsam atque amet. Est quam animi nihil nobis.', 'Sunt expedita voluptatem sed nesciunt quia dicta at. Qui excepturi rerum nostrum. Aspernatur ea voluptatum facilis voluptatem ea. Maiores excepturi soluta impedit pariatur fugiat. Sint numquam soluta facere veritatis repellat perspiciatis saepe. Quisquam rem in nisi nesciunt. Magni sint ipsum voluptas. Accusamus doloribus minus consequatur fuga in natus. Quisquam qui repellat rerum magnam aliquid. Velit consectetur vitae cupiditate ut suscipit ut occaecati. Nisi aliquid et consequatur ut quibusdam corrupti commodi. Quasi voluptas neque labore. Officiis odit officia placeat veritatis in. Explicabo autem ut sint nostrum asperiores. Quo voluptatem magnam atque dolor ut. Debitis officia eum totam quam suscipit non. Amet cum eaque error enim ex ut magnam. Nisi pariatur voluptatem quis amet placeat quia odio. Saepe debitis culpa enim nam velit. Veritatis architecto consequatur voluptas quam. Quidem delectus veniam odit perferendis. Amet doloribus quia earum quis. Adipisci libero commodi odio sit exercitationem. Dolorem exercitationem aut sed nam ut velit aliquid impedit. Aliquid rerum praesentium officia occaecati omnis quo. Quas dolor est quia sed. Perferendis perspiciatis nemo repudiandae porro rerum libero sit. Praesentium corrupti qui consectetur ea iure aliquid quae sapiente. Eius aut quae ut qui fugiat doloribus. Recusandae et optio molestiae animi qui deserunt. Amet molestiae saepe nulla ea. Eos aspernatur recusandae incidunt minima fugit earum. Ea adipisci ducimus dolor minus neque asperiores delectus. Enim et ratione quisquam autem et error quidem. Autem est dignissimos tenetur necessitatibus quaerat. Ullam eum dolorem eaque maxime voluptatem. Nam ea deleniti est. Delectus reiciendis facilis nisi officiis et. Molestiae eligendi voluptate ipsa voluptatem expedita. Nulla optio nobis est. Et quaerat quia nemo sit impedit. Sed nisi harum quia nesciunt ipsam aliquam ut.', '2', 32, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(16, 'Officia repellendus quasi error enim sed.', 'officia-repellendus-quasi-error-enim-sed', 'Quam excepturi est impedit accusantium quia quis sed. Aliquid officia est amet voluptates rem. Quam harum dicta sapiente optio libero. Veniam ratione modi aliquid debitis vitae. Culpa est saepe labore saepe.', 'Iusto sit ut illo voluptatem qui molestiae et. Excepturi fugit minima quo enim est debitis. Modi beatae est cumque facere vero. Impedit eius et eos consequuntur totam dolores provident. Repellat quasi et aliquid. Repudiandae consequatur ut aut praesentium repellendus ut voluptas. Esse quo eligendi eligendi culpa. Iusto voluptatem ea est repellendus. Ea quis et et omnis. Aperiam voluptatem a facere corrupti. Dolore ex quibusdam aut dignissimos voluptate expedita officiis fugit. Ex tempora officia quis. Consequuntur ea voluptatum est dolores laborum et aut molestias. Ea eos laboriosam qui voluptatem necessitatibus suscipit ratione. Occaecati et dolores non dolor deserunt reprehenderit. Voluptatem at alias voluptate. Vero excepturi neque eius eum explicabo. Distinctio eligendi veritatis quis unde ipsam. Ut saepe dolores placeat odit aut. Totam dignissimos aliquid sequi quae hic. Animi quibusdam inventore voluptate quam dolorum numquam iste. Sit velit qui et facere. Autem nemo magni ea vero eaque ipsa. Beatae deserunt ut quisquam sed. Necessitatibus ut dolore explicabo vero beatae. Consequatur harum sit eos reiciendis repellendus aut. Rerum nemo sequi modi nihil veniam sed sit aut. Non impedit doloribus at quis. Voluptatem dolore delectus et quisquam sed illum aspernatur. Harum voluptas quia et enim expedita. Quam tempore voluptatem temporibus reiciendis aut. Quo ut suscipit aut quia explicabo ipsa. Possimus et beatae ex illum dolorem ut voluptatem. Omnis ut commodi veniam. Voluptatem temporibus aliquam tenetur officia tempore. Quidem quia velit minima aut voluptas. Vel molestias vel voluptatem neque dolorum. Dolorem non mollitia excepturi non. Libero et incidunt possimus quos dolores provident suscipit ea. Et aliquam ut quis eum ut ullam. At aut velit veniam dicta aut praesentium dignissimos. Eaque magni facilis iure beatae enim sapiente. Hic pariatur rerum quam ipsum beatae sit.', '2', 34, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(17, 'Quaerat delectus aut accusamus quae pariatur fuga.', 'quaerat-delectus-aut-accusamus-quae-pariatur-fuga', 'Cum velit velit ipsa alias reprehenderit consequatur fugit. Nostrum facere tempora nesciunt. Error ex necessitatibus harum est sit.', 'Quia aliquid qui mollitia. Est vitae sapiente reiciendis sequi consectetur. Aut quam asperiores repellat quia. Ratione aliquid unde adipisci non. Laborum quasi dicta et rerum fugiat. Itaque voluptas quis velit nulla. Facilis dolorum quis sed error ad velit a. Deserunt eos sed temporibus est id nihil. Amet sequi amet consequatur omnis aut maxime error. Dolores dolorum fugiat ut magni sit deleniti. Modi quisquam aliquid non inventore non. Dolores id natus deleniti aut perspiciatis sint excepturi. Magni neque iusto et qui odio velit omnis. Est nesciunt sed optio ut dolores consequatur odit. Repellendus nisi voluptas in et sed. Quia voluptas aut ut accusantium consequatur. Necessitatibus reiciendis optio deleniti sequi enim. Ipsum quasi minima asperiores possimus porro. Veniam ex quos deserunt magnam possimus hic commodi nihil. Enim architecto explicabo id qui deserunt velit eos. Commodi accusamus aut quos provident. Possimus omnis aut quia et voluptatem. Aliquam voluptatibus dolores est iusto ipsum porro cum. Eveniet deleniti quia consequatur in amet ab voluptas. Et culpa voluptatum ducimus eos nobis doloribus at. Amet sint nihil repellat praesentium tempore dolores temporibus. Quaerat ut id non fugit enim enim. Dolor reiciendis eveniet temporibus fugiat necessitatibus voluptatem dolor. Voluptatem aut ea dolor ut et. Maiores asperiores ipsum at ut quaerat qui omnis. Aperiam et voluptatem aliquid sed aut doloribus. Officia vel facilis cumque nesciunt deserunt maiores ratione. Aliquam quae eum optio doloremque commodi. Sed et ex et quis rerum. Et libero ex qui ut nemo iusto nihil. Ut deserunt dignissimos velit placeat aut dolores eligendi. Fuga doloribus repellendus laborum omnis. Nobis nihil accusamus itaque non. Omnis eos corporis enim natus rerum deleniti eos. Sequi repellat asperiores incidunt nisi voluptatem. Ea consectetur quod quaerat minima non voluptatibus sed.', '2', 8, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(18, 'Sed enim voluptates qui quod earum.', 'sed-enim-voluptates-qui-quod-earum', 'Dicta similique saepe accusantium voluptatem facilis quia ut animi. Ex quaerat et et provident vel dolores.', 'Temporibus delectus ea repellendus omnis modi. Consequatur voluptas hic ut est quibusdam voluptatem error. Rerum nihil fugit atque autem corrupti enim aspernatur. In assumenda quo qui molestias nihil adipisci vero. Quia incidunt cumque officia esse voluptatibus consectetur quia voluptatum. Reiciendis voluptas dolor quis itaque sed corrupti at. Doloribus vel nihil et. Et quia veniam qui. Vel nihil deleniti et qui. Sint itaque iure iusto autem magni distinctio nisi. Sit deleniti voluptas temporibus et soluta veniam commodi. Cum quasi est iure est. Quis aliquid ratione a nesciunt commodi sint. Voluptatibus iure hic illo rerum et. Sequi commodi consequatur facere est molestias. Non excepturi eum ut illo. Maiores laborum sed fugit rerum omnis voluptatem possimus. Est quam repellat odit nemo aliquam temporibus. Minima omnis eaque quae similique aut consequatur. Nostrum maiores suscipit praesentium. Fugit dolores quia quod aliquam praesentium eos odit. Doloremque voluptatem sint numquam ipsa esse voluptate. Totam suscipit vel error. Doloremque non in distinctio. Eum iure fugit sit distinctio. Minus commodi sint enim aut tempore ut eius rem. Facilis sunt ea asperiores doloremque perferendis recusandae. Necessitatibus quia ex ullam maiores et eligendi qui a. Autem aliquid est minus qui ab quis veritatis nihil. Officiis modi eius suscipit molestiae aut occaecati sunt. Doloremque et dolores dolores et et. Suscipit voluptatem optio aut pariatur ut aliquid. Sit dignissimos facere quis enim. Dolor repudiandae et vel quo iure. Nemo distinctio iure quaerat ut. Non rerum similique et quae modi. Et voluptatem non natus est necessitatibus. Itaque magnam minima quia qui repellendus. Cumque quo consequuntur suscipit animi. Accusamus sed et fuga ducimus atque nam ea in. Laudantium voluptatem facilis occaecati. Eum ut perspiciatis voluptas laudantium vel voluptatem. Ut molestiae debitis temporibus odio excepturi aliquam. Libero itaque ullam id aliquam dolores.', '2', 2, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(19, 'Non quia dolor et reiciendis aliquid laboriosam sed.', 'non-quia-dolor-et-reiciendis-aliquid-laboriosam-sed', 'Ipsa ratione temporibus natus consequuntur. Dolor accusantium est quas et cumque nemo. Tempora culpa unde minus dolores autem vel.', 'Qui quo et eveniet illo consequatur quia eos. Maxime quia fugit veritatis dolorum voluptatem neque est consectetur. Vero voluptatem fugiat nam explicabo a ut rerum. Sed alias officia quasi vero. Fugit sit molestiae ipsam ut ipsa nulla. Ipsam ipsam harum a. Magni voluptas delectus quam architecto. Id commodi totam earum dicta a sequi aut autem. Quibusdam voluptas sed sapiente consequatur quia culpa sed. Qui quia officia nobis asperiores. Aperiam dignissimos totam deserunt ut aut ea in. Est asperiores cupiditate in earum similique sed. Dolorum et enim voluptatum dolorem repellendus dolor. Est omnis molestias voluptas similique enim. Quisquam est minima esse enim laborum temporibus id est. Excepturi corporis libero fugit vitae maiores consequatur. Ad et ratione delectus eligendi. Corrupti numquam accusantium quis reprehenderit tempora aut commodi. Enim quibusdam saepe inventore rerum magnam recusandae. Quia recusandae excepturi quis quia. Ratione aperiam est vitae laboriosam. Quae autem rem et doloremque rerum ut dolores qui. Magnam non unde voluptatum perspiciatis at. Amet atque excepturi saepe sit iure veritatis. Praesentium qui dolorem nihil ut laborum quis. Voluptatibus quis autem dolorum in. Ex fugit numquam repellat sequi iure dolorum explicabo. Non dolores nisi debitis ipsa optio expedita. Ipsa qui perspiciatis maxime eum quia. Autem vel nostrum id in. Laborum possimus impedit praesentium voluptatem assumenda cum. Unde ipsa modi sed labore excepturi. Nemo qui debitis dolores laborum est consectetur. Voluptas ipsam hic molestias odit soluta. Dolor minima blanditiis ducimus laborum alias. Et eaque ut perspiciatis dolorum. Fuga voluptas eveniet ipsa magnam. Fugiat veritatis soluta excepturi nihil enim. Nam quis repudiandae consequatur optio qui illo aliquam quod. Dolore aut et nostrum nobis dolores est. Asperiores et tempora dolores aperiam tenetur. Sit est eos amet debitis magnam doloremque ipsam. Laborum aperiam dicta eligendi autem est.', '1', 10, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(20, 'Nisi minima suscipit quis qui mollitia aperiam.', 'nisi-minima-suscipit-quis-qui-mollitia-aperiam', 'Natus voluptas dolores minima sit sed labore aut. Et reiciendis aut magni ex. Dolor optio et ducimus repellendus. Aut labore explicabo corporis qui. Voluptas corporis excepturi quidem voluptatibus. Nihil occaecati tempore et.', 'Molestias nesciunt reiciendis qui ut. Similique ut nisi earum maiores accusamus. Est aut est esse at commodi. Recusandae consectetur explicabo ipsam optio ut illo eum. Vel aut fugit autem eum consequatur autem. Est facere illum omnis aliquam cumque natus laudantium. Harum qui libero id perspiciatis. Consectetur id saepe repellendus exercitationem doloribus voluptas consequatur. Voluptatem modi reiciendis iste aut illo. Quo non reprehenderit a veritatis voluptatibus. Vel aut ab quaerat et omnis molestiae. Debitis error sit ipsa tempore sit voluptas. Reprehenderit unde asperiores dolor. Ipsum magnam quae neque. Natus quae animi animi unde et distinctio fuga. Dolores et amet facere repudiandae minima. Vero quibusdam ut pariatur omnis deleniti temporibus minima. Maxime voluptas ea consectetur exercitationem maiores officiis veniam rerum. Ut ratione earum corrupti harum vitae. Sint aut iste et ad. Excepturi in et dolorum et occaecati rerum aperiam hic. Deserunt error ipsam dolores. Nihil quam explicabo quasi maiores. Vero perferendis qui quia sed itaque fugit. Laudantium omnis asperiores eum aut sint. Iste ea et ea et totam ut vero. Ducimus in pariatur eius odio. Et aut temporibus error tempore assumenda tenetur est nam. Corrupti sit eveniet et delectus. Voluptatem voluptates dolorem fugiat. Vel cupiditate nobis amet a id. Maxime aut nihil necessitatibus voluptatem omnis. Quo ut in qui enim omnis culpa officia. Molestiae nihil impedit veniam ut sapiente occaecati veritatis. Consequatur rem unde omnis voluptatem et quia qui. Eum recusandae fuga nostrum atque ullam quasi. Aut aut voluptates nesciunt dolore totam similique. Voluptas corporis expedita eos consectetur. Et aperiam soluta vitae et assumenda. Tenetur consequuntur voluptates totam nostrum. Distinctio qui suscipit ipsa nulla quis atque et. Quidem alias itaque quo officiis cupiditate. Consequatur itaque aspernatur molestiae omnis iste cumque.', '1', 1, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(21, 'Iusto molestiae omnis et reiciendis molestiae necessitatibus.', 'iusto-molestiae-omnis-et-reiciendis-molestiae-necessitatibus', 'Distinctio suscipit aspernatur eius error. Omnis corporis et sint beatae sint rem. Ipsum voluptatem adipisci et distinctio quod. Illum eaque harum repudiandae voluptatem quasi occaecati quo eius.', 'Maiores provident quisquam debitis explicabo. Quis necessitatibus qui ex quia quas laudantium laborum. Sequi dignissimos ut et. Quo sequi dolor esse et et provident. Suscipit molestiae maiores nisi blanditiis error. Beatae ad velit et est. Eum corrupti in facere asperiores consectetur. Vitae repellat nulla quos numquam enim. Rerum necessitatibus labore sit vel. Tempora cumque quia mollitia ab vel. Est dolor quam eos. Perspiciatis ipsum natus aperiam tenetur natus nostrum ut. Itaque ut dolorem numquam sunt sunt id incidunt. Perferendis animi ipsum aspernatur dicta omnis. Voluptas adipisci cum consequatur occaecati dolorem eveniet sed. Molestiae et non eum iste molestias deserunt fuga eum. Deleniti officia quibusdam provident voluptatum non architecto. Aliquid quam dolores nisi veritatis. Excepturi maiores consequatur neque tenetur. Illum ut recusandae architecto voluptas qui voluptate fuga. Labore est expedita quos aspernatur. Sint qui maiores est optio aperiam dolorem. Enim eos consequatur ab molestias ex voluptatem. Vitae dicta est aliquam nobis sapiente eos amet aliquam. Omnis voluptatem beatae tempora velit iusto. Qui natus voluptatem quos quas sed porro eos. Exercitationem ex odio officia ut. Laboriosam laboriosam saepe cum ut alias ea sunt. Voluptates ex quis illum. Sed quis est quae cupiditate esse voluptatem. Corrupti ducimus reiciendis occaecati delectus impedit ducimus nobis. Consectetur quas ipsum recusandae expedita. Cumque molestias vel consequatur mollitia libero quas excepturi. Similique et earum nihil eaque. Amet quibusdam est quae consequuntur. Quo architecto aut sequi ex ut illo qui quidem. Dignissimos occaecati placeat hic. Excepturi est ducimus distinctio neque qui. Fuga accusamus fuga labore quibusdam dolorem repellendus tenetur. Veniam maiores et officia et dolore nulla. Non rerum sunt consequuntur ut. Vel reiciendis sit deleniti ut. Eius est animi aut.', '1', 20, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(22, 'Esse illum dolorum sit.', 'esse-illum-dolorum-sit', 'Debitis corporis vel reprehenderit non. Placeat est corrupti temporibus ducimus aut occaecati. Et omnis fugit et aspernatur ex quia.', 'Provident voluptate facere odit reprehenderit soluta facere consequuntur. Fugit nisi soluta incidunt quia. Aliquid nam nisi iste minima quidem cupiditate velit. Sint doloremque aperiam corporis consequuntur assumenda. Ut distinctio laboriosam velit fuga laborum. Qui quia quas delectus dolores nihil quasi deserunt natus. Laboriosam aliquam omnis optio veritatis. Laborum eaque sit numquam quis. Rerum quia dolore autem aut quaerat neque. Facilis corrupti doloremque porro iure rem. Nulla quos nemo vel molestias quam. Odio itaque consequuntur est dignissimos aperiam voluptatem aliquam. Qui est sunt nobis officia nesciunt. Amet similique id totam voluptas alias commodi. Cum tempora ut maiores. Aut commodi qui autem ea. Laboriosam cum accusantium id qui necessitatibus est id. Odio aut harum quis est molestiae atque deserunt. Necessitatibus quidem iusto sed quasi aperiam nam sapiente. Impedit nihil minima quia explicabo enim. Rerum eos est quos ipsa nihil amet dolore. Ut id aliquid est molestias consequatur rerum sunt. Magni omnis qui temporibus dolores nesciunt id non officia. Consequatur aliquam voluptates voluptatum delectus. Debitis nisi neque quasi. Est vero natus voluptas quos qui in. Cupiditate deserunt dolor optio libero. Veritatis ea possimus rerum alias sunt voluptatibus at. Amet autem ipsam iure rerum nobis quas consequatur. Error voluptas qui similique deleniti sapiente facilis. Et ex fugiat ut labore ea. Illum fuga esse minima quis facere facilis esse. Fuga rem sint dolorum qui voluptates ad et. Praesentium iste quo ea natus sunt cupiditate. Aperiam ea hic officia accusamus qui molestias ullam. Minima voluptas fugiat vitae aut. Blanditiis iusto quisquam et nostrum amet nostrum molestias. Ab et quasi nesciunt explicabo expedita aliquid. Sed quo sint libero qui nihil explicabo. Ut dolores deleniti aut quos provident. Voluptas numquam distinctio ipsa suscipit aliquid illo iste.', '2', 45, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46');
INSERT INTO `posts` (`id`, `name`, `slug`, `extract`, `body`, `status`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(23, 'Corrupti quas quia officia consectetur quia.', 'corrupti-quas-quia-officia-consectetur-quia', 'Necessitatibus voluptate in dicta et non maxime quidem vero. Fugiat possimus quia nisi tempora. Nulla asperiores quis sed est.', 'Id ducimus accusantium deleniti nam quia sed et occaecati. Nostrum quisquam sint odio autem deserunt. Magnam quis sed id eveniet et. Unde iste modi mollitia. Non veritatis officia autem ratione est. Consequatur eum animi dignissimos quo nemo quisquam. Voluptatem sequi et nostrum provident officia quia optio. Voluptatem nisi optio facilis consequatur iste dolorum maxime. Nihil eos temporibus et vero veritatis repudiandae non. Nihil voluptatem ducimus vel omnis odio vero qui. Cupiditate dolorem officia consectetur laborum unde voluptate in. Rerum autem id culpa architecto. Natus ut labore quidem pariatur quasi. Id nihil rerum vel corrupti laborum est dolorem. Molestiae dolore aut laboriosam doloremque magnam accusamus occaecati. Facilis voluptatum optio voluptatem omnis. Harum pariatur dolor fugiat aut voluptatum alias ullam et. Quasi id nulla adipisci voluptas repellendus numquam tenetur. Velit molestiae temporibus est eligendi non non sit. Magni est odit et vitae. Rerum temporibus voluptatibus dicta facilis officiis velit. Recusandae et dolor autem animi deserunt. At quasi illum nisi in. Corporis qui corporis non consequuntur. Error tempora et quibusdam quia. Quidem nihil vero harum ex recusandae aspernatur. Explicabo nihil sunt magni consequatur dolor modi. Quia et quasi quidem accusamus consectetur. Iure quisquam culpa corrupti nam. Neque vitae qui eveniet tempore. Nihil quisquam saepe qui quas. Itaque est sint rem quae. Est est fuga dolor aut dolores. Dolore quidem sunt sed beatae recusandae nihil. Fugit sit earum rem. Quibusdam asperiores veritatis velit. Ipsa dignissimos maxime soluta possimus et laborum. Quia voluptatum porro iusto est impedit velit eum. Minima dolor aut ut aut et eum. Et aliquid numquam ad dolore dolores qui. Possimus iure reiciendis cupiditate consequuntur.', '1', 43, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(24, 'Voluptate rerum ut consequuntur nihil ea commodi dolores.', 'voluptate-rerum-ut-consequuntur-nihil-ea-commodi-dolores', 'Et perferendis voluptate ullam laborum dolore. Voluptate dolor soluta quos ducimus laboriosam. A provident minus ut illum quas possimus. Voluptatem aut sed eum sed sit quam reprehenderit.', 'Veniam quis non quidem. Ducimus nulla doloribus molestiae rem minus. Sit veritatis deserunt quia qui enim vel. Officiis suscipit totam et aperiam aut quod quam. Officiis excepturi tenetur cum beatae. Maxime repellat perspiciatis recusandae tempore. Error numquam eos eum reprehenderit. Magni sunt doloremque eum adipisci porro. Placeat maiores fugiat ipsum ut dolorem. At explicabo qui et. Unde nam provident laudantium officiis ut cupiditate sed. Rem et tenetur illo expedita. Dolor vel quos velit vitae voluptatem. Quia odit rerum libero sed qui quasi. Aut qui tempora est ut ut architecto aspernatur. Quia quod architecto nesciunt et maiores. Voluptas cupiditate et sit. Et voluptatem ratione exercitationem libero vero. Ex harum quasi eos dolore qui sunt. Sed sed voluptate quo consequuntur. Saepe accusantium quae sunt impedit doloremque eos neque. Magni voluptatem hic quos sunt ipsa modi. Officiis quasi ipsa quae ut eos qui consequuntur. Temporibus recusandae laudantium quibusdam dolorum impedit. Dolorem ut officiis cumque perferendis enim magni. Expedita non vero ex quidem non. Corporis temporibus non et fugiat voluptatem aut molestiae. Eius necessitatibus quia ut repellat in quaerat. Explicabo unde libero cum possimus sed molestiae non. Ut molestias repudiandae quam. Labore ducimus labore aperiam ut porro cumque. Molestiae ex aspernatur architecto repellat. Nemo hic consequatur et ut officiis nihil laboriosam. Saepe qui sint ut voluptatem eaque totam dolores. Quia quo sunt quia similique. Labore assumenda quas ad. Nisi sint ut perspiciatis fugit animi. Quis quidem maiores est nisi et nihil. Consequatur nisi incidunt sequi quas eos ab distinctio. Reprehenderit reprehenderit sequi suscipit commodi cupiditate qui velit. Aut minus qui laudantium voluptas repellat sit. Et delectus ipsa est repudiandae et perspiciatis inventore. Velit non enim repudiandae at eum non. Fugiat excepturi iusto facere alias sint officiis quis cumque.', '2', 44, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(25, 'Aut saepe provident quos accusantium.', 'aut-saepe-provident-quos-accusantium', 'Aut error aut ipsum et. Dolorem repellendus ratione adipisci ex ut numquam quos eligendi. Ratione est laboriosam sint est facilis eveniet voluptas. Sed iste provident nihil vitae cum et voluptatem.', 'Et accusamus corrupti tenetur iste ipsam assumenda. Facilis et et autem. Nostrum aut mollitia ipsa iure vel ipsum aut. Non amet nobis blanditiis velit nisi quod beatae. Eum est vitae sed sit et unde animi. Est perferendis molestias porro ipsum doloremque ipsa. Deserunt qui voluptatem sed. Officiis esse molestias aut quam fuga blanditiis. Excepturi quo cupiditate ut assumenda consequatur ut optio. Ut non sunt mollitia et aut nobis et atque. Magni earum veniam blanditiis cupiditate rerum fugit. Eius aliquam expedita repellendus possimus sed commodi quasi. Reiciendis distinctio exercitationem sequi dicta qui eius. Nesciunt autem consequatur voluptates laboriosam ut sed perspiciatis. Quisquam aut nostrum modi minus cupiditate suscipit ut. Consectetur molestiae molestiae voluptatem adipisci non pariatur. Harum delectus molestiae necessitatibus ut animi consequuntur voluptas. Facere fuga doloribus veritatis est culpa. Alias beatae quia quas quis. Laboriosam modi vel harum vero. Nemo est ipsum repudiandae magnam iusto tempora enim mollitia. Optio eius occaecati rem ut vitae ut. Quaerat accusamus cum reiciendis voluptas. Dolor provident minus minus unde et sapiente veniam qui. Libero et omnis corrupti unde temporibus modi. Aperiam alias est porro nobis vel qui. Suscipit ea deleniti quo similique iure aut modi officia. Veritatis commodi quam in dolores quaerat. Distinctio sapiente nostrum cupiditate asperiores unde voluptas ab. Temporibus inventore iure modi quia omnis repudiandae nihil. Dolor sequi molestiae pariatur enim. Dignissimos ut magnam natus id iusto optio. Repellendus doloribus rem officia maxime voluptatum. Sunt doloremque quasi rerum in consequatur temporibus. Doloribus dolorem recusandae non expedita culpa quo. Eaque in dolores eius maxime harum et. Eaque ex nam eligendi reiciendis necessitatibus et. Inventore voluptates eum sint omnis. Reprehenderit eos mollitia minima deserunt repellendus explicabo.', '2', 13, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(26, 'Cupiditate similique praesentium voluptatem.', 'cupiditate-similique-praesentium-voluptatem', 'Suscipit sapiente consectetur assumenda labore dolores ea sit. Laudantium consectetur sit velit quo. Veritatis et expedita temporibus accusantium a.', 'Voluptatem aut reprehenderit incidunt omnis sapiente sit aut. Quia repellat qui ipsum a numquam. At aliquid corporis doloremque. Porro est odio et placeat. Ut in vel doloremque qui nostrum. Illum sit totam tempore voluptas sunt facilis similique. Doloremque omnis sint dolorem eos est. Voluptas quasi aut autem quo et voluptas laboriosam commodi. Odit voluptas ipsam numquam ducimus. Sit dolore illum quis vel. Quod voluptatem eaque nam est. Eos delectus doloremque et iusto quaerat et sed sit. Totam et labore aperiam. Exercitationem porro rerum ut deserunt eum officia molestiae tempora. Placeat odio eos impedit accusamus aperiam qui et. Minus consequatur dolorem nulla ea. Dolore dicta eaque ut commodi sed reprehenderit laudantium. Sed earum eaque maiores et omnis in. Corrupti labore qui laborum eligendi officia numquam odio. A facere ullam eum. Nihil blanditiis ut quam et aliquid quasi. Ullam labore officiis odio incidunt eligendi. Quo labore veniam laudantium facere architecto aut sed sed. Eveniet rerum nemo et velit facere nemo culpa similique. Sit recusandae necessitatibus facere optio saepe modi. Officiis sed maiores molestias accusantium. Est incidunt aspernatur suscipit ex provident magnam. Atque dolores id voluptas voluptates labore enim unde. Quidem quis veritatis ut autem fugit. Mollitia ea voluptatem beatae cumque nam. Ducimus eos aut corporis atque error voluptatum ut. Autem odit aut exercitationem cumque velit perspiciatis cumque. Nobis adipisci sed qui. Dignissimos occaecati est ab. Dolorem quo et et iusto architecto accusamus est. Qui rem est mollitia perferendis. Perferendis quo quam voluptatem id. Vero fuga veritatis architecto consequatur quae. Eaque a est qui cumque. Quas veniam deleniti dolor dolorem et in tempore distinctio. Minima est et id autem eligendi. Nostrum ipsum veritatis saepe voluptatem sunt omnis. Velit nihil eius est perspiciatis consequatur voluptate. Dolores rem dolor optio.', '2', 6, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(27, 'Est aut sunt placeat quia.', 'est-aut-sunt-placeat-quia', 'A aut repellat et nostrum molestiae. Ab ut possimus sunt dignissimos culpa et. Inventore vitae recusandae quisquam numquam maxime. Architecto rerum accusantium dolor. Odio ut quod architecto quis. Qui dolor vel enim.', 'Assumenda voluptatem deleniti enim. Aut ea temporibus ut saepe occaecati velit. Sint ea et vel. Dolorem eos et quisquam eum veritatis id. Id consequatur a aliquam est est. Enim non aut voluptatem nisi aliquam qui ullam amet. Non natus totam iusto aut debitis iusto. Modi ut eaque eos non aliquam. Vel molestiae nostrum aut quibusdam minus. Est ullam corporis autem exercitationem quia veritatis. Quo aut esse quis non omnis unde animi. Assumenda asperiores error ut. Et quae dicta voluptas ut sunt nesciunt. Quam temporibus a dolorem. Voluptate quis voluptatibus doloribus eius deserunt quia dolor. Vel consectetur voluptas vel veritatis. Suscipit veritatis impedit inventore ipsam. Quod animi officia ad est in. Accusantium vero aut in doloremque omnis. Sint atque vel voluptas aperiam eum at praesentium. Et incidunt enim tempore sit quisquam delectus quod. Dignissimos molestiae est iusto et est voluptate. Eum quae reprehenderit et placeat. Dolor consectetur ipsa quasi consequuntur qui. Cum aut optio sequi aliquid non. Voluptatem temporibus est excepturi officia ut sint. Et labore doloremque sapiente. Voluptas amet sint esse dolor ea est. Laudantium quas sit recusandae. Ad ad architecto expedita. Atque voluptatem impedit dicta voluptatum ex aliquam et. Et molestias unde eveniet suscipit. Dolores non maxime molestiae distinctio odio voluptas. Molestiae dolores eaque quo veritatis ea quod ullam sed. Ratione non et magni ea provident maiores quia. Quidem tempora consequatur ratione corrupti nulla sit esse tempore. Dolores eum eligendi quod dolores dolor aut sapiente quia. Consequatur fugit ipsam enim alias. Voluptas est aut nostrum molestiae consequatur. Perferendis cum molestias delectus ad tempora sed et. Temporibus perspiciatis natus id laudantium tenetur aut dolorum. Ut et sunt quis accusamus quia expedita unde. Consequatur sed necessitatibus ipsam tempora qui. Quia voluptates cum praesentium. Consectetur qui illo tenetur. Sunt dicta libero quae dolorem consequatur nisi.', '1', 50, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(28, 'Voluptatibus quo dolorem tenetur quia.', 'voluptatibus-quo-dolorem-tenetur-quia', 'Asperiores facere qui id distinctio excepturi nemo ipsam. Ex aut dolores aut praesentium. Sint nostrum et sunt sed vero.', 'Quam eum quia error odio voluptatem. Eum porro ut veniam quia sapiente odit dolorem. Accusamus totam provident voluptatem et sint. Consequatur at omnis eos explicabo magni nemo. Est incidunt dolores consequuntur quod rerum aut. Recusandae aut dolorem est qui eligendi. Praesentium aut qui vel molestiae. Qui aut eligendi illum exercitationem. Velit dicta aut iste sit quia. Libero sit veniam et voluptatem et ducimus accusamus. Id eos optio voluptatum. Est exercitationem suscipit numquam deleniti omnis. Magni et accusamus est delectus. Assumenda quidem unde porro earum voluptatem. Blanditiis nostrum nihil omnis. Nihil recusandae exercitationem sint fuga voluptatibus. Nulla quos rerum molestiae ea ut officiis soluta. Alias accusantium alias autem maiores nesciunt minus consequatur. Nulla aut fugiat unde eos. Dolores omnis non fugiat velit. Sit dolorem voluptate dicta aliquam est eius. Rem est voluptatem non doloremque placeat hic. Quisquam et vel eos perferendis quo. Velit tempore adipisci fugiat ducimus. Voluptates commodi velit architecto accusantium saepe tempora ut nihil. Animi consequuntur dicta occaecati ipsam possimus modi. Sit totam dolores dolor necessitatibus. Rerum autem aut neque autem sit perspiciatis vel. Inventore error iste et fuga quo ea provident sit. Aut excepturi officia debitis sit nihil. Nulla ut rem consectetur tempora. Corporis accusantium eligendi incidunt vero quo veniam maxime nemo. Fugit voluptatum dicta consequatur voluptatibus. Aut quo quo consequatur non accusamus qui. Dolores inventore nemo voluptatem cumque praesentium repudiandae. Quo ab eum dolor perferendis placeat consequuntur nihil enim. Rerum modi reiciendis ut dolorem impedit soluta commodi. Eveniet labore hic ab unde corrupti omnis dolorem. Voluptates placeat accusamus voluptatibus explicabo sunt. Voluptatum voluptate et animi dolorem ipsam voluptatem similique iusto.', '1', 15, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(29, 'Consequatur voluptates est accusamus voluptate incidunt molestiae ullam.', 'consequatur-voluptates-est-accusamus-voluptate-incidunt-molestiae-ullam', 'Delectus saepe ut praesentium aut. Ipsa sit voluptas quidem incidunt. Velit laborum earum saepe ut.', 'Iure aut sed quis deserunt qui nostrum eos hic. Eaque pariatur ex ex adipisci itaque et culpa. Et nemo enim quidem. A reprehenderit laudantium praesentium qui. Itaque temporibus facere et expedita magni. Tempore reprehenderit velit optio eveniet nobis. Ad saepe aut ut quia ipsam et voluptate. At quia accusantium dolores qui mollitia ipsam. Commodi neque quo et voluptates. Voluptatum itaque consequatur enim odit voluptatem repudiandae ipsum minus. Dolor temporibus facilis quia et possimus dolores. Voluptate non eum sed labore magnam aut perspiciatis. Reprehenderit numquam laborum quibusdam nobis voluptatem. Laborum ut sint rerum suscipit. Alias dolorem quia aut incidunt rerum itaque iure accusantium. Accusamus totam totam nihil voluptate. Fugit ea asperiores assumenda recusandae temporibus. Illo cum ab totam dolor. Et voluptatibus minima dolore et dolorem fuga natus quia. Ipsa amet cum in et. Autem necessitatibus aut aut. Eos vel officiis nostrum reiciendis. Libero placeat aliquam eveniet exercitationem voluptatem autem aliquid. Ut magni ut itaque earum. Dolorem dolor labore aut dolorem in laudantium. Deleniti odio quos quam. Quae modi ut temporibus. Adipisci voluptates voluptatum ut animi tenetur eos. Architecto iusto est sunt qui. Sed id qui aut possimus nemo quia architecto. Et sint eaque non enim. Quam sed et beatae minima ratione. Quae alias magnam est minima qui ut. Dicta dolores minus delectus. Nihil nulla maiores tempore fugit dolores est. Earum similique dolor accusantium placeat. Commodi quo et neque facilis ad. Fugiat eius recusandae neque omnis et aspernatur. Autem omnis ad enim error ea nisi pariatur id. Eveniet distinctio veniam eius et sunt ut necessitatibus aut. Magnam reiciendis suscipit et nesciunt et. Numquam ut voluptate velit praesentium adipisci. Quia provident voluptatem in aut omnis aut. Optio vero totam magnam sapiente. Est sunt porro est. Tempore ab minima qui ut ullam deleniti.', '1', 46, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(30, 'Quibusdam velit voluptates quis vero at laudantium repudiandae.', 'quibusdam-velit-voluptates-quis-vero-at-laudantium-repudiandae', 'Explicabo amet est vero ipsam. Qui eveniet vel incidunt quasi sint omnis natus. Non molestias ut ut illo omnis illum ut.', 'Eligendi molestias mollitia error perspiciatis accusantium. Repudiandae porro ut corrupti. Voluptatum et sit dolor est delectus. Qui placeat est cumque. Tempore provident est quasi numquam ut quia. Inventore quaerat repellendus est. Qui sint quis sint dolor consequuntur porro magni. Ipsa et earum tenetur totam. Qui libero natus officiis itaque quia omnis est. Eveniet illum quo placeat eaque excepturi facilis est. Fuga unde iusto eos quisquam. Occaecati voluptas blanditiis distinctio ad non voluptas mollitia. Voluptatum id dolore cumque harum odio. Maxime dolor ullam eius numquam reiciendis ut accusamus. Voluptatem qui consequatur eaque et aut. In deleniti temporibus nobis ex eveniet. Sit debitis suscipit molestiae sit ducimus. Laudantium ad expedita id voluptate doloremque. Sed et ea dolores suscipit. Reprehenderit aperiam quos magni laborum dolorem est consequatur. Sequi dolores deserunt vel possimus. Atque aut veritatis quo earum ipsa aut. Aut labore perferendis possimus quia. Distinctio architecto aut architecto sed. Facere at eum ut. In illum dicta cum asperiores. Id molestias exercitationem in suscipit. Esse aut dicta fugit odit accusantium voluptatibus a. Perspiciatis qui vel dolorum enim. Dolorem et ab molestiae ut ea reiciendis. Commodi praesentium ea repellat nisi ad facilis molestiae. Quae laudantium in voluptate voluptatem corrupti. Quia voluptas expedita earum adipisci. Provident et quis ullam dolore. Ipsam ipsa vero voluptatem accusamus. Vero vel voluptatem doloremque sunt dolorem consequatur eveniet. Praesentium quo et doloremque architecto autem fuga aut. Illo sint impedit iure occaecati. Consequatur est et et aspernatur. Veniam laboriosam nulla ut magnam. Quia vero blanditiis et accusamus asperiores quo. Porro maxime aliquid doloremque. Enim molestiae ipsum quae labore voluptas vitae. Asperiores est ut in nihil et. Pariatur ad molestias consequatur repudiandae. Consequatur omnis dolor deleniti aut itaque tempore.', '1', 19, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(31, 'Qui ipsa a porro ea veniam.', 'qui-ipsa-a-porro-ea-veniam', 'A excepturi numquam qui tempore. Laudantium atque aperiam eius delectus asperiores ab. Ex quibusdam corrupti dicta quia non temporibus placeat. Hic amet error ut laboriosam quia a.', 'Id assumenda tempora est sunt possimus explicabo ex. Quam voluptatem nulla et sint dolor similique. Accusamus voluptas recusandae et eum. Sit modi ut dolore. Non doloribus sunt aperiam possimus ut magnam et. Veniam nihil veniam quibusdam voluptates. Nulla et optio provident ab deserunt sint sit. Optio nihil aut eos molestiae molestiae qui. Recusandae ipsum quod excepturi consequatur consectetur dolor. Molestiae quia et quae voluptatem reiciendis omnis. Numquam est praesentium sint vel deserunt. Ad sed odit consequatur vero modi omnis. Totam ut accusamus qui occaecati et labore blanditiis. Suscipit fugit dolores consequatur aut dolore nisi. Voluptates optio mollitia sint in distinctio. Ab beatae accusamus occaecati odio pariatur et non. Dicta consequuntur impedit occaecati laborum qui incidunt. Exercitationem qui voluptatem et aut. Illum ab omnis quas nisi officiis id. Consequuntur quae nam harum sed sit. Totam quos rem illo quaerat repellendus rem eum. Quas quia voluptatum quidem doloremque eveniet. Dolores quidem maiores autem. Velit et praesentium non voluptas. Facere est aut quae consequatur tenetur vitae. Placeat excepturi sed ab voluptate dicta qui. Enim repellat quia in et. Labore sapiente quaerat aut sunt. Est sit hic ut reprehenderit et sed. Ea maxime velit aut repudiandae porro rerum rem. Quia dolorem nobis adipisci molestiae magni quisquam. Enim qui dolores aliquam voluptatem pariatur qui aut. Rem eaque occaecati natus et provident laboriosam. Cumque aperiam quidem id molestiae repudiandae voluptatum error. Saepe assumenda non repudiandae similique enim. Accusantium in consequatur praesentium ipsa. Necessitatibus vitae praesentium quo sed illum hic. Non tempore animi beatae sit. Accusamus est enim quod. Distinctio impedit quia ea enim aut. Autem rerum dolore exercitationem debitis at est. Commodi aliquid distinctio molestiae odio quia sit atque ex. Dolorem deserunt illo ad quae est.', '2', 44, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(32, 'Repellat consectetur natus perspiciatis et voluptatem eligendi.', 'repellat-consectetur-natus-perspiciatis-et-voluptatem-eligendi', 'Totam et aut numquam nobis qui quod numquam. Voluptatum quis accusamus eos quaerat. Aliquid beatae ratione est nemo est magnam. Aut sed omnis ipsam id amet velit.', 'Porro similique deserunt at sed. Vel itaque suscipit dolorem quos architecto nemo nam. Quasi est eius tempore blanditiis. Aperiam ea et est harum et ipsam voluptates repudiandae. Repudiandae reiciendis facere autem aspernatur aut dolorem libero. Voluptatum aut sapiente qui necessitatibus aut doloribus nulla. Cumque minima vitae adipisci dolor distinctio itaque ab. Facilis quidem ut similique corrupti fugiat. Et nemo et odio quia vel animi pariatur nihil. Beatae qui inventore eius consequatur ea. Earum sed voluptatem qui et. Quod ut quas repellendus impedit explicabo nulla. Eligendi voluptas qui dolores aliquam autem sequi et. Odio rerum quia sequi explicabo voluptate esse consequatur. Minus dolorum est ullam at adipisci nesciunt. Cumque facilis veniam deserunt est omnis non quaerat. Odio officiis ea saepe vero beatae minima commodi optio. Recusandae explicabo nemo quisquam earum. Cum qui voluptas labore tempore veritatis aut rerum. Laboriosam facilis totam veniam fugiat. Atque ipsum fugit libero aut et voluptas. Est quis quo voluptates quia veniam. Nihil reiciendis sapiente quisquam aut corporis odio consequatur. Quis necessitatibus eligendi unde dolor. Et sed aut laudantium dolor quibusdam voluptatum molestias praesentium. Et id consequatur quos eos. Delectus a atque eveniet consectetur optio numquam et suscipit. Error iusto iste reiciendis sequi voluptas autem et. Autem sint totam mollitia sint facilis ipsa inventore sit. Reprehenderit iure reprehenderit doloremque quam maxime voluptate magnam. Magnam et eius itaque dolor maxime rerum consequuntur. Pariatur dolor similique laudantium. Fugiat commodi voluptates quam placeat. Natus ex voluptas dignissimos ipsam atque. Nam natus aut reiciendis. Adipisci molestiae neque sint necessitatibus quam. Quibusdam laboriosam nisi vel modi. Dolorum velit accusantium sequi dignissimos quam. Repudiandae qui eum quia nihil distinctio eius. Dolores consequatur qui enim id. Voluptas distinctio est doloribus id corrupti nihil.', '2', 40, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(33, 'Qui libero molestiae ex reiciendis.', 'qui-libero-molestiae-ex-reiciendis', 'Enim possimus ex voluptatem possimus. Corporis suscipit aut praesentium molestias consequatur modi distinctio. Voluptatum fugiat doloribus reiciendis.', 'Nemo dolorem ut soluta aut voluptatibus dolores hic. Esse ad explicabo illum tenetur ut maxime. Sed consequuntur est nam sed laboriosam dolores et. Consectetur aut fugiat eos. Ut repellat quod laboriosam. Laboriosam repudiandae iure sit et temporibus perferendis aut. Quis nostrum quidem unde temporibus tenetur deserunt. Sint exercitationem quae consequuntur animi beatae omnis dignissimos. Explicabo error sed doloremque est quos quisquam. Beatae quidem atque officia repellat et dolorum eius. Velit id tempore neque eos delectus et. Rerum neque fuga nobis ex exercitationem rerum. Et error eos ex. Accusamus unde aspernatur rerum minus. Optio nihil earum excepturi est ex voluptatum aut. Ad ad illo dolorem sunt. Occaecati maiores sed atque odit sit dolorum voluptas. Dolorem asperiores voluptate facilis deleniti temporibus ducimus. Suscipit repellat quibusdam quod hic. Et ut saepe magni. Laboriosam ut quo officia fugiat. Est molestias in porro. Illum est fugit fugiat rerum consequatur cupiditate. Eos facilis et dolorem. Qui illo totam magnam ut quas. Quia dolorem dolor aperiam quas provident alias voluptate. Numquam doloremque id odit et et. Vero cum illum aspernatur natus vitae. Ea error et labore voluptas occaecati. A dolorem laboriosam assumenda vel dignissimos voluptate animi. Veritatis praesentium animi et doloribus quibusdam ex. Vel id maxime aut repellat suscipit. Velit ut dolorem est cum harum. Repellat blanditiis expedita quia error. Et voluptatem aut quia nam harum temporibus. Deserunt quidem ducimus numquam. Quam iste saepe quo ut. Inventore veniam repudiandae deserunt facilis aut. Qui natus consequuntur et et quo qui. Dolorem magnam nihil inventore aut. Quos et consequatur sunt eos reprehenderit quod. Rerum et non sit et quis vitae. Repellat voluptates sed voluptate neque in. Laudantium qui vero est non quod totam quas. Esse nesciunt at molestias est. Quibusdam necessitatibus dolor voluptatem natus.', '2', 12, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(34, 'Explicabo veritatis eum sunt.', 'explicabo-veritatis-eum-sunt', 'Qui nulla veniam est et qui rerum alias nostrum. Dolor laudantium quis deserunt nihil modi illo. Quae quo aut omnis est molestiae suscipit est. Quis magnam nemo voluptates minima harum.', 'Magnam tempore debitis accusantium odit eos. Consequuntur libero non aut commodi ad qui. Dolor natus quia sed corporis illo voluptatem. Et deserunt fugiat rem delectus quod voluptas eos rem. Nostrum aut eos alias laboriosam accusamus facere neque est. Quia reprehenderit blanditiis inventore consequatur rerum doloribus. Culpa et et ullam doloribus veniam sint sunt et. Dolores consectetur sint autem necessitatibus dignissimos qui. Voluptas sapiente quis nostrum qui. Et omnis dicta modi reprehenderit voluptatem quae nostrum ut. Dolorem alias animi ipsum exercitationem. Deserunt enim facilis quasi. Inventore veritatis dolores ullam laudantium expedita. Et expedita natus ipsa ex. Eos recusandae eum voluptatem enim quo. Accusantium soluta temporibus aut cum ut eveniet. Nihil quis neque provident sapiente sunt. Pariatur sint quisquam expedita nihil. Dolor possimus dolorem dolor eos voluptates architecto vel. Ipsum possimus suscipit adipisci vero aut. Porro ea repellendus eos tempora. Error beatae ipsum ipsum et. Beatae qui ut qui nemo reprehenderit vero. Dolor minima animi explicabo tenetur eius amet. Et rem expedita molestiae quis ratione soluta. Sed sint odio rem repellat molestiae repellat dignissimos illo. Praesentium est harum facere quia eius. Veritatis enim velit libero suscipit. Facere quidem nemo quia iste laudantium. Eum dolores impedit dicta unde aut id tenetur rerum. Hic eum impedit minima mollitia eaque beatae iusto. Veniam iusto accusantium nemo beatae et fugit rem occaecati. Rerum ut doloribus libero illo est. Minima cumque aliquam illum enim quia id. Porro aperiam doloremque ex odit placeat nihil. Quia illum ut neque aut. Quis eum ducimus nihil sit suscipit eius fugit. Est similique mollitia nulla. Beatae delectus laborum neque numquam. Ullam consequatur et et. Occaecati ab nisi assumenda aut maxime facere. Dolor maxime quidem qui possimus. Veniam et est omnis eligendi maxime. Ut facere voluptatibus laborum earum. Voluptas quia ut quia alias.', '2', 38, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(35, 'Quo porro modi maxime aut iusto quo eum.', 'quo-porro-modi-maxime-aut-iusto-quo-eum', 'Voluptates facilis nulla tempore qui nulla eos. Voluptas error eveniet architecto dolore. Molestiae iure saepe amet nesciunt quae. Et aut ut sed quasi tenetur similique laudantium.', 'Voluptatem ea qui odio voluptate totam. Perspiciatis ut rerum et necessitatibus in. Laborum officiis quia deserunt commodi aut. Ducimus occaecati inventore ullam voluptatem ab beatae. Et deleniti officia sunt tempore sint. Qui corporis ab repellat et doloremque totam ad sit. Aut quae deserunt officiis veritatis id aut autem. Non veniam aut beatae culpa autem. Voluptate architecto qui repellendus sed placeat. Laudantium cum quaerat aspernatur dolore consequatur alias officia. Nesciunt possimus qui quaerat officia suscipit eius reiciendis voluptate. Enim libero possimus corrupti fuga tempora. Eum eveniet incidunt ab repellat non nobis. Sint blanditiis non ut ullam optio sit ipsam. Quas corrupti esse hic aut molestias aliquam. Alias commodi voluptatem accusamus amet ratione saepe. Unde eligendi expedita et molestiae sit. Impedit in rerum qui quia tempore. Nam quis aut ut pariatur iusto atque. Aliquam molestiae qui earum fuga. Quae architecto optio aut rerum. Sed quis possimus aut eos cum sunt quia. Alias beatae inventore itaque fuga distinctio consequatur. A sit occaecati autem odio error. Beatae repellat quod explicabo odio molestiae quod. Nobis molestiae aut voluptatem voluptas atque. Ab modi totam corrupti perferendis laborum asperiores voluptatibus reprehenderit. Asperiores a dolor est voluptas. Deserunt ut voluptatem nihil rerum vel perferendis sit amet. Sunt aperiam quia corrupti eos. Enim illo sed dolores natus sequi. Id autem aut eum voluptate culpa quis ut. Provident accusamus est omnis libero. Autem aspernatur explicabo vero quod molestias sed. Ex incidunt temporibus et omnis nam fugiat quis sint. Eum aut libero dolor exercitationem. Qui molestias tempore non voluptatum. Incidunt vero quia rem dolorem omnis commodi magni. Magnam nam non voluptates fugit quia odit consequuntur ex.', '1', 23, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(36, 'Quibusdam culpa sequi libero est.', 'quibusdam-culpa-sequi-libero-est', 'Dolor eos aspernatur nihil deserunt voluptate ratione voluptatem. Possimus repudiandae voluptas quas qui sint sit. Doloremque aliquam qui saepe aperiam est sit voluptatem.', 'Quia dignissimos doloribus veritatis rerum voluptates. Dolorum excepturi libero in voluptas commodi aliquid magnam. Excepturi eum ea sed qui. Animi animi provident deserunt deleniti maiores aspernatur inventore dolor. Aut voluptatem aut molestias voluptas expedita dignissimos tenetur. Rerum soluta non magnam veritatis iusto unde quia. Ipsam ratione in architecto saepe fuga cum. Quas odio odit ut non non. Sequi neque quae quae expedita fugit voluptas. Eius est cum voluptate quasi eos. Inventore est optio quis illo. Rerum voluptatem sit et tempora. Labore et nisi labore officiis quasi mollitia a et. Maiores aut non aliquid. Reiciendis deleniti optio dignissimos aut. Sed perspiciatis vel corporis nesciunt. Velit consequatur et placeat ipsam exercitationem quisquam. Reiciendis ad dicta harum dolore error qui similique. Voluptate laudantium perferendis amet vitae error officia voluptas. Assumenda omnis aperiam quasi harum. Est delectus omnis qui minus dolorem. Distinctio molestiae occaecati aperiam et minus est. Consequatur officia dolorem perferendis neque sunt. In tempora explicabo quod et commodi. Facere atque ut consequatur eveniet architecto dignissimos. Non et laborum necessitatibus aliquam rerum voluptatum. Ipsum unde harum et veritatis veniam non sit quia. Animi consequatur alias inventore assumenda dolor. Odit suscipit saepe ut molestiae. Error dignissimos consequuntur dicta sint distinctio vitae provident quibusdam. Et ea ut soluta et dolores quo. Adipisci laboriosam dolore molestiae aut eius minus laborum. Modi nulla alias et. Est architecto molestiae dolorem voluptatum. Facilis rem pariatur aliquam quia blanditiis. Nostrum molestiae est est tempore. Velit laudantium sint placeat eum dignissimos. Assumenda asperiores sed qui quidem aspernatur et. Et quia qui perferendis expedita cupiditate. Qui quos debitis mollitia nesciunt id nihil. Ratione vel aliquam id dolorum nobis. Illum ut facilis veritatis voluptatem aut optio quia et.', '2', 22, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(37, 'Nemo quidem dicta accusamus maiores molestias facilis.', 'nemo-quidem-dicta-accusamus-maiores-molestias-facilis', 'Natus praesentium quis sit doloremque fugit quis. Et iste voluptas qui. Quo adipisci consequatur neque veniam. Consequatur ut architecto et.', 'Sunt autem aliquam dicta distinctio iure maxime quibusdam. Distinctio nam earum officiis hic ut soluta. Iusto placeat sed rerum consequatur qui mollitia. Doloribus dicta non ipsum praesentium. Qui ab accusantium ad eaque neque ex praesentium. Omnis nemo temporibus et. Totam consequatur ratione sunt. Quae consectetur voluptatibus tempora natus reiciendis ut et. Iusto dolores eum velit perferendis rerum qui. Autem enim porro magni excepturi rerum aut. Voluptatem nam cum ut quisquam iure dignissimos. Quod dolorem et vel. Earum aut eum quo iusto esse. Sint labore excepturi porro vero aut. Molestiae eum officiis minus eos sapiente qui vel. Sequi et officia qui odit non aliquam veniam optio. Odio unde sed illo aut et reprehenderit occaecati. Sed aliquid accusamus non rerum eos incidunt sed. Accusamus nesciunt voluptates aut aut nemo. Dolorum accusamus est repellat quia facere adipisci omnis. Qui omnis laboriosam numquam perferendis veniam. Sapiente ipsa officiis et corporis. Qui laborum earum doloremque et. Occaecati fugiat dolore est aut non quos in beatae. Fugiat non non rerum et. Perspiciatis et est explicabo voluptatem totam inventore. Rerum impedit nostrum vero nihil blanditiis sed dolore. Impedit non sed molestiae voluptatum. Et harum tenetur quis odio aut ut. Beatae omnis modi dignissimos quia illum aut et dolor. Vel dolor culpa illum in. Blanditiis eum est et debitis voluptatem porro velit. Vel autem aut facilis est. Animi sed nihil asperiores est quia ad consequuntur. Error quam quasi est velit. Iste earum nihil recusandae iste. Eius labore dignissimos adipisci laborum dolor voluptates. Ullam unde tenetur accusantium adipisci. Unde ea commodi modi voluptatem. Deserunt perspiciatis qui quo necessitatibus consequuntur omnis iusto. Accusantium deserunt tempora maiores optio fuga. Atque ex voluptas quasi corrupti. Voluptas ullam fuga nihil et sapiente assumenda. Voluptatibus hic error quibusdam nesciunt. Cum sint adipisci sint blanditiis mollitia eum ratione.', '1', 20, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(38, 'Impedit quibusdam fugiat assumenda porro.', 'impedit-quibusdam-fugiat-assumenda-porro', 'Natus omnis officia veritatis ratione voluptates. Veritatis dignissimos qui ullam quis rerum nisi in. Omnis ipsum recusandae voluptatem vitae.', 'In sed odio fugiat eos id. Dolore commodi aliquid magni eligendi necessitatibus sequi ad. Perspiciatis ipsam ipsa accusamus. Nesciunt eveniet cumque voluptatibus illum nulla libero nobis. Rerum doloribus deserunt eveniet dolore quidem. Sunt nihil et occaecati qui. Nemo consequatur est accusamus voluptatem. Inventore minus doloremque est dolore accusantium voluptatem odio. Facere nihil sed velit veniam voluptas mollitia aut. Nesciunt et consequuntur numquam voluptatem tempore. Sapiente dolor blanditiis quidem distinctio. Est et suscipit minus. Ut dolores fugiat officia explicabo. Quam illum pariatur blanditiis ratione illo rem. Consequatur nostrum dolorem nostrum sapiente. Possimus qui molestiae dolor illum. Et vitae temporibus officia. Dolor eos dignissimos reprehenderit non dolorum eum. Amet rerum ut numquam ipsam. Sed atque enim aut. Nam aperiam eos natus cumque sequi enim aperiam rerum. Aut cumque fugit dolore quia possimus. Sequi qui esse cum vero ipsam. Et repellendus odio similique nostrum. Perferendis quidem non quos animi. Itaque voluptas assumenda dolorem saepe quaerat. Eius ea occaecati iusto. Quasi eos unde explicabo vel et. Et nobis id sint. Quia doloremque suscipit illum voluptatibus debitis et. Assumenda nihil quam doloribus minus. Voluptas velit sapiente aut quasi earum. Est et dicta alias. Ullam natus dicta sequi consequatur dolorum. Iure asperiores non veniam nesciunt. Et minus qui praesentium. Pariatur illo minus et. Atque tempora consequatur non occaecati. Expedita voluptatibus consequuntur velit maxime laboriosam doloremque. Omnis similique eligendi maiores dolorem dicta ut. Ad iusto voluptatibus non numquam dolorum. Voluptatem quam id molestiae sit non. Quod provident qui id. Dolor aliquam dolor eius esse ea nobis molestiae. Veritatis eaque quia temporibus asperiores et. Dolores iure esse facere voluptatem perferendis quos. Reiciendis facilis voluptate incidunt ut magnam id. Hic qui ullam blanditiis voluptatibus vel est non.', '2', 23, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(39, 'Ad quia aliquid alias ut saepe vitae.', 'ad-quia-aliquid-alias-ut-saepe-vitae', 'Excepturi autem repudiandae vitae consectetur. Accusantium velit quis molestias deleniti doloremque error. Aperiam veritatis vero qui numquam accusamus laborum ratione. Cum quibusdam sed explicabo tenetur aut.', 'Quia fugiat ut aperiam ducimus consequatur dolor. Debitis dolores sit ducimus et esse consequatur et. Sed aut architecto officia labore et consectetur quae. Blanditiis vitae voluptas autem non corporis doloremque fugit eos. Culpa architecto adipisci quia maxime quia. Quas quam et neque corporis. Deleniti impedit architecto reiciendis qui consequatur assumenda sequi sed. Modi mollitia et harum ut impedit aliquam non. Cumque dignissimos ratione iusto dolor eum. Nobis modi quia eum quam et. Odio sed ratione veritatis est. Officia architecto aut est est nihil. Eligendi eligendi eum architecto autem quidem. Laboriosam labore vitae nesciunt vitae voluptatem ut. Tenetur illo molestiae illo dolor. Est quo ea sunt sunt at aspernatur. Commodi quis ratione aspernatur temporibus nam fuga. Nemo ipsam molestiae doloremque doloribus nihil ut. Enim aut facere molestiae molestiae fugiat consequatur. Magni cupiditate aperiam sint animi similique minima. Inventore et ex ullam quasi sint culpa. Perspiciatis fugiat voluptas sit vel expedita. Magnam ut sequi ea praesentium. Quia et quia ipsum labore quam illo quis. Ipsum temporibus voluptatibus quis. Qui dolorem dolorem velit occaecati enim officia reiciendis eaque. Dolores quasi quis provident expedita voluptas. Amet consequuntur voluptas pariatur ratione quidem exercitationem enim. Voluptas repellat culpa consequatur autem voluptatem praesentium. Est voluptate voluptatem earum repellendus nihil voluptatibus itaque sed. Aut explicabo enim officia maiores ducimus quo velit. Eveniet est occaecati voluptas provident est in natus cupiditate. Natus error illo odio hic voluptatem dolorem libero. Aliquid fuga nobis et perferendis pariatur vitae. Rem facere nihil esse. Praesentium quia minima aspernatur nostrum sit voluptas unde. Eaque sunt similique in tenetur. Eos non quasi saepe corporis. Dolorum fuga commodi earum voluptatem. Eius aperiam molestiae quis doloribus. Doloremque distinctio labore sequi quisquam veritatis.', '2', 48, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(40, 'Ratione optio itaque sint dolorem eum.', 'ratione-optio-itaque-sint-dolorem-eum', 'Qui vel autem reiciendis nulla dolorem et aperiam culpa. Et autem autem dolore et omnis sed exercitationem. Iste et beatae tempore quisquam beatae.', 'Ea consequuntur vel nostrum quos. Eum officiis eos ut. Exercitationem reiciendis vel eum qui ut nisi. In asperiores repellendus ipsum odio maiores et. Eaque in necessitatibus quae voluptatibus voluptas. Eos tenetur sunt dolore iure tenetur odio. Eos perspiciatis cum qui. Ut officia et placeat dolore. Dolor tempore voluptas fugit quidem et. Consequuntur facere omnis facilis veritatis mollitia. Repudiandae qui quia dignissimos cumque perferendis. Voluptas ducimus eaque et deserunt quidem. Praesentium debitis blanditiis commodi corrupti. Asperiores est corporis doloremque aliquam dolorem aliquid assumenda optio. Soluta a autem quia vitae beatae omnis. Dicta vel sint et et. Incidunt animi sit sit aut. Nobis velit doloribus maiores nisi sint. Debitis doloremque accusantium odit facere error harum. Sint esse ut distinctio voluptate ea. Dolorum quis repellat omnis dolores nemo expedita voluptatem. Corrupti dolorem reprehenderit illum animi. Qui dolores magni qui totam. Et placeat praesentium ipsam labore nam. Laborum qui molestiae animi fuga iste perferendis. Odit labore ut ducimus pariatur est est. Quia dicta fugit omnis ratione sed nihil. In temporibus eum tempore totam non assumenda. Exercitationem repellendus et voluptatem consequatur nulla mollitia. Voluptates velit aliquid doloribus nesciunt autem. Vitae est voluptates aliquid recusandae. Aspernatur nobis perspiciatis non illum aut corporis recusandae. Aut eveniet modi qui non molestiae labore laborum ut. Culpa assumenda sit quo rerum consequuntur iure. Eum quidem dolores libero qui blanditiis consequatur et earum. Omnis officia quae dolorem quia amet quam. Et quaerat expedita est ea qui et in laudantium. Id libero soluta placeat repellendus quis error. Nobis deserunt accusantium occaecati sed et quia quasi. Voluptas vero ex debitis rem deserunt facere. Voluptas esse deleniti at voluptas omnis. Unde molestias et veniam magni temporibus sed. Autem delectus error sit aut distinctio consectetur.', '2', 30, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(41, 'Enim et voluptas est officiis aliquid sit.', 'enim-et-voluptas-est-officiis-aliquid-sit', 'Occaecati id qui hic. Explicabo officia voluptate placeat voluptas reiciendis. Eligendi ipsum et quibusdam. Ut quas aut assumenda. Repudiandae ducimus est ipsam inventore est.', 'Ducimus iure blanditiis sint. Facere beatae illo eaque molestiae dolores libero nihil. Facere expedita est et saepe et. Ut et error officia. Doloribus eveniet amet non est vel quaerat sint. Porro totam rem quasi soluta quia voluptatem non. Repudiandae mollitia corrupti quo dicta natus dolor. Necessitatibus ab esse dolorem officia officia et veniam. Neque sed est occaecati quod et voluptatem ducimus. Sunt est magnam et et neque. Laudantium error est eos aut eos. Maxime quaerat non eaque eos. Ut nostrum dolor officiis libero enim omnis expedita dignissimos. Cupiditate explicabo aut libero reiciendis atque perspiciatis. Aut reprehenderit perferendis sed. At sed dolor unde molestiae veniam quis. Suscipit laborum sit esse enim. Eaque quas numquam veniam. Aut aliquid consectetur voluptates enim repudiandae perspiciatis non odit. Beatae quo qui ab cum dolores. Dolore non harum vel et. Quas culpa ipsum vero aliquid iure sint in. Ut maiores in beatae voluptas repudiandae doloremque labore. Odio debitis et qui doloremque laboriosam. Non dolorum excepturi culpa doloremque. Dolorem est architecto ducimus aut. Natus cumque adipisci voluptatum provident. Recusandae illum perspiciatis eum unde voluptatem voluptate ipsum doloribus. Temporibus quia rerum id consequatur. Sunt consectetur eius dolorem explicabo dignissimos mollitia aliquid. Molestias iure harum voluptatem pariatur sit et. Aut ex nemo laudantium id quaerat odio. Quia fugiat nesciunt ut. Aut neque iusto voluptates. Saepe voluptas ea iusto quasi nihil ut voluptatem. Aut sit minus ea dolores eos minus ut molestiae. Nisi nemo et saepe atque vel et. Ut fugit adipisci atque corrupti. Et ut occaecati molestiae. At et enim voluptatem totam officia culpa. Quo eligendi eaque ipsam neque est eveniet sit. Quia beatae voluptatem omnis. Voluptas quo veritatis aliquid eius et minima omnis. Nulla facere quos iusto possimus odit quas harum.', '2', 39, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(42, 'Rem perspiciatis aspernatur vitae qui quia.', 'rem-perspiciatis-aspernatur-vitae-qui-quia', 'Nobis atque eveniet quis autem doloremque. Consequatur aut magnam consectetur suscipit possimus at voluptas. Enim qui reprehenderit nisi velit. Provident sit veniam exercitationem nisi.', 'Est non sunt explicabo. Velit occaecati quae expedita autem cupiditate. Similique ipsa expedita alias laborum. Beatae et et repellat voluptatem aliquid. Maiores voluptatibus consequuntur aperiam. Et consectetur qui sit et doloribus aut et. Sint voluptate voluptatum repellendus id et autem voluptates. Tempore sunt minus omnis. Ipsum et eum natus nihil voluptatem esse praesentium eum. Possimus dolores non ratione nam exercitationem sit. Quia corporis non consequuntur. A laudantium totam laborum ut occaecati doloribus. Voluptatem nisi itaque dolor ut earum eum odit. Deleniti ratione vel quis. Nesciunt eos voluptas nostrum optio sit ut voluptates omnis. Nisi at aperiam voluptas praesentium nemo officiis. Et repellendus eaque et rerum. Consequatur et laborum ut voluptas. Quis perferendis quo corporis cumque. Dicta aut vel voluptas quos dolorem voluptas. Mollitia aliquam officiis sed. Rerum rerum vero assumenda ut quis et dignissimos. Possimus adipisci qui voluptatum eum rerum ab dolorem. Consequatur possimus labore sint odio aliquam sunt fugit laborum. Corrupti sed expedita et libero error suscipit. Praesentium voluptatibus nobis omnis velit temporibus. Laudantium optio illo veniam error soluta harum. Qui reprehenderit vel praesentium in. Veniam tempore sapiente quis odit quae. Et aperiam officia quasi ut odit. Laborum reprehenderit doloremque consequatur esse delectus provident vel. Dolores officia laboriosam nisi odit iusto illum est. Sit iure est in nam. Dolorem ex dolor quidem dolor dicta quia. Aperiam quasi voluptas ut animi ratione qui et. Sed ratione ut assumenda voluptatem. Dolorem est et voluptatem fugiat nisi. Officia cum harum ut aut expedita. Fugiat ad reprehenderit dolorem iusto assumenda provident et facilis. Ex consequatur ducimus est nam. Suscipit quia cupiditate rerum maxime. Ad quia nulla cupiditate assumenda repudiandae explicabo aspernatur. Repellendus praesentium eos et dolor tempora. Nulla aspernatur delectus omnis aspernatur voluptas.', '1', 24, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(43, 'Est sed necessitatibus rerum occaecati sit.', 'est-sed-necessitatibus-rerum-occaecati-sit', 'Nesciunt ratione corporis possimus aut placeat maiores sit. Autem in vitae laborum. Et ex itaque modi sed illo aliquid quo deserunt. Sint numquam nesciunt vel facilis illum est dignissimos. Rerum nisi fugiat velit. Sed qui aspernatur et amet.', 'Ipsum sequi animi accusantium vel. Enim quia consequatur repellendus eum facere ipsa quia. Dignissimos cum repellat omnis velit. Quo quo et unde aut qui neque id. Rem doloribus ea quia quo eum. Dolorem eius enim accusamus sint. Itaque voluptas cupiditate magnam aliquid aut ab ut. Voluptatum doloremque explicabo unde laudantium nobis sed. Qui sint dignissimos non nihil aut qui eum. Soluta rem nihil tempore id. Quia sint quos delectus. Ipsam pariatur nisi modi aut tenetur iure eos. Expedita illum laboriosam consequuntur ut blanditiis. Velit sit aperiam amet quaerat quia. Velit molestiae aperiam similique autem esse quisquam. Repudiandae et doloremque ea dolores. Quia assumenda esse eum iste. Minima consequatur est id non eligendi illo. Perspiciatis nam facilis minus mollitia iusto molestiae. Cupiditate voluptatibus fuga pariatur aut possimus. Iusto cum deleniti expedita culpa laboriosam iste. Iste modi velit iusto sit rerum veniam aperiam aut. Nostrum voluptatem et aut voluptatum. Maiores id maxime quia possimus voluptatem officiis. Ducimus aliquam placeat harum id est asperiores. Doloribus molestias rerum dolorum sed. Voluptatem qui placeat autem numquam et cupiditate culpa. Inventore dolor saepe consequatur accusamus est voluptates. Quam ut et error commodi. Nulla quis voluptatem asperiores ab aperiam illum. Modi aut iusto et provident quia eaque alias aut. Consequatur quis quibusdam ullam perferendis in ab consectetur. Illum neque illum repudiandae nobis repudiandae nulla. Nobis dolores temporibus aut. Placeat hic incidunt velit aut optio qui. Reiciendis magni qui nemo voluptas voluptas provident impedit repellendus. Est et soluta iusto officiis illum fugiat. Sit omnis dolor repellat accusantium libero sunt temporibus odio. Vel numquam consequatur sint possimus. Nemo maxime quo neque aut velit temporibus. Omnis occaecati recusandae distinctio. Facilis aut ipsa totam quis quae qui iusto.', '1', 35, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46');
INSERT INTO `posts` (`id`, `name`, `slug`, `extract`, `body`, `status`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(44, 'Et vel ad labore repellat omnis consequatur.', 'et-vel-ad-labore-repellat-omnis-consequatur', 'Aliquid dolores quod et. A quis numquam et quia quidem iusto. Dolores id ullam dicta a earum. Autem consectetur mollitia sed laboriosam voluptas aut.', 'Aut autem quo et consequatur. Et est totam sed eius ea. Modi modi ea earum magnam et perspiciatis et aperiam. Id ullam ut reiciendis error eum praesentium doloremque qui. Reiciendis quibusdam quia rerum ut. Esse ut exercitationem sit ut quo id nihil. Debitis qui dolore ut et deserunt eum consectetur. Quis aut dicta dolores aut dolores sed. A perspiciatis tenetur natus consequatur tempore reprehenderit veritatis. Quo est neque accusantium ullam velit. Officia officia voluptates nesciunt laboriosam dicta laborum omnis. A aspernatur ipsum deleniti animi assumenda adipisci. Quo ex est delectus doloremque. Et dolorem consectetur quibusdam architecto quod. Quia vel et tempore mollitia illum dolorum. Aliquid iste voluptas modi sit vel. Sed aut aspernatur modi id et. Est error voluptatibus soluta velit molestias minima. Totam placeat pariatur sapiente odio dolorum omnis dolor nam. Ab natus provident adipisci cum aspernatur beatae. Voluptate ut commodi qui mollitia autem consectetur. Officia mollitia totam totam perspiciatis sit commodi recusandae. Laboriosam eum eius dolorem qui et. Nihil aspernatur pariatur odit voluptatem. Tempore aut dolor neque similique nam totam nihil. Aliquam aut id nulla pariatur neque. Nisi non nesciunt est modi praesentium et. Rerum nesciunt dicta velit illo. Qui omnis excepturi quasi deserunt. Aliquam assumenda sunt distinctio aliquid est sed. Qui eligendi omnis excepturi qui. Quo reprehenderit architecto incidunt. Aut architecto quia et necessitatibus. Nesciunt architecto atque et ex voluptatem harum consequatur saepe. Accusamus ut molestiae unde officiis. Vel sapiente voluptas quo occaecati. Asperiores sed quasi error molestiae omnis est. Eum ut ullam enim unde qui non. Voluptas sunt sed sunt voluptates. Et voluptas veritatis ipsum quam esse beatae. Similique officia a eveniet tempore quis dolorem quasi. Ut nam pariatur eius optio ut placeat amet.', '1', 19, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(45, 'Consequatur minus totam excepturi eius architecto et rem.', 'consequatur-minus-totam-excepturi-eius-architecto-et-rem', 'Autem dolores et id velit. Accusantium praesentium accusamus dolores distinctio perspiciatis omnis qui eos. Totam aut possimus aut ea iste dicta nulla.', 'Pariatur illum eos ipsa corrupti quaerat quo dolor. Rerum labore nihil distinctio in. Eos deserunt a natus nostrum. Fuga totam enim eum nihil earum consequatur qui. Distinctio modi recusandae doloremque rem dolores omnis blanditiis. Voluptatem quisquam sed illum fugit sint. In et eaque rerum doloremque odio nihil tempore. Enim dolor accusantium quia adipisci possimus quibusdam. Natus quibusdam consectetur illo non incidunt asperiores aut occaecati. Ut eaque doloribus debitis incidunt architecto. Ad est perspiciatis eaque sapiente praesentium repellendus. Quae dolorem quo harum est et in asperiores. Tenetur officiis esse libero qui officia. Ex distinctio unde deleniti magnam. Laborum architecto a molestias. Est voluptatibus similique laudantium velit ullam eius eos. Eligendi qui vitae et. Recusandae aut cum optio tempora dolores. Nam iste magni mollitia ad natus culpa excepturi inventore. Unde voluptatibus delectus aut quidem odio aut. Et sapiente dicta facilis aliquid eligendi voluptates. Itaque deserunt qui saepe veritatis. Omnis omnis animi sapiente eum et numquam. Tempora qui ullam laboriosam voluptatem qui. Ullam omnis est et consequatur. Commodi ipsa eaque magnam quo fugit corporis. Quisquam dolor quis ut. Deleniti est repellendus numquam pariatur aut et veritatis. Ad quibusdam velit ut corporis a iure libero. Occaecati amet quaerat et minus ullam maxime. Inventore dolores accusamus voluptas quo. Repellat nobis nemo et. Assumenda et aut harum excepturi eaque eos ad eaque. Reprehenderit voluptatem autem porro. Suscipit quia nihil autem cumque et. Quia odio aspernatur et qui reiciendis maxime. At quia et sunt natus. Odio est et consequatur culpa dolore corporis mollitia maxime. Et qui non sed saepe reprehenderit. Quis debitis rerum aut eveniet repudiandae eaque modi enim. Voluptates corrupti voluptatibus corrupti similique sed explicabo necessitatibus. Dolor fuga sit molestiae rem quo. Excepturi consequatur iusto repellendus labore.', '2', 33, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(46, 'Quasi facilis dolorem reiciendis quidem.', 'quasi-facilis-dolorem-reiciendis-quidem', 'Quia laboriosam corrupti consectetur impedit. Et et nam molestias laboriosam corrupti facere et est. Expedita et et sint eligendi. Excepturi sint nobis enim laborum natus hic. Voluptas dolorem ut fugit quaerat quia.', 'Pariatur voluptatem totam natus tempore ea fugiat. Consequatur consequatur quam id. Dolor eum saepe aperiam porro est et ab ut. Quia corporis facere maiores dolores. Delectus accusantium sint consectetur dolore alias. Ut deleniti quod atque rerum. Illo at tempora hic velit quod corporis. Deserunt suscipit temporibus placeat quia necessitatibus laudantium corporis rem. Et soluta blanditiis veniam sequi accusantium at aperiam. Nisi dolor ut minus porro occaecati aut omnis. Sunt temporibus culpa et distinctio. Ut sed sequi fugiat occaecati rem. Aperiam velit natus reiciendis deleniti. Quos reiciendis atque deserunt placeat dignissimos officia sint. Quisquam similique excepturi iste quam. Temporibus rem quia maxime. In nam dolore molestiae enim. Incidunt similique qui dignissimos dolore quo. Libero reiciendis cupiditate esse. Eius non non nobis magni odit laboriosam. Adipisci voluptatem sapiente asperiores facilis iste aperiam corporis libero. Asperiores temporibus magnam tempore cum. Enim exercitationem quas totam et eos. Ducimus possimus qui culpa. Qui repellendus provident quisquam eum possimus. Earum qui quia in. Velit quis illo magnam dolorem. Amet hic quia qui odio ut velit. Omnis tenetur eum officiis dolor. Quia quaerat similique rerum tempore delectus cumque et. Sint ut nihil magni aliquid omnis. Similique voluptas sed dolor animi. Et tempora et ea. Ea nostrum nesciunt rerum. Qui dolores ut praesentium blanditiis ut pariatur velit. Eaque quo accusantium aut officiis impedit quod error ratione. Voluptas libero corporis rerum voluptas quia. Non neque nisi molestiae repudiandae quidem dignissimos omnis voluptatem. Impedit voluptatem qui nulla recusandae. Veritatis accusamus asperiores libero sit quis quas dolores. Quia magni sit voluptatibus et quia ratione. Ad odio voluptas dolorem laborum nisi non dolore saepe. Beatae cum et consequatur. Error pariatur quibusdam quis pariatur voluptatibus accusamus.', '1', 16, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(47, 'Rerum ea ut et eius rerum ipsa molestiae.', 'rerum-ea-ut-et-eius-rerum-ipsa-molestiae', 'Velit et dignissimos cum et ipsa esse aliquam eius. Occaecati soluta magni aliquam cupiditate odit ipsa dignissimos. Voluptatem maiores rerum suscipit dignissimos error ut. Quos aut eligendi et et et.', 'Blanditiis nisi corporis dolorem nulla. Aut corrupti iure sapiente sunt iusto. Quis quis dolore ipsam dignissimos nobis. Veritatis fugiat sit impedit est aut non pariatur. Nisi sint ab odit sed. Est molestiae cumque minus eaque minus quisquam recusandae ratione. Dolores labore et aspernatur rerum aspernatur. Alias omnis quia reprehenderit ut impedit velit ut quisquam. Voluptatum ullam fugit reprehenderit at accusamus doloribus. Sunt quis beatae consequatur amet aut est corporis. Rerum vitae provident aperiam et. Ut perferendis ut eum consectetur provident eos. Est dolor doloremque occaecati nostrum nobis atque. Minus modi aspernatur nemo a. Occaecati dolore in quisquam voluptas incidunt et. Mollitia tempora nesciunt ea voluptas ea sunt quaerat. Architecto non sit velit et exercitationem eius. Non ut esse aut iusto dolorem hic magnam. In et ut qui dolores quidem est voluptas. Rem laboriosam ab rerum et non corrupti ratione. Vel nesciunt illo a esse placeat commodi. Voluptatem inventore sit natus dolorem vel sunt ut. Officia tenetur ea quo ut. Aperiam voluptas eligendi occaecati eius sint esse. Quis officiis autem quidem vero dolorum omnis. Sint velit aperiam voluptatem non error commodi eligendi inventore. Autem itaque voluptatem dolore et eum ab. Non praesentium repellendus reiciendis ipsa ullam rerum modi ut. Molestiae ut veniam in laborum voluptatibus et aut. Maxime modi aliquam quos ipsam. Odit vero est dolores provident laudantium ullam laborum aut. Sint et aperiam ipsa nobis voluptatem est. Voluptate eveniet est accusantium quis. Voluptatibus perspiciatis minima ipsa quidem. Omnis illo ducimus facere quia laudantium perferendis perferendis. In illum corporis repellat doloribus. Assumenda nostrum cupiditate et occaecati. Neque quasi odio velit laudantium placeat voluptas. Nam eaque corporis recusandae aut. Eum perferendis possimus ut animi.', '2', 8, 2, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(48, 'Dolorum quia aut quis et et consequatur natus.', 'dolorum-quia-aut-quis-et-et-consequatur-natus', 'Qui sapiente hic est. Fuga magni impedit hic ut eligendi. Fugiat quo velit nostrum. Quia eum nulla consequatur velit nemo excepturi temporibus quia.', 'At dolores id aut ea veniam dignissimos quos. Possimus cupiditate occaecati aut optio sed. Ut nihil deleniti et doloribus officiis velit. Sapiente distinctio doloribus commodi quis nemo et. Ut ratione nostrum animi veritatis earum et deleniti. Dicta ipsum error eum molestiae quo itaque tempora. Qui dolor voluptatem a omnis. Velit eveniet corporis nihil libero deserunt ut. Et pariatur animi sit deserunt officia. Reiciendis ea voluptas qui aliquid et impedit. Tempora reiciendis culpa occaecati maiores tempore non. Reprehenderit officia iusto qui sit officia est architecto. Quas delectus aut velit esse exercitationem cupiditate rerum. Qui dignissimos harum itaque possimus vitae. Aut et dolor dolorem quo quia quia quo. Possimus modi quis illo nesciunt iste repudiandae. Consectetur eos facere suscipit cupiditate fugiat. Porro consectetur eveniet deserunt beatae reprehenderit quis. Voluptas ut minus impedit esse aperiam quia. Incidunt aut est sed. Dolores incidunt consequatur eum tempore consequatur beatae magni. Molestias iste hic autem ullam esse sit. Et cupiditate excepturi reprehenderit autem culpa. Tempore aut sit temporibus sunt itaque. Veritatis voluptatem adipisci animi est corporis aut dolores. Neque asperiores cumque reiciendis blanditiis laudantium fugit. Architecto et provident unde voluptatum. Sit magnam corporis est asperiores. Sit aut ut aliquam sit et. Esse omnis et et nihil. Nisi ut atque fugiat cumque. Earum cupiditate autem ipsam repudiandae. Labore voluptatum suscipit recusandae adipisci. Facilis sequi doloribus voluptas repellat sint. Expedita temporibus quos velit voluptatem. Ut ut voluptas exercitationem voluptate. Nemo fuga reprehenderit reprehenderit et dolorem pariatur voluptas. Assumenda recusandae voluptatem expedita debitis. Cumque vel fugiat neque iusto qui. Facere dolores magni repellendus cumque qui vero. Enim voluptas consequatur odit sequi tempore similique.', '2', 39, 4, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(49, 'Eaque sed dolor aut et ipsam sed excepturi.', 'eaque-sed-dolor-aut-et-ipsam-sed-excepturi', 'Maxime et libero facere numquam soluta non ex. Magni praesentium dolor quisquam quae eligendi. Vero et ipsam et minus qui amet ut. Sit a totam placeat.', 'Labore blanditiis blanditiis nesciunt dolorem laborum eos sint. Velit facilis veniam vel autem quisquam quasi. Amet temporibus enim voluptatem veniam. Nihil recusandae ab id quam nihil vel. Repellat accusantium quia doloribus vel quo consequuntur. Non minima quia et. Est eum nemo delectus ea at quia. Quia et itaque dolores in consequatur iusto. Esse quod maiores architecto beatae distinctio architecto nostrum deleniti. Facere perferendis aut doloribus aliquid occaecati aut. Magnam quod doloribus blanditiis dolores ea consequatur delectus. Qui sint ut non consequatur. Molestiae laborum nam voluptate quasi sint qui eos. Neque praesentium tempora id voluptas voluptas quia. Nihil voluptate qui aut assumenda et quas. Consequatur impedit nihil tempore. Qui necessitatibus non iure voluptas dolor quidem. Sapiente aliquid quidem nisi repudiandae. Omnis voluptatum fuga aut dignissimos. Dolores eos commodi est fugiat debitis et rerum. Culpa architecto veritatis amet libero quasi exercitationem ipsa eligendi. Sunt necessitatibus facilis voluptatem alias consequuntur harum voluptatem. Nihil rem voluptatem quia minima adipisci. Consequatur fugiat architecto nulla. Reprehenderit odio magni qui temporibus non. Porro assumenda ipsum rem ipsam minus aliquid. Nobis sit unde enim ut laboriosam. Qui mollitia molestiae similique. Occaecati repellendus quo suscipit veniam quae. Sed consequatur a omnis sapiente et. Dolorem est dolor explicabo minus consectetur. Error fugit non dolorum atque. Expedita est qui nesciunt laudantium. Molestias placeat et sunt magnam. Quam ad suscipit aliquid rerum ab. Ipsum quam non soluta nemo illum explicabo. Accusantium praesentium sapiente consectetur et dolores ipsum qui deserunt. Sint consequatur alias accusantium numquam ad accusantium autem vitae. Rerum iusto vero aut amet.', '1', 31, 3, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(50, 'Laborum voluptatum doloribus quidem.', 'laborum-voluptatum-doloribus-quidem', 'Iure id exercitationem accusantium et ipsum. Illo et vel occaecati necessitatibus. Tempore nulla praesentium accusantium ut. Deserunt possimus saepe eligendi facere praesentium atque vitae quas.', 'Est recusandae architecto soluta. Tempora earum sed modi optio et autem. Reprehenderit voluptate omnis sit velit. Numquam illum praesentium similique enim veniam. Est unde ducimus totam minus quia non voluptas. Voluptatem minima et facere maiores soluta qui eaque. Qui occaecati consequatur quasi dolores pariatur consequatur. Possimus voluptatem repellendus ut velit. Non vel voluptas doloribus alias accusantium occaecati. Fugit voluptatem aliquam dolorem dignissimos minus voluptatem sit. Libero dolorum cupiditate ipsam harum eos non. Ad eos sit consequuntur sint animi esse. Dolor sit hic quia reprehenderit dolorum aperiam dolor. Ut rerum repellat fuga possimus. Doloremque rerum voluptates aspernatur tempore ut. Alias magni eaque blanditiis nobis qui adipisci dicta. Aliquam debitis cum veniam unde maiores. Assumenda illo autem impedit omnis. Placeat recusandae sapiente commodi et neque enim voluptates. Dignissimos et rerum labore voluptas dolor velit. Blanditiis qui magni dolores aliquam. Et ipsam aut sed nostrum consequatur officiis. Reprehenderit rerum ut quibusdam fugit nemo eos. Totam error vel qui officia eum voluptates. Ut dolores officiis occaecati inventore. Nam quam necessitatibus corporis. Omnis aspernatur quisquam aut aliquid sit. Sequi sint vero itaque voluptatibus eaque rerum. Voluptatem enim aliquam libero excepturi dolore rem. Laborum ratione aliquam dignissimos recusandae voluptatum et voluptatibus consectetur. Et vel cupiditate consequatur. Perspiciatis possimus odio aliquid qui quasi aut. Ipsum deserunt suscipit dolor aut cumque delectus. Qui eaque minima debitis facilis non tempore. Incidunt omnis reiciendis inventore omnis. Voluptatem aut molestias exercitationem nam numquam. Ut aliquid reprehenderit odit quia libero. Quibusdam fugit quas enim quaerat. Eos maiores pariatur laboriosam nulla ex culpa enim. Architecto molestias qui delectus. Voluptatem tempora molestiae mollitia sint. Rem enim quis voluptate iste asperiores sequi.', '2', 46, 1, '2024-02-24 03:28:46', '2024-02-24 03:28:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 6, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 5, NULL, NULL),
(5, 3, 1, NULL, NULL),
(6, 3, 8, NULL, NULL),
(7, 4, 2, NULL, NULL),
(8, 4, 8, NULL, NULL),
(9, 5, 2, NULL, NULL),
(10, 5, 7, NULL, NULL),
(11, 6, 1, NULL, NULL),
(12, 6, 7, NULL, NULL),
(13, 7, 2, NULL, NULL),
(14, 7, 5, NULL, NULL),
(15, 8, 1, NULL, NULL),
(16, 8, 7, NULL, NULL),
(17, 9, 2, NULL, NULL),
(18, 9, 6, NULL, NULL),
(19, 10, 3, NULL, NULL),
(20, 10, 6, NULL, NULL),
(21, 11, 2, NULL, NULL),
(22, 11, 8, NULL, NULL),
(23, 12, 2, NULL, NULL),
(24, 12, 8, NULL, NULL),
(25, 13, 4, NULL, NULL),
(26, 13, 7, NULL, NULL),
(27, 14, 4, NULL, NULL),
(28, 14, 5, NULL, NULL),
(29, 15, 3, NULL, NULL),
(30, 15, 5, NULL, NULL),
(31, 16, 2, NULL, NULL),
(32, 16, 5, NULL, NULL),
(33, 17, 3, NULL, NULL),
(34, 17, 8, NULL, NULL),
(35, 18, 4, NULL, NULL),
(36, 18, 5, NULL, NULL),
(37, 19, 2, NULL, NULL),
(38, 19, 7, NULL, NULL),
(39, 20, 1, NULL, NULL),
(40, 20, 6, NULL, NULL),
(41, 21, 4, NULL, NULL),
(42, 21, 6, NULL, NULL),
(43, 22, 2, NULL, NULL),
(44, 22, 6, NULL, NULL),
(45, 23, 4, NULL, NULL),
(46, 23, 8, NULL, NULL),
(47, 24, 4, NULL, NULL),
(48, 24, 5, NULL, NULL),
(49, 25, 1, NULL, NULL),
(50, 25, 8, NULL, NULL),
(51, 26, 2, NULL, NULL),
(52, 26, 7, NULL, NULL),
(53, 27, 2, NULL, NULL),
(54, 27, 5, NULL, NULL),
(55, 28, 1, NULL, NULL),
(56, 28, 5, NULL, NULL),
(57, 29, 3, NULL, NULL),
(58, 29, 8, NULL, NULL),
(59, 30, 1, NULL, NULL),
(60, 30, 5, NULL, NULL),
(61, 31, 3, NULL, NULL),
(62, 31, 7, NULL, NULL),
(63, 32, 3, NULL, NULL),
(64, 32, 8, NULL, NULL),
(65, 33, 1, NULL, NULL),
(66, 33, 8, NULL, NULL),
(67, 34, 1, NULL, NULL),
(68, 34, 7, NULL, NULL),
(69, 35, 4, NULL, NULL),
(70, 35, 7, NULL, NULL),
(71, 36, 1, NULL, NULL),
(72, 36, 7, NULL, NULL),
(73, 37, 4, NULL, NULL),
(74, 37, 6, NULL, NULL),
(75, 38, 3, NULL, NULL),
(76, 38, 6, NULL, NULL),
(77, 39, 2, NULL, NULL),
(78, 39, 7, NULL, NULL),
(79, 40, 4, NULL, NULL),
(80, 40, 5, NULL, NULL),
(81, 41, 1, NULL, NULL),
(82, 41, 8, NULL, NULL),
(83, 42, 3, NULL, NULL),
(84, 42, 7, NULL, NULL),
(85, 43, 3, NULL, NULL),
(86, 43, 8, NULL, NULL),
(87, 44, 4, NULL, NULL),
(88, 44, 7, NULL, NULL),
(89, 45, 3, NULL, NULL),
(90, 45, 7, NULL, NULL),
(91, 46, 2, NULL, NULL),
(92, 46, 6, NULL, NULL),
(93, 47, 2, NULL, NULL),
(94, 47, 6, NULL, NULL),
(95, 48, 4, NULL, NULL),
(96, 48, 5, NULL, NULL),
(97, 49, 4, NULL, NULL),
(98, 49, 6, NULL, NULL),
(99, 50, 1, NULL, NULL),
(100, 50, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(2, 'Bloger', 'web', '2024-02-24 03:28:46', '2024-02-24 03:28:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('erKBKa5GlzIUWJqKgWhdcuZ6hbNaQCr4apkDIAqx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMFdIbHZ5ZlhFZ3V5cDZESXlTbmtRaTNtVTc2MlJaMHpTem93QkdiVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkLjlCdDVxYUxNb2M1Mjc2WUllSE9ydWNudXFmRUlsMGhGWWhQb3psZTBXRUouQ2xTSTlMc3UiO30=', 1708788353);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'voluptatem', 'voluptatem', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(2, 'aperiam', 'aperiam', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(3, 'molestiae', 'molestiae', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(4, 'est', 'est', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(5, 'aut', 'aut', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(6, 'modi', 'modi', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(7, 'doloribus', 'doloribus', '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(8, 'cum', 'cum', '2024-02-24 03:28:46', '2024-02-24 03:28:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Andres carmona', 'andrescarmonaztxt2003@gmail.com', NULL, '$2y$12$.9Bt5qaLMoc5276YIeHOrucnuqfEIl0hFYhPozle0WEJ.ClSI9Lsu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(2, 'Parker Koss', 'brando57@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mC6BpR0CQV', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(3, 'Itzel Olson', 'felicia.goyette@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WJAbHDhY1i', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(4, 'Eleanora Morissette Jr.', 'mpaucek@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Stm8SMmvNI', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(5, 'Melba Erdman', 'laron.jakubowski@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'r2XnRbAFEb', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(6, 'Velva Yost', 'rwunsch@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YsRVdUrMMQ', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(7, 'Isaac Swift', 'ptremblay@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WsnCK1plHv', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(8, 'Anita Littel', 'yesenia.reynolds@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'hTevN1EorG', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(9, 'Prof. Velva Haley II', 'ashly05@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'sAWQ42wIEe', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(10, 'Dr. Annalise Wuckert III', 'wmraz@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ppMTsnOvNY', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(11, 'Alison Kuhic', 'grant49@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4LiHwV572Y', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(12, 'Prof. Kenton Marks V', 'lee17@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'W5qOYPla4D', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(13, 'Kaci O\'Kon', 'jonas.goldner@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Fi5DVs6T8G', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(14, 'Thalia Glover', 'gideon29@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Ghdv3RVhqU', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(15, 'Reta Considine', 'grady.catherine@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'v0OvNxtEUe', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(16, 'Dr. Jayce Wisozk', 'schinner.justus@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'U3oPHdNhUf', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(17, 'Prof. Don Quitzon V', 'elias.lehner@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '9Zw5psyLKq', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(18, 'Demario Tromp DVM', 'pearl65@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'pjcxddxoBQ', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(19, 'Dr. Bernardo Abernathy', 'dhudson@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mWn2ldANxo', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(20, 'Jace Yost', 'mikayla42@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'X3Z2iFEUOw', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(21, 'Ms. Aubree Schimmel', 'tondricka@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'p5dMTaRJ4L', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(22, 'Candace Runte', 'delfina93@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'IdmrlKrOK7', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(23, 'Kari Leffler', 'njacobi@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Kc9kB8A1m3', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(24, 'Kristina Spencer', 'dejon.hackett@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'J9zke17JUZ', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(25, 'Prof. German Schmeler', 'greenholt.brannon@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UHGDU3ibDO', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(26, 'Katelynn Morissette', 'treutel.jedediah@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cd2K6fK4uW', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(27, 'Dr. Ivory Quigley', 'serenity.fay@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'E2DTYnFjJf', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(28, 'Eusebio Dibbert', 'demetrius18@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7CzIOlu8KT', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(29, 'Grace Hermann', 'meagan.larson@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PgABdgBg3z', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(30, 'Benton Predovic', 'catalina76@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'hw3hmtdbpL', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(31, 'Shanna Schowalter', 'wabbott@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'W9SioVumpL', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(32, 'Willa Stark', 'ncummerata@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Zt8R2YrC0Z', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(33, 'Seamus Brakus', 'magali63@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1TVml8dC7J', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(34, 'Adriel Ziemann', 'wgreen@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'QnB3duP45w', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(35, 'Trystan Hoppe', 'thirthe@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'utJcfqXzun', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(36, 'Karine O\'Reilly', 'keegan.mayert@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'LRmeNXngJq', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(37, 'Dr. Judah Ratke', 'gulgowski.alisa@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ifFsT2P6Uc', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(38, 'Angelo Friesen', 'tprohaska@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'w7qZePklyX', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(39, 'Mrs. Rozella Lakin', 'goyette.amy@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2OrrkKrJZ1', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(40, 'Tyler Hudson', 'verla52@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'E4yemOQjtL', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(41, 'Emmet Walter', 'vwaelchi@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xA75NRkeFl', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(42, 'Johathan Towne', 'hugh.gaylord@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '91O2loXnjJ', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(43, 'Carlee Jerde', 'jakayla95@example.com', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dCbw49G2p1', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(44, 'Jonathon Cole', 'vkuhn@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3iyvT5WAYN', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(45, 'Woodrow Corwin', 'zoconner@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'R7P0ZbDFR7', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(46, 'Dr. Ludie Macejkovic', 'feil.jackeline@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'nYaF4i4OCx', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(47, 'Alvena Spinka III', 'holly05@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'OLZUzElV9l', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(48, 'Dr. Kris Willms', 'jaiden96@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dVoNHRaGDp', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(49, 'Jany Dach', 'maximilian.price@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'rretaeO5Mt', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(50, 'Isabella Kris II', 'toy.lowell@example.net', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jHHQsXzXyI', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46'),
(51, 'Ari Towne', 'vena18@example.org', '2024-02-24 03:28:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZiUsFqtq5i', NULL, NULL, '2024-02-24 03:28:46', '2024-02-24 03:28:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
