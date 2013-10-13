-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2013 at 04:51 PM
-- Server version: 5.5.32-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackvt`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE IF NOT EXISTS `audio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audio_url` varchar(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `audio_url`, `title`) VALUES
(1, 'http://archive.org/download/kw1998-11-11.kw1998-11-11.flac16/kw1998-11-11d1t01.mp3', 'Synergy'),
(2, 'http://archive.org/download/kw1998-11-11.kw1998-11-11.flac16/kw1998-11-11d1t02.mp3', 'Cut Me Some Slack'),
(3, 'http://archive.org/download/breakfast2013-08-16.matrix.flac24/breakfast2013-08-16t01.mp3', 'Metropolis'),
(4, 'http://archive.org/download/breakfast2013-08-16.matrix.flac24/breakfast2013-08-16t05.mp3', 'Hard Luck Harry'),
(5, 'http://archive.org/download/breakfast2013-08-16.matrix.flac24/breakfast2013-08-16t02.mp3', 'Cult Of Personality'),
(6, 'http://archive.org/download/breakfast2013-08-16.matrix.flac24/breakfast2013-08-16t03.mp3', 'Buquebus'),
(7, 'http://archive.org/download/cmb2005-09-20.shnf/cmb2005-09-20d2t02.mp3', 'Stuck'),
(8, 'http://archive.org/download/cmb2005-09-20.shnf/cmb2005-09-20d2t07.mp3', 'I Did It Again'),
(9, 'http://archive.org/download/cmb2005-09-20.shnf/cmb2005-09-20d3t05.mp3', 'Cavalry'),
(10, 'http://archive.org/download/cmb2005-09-20.shnf/cmb2005-09-20d3t08.mp3', 'Ever After'),
(11, 'http://www.uvm.edu/~nmanukya/hackvt/8.mp3', 'DJ Disco Phantom');

-- --------------------------------------------------------

--
-- Table structure for table `audio_to_band`
--

CREATE TABLE IF NOT EXISTS `audio_to_band` (
  `fk_audio_id` int(11) NOT NULL,
  `fk_band_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audio_to_band`
--

INSERT INTO `audio_to_band` (`fk_audio_id`, `fk_band_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `audio_to_event`
--

CREATE TABLE IF NOT EXISTS `audio_to_event` (
  `fk_audio_id` int(11) NOT NULL,
  `fk_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audio_to_event`
--

INSERT INTO `audio_to_event` (`fk_audio_id`, `fk_event_id`) VALUES
(1, 408),
(2, 408),
(11, 528),
(1, 555),
(5, 559),
(6, 559),
(1, 560),
(5, 560),
(11, 560),
(1, 561),
(5, 561),
(1, 562),
(2, 562),
(3, 562),
(4, 562),
(5, 562),
(1, 566),
(2, 566),
(3, 566),
(4, 566),
(1, 567),
(2, 567);

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE IF NOT EXISTS `band` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `details` longtext NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `band`
--

INSERT INTO `band` (`id`, `name`, `details`, `email`, `phone`) VALUES
(1, 'Led Zeppelin', 'derppppp Details', 'lz@hotmail.com', '7777777777'),
(2, 'Keller Williams', 'Keller Williams (born February 4, 1970) is an American musician from Fredericksburg, Virginia, who began performing in the early 1990s. He is also known by the name K-Dub when performing. Williams'' music combines elements of bluegrass, folk, alternative rock, reggae, electronica/dance, jazz, funk, and other assorted genres. He is often described as a ''one-man jam-band'' due to his frequent use of live phrase looping with multiple instruments', 'reis@kellerwilliams.net', '303-413-8308');

-- --------------------------------------------------------

--
-- Table structure for table `band_to_events`
--

CREATE TABLE IF NOT EXISTS `band_to_events` (
  `fk_band_id` int(11) NOT NULL,
  `fk_events_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `band_to_events`
--

INSERT INTO `band_to_events` (`fk_band_id`, `fk_events_id`) VALUES
(3, 555),
(3, 559),
(3, 560),
(3, 561),
(3, 562),
(3, 563),
(3, 564),
(3, 565),
(3, 566),
(3, 567);

-- --------------------------------------------------------

--
-- Table structure for table `band_to_qr`
--

CREATE TABLE IF NOT EXISTS `band_to_qr` (
  `fk_band_id` int(11) NOT NULL,
  `fk_qr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `fk_genre_id` int(11) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=568 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `location`, `city`, `date`, `fk_genre_id`, `description`) VALUES
(408, 'Black Milk, Lynguistic Civilians, Dakota', 'Signal Kitchen', 'Burlington', 'Saturday, October 12, 9PM', 6, ''),
(473, 'Bonjour-Hi', 'Juniper at Hotel Vermont', 'Burlington', 'Saturday, October 12, 9PM', 7, ''),
(474, 'BMR Jazz Trio', 'Red Square', 'Burlington', 'Saturday, October 12, 5PM', 0, ''),
(475, 'Burlington Ensemble 90/10 Series', 'First Baptist Church', 'Burlington', 'Saturday, October 12, 7:30PM', 0, ''),
(476, 'Boombasnap', 'RÃ­ RÃ¡ Irish Pub', 'Burlington', 'Saturday, October 12, 11PM', 1, ''),
(477, 'Craig Mitchell', 'Ruben James', 'Burlington', 'Saturday, October 12, 10PM', 8, ''),
(478, 'Dewey Drive Band', 'Bayview Eats', 'Colchester', 'Saturday, October 12, 5:30PM', 1, ''),
(479, 'DJ Raul', 'Red Square Blue Room', 'Burlington', 'Saturday, October 12, 7PM', 9, ''),
(480, 'DJ Stavros', 'Red Square Blue Room', 'Burlington', 'Saturday, October 12, 11PM', 7, ''),
(481, 'Eric George', 'Radio Bean', 'Burlington', 'Saturday, October 12, 7PM', 10, ''),
(482, 'DJ Disco Phantom', 'Halflounge', 'Burlington', 'Saturday, October 12, 10PM', 7, ''),
(483, 'Ewert and the Two Dragons, Red Tin Box, ', 'Higher Ground Showcase Lounge', 'South Burlington', 'Saturday, October 12, 8PM', 11, ''),
(484, 'Jay Gandhi', 'UVM Recital Hall, Redstone Campus', 'Burlington', 'Saturday, October 12, 7PM', 0, ''),
(485, 'Karaoke with Megan', 'JPs Pub', 'Burlington', 'Saturday, October 12, 10PM', 0, ''),
(486, 'Jesse Denaro', 'Radio Bean', 'Burlington', 'Saturday, October 12, 8PM', 12, ''),
(487, 'Jeff Wheel and Friends', 'Marriott Harbor Lounge', 'Burlington', 'Saturday, October 12, 8:30PM', 2, ''),
(488, 'Karaoke', 'Franny Os', 'South Burlington', 'Saturday, October 12, 9PM', 0, ''),
(489, 'Justice', 'Backstage Pub', 'Essex Junction', 'Saturday, October 12, 9:30PM', 1, ''),
(490, 'Laughs at the Lanes', 'Champlain Lanes Family Fun Center', 'Shelburne', 'Saturday, October 12, 9PM', 13, ''),
(491, 'Laura Heaberlin ', 'Halflounge', 'Burlington', 'Saturday, October 12, 8PM', 14, ''),
(492, 'Nerbak Brothers', 'On Tap Bar &amp; Grill', 'Essex Junction', 'Saturday, October 12, 5PM', 16, ''),
(493, 'Night Vision', 'Church &amp; Main Restaurant', 'Burlington', 'Saturday, October 12, 9PM', 7, ''),
(494, 'Mashtodon', 'Red Square', 'Burlington', 'Saturday, October 12, 11PM', 15, ''),
(495, 'Retronome', 'Club Metronome', 'Burlington', 'Saturday, October 12, 10PM', 17, ''),
(496, 'Sleep Study', 'Radio Bean', 'Burlington', 'Saturday, October 12, 11:30PM', 1, ''),
(497, 'SOJA, New Kingston', 'Higher Ground Ballroom', 'South Burlington', 'Saturday, October 12, 8:30PM', 18, ''),
(498, 'The Aerolites, Jatoba', 'Nectars', 'Burlington', 'Saturday, October 12, 9PM', 1, ''),
(499, 'The Azarians', 'Radio Bean', 'Burlington', 'Saturday, October 12, 9:30PM', 19, ''),
(500, 'The Equalites', 'Red Square', 'Burlington', 'Saturday, October 12, 8PM', 18, ''),
(501, 'The Hitmen', 'On Tap Bar &amp; Grill', 'Essex Junction', 'Saturday, October 12, 9PM', 1, ''),
(502, 'Vermont Christian Rock-toberfest', 'Memorial Auditorium', 'Burlington', 'Saturday, October 12, 7', 0, ''),
(503, 'Wallace', 'Halflounge', 'Burlington', 'Saturday, October 12, 6:30PM', 14, ''),
(504, 'Yip Deceiver', 'Monkey House', 'Winooski', 'Saturday, October 12, 9PM', 20, ''),
(505, 'AÃ¯zuri String Quartet', 'United Church', 'Warren', 'Saturday, October 12, 7PM', 0, ''),
(506, 'Funkwagon', 'Pierce Hall Community Center', 'Rochester', 'Saturday, October 12, 7PM', 0, ''),
(507, 'Something With Strings', 'The Reservoir Restaurant &amp; Tap Room', 'Waterbury', 'Saturday, October 12, 10PM', 21, ''),
(508, 'Single Socket', 'Sweet Melissas', 'Montpelier', 'Saturday, October 12, 5PM', 1, ''),
(509, 'Irish Sessions', 'Bagitos', 'Montpelier', 'Saturday, October 12, 2PM', 0, ''),
(510, 'The Neptunes', 'Bagitos', 'Montpelier', 'Saturday, October 12, 6PM', 21, ''),
(511, 'The Steve Kimock Band', 'Tupelo Music Hall', 'White River Junction', 'Saturday, October 12, 7PM', 1, ''),
(512, 'Tim Brick Band', 'Sweet Melissas', 'Montpelier', 'Saturday, October 12, 9PM', 23, ''),
(513, 'Vassily Primakov', 'Chandler Music Hall', 'Randolph', 'Saturday, October 12, 7:30PM', 0, ''),
(514, 'Dance Party with DJ Earl', 'City Limits', 'Vergennes', 'Saturday, October 12, 9PM', 24, ''),
(515, 'BandAnna', '51 Main', 'Middlebury', 'Saturday, October 12, 8PM', 1, ''),
(516, 'Scott Ainslie ', 'Burnham Hall', 'Lincoln', 'Saturday, October 12, 7:30PM', 0, ''),
(517, 'Jam Man Entertainment', 'Two Brothers Tavern', 'Middlebury', 'Saturday, October 12, 10PM', 8, ''),
(518, 'The Bumping Jones', 'Bar Antidote', 'Vergennes', 'Saturday, October 12, 9PM', 25, ''),
(519, 'After the Rodeo', 'Spruce Peak Performing Arts Center, Stowe Mountain', 'Stowe', 'Saturday, October 12, 7:30PM', 0, ''),
(520, 'Dead Sessions Lite', 'Moogs Place', 'Morrisville', 'Saturday, October 12, 9PM', 26, ''),
(521, 'The Fizz', 'Matterhorn', 'Stowe', 'Saturday, October 12, 9PM', 1, ''),
(522, 'Karaoke', 'The Hub Pizzeria &amp; Pub', 'Johnson', 'Saturday, October 12, 9PM', 0, ''),
(523, 'The Labor Days', 'Parker Pie Co.', 'West Glover', 'Saturday, October 12, 8PM', 1, ''),
(524, 'Karen Krajacic', 'Bees Knees', 'Morrisville', 'Saturday, October 12, 7:30PM', 27, ''),
(525, 'The Whiskey Dicks', 'Piecasso', 'Stowe', 'Saturday, October 12, 10PM', 1, ''),
(526, 'High Peaks', 'Monopole', 'Plattsburgh', 'Saturday, October 12, 10PM', 1, ''),
(527, 'Adamant Winter Music Series: Latin Eveni', 'Adamant Community Club', 'Adamant', 'Saturday, October 12, 7PM', 0, ''),
(528, 'DJ Disco Phantom', 'Halflounge', 'Burlington', 'Saturday, October 12, 10PM', 7, 'DJ Disco Phantom (Brian Nagle) comes from Burlington, Vermont and has been blowing up local venues for the past four years. Disco Phantom is one of the busiest men in Burlingtons music scene. He is the DJ for every and all indie rock events in the Burlington area and a man with undeniable style and excitement.\n\nA master of all things disco and champion of indie remixes, Disco Phantoms crates are deeper than deep. His sets are beyond catchy and accessible and his track record is proof enough that he is the type of DJ that surgically implants a permagrin on his audience. Every performance guarantees flawless mixing, great track selection and making people dance.\n\nDisco Phantom is not your ordinary deejay. He can rock a club or an art gallery, a diy venue or a private party. He has experience playing shows with music of every genre including electronic, rock, punk, hip-hop, folk, and noise.\n'),
(555, 'Umphreys McGee', 'The Higher Ground', 'Burlington, VT', '10/16/2013', 0, 'Umphreys McGee stand revealed as consummate musical alchemists, deftly reconfiguring sounds from rocks vast panoply of styles. (Entertainment Weekly).\n\nFans who have followed Umphreys McGee for any period of time know that there are only two guarantees: you never know what youre going to get, and Umphreys always delivers.\n\nWhereas this bands stellar reputation is based on marathon concerts that mix original, technically demanding tunes with complex epics and, playful covers (ranging from Toto to Metallica), it has chosen the same kind of attention to melody, songcraft, and musicianship that make those artists stand apart.'),
(559, 'The Polish Ambassador with DJ Vadim, Wil', 'The Higher Ground', 'Burlington, VT', '10/26/2013', 0, 'For the Polish Ambassador project, born on the richly-colored streets of Chicago and San Francisco, infectious melody is paramount. However, this never overshadows the depth and harmonic complexity that have made the Ambassador a favorite amongst festival curators and beat aficionados worldwide.  Over the course of 6 years, his sound has dipped and swirled through a staggering range of styles, with each album exploring uncharted sonic territory.  Warm, analogue dreamwave; mind-altering glitch; world-infused groove; bass-fueled breaks; sexified down-tempo; electric lullabies; and psy-fi funk are just a few of the genres that have poured from the Ambassadorâ€™s soul into earbuds and ghetto-blasters across the galaxy.\n\nDespite the political connotations of his name, the Ambassador is not a political partisan. Rather, he is a diplomat for a new paradigm rooted in creative joy, radical self-expression, and ecological principles.  As part of this mission, the Ambassador has committed to carbon-neutral touring, instigating exploratory dance, and igniting fan participation.'),
(560, 'Phish', 'Glens Falls Civic Center', 'Glens Falls, NY', '10/19/2013', 0, 'Phish is an American rock band noted for their musical improvisation, extended jams, exploration of music across genres, and a loyal fan base. Formed at the University of Vermont in 1983 (with the current line up solidifying in 1985), the bands four membersâ€”Trey Anastasio (guitars, lead vocals), Mike Gordon (bass, vocals), Jon Fishman (drums, percussion, vocals), and Page McConnell (keyboards, vocals)â€”performed together for over 20 years before breaking up in August 2004. They reunited March 2009 for Phish in Hampton, a series of three consecutive concerts played in the Hampton Coliseum in Hampton, Virginia, and have since resumed performing regularly.\nPhishs music blends elements of a wide variety of genres,[2] including rock, jazz, progressive rock, psychedelic rock, hard rock, funk, folk, bluegrass, reggae, country, blues, barbershop quartet and classical. Due to the bands improvisational style, their concerts are original in terms of the order of the songs and the way they are performed.\nAlthough the band has received little radio play or mainstream exposure, Phish has developed a large and dedicated following by word of mouth, the exchange of live recordings by trading tapes with other fans and selling over 8 million albums and DVDs in the United States.[3] Rolling Stone stated that the band helped to "...spawn a new wave of bands oriented around group improvisation and superextended grooves".[4]'),
(561, 'Erykah Badu', 'Moscow', 'Moscow', '07/04/2013', 0, 'Erykah Abi Wright (born Erica Abi Wright; February 26, 1971),[1] better known by her stage name Erykah Badu /ËˆÉ›rÉ¨kÉ™ bÉ‘ËËˆduË/, is an American singer-songwriter, record producer, activist and actress. Her work includes elements from R&B, hip hop and jazz.[1] She is best known for her role in the rise of the neo soul sub-genre. She is known as the "First Lady of Neo-Soul" or the "Queen of Neo-Soul".\nEarly in her career, Badu was recognizable for wearing very large and colorful headwraps. For her musical sensibilities, she has often been compared[2] to jazz great Billie Holiday.[3][4] She was a core member of the Soulquarians, and is also an actress having appeared in a number of films playing a range of supporting roles in movies such as Blues Brothers 2000, The Cider House Rules and House of D. She also speaks at length in the documentaries Before the Music Dies and "The Black Power Mixtapes".'),
(562, 'Bob Dylan Concert', 'Nectars', 'Burlington, Vt', '12 - 12 - 2013', 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
(563, '', '', '', '', 0, ''),
(564, '', '', '', '', 0, ''),
(565, '', '', '', '', 0, ''),
(566, 'gjgjhgk', 'jhgjkg', 'kjhgjkg', 'kjhkljgh', 0, ',jkhgj,hjkg'),
(567, 'test', 'test', 'test', 'test', 0, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE IF NOT EXISTS `event_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_event_id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `genre` int(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`id`, `fk_event_id`, `type`, `genre`) VALUES
(1, 1, 'Show', 1);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genre_name`) VALUES
(30, 'A genre'),
(17, 'â€™80s dance party'),
(21, 'bluegrass'),
(16, 'blues'),
(23, 'country'),
(28, 'don''t'),
(7, 'EDM'),
(29, 'event genre'),
(27, 'folk'),
(12, 'folk rock'),
(5, 'genre'),
(26, 'Grateful Dead tribute'),
(6, 'hip-hop'),
(8, 'house'),
(20, 'indie'),
(11, 'indie folk'),
(25, 'jam'),
(2, 'Jazz'),
(15, 'mashup'),
(19, 'old thyme'),
(10, 'old thyme blues'),
(18, 'reggae'),
(1, 'Rock'),
(9, 'salsa'),
(14, 'singer-songwriter'),
(13, 'standup'),
(24, 'Top 40'),
(0, 'unspecified');

-- --------------------------------------------------------

--
-- Table structure for table `poster`
--

CREATE TABLE IF NOT EXISTS `poster` (
  `event_id` int(11) DEFAULT NULL,
  `poster_image_url` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poster`
--

INSERT INTO `poster` (`event_id`, `poster_image_url`) VALUES
(408, 'img_uploads/408.jpg'),
(528, 'img_uploads/528.jpg'),
(555, 'img_uploads/555.jpg'),
(559, 'img_uploads/559.jpg'),
(560, 'img_uploads/560.jpg'),
(561, 'img_uploads/561.jpg'),
(562, 'img_uploads/562.jpg'),
(563, 'img_uploads/563.jpg'),
(564, 'img_uploads/564.jpg'),
(565, 'img_uploads/565.jpg'),
(566, 'img_uploads/566.jpg'),
(567, 'img_uploads/567.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `poster_scanned`
--

CREATE TABLE IF NOT EXISTS `poster_scanned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_event_id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `scanCount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `poster_scanned`
--

INSERT INTO `poster_scanned` (`id`, `fk_event_id`, `lat`, `lng`, `scanCount`) VALUES
(1, 1, 44.476, -73.2113, 7),
(2, 1, 44.4782, -73.211, 4),
(3, 1, 44.4765, -73.214, 1),
(4, 1, 44.4781, -73.2125, 4),
(5, 1, 37.4081, -122.1913, 10),
(12, 1, 44.4898, -73.1851, 1),
(13, 1, 44.488, -73.185, 2),
(14, 1, 44.4889, -73.1859, 1),
(15, 1, 44.485, -73.1859, 1),
(16, 1, 44.486, -73.1825, 2),
(17, 1, 44.4899, -73.1851, 1),
(18, 1, 44.4897, -73.1851, 1),
(19, 1, 44.4895, -73.1851, 3),
(20, 1, 44.4896, -73.1852, 1),
(21, 1, 44.4893, -73.1852, 2),
(22, 1, 37.5173, -122.3517, 1),
(23, 1, 37.6821, -122.4715, 1),
(24, 1, 44.4895, -73.185, 1),
(25, 1, 44.4895, -73.1852, 1),
(26, 1, 37.7122, -122.4534, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poster_to_band`
--

CREATE TABLE IF NOT EXISTS `poster_to_band` (
  `fk_band_id` int(11) NOT NULL,
  `fk_poster_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poster_to_event`
--

CREATE TABLE IF NOT EXISTS `poster_to_event` (
  `fk_event_id` int(11) NOT NULL,
  `fk_poster_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poster_to_event`
--

INSERT INTO `poster_to_event` (`fk_event_id`, `fk_poster_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qr`
--

CREATE TABLE IF NOT EXISTS `qr` (
  `event_id` int(11) NOT NULL,
  `image_path` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qr`
--

INSERT INTO `qr` (`event_id`, `image_path`) VALUES
(1, 'path/to/qr/image');

-- --------------------------------------------------------

--
-- Table structure for table `qr_to_event`
--

CREATE TABLE IF NOT EXISTS `qr_to_event` (
  `fk_qr_id` int(11) NOT NULL,
  `fk_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qr_to_event`
--

INSERT INTO `qr_to_event` (`fk_qr_id`, `fk_event_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(120) NOT NULL,
  `fk_profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) NOT NULL,
  `details` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_to_user_profile`
--

CREATE TABLE IF NOT EXISTS `user_to_user_profile` (
  `fk_user_id` int(11) NOT NULL,
  `fk_user_profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
