-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 01:51 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaros_lc`
--

-- --------------------------------------------------------

--
-- Table structure for table `elarosuser`
--

CREATE TABLE `elarosuser` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pwd` varchar(128) NOT NULL,
  `userType` varchar(2) DEFAULT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `preCovid` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elarosuser`
--

INSERT INTO `elarosuser` (`id`, `username`, `pwd`, `userType`, `firstname`, `lastname`, `email`, `preCovid`) VALUES
(1, 'J9P4N', 'lol123', 'p', 'Nichevithan', 'Jegatheeswaran', 'nicheprivat@outlook.com', 1),
(2, 'dojacatfan1', 'lol123', 'c', 'Usama', 'Rasab', 'urasab@gmail.com', NULL),
(3, 'imposter1', 'lol123', 'p', 'Amina', 'Javed', 'ajaved@gmail.com', 1),
(4, 'imposter2', 'lol123', 'p', 'Luiza', 'Zgorzak', 'lzgorzak@gmail.com', 1),
(5, 'dojacatfan2', 'lol123', 'c', 'Howen', 'Soniega', 'hsoniega@gmail.com', NULL),
(6, 'jsmith', 'lol123', 'p', 'John', 'Smith', 'jsmith@gmail.com', 1),
(7, 'ijoan123', 'abc123', 'p', 'Irene', 'Joan', 'ijoan@gmail.com', 1),
(8, 'wrobles', 'qwe123', 'p', 'Wilmer ', 'Robles', 'wrobles@gmail.com', 1),
(9, 'mbaez123', 'qwe123', 'p', 'Melissa', 'Baez', 'mbaez@gmail.com', 1),
(10, 'kpearson', 'pol123', 'p', 'Kristen', 'Pearson', 'kpearson@gmail.com', 1),
(11, 'jpowell', 'ert123', 'p', 'John', 'Powell', 'jpowell@gmail.com', 1),
(12, 'vbouchard', 'ikl123', 'p', 'Vern', 'Bouchard', 'vbouchard@gmail.com', 1),
(13, 'mjetton', 'yui123', 'p', 'Machelle', 'Jetton', 'mjetton@gmail.com', 1),
(14, 'gcollins', 'wer123', 'p', 'Gloria', 'Collins', 'gcollins@gmail.com', 0),
(15, 'lgideon', 'ert123', 'p', 'Louise', 'Gideon', 'lgideon@gmail.com', 0),
(16, 'wortiz', 'oiu123', 'p', 'Wayne', 'Ortiz', 'wortiz@gmail.com', 0),
(17, 'pdixon', 'zxc123', 'p', 'Patricia', 'Dixon', 'pdixon@gmail.com', 0),
(18, 'hmiller', 'bhu123', 'p', 'Heather', 'Miller', 'hmiller@gmail.com', 0),
(19, 'eholland', 'lkj123', 'p', 'Elizabeth', 'Holland', 'eholland@gmail.com', 0),
(20, 'ageorge', 'ert123', 'p', 'Alyssa', 'George', 'ageorge@gmail.com', 0),
(21, 'lsmith', 'zxc123', 'p', 'Levi', 'Smith', 'lsmith@gmail.com', 0),
(22, 'mnosal', 'kjh123', 'p', 'Mitchell', 'Nosal', 'mnosal@gmail.com', 0),
(23, 'rbecker', 'fgh123', 'p', 'Roy ', 'Becker', 'rbecker@gmail.com', 0),
(24, 'fgagnon', 'yhn123', 'p', 'Florencia', 'Gagnon', 'fgagnon@gmail.com', 0),
(25, 'srodriguez', 'oiu123', 'p', 'Stuart', 'Rodriguez', 'srodriguez@gmail.com', 0),
(26, 'jwyatt', 'tyu123', 'p', 'Joe', 'Wyatt', 'jwyatt@gmail.com', 0),
(27, 'jfisher', 'vbn123', 'p', 'Jeanne', 'Fisher', 'jfisher@gmail.com', 0),
(28, 'gbritt', 'lik123', 'p', 'Glen', 'Britt', 'gbritt@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `PatientID` int(11) NOT NULL,
  `HospitalAdmission` varchar(3) NOT NULL,
  `OtherHealthService` varchar(3) NOT NULL,
  `BreatheAtRest` int(11) NOT NULL,
  `BreathOnDress` int(11) NOT NULL,
  `BreathOnStairs` int(11) NOT NULL,
  `CoughThroatSensitivity` varchar(3) NOT NULL,
  `VoiceChange` varchar(3) NOT NULL,
  `NoisyBreathing` varchar(3) NOT NULL,
  `CoughThroatSeverity` int(11) NOT NULL,
  `EatingDifficulties` varchar(3) NOT NULL,
  `SwallowingSeverity` int(11) NOT NULL,
  `WeightLoss` varchar(3) NOT NULL,
  `FatigueEasily` varchar(3) NOT NULL,
  `NowFatigueSverity` int(11) NOT NULL,
  `PreCovidFatigueSeverity` int(11) NOT NULL,
  `BowelControl` varchar(3) NOT NULL,
  `BladderControl` varchar(3) NOT NULL,
  `ContinenceSeverity` int(11) NOT NULL,
  `NewPain` varchar(3) NOT NULL,
  `NowPainSeverity` int(11) NOT NULL,
  `PreCovidSeverity` int(11) NOT NULL,
  `Concentrating` varchar(3) NOT NULL,
  `ShortTermMemory` varchar(3) NOT NULL,
  `CognitionSeverity` int(11) NOT NULL,
  `NowAnxietySeverity` int(11) NOT NULL,
  `PreCovidAnxietySeverity` int(11) NOT NULL,
  `NowDepression` int(11) NOT NULL,
  `PreCovidDepression` int(11) NOT NULL,
  `UnwantedIllnessMemories` varchar(3) NOT NULL,
  `UnpleasantDreams` varchar(3) NOT NULL,
  `AvoidThoughts` varchar(3) NOT NULL,
  `StressSeverity` int(11) NOT NULL,
  `SelfHarm` varchar(3) NOT NULL,
  `CommunicationDifficulty` varchar(3) NOT NULL,
  `CommunicationSeverity` int(11) NOT NULL,
  `WalkingNow` int(11) NOT NULL,
  `WalkingPreCovid` int(11) NOT NULL,
  `NowUsualActivities` int(11) NOT NULL,
  `PreCovidUsualActivities` int(11) NOT NULL,
  `NowLookingAfterProblems` int(11) NOT NULL,
  `PreCovidLookingAfterProblems` int(11) NOT NULL,
  `NowHealth` int(11) NOT NULL,
  `PreCovidHealth` int(11) NOT NULL,
  `Occupation` text NOT NULL,
  `EmpStatPreLockdown` text NOT NULL,
  `EmpStatPreIllness` text NOT NULL,
  `EmpStatNow` text NOT NULL,
  `FamilyPrespective` text NOT NULL,
  `UnmentionedProblems` text NOT NULL,
  `Other` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`PatientID`, `Agreement`, `HospitalAdmission`, `OtherHealthService`, `BreatheAtRest`, `BreathOnDress`, `BreathOnStairs`, `CoughThroatSensitivity`, `VoiceChange`, `NoisyBreathing`, `CoughThroatSeverity`, `EatingDifficulties`, `SwallowingSeverity`, `WeightLoss`, `FatigueEasily`, `NowFatigueSverity`, `PreCovidFatigueSeverity`, `BowelControl`, `BladderControl`, `ContinenceSeverity`, `NewPain`, `NowPainSeverity`, `PreCovidSeverity`, `Concentrating`, `ShortTermMemory`, `CognitionSeverity`, `NowAnxietySeverity`, `PreCovidAnxietySeverity`, `NowDepression`, `PreCovidDepression`, `UnwantedIllnessMemories`, `UnpleasantDreams`, `AvoidThoughts`, `StressSeverity`, `SelfHarm`, `CommunicationDifficulty`, `CommunicationSeverity`, `WalkingNow`, `WalkingPreCovid`, `NowUsualActivities`, `PreCovidUsualActivities`, `NowLookingAfterProblems`, `PreCovidLookingAfterProblems`, `NowHealth`, `PreCovidHealth`, `Occupation`, `EmpStatPreLockdown`, `EmpStatPreIllness`, `EmpStatNow`, `FamilyPrespective`, `UnmentionedProblems`, `Other`) VALUES
(0, 'No', 'No', 1, 2, 10, 'Yes', 'No', 'No', 3, 'No', 4, 'No', 'No', 9, 2, 'Yes', 'Yes', 5, 'Yes', 1, 1, 'No', 'No', 2, 10, 6, 1, 3, 'No', 'No', 'No', 8, 'Yes', 'Yes', 7, 4, 6, 2, 8, 8, 7, 5, 3, '', '', '', '', '', '', ''),
(1, 'Yes', 'Yes', 2, 5, 10, 'Yes', 'No', 'Yes', 5, 'Yes', 3, 'No', 'No', 9, 9, 'Yes', 'No', 1, 'Yes', 3, 1, 'Yes', 'Yes', 5, 4, 10, 8, 10, 'Yes', 'Yes', 'No', 5, 'Yes', 'No', 4, 10, 3, 7, 10, 6, 4, 9, 9, 'faucibus leo, in lobortis tellus justo sit', 'ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.', 'Aenean sed pede nec ante blandit viverra. Donec', 'posuere, enim nisl elementum purus, accumsan', 'et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem', 'nibh. Quisque nonummy ipsum non arcu. Vivamus', 'lacus. Mauris non dui nec urna suscipit'),
(2, 'No', 'No', 1, 5, 9, 'Yes', 'No', 'No', 3, 'No', 8, 'Yes', 'No', 8, 5, 'No', 'No', 4, 'No', 2, 6, 'No', 'No', 4, 5, 10, 8, 5, 'No', 'No', 'Yes', 5, 'Yes', 'Yes', 2, 7, 4, 10, 6, 9, 6, 10, 1, 'rhoncus. Donec est. Nunc ullamcorper, velit in', 'Sed neque. Sed eget lacus. Mauris non dui', 'enim diam vel arcu. Curabitur ut odio', 'fermentum convallis ligula. Donec luctus aliquet odio.', 'euismod est arcu', 'eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', 'bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque'),
(3, 'Yes', 'Yes', 3, 5, 3, 'No', 'Yes', 'Yes', 10, 'Yes', 5, 'No', 'Yes', 9, 2, 'Yes', 'No', 6, 'Yes', 4, 2, 'No', 'Yes', 4, 4, 3, 10, 1, 'Yes', 'No', 'Yes', 2, 'Yes', 'No', 10, 9, 6, 8, 3, 2, 9, 10, 10, 'luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel', 'magna a neque. Nullam ut nisi a odio semper cursus. Integer', 'vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet,', 'mauris erat eget ipsum. Suspendisse sagittis. Nullam', 'Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis.', 'quam, elementum at,', 'ridiculus mus. Proin vel'),
(4, 'Yes', 'Yes', 1, 6, 1, 'No', 'No', 'No', 8, 'No', 5, 'Yes', 'Yes', 3, 2, 'No', 'No', 2, 'Yes', 2, 1, 'Yes', 'Yes', 3, 6, 7, 10, 8, 'No', 'Yes', 'No', 5, 'No', 'No', 1, 10, 8, 10, 9, 4, 9, 9, 3, 'ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien', 'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse', 'eu arcu. Morbi sit amet', 'nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,', 'at fringilla purus mauris a', 'augue porttitor interdum. Sed auctor', 'eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede'),
(5, 'No', 'Yes', 9, 5, 10, 'Yes', 'No', 'No', 3, 'No', 9, 'No', 'Yes', 5, 5, 'Yes', 'No', 1, 'No', 7, 8, 'No', 'Yes', 7, 9, 1, 2, 3, 'No', 'No', 'Yes', 4, 'Yes', 'Yes', 3, 4, 6, 3, 5, 10, 9, 4, 4, 'mauris a nunc. In', 'Nulla', 'ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per', 'neque. Morbi quis urna. Nunc quis arcu vel', 'lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris', 'Nullam vitae diam. Proin dolor. Nulla semper tellus'),
(6, 'Yes', 'Yes', 1, 5, 1, 'Yes', 'Yes', 'No', 8, 'Yes', 4, 'No', 'Yes', 5, 5, 'No', 'No', 2, 'Yes', 6, 2, 'No', 'Yes', 1, 7, 7, 3, 10, 'Yes', 'No', 'Yes', 10, 'Yes', 'Yes', 8, 9, 9, 2, 5, 9, 7, 7, 4, 'ultricies dignissim', 'volutpat. Nulla dignissim.', 'mus. Aenean eget magna. Suspendisse', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt', 'nunc est, mollis non, cursus non, egestas a, dui.', 'iaculis aliquet diam. Sed diam lorem, auctor quis,', 'non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,'),
(7, 'No', 'No', 4, 4, 9, 'Yes', 'No', 'No', 8, 'Yes', 4, 'No', 'Yes', 8, 5, 'No', 'Yes', 8, 'Yes', 10, 2, 'No', 'Yes', 1, 8, 1, 6, 10, 'Yes', 'No', 'Yes', 4, 'Yes', 'No', 4, 8, 3, 10, 8, 8, 9, 1, 4, 'nascetur', 'semper et, lacinia', 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a', 'odio a purus. Duis elementum, dui quis accumsan convallis, ante', 'risus, at fringilla purus mauris a nunc.', 'pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan', 'neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer'),
(8, 'No', 'Yes', 6, 9, 9, 'No', 'Yes', 'No', 3, 'Yes', 9, 'Yes', 'Yes', 9, 9, 'No', 'Yes', 8, 'No', 6, 7, 'No', 'No', 7, 6, 6, 2, 3, 'Yes', 'No', 'No', 3, 'No', 'Yes', 5, 2, 6, 2, 2, 5, 4, 3, 8, 'Sed auctor odio a', 'dolor sit amet, consectetuer adipiscing elit.', 'quis diam.', 'non enim commodo hendrerit. Donec porttitor tellus non', 'scelerisque sed,', 'parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod', 'quis diam luctus lobortis. Class aptent taciti sociosqu ad'),
(9, 'Yes', 'Yes', 1, 7, 8, 'No', 'No', 'Yes', 10, 'Yes', 3, 'No', 'Yes', 2, 6, 'Yes', 'No', 5, 'Yes', 9, 10, 'Yes', 'Yes', 4, 5, 1, 8, 9, 'Yes', 'Yes', 'No', 5, 'No', 'Yes', 9, 5, 8, 7, 6, 8, 4, 2, 8, 'faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede', 'Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus', 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet', 'luctus et ultrices posuere cubilia Curae; Donec', 'Proin', 'condimentum.', 'nulla. Integer vulputate, risus a ultricies adipiscing,'),
(10, 'No', 'Yes', 5, 5, 6, 'Yes', 'Yes', 'Yes', 9, 'Yes', 3, 'No', 'No', 10, 2, 'No', 'No', 9, 'No', 5, 7, 'No', 'No', 7, 9, 3, 3, 3, 'No', 'No', 'No', 5, 'Yes', 'Yes', 5, 3, 5, 8, 6, 5, 4, 4, 4, '', '', '', '', '', '', ''),
(11, 'No', 'Yes', 3, 5, 8, 'No', 'No', 'No', 2, 'Yes', 10, 'No', 'No', 3, 10, 'Yes', 'Yes', 2, 'No', 6, 6, 'No', 'Yes', 2, 3, 3, 5, 7, 'No', 'No', 'Yes', 3, 'Yes', 'Yes', 3, 1, 8, 9, 8, 6, 9, 1, 8, 'pede, malesuada vel,', 'eu lacus. Quisque imperdiet, erat', 'eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed', 'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed', 'sem molestie sodales. Mauris blandit enim consequat purus.', 'nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam', 'ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus'),
(12, 'Yes', 'No', 6, 8, 9, 'Yes', 'No', 'No', 2, 'No', 5, 'Yes', 'No', 1, 9, 'No', 'Yes', 1, 'No', 10, 10, 'Yes', 'Yes', 4, 8, 3, 9, 3, 'No', 'Yes', 'No', 9, 'Yes', 'Yes', 7, 1, 7, 10, 10, 10, 8, 8, 6, 'Nulla facilisi. Sed neque. Sed eget lacus.', 'tellus lorem eu metus. In lorem. Donec elementum, lorem', 'nunc sed libero. Proin sed turpis', 'Curabitur vel lectus. Cum', 'mi pede, nonummy ut, molestie', 'eget', 'diam'),
(13, 'No', 'No', 6, 6, 7, 'Yes', 'No', 'No', 1, 'Yes', 3, 'No', 'Yes', 3, 3, 'No', 'No', 6, 'Yes', 7, 8, 'No', 'Yes', 4, 3, 1, 4, 1, 'No', 'No', 'Yes', 3, 'Yes', 'Yes', 5, 3, 1, 8, 5, 4, 1, 8, 7, 'ligula', 'ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat', 'pharetra. Quisque ac', 'congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus.', 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris', 'ultrices iaculis odio. Nam', 'Quisque libero lacus, varius et, euismod et, commodo at, libero.'),
(14, 'No', 'No', 2, 6, 10, 'No', 'No', 'No', 3, 'No', 3, 'No', 'No', 7, 4, 'Yes', 'No', 2, 'No', 1, 10, 'No', 'Yes', 5, 9, 8, 10, 6, 'Yes', 'Yes', 'Yes', 10, 'No', 'Yes', 3, 4, 9, 2, 2, 2, 5, 6, 4, 'ac mi eleifend egestas. Sed pharetra,', 'magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec', 'rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper', 'sociis natoque penatibus et', 'turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at', 'Vivamus molestie dapibus ligula. Aliquam', 'eget metus eu erat semper rutrum. Fusce'),
(15, 'No', 'Yes', 10, 5, 8, 'Yes', 'Yes', 'No', 3, 'Yes', 10, 'No', 'No', 7, 7, 'Yes', 'Yes', 2, 'No', 8, 6, 'No', 'No', 3, 9, 1, 10, 6, 'Yes', 'Yes', 'Yes', 2, 'No', 'No', 3, 10, 4, 9, 4, 5, 1, 8, 7, 'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec', 'Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.', 'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt', 'tempus, lorem fringilla ornare placerat, orci', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.', 'Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit', 'in sodales elit erat vitae'),
(16, 'Yes', 'No', 3, 8, 9, 'Yes', 'No', 'No', 7, 'No', 10, 'Yes', 'No', 4, 8, 'Yes', 'No', 7, 'Yes', 5, 8, 'No', 'No', 9, 9, 8, 9, 7, 'No', 'No', 'No', 5, 'Yes', 'No', 1, 7, 7, 3, 5, 6, 10, 1, 6, 'non quam. Pellentesque habitant morbi tristique senectus et netus', 'rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin', 'Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus', 'nibh lacinia orci, consectetuer euismod est arcu ac', 'feugiat metus sit', 'orci luctus et ultrices posuere', 'orci. Ut sagittis lobortis mauris.'),
(17, 'Yes', 'Yes', 9, 3, 3, 'No', 'Yes', 'Yes', 3, 'Yes', 5, 'No', 'Yes', 4, 8, 'Yes', 'Yes', 9, 'Yes', 4, 5, 'Yes', 'No', 3, 6, 8, 4, 9, 'Yes', 'Yes', 'No', 10, 'Yes', 'Yes', 8, 9, 10, 1, 3, 7, 10, 8, 4, 'arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non', 'sem egestas blandit. Nam nulla magna, malesuada vel, convallis', 'feugiat placerat velit. Quisque', 'nunc est, mollis', 'non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu', 'neque. Morbi quis urna. Nunc quis arcu', 'tincidunt vehicula risus. Nulla eget'),
(18, 'No', 'Yes', 8, 8, 7, 'No', 'Yes', 'Yes', 10, 'No', 5, 'Yes', 'No', 2, 4, 'Yes', 'No', 2, 'Yes', 6, 8, 'Yes', 'No', 6, 2, 10, 5, 5, 'No', 'No', 'No', 3, 'No', 'Yes', 4, 4, 10, 8, 2, 1, 5, 5, 7, 'nunc. In at', 'dictum placerat, augue. Sed', 'nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit', 'fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec', 'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis'),
(19, 'No', 'Yes', 8, 10, 6, 'Yes', 'Yes', 'Yes', 4, 'No', 5, 'Yes', 'No', 1, 5, 'Yes', 'Yes', 3, 'Yes', 5, 7, 'Yes', 'No', 4, 5, 1, 5, 2, 'Yes', 'No', 'No', 8, 'No', 'Yes', 10, 5, 4, 3, 3, 9, 6, 8, 7, 'dui quis accumsan', 'lacus. Ut nec', 'tempus mauris erat eget ipsum. Suspendisse sagittis.', 'egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.', 'eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat.', 'est arcu ac orci. Ut semper pretium neque.', 'arcu et pede. Nunc sed orci lobortis augue scelerisque mollis.'),
(20, 'Yes', 'No', 8, 4, 5, 'No', 'No', 'Yes', 6, 'No', 9, 'No', 'Yes', 3, 2, 'No', 'No', 9, 'No', 10, 5, 'No', 'Yes', 8, 5, 10, 5, 10, 'Yes', 'No', 'Yes', 9, 'No', 'No', 1, 10, 1, 3, 2, 2, 1, 8, 7, 'tempor arcu. Vestibulum ut', 'orci. Phasellus', 'semper erat, in consectetuer ipsum', 'tellus', 'sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris', 'eget varius ultrices, mauris', 'sed leo.'),
(21, 'Yes', 'Yes', 2, 6, 5, 'Yes', 'No', 'Yes', 6, 'Yes', 7, 'No', 'Yes', 5, 3, 'No', 'No', 10, 'No', 7, 10, 'No', 'Yes', 6, 10, 2, 6, 7, 'Yes', 'No', 'Yes', 3, 'No', 'No', 8, 1, 4, 8, 5, 2, 2, 10, 1, 'elit sed consequat auctor, nunc nulla vulputate dui,', 'dui nec', 'Sed eu', 'laoreet lectus quis massa. Mauris vestibulum, neque sed', 'at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero', 'quam. Pellentesque habitant morbi tristique senectus et netus et', 'libero. Donec consectetuer'),
(22, 'No', 'Yes', 3, 6, 1, 'No', 'No', 'No', 3, 'No', 4, 'No', 'No', 3, 4, 'Yes', 'No', 7, 'No', 9, 7, 'Yes', 'Yes', 1, 10, 6, 5, 6, 'Yes', 'No', 'No', 3, 'No', 'No', 1, 4, 8, 7, 1, 9, 6, 1, 3, 'tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus', 'tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse', 'a, arcu. Sed et libero.', 'augue, eu tempor erat neque non quam. Pellentesque', 'vitae', 'dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum', 'Aliquam tincidunt, nunc ac'),
(23, 'No', 'No', 3, 5, 7, 'Yes', 'Yes', 'No', 7, 'No', 10, 'No', 'No', 4, 3, 'No', 'Yes', 9, 'No', 6, 2, 'Yes', 'Yes', 3, 3, 10, 6, 4, 'Yes', 'No', 'No', 5, 'No', 'No', 5, 1, 7, 7, 3, 7, 2, 9, 9, 'urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas', 'ultricies sem magna nec quam. Curabitur vel', 'ornare. In faucibus.', 'purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit', 'habitant morbi tristique senectus et', 'arcu et pede. Nunc sed orci', 'mollis vitae, posuere at, velit. Cras lorem lorem, luctus'),
(24, 'No', 'Yes', 6, 10, 2, 'Yes', 'Yes', 'Yes', 2, 'No', 2, 'Yes', 'Yes', 8, 2, 'No', 'No', 1, 'Yes', 9, 1, 'Yes', 'No', 5, 6, 10, 8, 3, 'Yes', 'Yes', 'Yes', 10, 'Yes', 'No', 9, 5, 8, 2, 9, 4, 10, 2, 10, 'Etiam bibendum fermentum metus. Aenean sed', 'velit egestas lacinia. Sed congue,', 'vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam', 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc', 'egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum', 'id, ante. Nunc mauris sapien, cursus in,', 'diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac'),
(25, 'No', 'Yes', 8, 7, 7, 'No', 'No', 'No', 5, 'Yes', 10, 'Yes', 'Yes', 7, 7, 'No', 'Yes', 3, 'Yes', 5, 10, 'Yes', 'Yes', 7, 7, 3, 4, 10, 'No', 'Yes', 'Yes', 5, 'Yes', 'No', 3, 10, 8, 4, 4, 1, 3, 5, 8, 'quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', 'cursus et, magna. Praesent interdum ligula', 'ligula. Donec', 'dignissim.', 'nisl arcu', 'felis purus ac tellus. Suspendisse sed dolor. Fusce mi', 'Etiam ligula tortor,'),
(26, 'Yes', 'No', 1, 2, 10, 'No', 'Yes', 'No', 6, 'Yes', 2, 'Yes', 'No', 7, 5, 'No', 'No', 3, 'No', 2, 6, 'No', 'No', 10, 5, 9, 6, 8, 'Yes', 'No', 'No', 2, 'No', 'Yes', 7, 10, 10, 10, 8, 6, 5, 1, 5, 'risus odio, auctor vitae, aliquet nec, imperdiet', 'Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce', 'vestibulum nec, euismod in, dolor.', 'nec, imperdiet nec,', 'Phasellus fermentum convallis ligula. Donec luctus aliquet', 'iaculis enim, sit amet'),
(27, 'Yes', 'Yes', 3, 4, 7, 'No', 'Yes', 'Yes', 9, 'Yes', 3, 'No', 'Yes', 7, 8, 'Yes', 'No', 8, 'Yes', 3, 2, 'No', 'No', 10, 1, 1, 7, 8, 'No', 'Yes', 'Yes', 3, 'No', 'No', 6, 3, 1, 8, 2, 3, 10, 9, 8, 'purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna', 'quis diam luctus lobortis.', 'enim mi tempor lorem, eget mollis lectus pede', 'id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum', 'mauris, aliquam eu, accumsan sed, facilisis', 'ipsum. Curabitur consequat, lectus sit amet luctus', 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare,'),
(28, 'No', 'No', 7, 10, 4, 'No', 'No', 'Yes', 7, 'Yes', 4, 'No', 'Yes', 5, 1, 'No', 'No', 9, 'No', 4, 7, 'No', 'Yes', 4, 6, 3, 2, 2, 'Yes', 'Yes', 'Yes', 8, 'Yes', 'No', 7, 10, 6, 1, 9, 6, 7, 5, 1, 'nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque', 'Vivamus non lorem vitae odio sagittis semper. Nam', 'tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi', 'tincidunt', 'aliquet libero. Integer in', 'est. Nunc ullamcorper, velit in', 'molestie orci tincidunt adipiscing.'),
(29, 'Yes', 'Yes', 10, 7, 7, 'Yes', 'No', 'Yes', 6, 'Yes', 10, 'Yes', 'No', 9, 4, 'No', 'Yes', 6, 'Yes', 7, 6, 'No', 'Yes', 7, 10, 7, 3, 10, 'No', 'No', 'No', 4, 'No', 'No', 10, 9, 8, 3, 8, 7, 6, 6, 9, 'Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', 'dui, in sodales elit erat vitae risus.', 'aliquet. Proin velit. Sed', 'fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.', 'mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean', 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa', 'arcu imperdiet ullamcorper. Duis'),
(30, 'No', 'No', 7, 8, 9, 'No', 'Yes', 'No', 1, 'Yes', 1, 'Yes', 'Yes', 2, 5, 'Yes', 'Yes', 10, 'Yes', 2, 8, 'No', 'Yes', 5, 1, 7, 6, 3, 'Yes', 'Yes', 'No', 6, 'No', 'No', 7, 8, 9, 3, 9, 3, 1, 6, 7, 'facilisi. Sed neque. Sed eget lacus. Mauris non dui', 'Morbi non sapien molestie orci', 'pede,', 'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet', 'eleifend vitae, erat. Vivamus nisi. Mauris nulla.', 'lacinia vitae, sodales', 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.'),
(31, 'Yes', 'No', 5, 9, 9, 'No', 'Yes', 'Yes', 7, 'Yes', 2, 'Yes', 'Yes', 3, 1, 'No', 'No', 3, 'No', 10, 7, 'Yes', 'Yes', 3, 9, 2, 8, 2, 'No', 'No', 'Yes', 10, 'Yes', 'No', 10, 5, 3, 1, 1, 5, 9, 10, 1, 'Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam', 'fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus', 'eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.', 'ultricies adipiscing, enim mi tempor', 'vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque', 'diam lorem, auctor quis, tristique', 'dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed'),
(32, 'No', 'No', 4, 1, 10, 'No', 'No', 'No', 3, 'Yes', 10, 'Yes', 'Yes', 7, 10, 'No', 'No', 7, 'Yes', 6, 7, 'Yes', 'No', 3, 4, 7, 5, 3, 'Yes', 'No', 'Yes', 6, 'No', 'Yes', 10, 5, 1, 7, 5, 2, 6, 8, 10, 'luctus et ultrices', 'eget, dictum placerat, augue. Sed molestie. Sed', 'sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus', 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo', 'sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus', 'eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed', 'elit pede, malesuada vel, venenatis vel, faucibus id,'),
(33, 'No', 'No', 8, 3, 3, 'No', 'Yes', 'Yes', 4, 'Yes', 5, 'Yes', 'Yes', 3, 6, 'No', 'No', 9, 'No', 7, 2, 'Yes', 'Yes', 4, 6, 1, 10, 3, 'Yes', 'Yes', 'Yes', 8, 'Yes', 'Yes', 6, 6, 8, 4, 4, 1, 3, 4, 4, 'diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae,', 'parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.', 'magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus', 'nisl sem, consequat nec, mollis vitae, posuere', 'Donec consectetuer mauris id sapien.', 'risus. Morbi metus. Vivamus', 'varius. Nam porttitor scelerisque neque. Nullam'),
(34, 'No', 'Yes', 3, 6, 10, 'No', 'No', 'Yes', 2, 'Yes', 2, 'Yes', 'No', 4, 1, 'No', 'No', 1, 'No', 4, 4, 'No', 'No', 9, 6, 5, 9, 4, 'No', 'Yes', 'No', 3, 'No', 'No', 10, 7, 9, 7, 8, 7, 5, 1, 10, 'convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis', 'risus. Nunc ac sem ut dolor dapibus', 'lobortis', 'eu, placerat eget, venenatis a,', 'at sem molestie sodales. Mauris blandit enim', 'Nunc ac', 'fermentum convallis ligula. Donec luctus'),
(35, 'Yes', 'No', 8, 3, 6, 'Yes', 'No', 'Yes', 9, 'No', 1, 'No', 'Yes', 3, 1, 'No', 'Yes', 6, 'No', 5, 8, 'No', 'No', 2, 8, 6, 3, 5, 'Yes', 'Yes', 'Yes', 8, 'Yes', 'Yes', 10, 2, 9, 7, 7, 5, 9, 6, 1, 'venenatis vel, faucibus id, libero.', 'nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In', 'Mauris eu turpis. Nulla aliquet. Proin', 'diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed', 'ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis', 'arcu. Nunc mauris. Morbi non sapien', 'enim, sit amet ornare lectus justo eu arcu.'),
(36, 'No', 'Yes', 9, 1, 3, 'No', 'Yes', 'No', 9, 'No', 1, 'Yes', 'No', 5, 9, 'Yes', 'Yes', 7, 'Yes', 7, 4, 'Yes', 'No', 8, 9, 7, 7, 10, 'No', 'Yes', 'No', 4, 'Yes', 'Yes', 7, 7, 7, 6, 3, 7, 6, 6, 1, 'non, cursus non, egestas a, dui. Cras', 'orci quis lectus. Nullam suscipit,', 'non sapien molestie orci tincidunt', 'netus et malesuada fames ac turpis egestas. Fusce', 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc', 'Vestibulum ut eros non enim commodo hendrerit. Donec porttitor', 'sem, consequat nec, mollis vitae,'),
(37, 'No', 'No', 10, 7, 2, 'Yes', 'No', 'Yes', 10, 'Yes', 4, 'Yes', 'Yes', 4, 7, 'No', 'Yes', 3, 'No', 9, 1, 'Yes', 'No', 2, 3, 2, 9, 3, 'No', 'Yes', 'Yes', 9, 'Yes', 'Yes', 2, 2, 4, 1, 7, 8, 5, 9, 5, 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante', 'eros turpis non enim. Mauris', 'auctor quis, tristique ac, eleifend vitae,', 'Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras', 'erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer', 'a mi fringilla mi lacinia mattis. Integer', 'cursus in, hendrerit'),
(38, 'Yes', 'Yes', 1, 8, 5, 'Yes', 'Yes', 'Yes', 10, 'No', 4, 'Yes', 'Yes', 7, 5, 'No', 'No', 8, 'Yes', 7, 7, 'Yes', 'Yes', 4, 10, 5, 6, 9, 'No', 'No', 'Yes', 4, 'Yes', 'No', 4, 7, 9, 1, 7, 6, 3, 1, 5, 'eu nibh vulputate mauris sagittis placerat. Cras dictum', 'laoreet ipsum. Curabitur consequat, lectus sit', 'fermentum risus, at fringilla purus mauris a nunc. In at', 'rutrum eu, ultrices sit amet,', 'egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris', 'mi fringilla mi lacinia mattis. Integer eu', 'Mauris vestibulum, neque sed'),
(39, 'No', 'No', 5, 5, 6, 'Yes', 'Yes', 'Yes', 3, 'Yes', 8, 'Yes', 'Yes', 5, 1, 'Yes', 'Yes', 4, 'No', 9, 1, 'No', 'No', 6, 10, 2, 2, 4, 'Yes', 'Yes', 'No', 5, 'Yes', 'Yes', 3, 7, 3, 8, 7, 9, 5, 9, 1, 'non', 'velit. Aliquam nisl. Nulla eu', 'Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh', 'libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at,', 'neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu', 'nunc nulla vulputate dui, nec', 'et magnis dis parturient montes, nascetur ridiculus'),
(40, 'Yes', 'Yes', 8, 6, 1, 'Yes', 'No', 'No', 10, 'No', 10, 'Yes', 'Yes', 8, 5, 'Yes', 'Yes', 1, 'No', 8, 2, 'Yes', 'Yes', 6, 3, 7, 3, 3, 'No', 'No', 'No', 3, 'No', 'No', 3, 8, 8, 8, 2, 3, 1, 1, 6, 'tincidunt tempus risus. Donec', 'fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem', 'Phasellus', 'est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut', 'in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus', 'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis', 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam'),
(41, 'Yes', 'No', 9, 4, 6, 'Yes', 'No', 'No', 9, 'Yes', 4, 'Yes', 'Yes', 2, 1, 'No', 'Yes', 1, 'Yes', 9, 9, 'Yes', 'No', 2, 9, 9, 5, 4, 'No', 'Yes', 'Yes', 7, 'Yes', 'Yes', 3, 7, 8, 5, 1, 8, 2, 9, 9, 'enim. Curabitur massa. Vestibulum', 'varius. Nam', 'elit, pharetra ut,', 'Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc', 'a, magna. Lorem ipsum dolor sit', 'faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae', 'posuere, enim'),
(42, 'No', 'Yes', 5, 2, 8, 'Yes', 'No', 'No', 10, 'No', 9, 'Yes', 'No', 7, 1, 'No', 'Yes', 5, 'No', 3, 10, 'No', 'No', 1, 4, 1, 10, 2, 'Yes', 'No', 'No', 2, 'Yes', 'Yes', 1, 2, 5, 5, 5, 3, 2, 2, 1, 'sapien. Cras dolor dolor, tempus non, lacinia at, iaculis', 'faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor,', 'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,', 'et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam', 'gravida non,', 'euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet,', 'interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus'),
(43, 'No', 'No', 5, 6, 9, 'Yes', 'No', 'No', 10, 'Yes', 6, 'Yes', 'Yes', 5, 3, 'Yes', 'No', 9, 'Yes', 10, 6, 'No', 'No', 8, 2, 6, 8, 4, 'No', 'No', 'No', 10, 'No', 'No', 2, 8, 5, 5, 6, 7, 6, 4, 10, 'ut nisi a odio semper', 'odio. Phasellus at augue', 'rhoncus. Nullam velit dui,', 'Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat.', 'aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis', 'placerat, orci lacus vestibulum lorem, sit amet ultricies', 'Duis at lacus.'),
(44, 'No', 'No', 3, 6, 10, 'No', 'No', 'No', 9, 'Yes', 6, 'Yes', 'No', 8, 4, 'No', 'No', 2, 'No', 9, 7, 'Yes', 'Yes', 4, 10, 2, 2, 3, 'No', 'No', 'Yes', 7, 'No', 'No', 1, 9, 9, 9, 9, 6, 5, 10, 10, 'dapibus gravida.', 'in, cursus et, eros. Proin ultrices.', 'arcu. Nunc', 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', 'lacus. Aliquam rutrum lorem ac', 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh', 'Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus'),
(45, 'No', 'No', 8, 4, 4, 'Yes', 'Yes', 'No', 3, 'No', 3, 'No', 'Yes', 3, 8, 'Yes', 'Yes', 5, 'Yes', 1, 6, 'No', 'Yes', 7, 9, 4, 1, 1, 'No', 'No', 'No', 9, 'Yes', 'Yes', 10, 8, 1, 3, 4, 5, 9, 2, 10, 'erat volutpat. Nulla facilisis. Suspendisse', 'consequat dolor vitae dolor. Donec fringilla. Donec feugiat', 'vulputate mauris sagittis', 'natoque', 'at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', 'quam quis diam. Pellentesque habitant', 'eget lacus.'),
(46, 'No', 'No', 4, 5, 10, 'No', 'No', 'No', 10, 'No', 7, 'No', 'Yes', 2, 3, 'Yes', 'No', 6, 'Yes', 6, 6, 'Yes', 'No', 10, 4, 5, 1, 7, 'No', 'Yes', 'Yes', 8, 'Yes', 'No', 5, 4, 5, 1, 1, 7, 5, 7, 2, 'congue', 'elementum, lorem ut', 'Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus', 'dolor dapibus', 'ac turpis egestas. Fusce aliquet magna a neque. Nullam ut', 'lectus, a sollicitudin orci', 'fames ac turpis egestas. Fusce'),
(47, 'No', 'No', 3, 5, 1, 'No', 'Yes', 'No', 2, 'Yes', 4, 'No', 'Yes', 5, 6, 'Yes', 'Yes', 7, 'No', 2, 8, 'Yes', 'No', 10, 5, 4, 7, 2, 'No', 'No', 'Yes', 6, 'Yes', 'No', 4, 1, 4, 1, 2, 9, 5, 5, 6, 'at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus.', 'eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis', 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', 'nibh enim, gravida sit amet, dapibus id, blandit at,', 'Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus', 'iaculis quis, pede.', 'blandit mattis. Cras eget'),
(48, 'Yes', 'No', 6, 4, 5, 'No', 'Yes', 'Yes', 9, 'No', 4, 'No', 'No', 8, 4, 'Yes', 'No', 1, 'Yes', 2, 8, 'No', 'Yes', 6, 6, 5, 6, 7, 'No', 'No', 'No', 9, 'No', 'Yes', 8, 1, 5, 1, 4, 5, 8, 6, 3, 'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer', 'Cras dolor dolor, tempus non,', 'Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'gravida sit amet,', 'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat', 'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis.', 'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi'),
(49, 'Yes', 'No', 9, 5, 7, 'Yes', 'No', 'No', 7, 'No', 9, 'No', 'Yes', 1, 1, 'Yes', 'Yes', 6, 'No', 9, 3, 'Yes', 'Yes', 1, 3, 9, 10, 9, 'Yes', 'Yes', 'Yes', 1, 'Yes', 'No', 7, 1, 1, 3, 1, 3, 7, 2, 8, 'id, blandit at, nisi. Cum', 'sed pede. Cum sociis', 'nunc. In at pede. Cras vulputate velit eu sem. Pellentesque', 'eget lacus. Mauris non dui nec urna suscipit', 'id sapien. Cras dolor dolor, tempus', 'in sodales elit erat vitae risus. Duis', 'fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` char(1) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `precovid` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `usertype`, `firstname`, `lastname`, `email`, `precovid`) VALUES
(0, 'jwhite', 'jwhite123', 'p', 'Josh', 'White', 'jwhite@gmail.com', 0),
(1, 'akhan', 'akhan123', 'p', 'Adam', 'Khan', 'akhan@gmail.com', 0),
(2, 'ajaved', 'ajaved123', 'p', 'Amina', 'Javed', 'ajaved@gmail.com', 0),
(3, 'jegatn', 'jegatn123', 'p', 'Niche', 'Jegatheeswaran', 'jegatn@amazon.com', 0),
(4, 'urasab', 'urasab123', 'c', 'Usama', 'Rasab', 'urasab123@gmail.com', 0),
(5, 'hsoniega', 'hsoniega123', 'c', 'Howen', 'Soniega', 'badboy123@gmail.com', 0),
(6, 'lzgorzak', 'lzgorzak123', 'p', 'Luiza', 'Zgorzak', 'lzgorzak@gmail.com', 0),
(7, 'tchapman', 'tchapman123', 'p', 'Tracy', 'Chapman', 'tchapman@gmail.com', 0),
(8, 'amorrison', 'amorrison123', 'c', 'Aleeza ', 'Morrison', 'amorrison@gmail.com', 0),
(9, 'smilner', 'smilner123', 'p', 'Suraj', 'Milner', 'smilner@gmail.com', 0),
(10, 'kgonzales', 'kgonzales123', 'c', 'Kelise', 'Gonzales', 'kgonzales@gmail.com', 0),
(11, 'jceal', 'jceal123', 'p', 'Jane', 'Ceal', 'jceal123@gmail.com', 0),
(12, 'kpalmer', 'kpalmer123', 'p', 'Ken', 'Palmer', 'kpalmer123@gmail.com', 0),
(13, 'nevans', 'nevans123', 'p', 'Nancy', 'Evans', 'nevans11@gmail.com', 0),
(14, 'ejames', 'ejames123', 'p', 'Eward', 'James', 'eJames@yahoo.co.uk', 0),
(15, 'jcook', 'jcook123', 'p', 'Joseph ', 'Cook', 'jcook@gmail.com', 0),
(16, 'wclark', 'wclark123', 'p', 'William', 'Clark', 'wclark@yahoo.co.uk', 0),
(17, 'egriffin', 'egriffin123', 'p', 'Emily', 'Griffin', 'egriffin17@gmail.com', 0),
(18, 'bjohnson', 'bjohnson123', 'p', 'Brenda ', 'Johnson', 'jbrenda@gmail.com', 0),
(19, 'pthompson', 'phompson123', 'p', 'Paula', 'Thompson', 'thompsonp@gmail.com', 0),
(20, 'jbailey', 'jbailey123', 'p', 'Janet', 'Bailey', 'baileyJ@yahoo.co.uk', 0),
(21, 'krogers', 'krogers123', 'p', 'Katherine', 'Rogers', 'rogerskath@gmail.com', 0),
(22, 'drichardson', 'drichardson123', 'p', 'Diane', 'Richardson', 'RichDia@gmail.com', 0),
(23, 'dscott', 'dscott123', 'p', 'David', 'Scott', 'ScottyD@hotmail.com', 0),
(24, 'dsanders', 'dsanders', 'p', 'Debra', 'Sanders', 'sandersdebra@gmail.com', 0),
(25, 'agray', 'agray123', 'p', 'Andrea ', 'Gray', 'agray@gmail.com', 0),
(26, 'cjoyce', 'cjoyce123', 'p', 'Chloe', 'Joyce ', 'cjoy@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elarosuser`
--
ALTER TABLE `elarosuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elarosuser`
--
ALTER TABLE `elarosuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
