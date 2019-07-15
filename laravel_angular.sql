-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 15, 2019 at 04:48 AM
-- Server version: 10.3.11-MariaDB
-- PHP Version: 7.3.0beta3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_angular`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `isbn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `author`, `description`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '1234-5678-9101', 'Quos iste.', 'Eva Ani Puspita S.Pt', 'Similique deserunt illo consequuntur provident sint et facilis. Commodi eum repellat ratione placeat nemo dicta. Dolor blanditiis illo rerum sequi hic amet minima.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(2, '1234-5678-9102', 'Sint fuga aspernatur saepe.', 'Puspa Zulfa Puspasari', 'Laboriosam amet architecto aut veniam ipsam. Quasi ea voluptatem commodi ipsam. Qui illum magnam libero repellat dolores.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(3, '1234-5678-9103', 'Omnis tempora rem.', 'Febi Nasyiah', 'Ab ipsum sit veniam suscipit ut cumque eos. Eum architecto unde libero quod. Molestiae officiis veniam voluptatum soluta alias et consequatur. Dicta non minus dolor expedita vel.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(4, '1234-5678-9104', 'Consequatur beatae et ullam.', 'Puspa Ami Mayasari S.Farm', 'Vitae voluptatibus delectus voluptate rerum accusamus veniam molestias. Nihil ratione qui libero.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(5, '1234-5678-9105', 'Ipsum doloremque aut saepe.', 'Bella Widiastuti', 'Ducimus sunt eum vero. Quaerat voluptatibus qui sequi qui quo. Quos adipisci blanditiis aut et.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(6, '1234-5678-9106', 'Omnis repellat officia autem.', 'Taufik Kala Prakasa', 'Voluptas enim veniam dolor ut magni debitis. Ut est qui aut labore eum perferendis quis illo. Sit voluptatem commodi non rem modi.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(7, '1234-5678-9107', 'Velit repudiandae quidem tempora.', 'Purwanto Marbun S.T.', 'Ut ut ullam quibusdam laborum impedit. Veniam dolore quia eos deserunt. Sit iure et sint omnis non maxime voluptatem. Sunt tenetur corporis molestias dolor odio esse et.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(8, '1234-5678-9108', 'Est qui qui consectetur quas.', 'Clara Nuraini M.M.', 'Perferendis ad eum ipsa ad fuga. Consequatur quis nisi amet dolores nam iste repudiandae. Est sequi alias sapiente soluta beatae nostrum et.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(9, '1234-5678-9109', 'Et quo ut.', 'Karen Nuraini S.Pd', 'Delectus accusantium doloribus ut hic ut architecto. Debitis perferendis dolorum ea dolore blanditiis. Quia maxime optio facere consequatur quis sit et.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(10, '1234-5678-91010', 'Nostrum nostrum laudantium non.', 'Aisyah Riyanti', 'Et blanditiis aut vitae recusandae ut aspernatur corrupti tenetur. Dolorum eos omnis est ab omnis ut dolores. Laborum doloremque rerum autem magnam optio. Sed sunt quam qui harum impedit.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(11, '1234-5678-91011', 'In et quo.', 'Embuh Mahendra', 'Eum quasi quis quia. Quasi illo modi sed voluptatem est et hic. Qui earum molestiae possimus voluptate at. Quaerat nisi quibusdam voluptates quia modi. Accusantium vitae doloremque ullam velit.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(12, '1234-5678-91012', 'Voluptas amet corrupti sed.', 'Intan Prastuti', 'Voluptatem suscipit tempora est tenetur vel occaecati aut ut. Adipisci fuga provident atque ab. Aut incidunt et quia sunt quas nihil ullam.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(13, '1234-5678-91013', 'Et necessitatibus qui.', 'Lamar Ikhsan Pradana S.Farm', 'Saepe odio dolorem accusantium fugit debitis quis aut error. Alias recusandae officia exercitationem repellendus dolore. Officia velit soluta officia vero neque illo.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(14, '1234-5678-91014', 'Sit sunt laudantium ab.', 'Gina Laksita', 'Sunt eum nihil cum quos ab explicabo commodi. At eum et molestiae ut doloremque impedit quisquam. Rem rem quis cumque.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(15, '1234-5678-91015', 'Qui adipisci eos.', 'Empluk Gunarto', 'Facere esse veritatis eveniet sit labore delectus. Qui adipisci aperiam nihil natus est neque blanditiis. Voluptatum exercitationem expedita dicta omnis.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(16, '1234-5678-91016', 'Alias quod maxime ea neque.', 'Alika Winarsih', 'Sed explicabo rerum ipsa consectetur non. Enim officiis voluptate et. Odio corrupti at et molestiae consequatur illo minima.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(17, '1234-5678-91017', 'Qui harum consequatur ducimus.', 'Sakti Opan Tampubolon S.I.Kom', 'Commodi ducimus et fugiat numquam a consequatur ipsa. Perspiciatis laborum totam earum fugit. Ab tempore aut dolores veritatis dolorum doloribus.', '2019-07-14 10:56:06', '2019-07-14 10:56:06', 1, 1),
(18, '1234-5678-91018', 'Sunt minus deleniti exercitationem.', 'Najwa Latika Utami', 'Voluptatem sed nobis error voluptatibus tempore corrupti dolore. Molestiae corrupti deleniti similique explicabo nostrum repellat. Perferendis et iure iste perspiciatis expedita ab.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(19, '1234-5678-91019', 'Nihil quia et esse.', 'Nadia Laras Pertiwi S.H.', 'Nulla cupiditate dolorum voluptas possimus qui facilis et. Blanditiis et molestiae aut placeat asperiores numquam sapiente. Et sit aut velit molestias quam sed nulla.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(20, '1234-5678-91020', 'Natus explicabo aperiam.', 'Qori Dewi Mulyani', 'Ut rerum voluptatem non voluptatum. Nam numquam est repellat expedita.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(21, '1234-5678-91021', 'Enim sit harum quaerat.', 'Unjani Pertiwi S.H.', 'Voluptate et consectetur a deserunt. Omnis occaecati placeat minima ducimus molestias quia ea. Sunt placeat consequuntur ipsum aut quis. Nihil dolor illo eligendi quo nisi voluptate.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(22, '1234-5678-91022', 'Nihil provident possimus.', 'Sarah Maryati', 'Aperiam voluptates assumenda placeat. Sint ab qui qui quibusdam optio quo quos. Unde pariatur suscipit voluptatem id.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(23, '1234-5678-91023', 'Voluptatem adipisci vel.', 'Rachel Yuniar', 'Voluptatem in aperiam eum et optio aut. Velit voluptatibus et quibusdam. Aut eaque maiores est et molestiae. Qui aut modi sed quia omnis qui quod dicta. Perspiciatis qui nobis placeat iure cumque.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(24, '1234-5678-91024', 'Ipsa in mollitia aut.', 'Kania Zulfa Safitri', 'Officia ut tempore aut vel. Incidunt neque quo est reprehenderit necessitatibus. Similique vitae qui perferendis aut illum. Sint modi voluptatem earum deleniti sapiente nemo.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(25, '1234-5678-91025', 'Eum maxime id ullam.', 'Ciaobella Kuswandari', 'Odio dolor iusto cumque ad cupiditate expedita. Adipisci in aliquam odio dolor amet tempora deleniti. Eligendi id et rerum at blanditiis fugiat odit.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(26, '1234-5678-91026', 'Qui commodi.', 'Najib Dongoran', 'Non hic quia a maiores. Alias porro rerum quos eum quibusdam eaque voluptas. Velit et est pariatur ad repudiandae. Rerum quas deleniti quis.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(27, '1234-5678-91027', 'Modi sunt soluta commodi.', 'Taufan Galih Siregar', 'Aut qui commodi autem. Sequi sed eum consequatur doloribus. Labore similique quas eum quo atque. Consequatur repudiandae ad minima et consectetur. Omnis cupiditate totam alias unde minus omnis.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(28, '1234-5678-91028', 'Vel et inventore.', 'Ina Safitri', 'Exercitationem temporibus omnis ab. Dolor perferendis officia non sint nulla mollitia. Perspiciatis nihil modi doloribus sed ipsa voluptate.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(29, '1234-5678-91029', 'Et quae dolorum.', 'Jelita Ayu Zulaika S.E.I', 'Sed quibusdam maxime suscipit. Qui minus qui eos dolor incidunt asperiores debitis.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(30, '1234-5678-91030', 'Ipsam ut facere excepturi.', 'Jati Cahya Tamba M.TI.', 'Eligendi qui ut sit tenetur dolores. Dolore consequatur dolores voluptatem. Voluptas ullam sapiente quas assumenda consectetur.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(31, '1234-5678-91031', 'Ratione repellat voluptatem.', 'Ganda Bahuraksa Tarihoran', 'Qui est aut quo odit nostrum culpa. Ipsum alias aut tempore unde nulla velit. Minima consequatur explicabo quas aliquam magnam hic.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(32, '1234-5678-91032', 'Laudantium delectus est vero.', 'Agus Darmaji Adriansyah', 'Quod ullam consequatur sint et dolor occaecati harum. Sit occaecati facilis possimus ut explicabo vel. Sit et distinctio sit laudantium animi ab et.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(33, '1234-5678-91033', 'Aut est impedit nobis.', 'Genta Padmasari', 'Delectus molestias molestiae sunt illum hic libero. Occaecati fugiat molestias omnis eligendi repudiandae.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(34, '1234-5678-91034', 'Cupiditate sunt nesciunt.', 'Respati Oskar Hutasoit', 'Omnis consequuntur omnis ab debitis et fuga aperiam. Est autem quaerat consequatur. Facilis est officia et accusamus consequatur molestiae non. Magnam reiciendis tenetur a et.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(35, '1234-5678-91035', 'Est laboriosam deleniti et.', 'Wani Uyainah', 'Alias dolorem et quibusdam beatae minus consectetur. Aperiam neque autem vel illo laboriosam officia quibusdam. Fuga incidunt at aut quasi laboriosam sed quasi.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(36, '1234-5678-91036', 'Ipsa et ab.', 'Olivia Kuswandari', 'Et est et ullam dolores. Excepturi vel id exercitationem accusamus. Sint numquam nemo aliquam id dolorem. Voluptas voluptatem ut possimus soluta vero.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(37, '1234-5678-91037', 'Sed soluta sint.', 'Wulan Utami', 'Rerum et reprehenderit et nam. Voluptates qui unde sed laudantium. Eveniet eos vero aliquam inventore quo. Ex voluptas et ut et.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(38, '1234-5678-91038', 'Consequatur omnis voluptas et.', 'Banawi Prasasta S.Pd', 'Eos qui sed quia molestias. Enim doloribus natus cumque qui alias itaque. Vel beatae consequuntur aliquid aut.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(39, '1234-5678-91039', 'Unde doloremque dolores et.', 'Timbul Napitupulu', 'Cupiditate a nisi sit alias soluta similique ullam. Quia voluptatem voluptatem et est. Delectus vitae vel facere facere earum est quidem.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(40, '1234-5678-91040', 'Ab cum repudiandae odio.', 'Elisa Lestari', 'Explicabo exercitationem fugiat temporibus unde tenetur. Tempora nostrum error amet qui dignissimos consequatur vel. Quod amet doloribus qui eum.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(41, '1234-5678-91041', 'Assumenda esse ducimus molestias.', 'Almira Usada', 'Aut qui dolorem ducimus totam consequuntur quia eum harum. Sequi ad illum aut vitae ex occaecati autem. Ea vel voluptatem culpa totam in iure exercitationem blanditiis. Dolor non excepturi ipsa et.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(42, '1234-5678-91042', 'Voluptatem velit quae.', 'Umi Kuswandari', 'Corporis et beatae est molestiae qui enim. Ipsam magni eos corporis. Eos corporis quos quas.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(43, '1234-5678-91043', 'Consequatur voluptatibus vero.', 'Endra Najmudin', 'Deserunt quas rerum sequi quo. Et qui quia sapiente voluptatem cumque et adipisci nihil. Nulla sit quidem dolores porro ut iusto.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(44, '1234-5678-91044', 'Ad illum doloremque.', 'Tira Zulaika', 'Et tenetur nobis aut. Ad deleniti ducimus eaque ab enim. Qui est quaerat exercitationem soluta accusantium in rerum.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(45, '1234-5678-91045', 'Aut et consequatur neque.', 'Leo Nugroho', 'Voluptatum modi omnis consequuntur velit cum. Iure quasi in molestiae totam. Aut nulla illum placeat asperiores. Nulla minus dignissimos ea labore cum ullam voluptatem.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(46, '1234-5678-91046', 'Dolor laudantium quaerat harum.', 'Elvin Anggriawan', 'Nostrum est laudantium optio. Expedita qui aut necessitatibus alias. Consequatur pariatur sint et sed doloribus recusandae non. Exercitationem qui et a quibusdam.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(47, '1234-5678-91047', 'Ipsam nemo vel ut.', 'Ade Ayu Halimah', 'Perferendis ipsa dolor sequi laudantium minima recusandae. Dolorum quo velit in qui non. Numquam libero ut temporibus aut asperiores consectetur. Ea impedit ipsa nam sit.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(48, '1234-5678-91048', 'Amet vitae consectetur ullam perferendis.', 'Gamblang Najam Wibowo S.Ked', 'Sunt ea voluptas libero ipsam ea repudiandae. Quia perferendis voluptate harum porro. Modi ratione est ducimus praesentium laborum corrupti.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(49, '1234-5678-91049', 'Sed aut.', 'Martana Marpaung', 'Sint delectus magni sunt voluptate id et consectetur. Voluptatem quaerat qui aut qui.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1),
(50, '1234-5678-91050', 'Fugiat veniam facere.', 'Mulyanto Wacana', 'Nesciunt sed quia maxime eius. Architecto inventore deserunt culpa similique deserunt corporis ut. Facere itaque sit cumque accusamus dolorem.', '2019-07-14 10:56:07', '2019-07-14 10:56:07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nip` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `birth_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `nip`, `birth_place`, `dob`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Amelia Ajeng Haryanti M.Ak', '284260', 'Padangsidempuan', '1985-07-08', 'Psr. Thamrin No. 548, Kendari 59348, JaBar', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(2, 'Soleh Bahuraksa Narpati S.IP', '443850', 'Pontianak', '1971-04-04', 'Gg. BKR No. 174, Banjarbaru 45593, Lampung', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(3, 'Cahyono Mahmud Rajasa S.IP', '972057', 'Bogor', '1984-07-16', 'Jr. Jamika No. 349, Palangka Raya 81442, NTT', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(4, 'Ani Kuswandari', '955371', 'Tidore Kepulauan', '1984-04-24', 'Psr. Adisumarmo No. 33, Serang 47616, NTB', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(5, 'Nyoman Firmansyah', '705021', 'Tomohon', '1976-08-07', 'Dk. Pahlawan No. 202, Sukabumi 39291, BaBel', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(6, 'Edison Natsir', '109393', 'Tanjungbalai', '1971-12-09', 'Dk. M.T. Haryono No. 918, Mojokerto 21428, Gorontalo', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(7, 'Endah Nasyidah', '140263', 'Tegal', '1981-01-29', 'Jr. Sutan Syahrir No. 313, Banjarmasin 66602, KalBar', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(8, 'Julia Ellis Wulandari', '857166', 'Bandar Lampung', '1979-05-10', 'Psr. Surapati No. 117, Pekalongan 83653, SulTra', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(9, 'Kayla Suartini S.Pd', '644503', 'Tasikmalaya', '1977-09-01', 'Psr. Rajawali Timur No. 284, Probolinggo 85221, Bengkulu', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(10, 'Wira Santoso', '177173', 'Sawahlunto', '1980-11-22', 'Gg. Diponegoro No. 229, Dumai 18684, SulUt', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(11, 'Dewi Susanti', '239485', 'Langsa', '1983-03-25', 'Jln. Ters. Buah Batu No. 877, Tebing Tinggi 12300, KalTim', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(12, 'Suci Purwanti', '780272', 'Kendari', '1985-06-25', 'Gg. Baing No. 41, Kediri 27323, KalTeng', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(13, 'Leo Siregar', '655666', 'Manado', '1979-08-13', 'Jr. Sampangan No. 727, Palu 87746, JaTeng', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(14, 'Mujur Bajragin Hakim S.Sos', '676997', 'Medan', '1981-01-06', 'Jr. Ters. Kiaracondong No. 519, Kupang 86292, SulTeng', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(15, 'Harimurti Pradana', '240768', 'Semarang', '1979-03-19', 'Psr. Samanhudi No. 506, Tanjungbalai 27595, Papua', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(16, 'Elon Irwan Utama', '680340', 'Administrasi Jakarta Timur', '1982-04-21', 'Jr. Cihampelas No. 475, Pariaman 15573, Aceh', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(17, 'Rahayu Andriani M.M.', '553779', 'Metro', '1973-09-11', 'Ds. Banda No. 428, Medan 98356, JaBar', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(18, 'Luthfi Nasrullah Pradipta S.T.', '817842', 'Sorong', '1975-07-09', 'Jln. Suryo Pranoto No. 912, Banjarmasin 52580, Jambi', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(19, 'Rini Utami', '693953', 'Sukabumi', '1970-11-22', 'Jln. Rajiman No. 679, Metro 14578, KalUt', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(20, 'Shania Pudjiastuti', '525886', 'Depok', '1983-11-25', 'Jln. Cikapayang No. 643, Samarinda 26419, Aceh', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(21, 'Tedi Jinawi Pradipta M.M.', '500129', 'Serang', '1982-05-15', 'Gg. Gatot Subroto No. 152, Tidore Kepulauan 25107, MalUt', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(22, 'Cinta Pratiwi', '288389', 'Kendari', '1970-06-23', 'Jln. Abdul No. 89, Bekasi 48801, BaBel', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(23, 'Taufan Gunawan', '683148', 'Dumai', '1974-10-01', 'Psr. S. Parman No. 212, Cimahi 84572, Riau', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(24, 'Balijan Jono Nugroho', '549591', 'Sungai Penuh', '1979-05-28', 'Kpg. Baja Raya No. 488, Sawahlunto 12041, Bali', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(25, 'Lala Zulaika', '299338', 'Malang', '1974-04-26', 'Jr. Agus Salim No. 464, Kupang 62850, SumUt', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(26, 'Sakura Amelia Widiastuti', '764849', 'Bandar Lampung', '1988-05-07', 'Ds. Imam No. 240, Parepare 51482, Maluku', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(27, 'Ikin Sidiq Anggriawan', '831891', 'Bogor', '1973-05-26', 'Jln. Sukajadi No. 568, Dumai 88271, BaBel', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(28, 'Kezia Namaga', '337170', 'Madiun', '1976-11-30', 'Ds. Industri No. 571, Banjarbaru 92755, NTB', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(29, 'Irfan Mulya Manullang S.T.', '696548', 'Samarinda', '1976-04-27', 'Jln. Siliwangi No. 845, Padangpanjang 19119, SulTeng', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(30, 'Prabowo Ramadan', '194753', 'Palu', '1972-12-10', 'Jr. Rajawali No. 980, Cimahi 48693, Aceh', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(31, 'Yessi Pratiwi', '452864', 'Prabumulih', '1973-08-04', 'Kpg. Jakarta No. 356, Tidore Kepulauan 82816, NTT', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(32, 'Purwadi Gangsar Saptono S.I.Kom', '463535', 'Sibolga', '1971-10-01', 'Kpg. Jakarta No. 530, Tegal 61933, JaTim', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(33, 'Ajiono Erik Natsir', '275960', 'Cirebon', '1977-12-28', 'Ki. Tambak No. 202, Sorong 94327, NTB', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(34, 'Putri Padmasari', '462515', 'Payakumbuh', '1987-08-30', 'Ki. Moch. Yamin No. 174, Tangerang 36660, BaBel', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(35, 'Kemal Agus Pradipta M.Farm', '440689', 'Pasuruan', '1987-03-09', 'Kpg. Rajawali Timur No. 662, Probolinggo 24555, Maluku', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(36, 'Ana Permata', '982013', 'Magelang', '1977-10-03', 'Kpg. Baladewa No. 186, Surabaya 42526, KalSel', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(37, 'Ami Zamira Agustina', '729779', 'Mojokerto', '1981-06-12', 'Jln. Ters. Buah Batu No. 879, Sungai Penuh 70865, SumBar', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(38, 'Darman Permadi', '689457', 'Depok', '1978-09-04', 'Dk. Raya Ujungberung No. 179, Bukittinggi 55906, KepR', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(39, 'Jamalia Yuniar S.E.I', '344746', 'Samarinda', '1986-03-21', 'Ki. Hang No. 312, Jambi 63677, KalSel', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(40, 'Sabar Satya Saputra M.Ak', '279894', 'Tidore Kepulauan', '1977-06-13', 'Kpg. Mahakam No. 72, Pekalongan 90066, JaBar', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(41, 'Betania Nurdiyanti', '231443', 'Cirebon', '1985-04-26', 'Ds. Basket No. 587, Subulussalam 57783, KalSel', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(42, 'Ifa Victoria Anggraini M.Farm', '498342', 'Prabumulih', '1983-05-10', 'Ds. Daan No. 990, Tangerang Selatan 56579, NTB', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(43, 'Ami Lailasari', '315940', 'Tidore Kepulauan', '1975-02-09', 'Ki. Baha No. 550, Administrasi Jakarta Barat 35314, NTT', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(44, 'Kardi Budiyanto S.I.Kom', '458954', 'Padang', '1987-11-26', 'Jln. Abdul. Muis No. 378, Sawahlunto 30734, Aceh', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(45, 'Jarwadi Sihombing', '258422', 'Langsa', '1978-08-31', 'Ds. Banda No. 346, Probolinggo 52234, JaBar', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(46, 'Dina Mandasari', '552489', 'Ambon', '1983-03-17', 'Psr. Raya Setiabudhi No. 715, Ambon 47120, Maluku', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(47, 'Ghaliyati Agustina', '860937', 'Sibolga', '1979-10-16', 'Jln. Mulyadi No. 475, Ambon 39584, SumUt', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(48, 'Sarah Lintang Nuraini', '622511', 'Banjar', '1980-08-06', 'Jln. Raya Ujungberung No. 967, Pariaman 83063, KalTeng', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(49, 'Ghaliyati Rahayu', '920116', 'Palangka Raya', '1980-10-26', 'Kpg. Bak Mandi No. 701, Pematangsiantar 14211, Gorontalo', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07'),
(50, 'Gawati Wirda Yuniar M.M.', '629884', 'Samarinda', '1987-01-23', 'Kpg. Pattimura No. 152, Administrasi Jakarta Timur 18502, SulUt', 1, 1, '2019-07-14 10:56:07', '2019-07-14 10:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_07_12_095334_create_books_table', 1),
('2019_07_14_124552_add_created_updated_by_column_to_books_table', 1),
('2019_07_14_144114_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$10$gQ2QrjBBFsydRcrlx64ZfOme/EZJM8jVnCBi/XgZKLvyAtX.6HP2q', 'nZ8R3GuzBHvJ3jty1oKOdsbOto8GQmBYXWTujqvvWeHjwNPB6Es7MqX7rona', '2019-07-14 10:56:06', '2019-07-14 19:35:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_created_by_foreign` (`created_by`),
  ADD KEY `books_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_created_by_foreign` (`created_by`),
  ADD KEY `employees_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employees_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
