-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 02:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(30) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `description`, `cover_photo`, `date_created`) VALUES
(1, 'Pop', 'Pop music, short for \"popular music,\" is a genre characterized by its mass appeal and catchiness. It often features a strong melody, simple lyrics, and a repetitive chorus. Pop music is known for its wide range of influences, incorporating elements from various other genres to create a sound that appeals to a broad audience.', '1721401380_pop.jpeg', '2020-11-19 08:26:53'),
(2, 'Rock', 'Rock music is a genre that evolved from rock and roll in the 1950s and 1960s. It typically features electric guitars, bass guitar, drums, and strong vocals. Rock music is known for its emphasis on live performance, powerful sound, and often rebellious themes.', '1721401560_rock.jpeg', '2020-11-19 08:29:13'),
(3, 'Country Music', 'Country music evolved from folk music, blues, and Western music. It typically features acoustic guitars, fiddles, banjos, and harmonicas. Country music is known for its storytelling lyrics that often focus on life, love, and hardship, delivered with a distinct twang.', '1721402280_countery.jpeg', '2020-11-19 08:59:17'),
(4, 'Hip hop music', 'Hip hop music originated in the 1970s in the Bronx, New York City. It is characterized by rhythmic and rhyming speech (rapping), DJing, breakdancing, and graffiti art. Hip hop beats are often produced with drum machines and samples from other songs, creating a distinctive, percussive sound.', '1721401440_hip hop.jpeg', '2020-11-19 08:59:57'),
(5, 'Rock music genre', 'Rock music is a genre that evolved from rock and roll in the 1950s and 1960s. It typically features electric guitars, bass guitar, drums, and strong vocals. Rock music is known for its emphasis on live performance, powerful sound, and often rebellious themes', 'default_cover.jpg', '2020-11-19 09:59:17'),
(6, 'Rhythm and blues music genre', 'R&B music combines elements of jazz, gospel, and blues. Originating in the 1940s, it typically features soulful vocals, strong backbeats, and a smooth, groove-oriented sound. Modern R&B often incorporates elements of pop, hip hop, and electronic music.', '1721401980_rthem.jpeg', '2021-11-19 08:59:17'),
(7, 'Soul music genre', 'Soul music emerged in the late 1950s and early 1960s from the African American experience. It combines elements of R&B, gospel, and blues, characterized by passionate vocals, emotional expression, and a focus on themes of love, heartbreak, and social issues.', '1721402100_soul.jpeg', '2022-11-19 08:59:17'),
(8, 'Reggae music genre', 'Reggae music originated in Jamaica in the late 1960s. It is characterized by a strong backbeat, syncopated rhythms, and socially conscious lyrics. Reggae often features a laid-back tempo, prominent bass lines, and offbeat guitar strumming.', '1721402160_regi.jpeg', '2023-11-19 08:59:17'),
(9, 'Christian music', 'Christian music encompasses a variety of styles that express faith and worship. It includes traditional hymns, contemporary worship songs, gospel music, and Christian rock and pop. The lyrics typically focus on themes of praise, devotion, and spiritual messages.', '1721403600_cri.png', '2020-12-19 08:59:17'),
(10, 'Funk music genre', 'Funk music, which emerged in the 1960s, is characterized by its rhythmic groove and strong bass lines. It combines elements of R&B, jazz, and soul, often featuring syncopated rhythms, tight drum patterns, and vibrant horn sections. Funk music emphasizes danceability and groove.\r\n\r\n', '1721402520_fonk.jpeg', '2021-11-19 08:59:17'),
(11, 'Folk music genre', 'Folk Music Genre\r\nFolk music is traditional music that often reflects the culture and heritage of a community. It is typically acoustic, featuring instruments like the guitar, banjo, and fiddle. Folk songs often tell stories, preserve history, and convey social and political messages', '1721403840_folk.jpeg', '2021-01-19 08:59:17'),
(12, 'Jazz music genre', 'Jazz music originated in the early 20th century in African American communities. It is characterized by improvisation, complex harmonies, and syncopated rhythms. Jazz can encompass a wide range of styles, including swing, bebop, and fusion, often featuring brass and woodwind instruments.', '1721402700_jezz.jpeg', '2021-02-19 08:59:17'),
(13, 'Disco music genre', 'Disco music emerged in the 1970s, characterized by a steady four-on-the-floor beat, syncopated bass lines, and lush orchestration. It is designed for dancing, often featuring strings, horns, and electronic instruments. Disco music is known for its upbeat, energetic vibe.', '1721402820_disco.jpeg', '2021-12-19 08:59:17'),
(14, 'Classical music genre', 'Classical music genre\r\nClassical music refers to a broad tradition of Western art music spanning several centuries, from the Baroque period to the present. It typically features orchestral and chamber music, with complex compositions, formal structures, and a focus on instrumental technique and expression.', '1721403000_class.jpeg', '2020-04-19 08:59:17'),
(15, 'Electronic music genre', 'Electronic music genre\r\nElectronic music is produced using electronic devices and digital instruments. It encompasses a wide range of styles, including techno, house, and ambient music. Electronic music often features synthesized sounds, drum machines, and computer-generated effects, focusing on innovative sound design and production techniques.', '1721403240_electronic.jpeg', '2020-05-19 08:59:17'),
(16, 'Blues music genre', 'Blues music genre\r\nBlues music originated in the Deep South of the United States in the late 19th century. It is characterized by its use of the blues scale, call-and-response patterns, and expressive lyrics that often deal with themes of struggle and heartache. Blues music features guitar, harmonica, and piano.\r\n\r\n', '1721403360_blue.jpeg', '2020-05-19 08:59:17'),
(17, 'New age music genre', 'New age music genre\r\nNew Age music is a genre that emerged in the 1970s, characterized by its relaxing and meditative qualities. It often incorporates elements of ambient, classical, and world music, featuring synthesized sounds, nature recordings, and acoustic instruments to create a calming atmosphere.', '1721403420_new age.jpeg', '2020-06-19 08:59:17'),
(18, 'Traditional Music genre', 'Traditional Music genre\r\nTraditional music refers to the folk music of a particular culture or region, passed down through generations. It often includes songs, dances, and instrumental pieces that reflect the customs, beliefs, and history of a community, typically performed with traditional instruments.', '1721403720_tradi.jpeg', '2020-07-19 08:59:17'),
(19, 'Indian classical music genre', 'Indian classical music genre', 'default_cover.jpg', '2020-08-19 08:59:17'),
(20, 'Metal music genre', 'Metal music genre', 'default_cover.jpg', '2020-09-19 08:59:17'),
(21, 'Brazilian music genre', 'Brazilian music genre\r\nBrazilian music encompasses a wide variety of styles, including samba, bossa nova, and MPB (Música Popular Brasileira). It is characterized by its rhythmic diversity, incorporating African, European, and indigenous influences. Brazilian music often features rich melodies, syncopated rhythms, and vibrant percussion.', '1721403780_brazil.jpeg', '2022-11-19 08:59:17'),
(22, 'Dubstep', 'Dubstep', 'default_cover.jpg', '2022-01-19 08:59:17'),
(23, 'Salsa music genre', 'Salsa music genre', 'default_cover.jpg', '2022-07-19 08:59:17'),
(24, 'Merengue music genre', 'Merengue music genre', 'default_cover.jpg', '2022-08-19 08:59:17'),
(25, 'Bachata music genre', 'Bachata music genre\r\nBachata music is a genre from the Dominican Republic that emerged in the early 20th century. It is characterized by its romantic, often melancholic lyrics, and a distinctive guitar-based sound. Bachata music features syncopated rhythms, often with bongo drums and maracas.', '1721403960_bachata.jpeg', '2022-09-19 08:59:17'),
(26, 'Flamenco music genre', 'Flamenco music genre', 'default_cover.jpg', '2022-10-19 08:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `user_id`, `title`, `description`, `cover_image`, `date_created`) VALUES
(1, 1, 'Playlist 1', 'Nunc pellentesque at erat eu vulputate. Integer ornare nec mauris ac sodales. Maecenas venenatis rutrum urna at faucibus. Aenean feugiat, purus ac venenatis mollis, lectus nunc dapibus mauris, sed imperdiet erat augue eu mauris. In eu diam eleifend, accumsan massa vitae, tempor velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis imperdiet tortor lectus, et scelerisque massa efficitur a. In hendrerit felis nec gravida cursus. Suspendisse aliquet est vel lacus venenatis interdum. Vestibulum quis risus dolor. Aliquam feugiat sagittis nibh, id dignissim ipsum mollis et. Nunc nec sapien ligula. Donec laoreet leo eget velit tristique, vitae pulvinar velit hendrerit.', '1605833520_m2.jpg', '2020-11-20 08:52:36'),
(2, 2, 'Playlist 2', 'Nulla sollicitudin laoreet elit quis interdum. Nam dictum convallis suscipit. Etiam in sapien mauris. Nunc varius metus tortor, at porta tortor aliquet vel. Praesent a augue laoreet, mattis justo a, posuere nulla. Donec dictum tortor vel metus interdum dignissim. Vestibulum commodo aliquam gravida. Nulla facilisi.', 'play.jpg', '2020-11-20 08:58:35'),
(3, 1, 'My Playlist', 'MY Playlist', '1605833940_h1.jpg', '2020-11-20 08:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_items`
--

CREATE TABLE `playlist_items` (
  `id` int(30) NOT NULL,
  `playlist_id` int(30) NOT NULL,
  `music_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist_items`
--

INSERT INTO `playlist_items` (`id`, `playlist_id`, `music_id`, `date_created`) VALUES
(1, 6, 1, '2020-11-20 08:52:51'),
(2, 2, 2, '2020-11-20 08:58:44'),
(5, 1, 3, '2024-07-19 20:20:08'),
(6, 3, 6, '2024-07-19 21:38:23'),
(9, 3, 7, '2024-07-19 21:53:35'),
(10, 3, 8, '2024-07-19 21:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `description` text NOT NULL,
  `upath` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `genre_id`, `title`, `artist`, `description`, `upath`, `cover_image`, `date_created`) VALUES
(1, 1, 2, 'Song 101', 'BenSound', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas est massa, non ullamcorper augue sodales non. Morbi mollis venenatis augue sit amet lacinia. Cras tempor tempor urna, nec consectetur tellus ullamcorper quis. Mauris vitae blandit tellus. Sed feugiat tincidunt malesuada. Cras egestas consequat molestie. Ut non ex nec tellus vestibulum tincidunt. Suspendisse facilisis lorem id sapien euismod, id gravida felis blandit. Nam quis diam tempor, luctus nisl at, auctor velit. Nunc rhoncus, turpis et ornare sagittis, metus diam dignissim dolor, non faucibus quam leo ut lectus. Etiam accumsan tellus eu hendrerit posuere. Aliquam erat volutpat. Donec fermentum purus odio, vel sodales sapien lobortis eu. Sed neque tellus, sagittis id scelerisque at, luctus ac felis.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1605833220_bensound-creativeminds.mp3', '1605833220_m1.jpg', 2147483647),
(2, 2, 1, 'Song 102', 'BenSound', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Ut facilisis, mi eget semper euismod, urna mauris tristique ipsum, a auctor tortor leo a arcu. Duis nec felis eget diam scelerisque porttitor. Etiam ullamcorper leo auctor, imperdiet diam nec, scelerisque lacus. Sed at ornare tortor. Praesent volutpat, lacus eu molestie elementum, purus nulla pellentesque eros, sit amet viverra ex nisl quis risus. Etiam elementum posuere odio vitae lacinia. Nunc magna nunc, placerat ut neque vitae, dignissim eleifend sapien. Phasellus arcu felis, maximus vel ultrices quis, aliquam ac sapien. Sed aliquet interdum sollicitudin. Maecenas blandit tellus eget risus finibus, non gravida nunc pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1605833760_bensound-energy.mp3', '1605833760_m3.jpg', 2147483647),
(3, 1, 14, 'in-slow-motion-inspiring-ambient-loung', '', '&lt;p&gt;in-slow-motion-inspiring-ambient-loung&lt;br&gt;&lt;/p&gt;', '1721398320_in-slow-motion-inspiring-ambient-lounge-219592.mp3', 'default_cover.jpg', 2147483647),
(4, 1, 14, 'Moonlight', 'Scott Buckley  ', '&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&quot;&lt;/span&gt;&lt;b style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;Moonlight&lt;/b&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&quot; is a song written and performed by American rapper&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/XXXTentacion&quot; title=&quot;XXXTentacion&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;XXXTentacion&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&amp;nbsp;from his second studio album&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/%3F_(XXXTentacion_album)&quot; title=&quot;? (XXXTentacion album)&quot; style=&quot;color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 2px; overflow-wrap: break-word;&quot;&gt;?&lt;/a&gt;&lt;/i&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&amp;nbsp;(2018). Produced by John Cunningham, it was originally released as the third track of the album on March 16, 2018, before being&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Murder_of_XXXTentacion&quot; title=&quot;Murder of XXXTentacion&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;posthumously&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&amp;nbsp;sent to&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Rhythmic_contemporary&quot; title=&quot;Rhythmic contemporary&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;rhythmic radio&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&amp;nbsp;as the album&amp;#x2019;s third single on August 14, 2018.&lt;/span&gt;&lt;sup id=&quot;cite_ref-1&quot; class=&quot;reference&quot; style=&quot;line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 12.8px; color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Moonlight_(XXXTentacion_song)#cite_note-1&quot; style=&quot;color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 2px; overflow-wrap: break-word;&quot;&gt;[1]&lt;/a&gt;&lt;/sup&gt;&lt;sup id=&quot;cite_ref-2&quot; class=&quot;reference&quot; style=&quot;line-height: 1; unicode-bidi: isolate; text-wrap: nowrap; font-size: 12.8px; color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Moonlight_(XXXTentacion_song)#cite_note-2&quot; style=&quot;color: var(--color-progressive,#36c); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 2px; overflow-wrap: break-word;&quot;&gt;[2]&lt;/a&gt;&lt;/sup&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&amp;nbsp;The song reached many chart positions globally, including a #13 peak on the&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Billboard_Hot_100&quot; title=&quot;Billboard Hot 100&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;&lt;i&gt;Billboard&lt;/i&gt;&amp;nbsp;Hot 100&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&amp;nbsp;as well as a platinum certification following his death. It&amp;#x2019;s therefore tied with &quot;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Falling_Down_(Lil_Peep_and_XXXTentacion_song)&quot; title=&quot;Falling Down (Lil Peep and XXXTentacion song)&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;Falling Down&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&quot; (with&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Lil_Peep&quot; title=&quot;Lil Peep&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;Lil Peep&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;) as his third-highest-charting song in the United States, with both songs falling behind &quot;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Sad!&quot; title=&quot;Sad!&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;Sad!&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&quot; and&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Lil_Wayne&quot; title=&quot;Lil Wayne&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;Lil Wayne&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&amp;#x2019;s &quot;&lt;/span&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/Don%27t_Cry_(Lil_Wayne_song)&quot; title=&quot;Don&amp;#x2019;t Cry (Lil Wayne song)&quot; style=&quot;color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;&quot;&gt;Don&amp;#x2019;t Cry&lt;/a&gt;&lt;span style=&quot;color: rgb(32, 33, 34); font-family: sans-serif;&quot;&gt;&quot;.written after his.death&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1721404320_scott-buckley-moonlight(chosic.com).mp3', '1721404320_moon.jpg', 2147483647),
(5, 1, 25, 'Vallenato', 'Oleksii Kaplunskyi', '&lt;p&gt;Bachata music is a genre from the Dominican Republic that emerged in the early 20th century. It is characterized by its romantic, often melancholic lyrics, and a distinctive guitar-based sound. Bachata music features syncopated rhythms, often with bongo drums and maracas.&lt;br&gt;&lt;/p&gt;', '1721404860_vallenato-166172.mp3', '1721404860_ben.jpg', 2147483647),
(6, 1, 16, 'Body Busy Blues - Night Jam', 'techtheist', '&lt;p&gt;Blues music originated in the Deep South of the United States in the late 19th century. It is characterized by its use of the blues scale, call-and-response patterns, and expressive lyrics that often deal with themes of struggle and heartache. Blues music features guitar, harmonica, and piano.&lt;br&gt;&lt;/p&gt;', '1721405160_body-busy-blues-night-jam-224293.mp3', '1721405160_ble.webp', 2147483647),
(7, 1, 16, 'Sandwich Blues', 'AberrantRealities', '&lt;p&gt;&lt;span style=&quot;color: rgb(204, 204, 204); font-family: raleway, sans-serif; font-size: 18px; white-space-collapse: preserve;&quot;&gt;Some suggest that it stems from the melancholy melodies and mournful lyrics that echo the hardships endured by enslaved Africans in the American South. Others point to the use of &quot;blue notes&quot; &ndash; flattened third, fifth, and seventh degrees of the scale &ndash; which lend the music its distinctive sound and emotional depth.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1721405520_sandwich-blues-206878.mp3', '1721405520_sna.png', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 2,
  `profile_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `type`, `profile_pic`, `date_created`) VALUES
(1, 'Administrator', '', 'Male', '+123546879', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-18 16:50:06'),
(2, 'John', 'Smith', 'Male', '+6948 8542 623', 'Sample address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 2, '1605833640_avatar.jpg', '2020-11-20 08:54:15'),
(3, 'Ajinkya', 'Chirde', 'Male', '7777777777777', 'h', 'ajinkyachirde07@gmail.com', '9fead41a3f1d030cba36c622b7555071', 2, '1721394060_logoo.png', '2024-07-19 18:31:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_items`
--
ALTER TABLE `playlist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlist_items`
--
ALTER TABLE `playlist_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
