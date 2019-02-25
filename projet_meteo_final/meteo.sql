-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 22 fév. 2019 à 18:26
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `meteo`
--

-- --------------------------------------------------------

--
-- Structure de la table `valeurs`
--

CREATE TABLE `valeurs` (
  `id` int(11) NOT NULL,
  `temperature` int(11) DEFAULT NULL,
  `lieu` varchar(100) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `humidite` float DEFAULT NULL,
  `pression` float DEFAULT NULL,
  `temps` varchar(50) DEFAULT NULL,
  `vitesse_vent` int(11) DEFAULT NULL,
  `direction_vent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `valeurs`
--

INSERT INTO `valeurs` (`id`, `temperature`, `lieu`, `latitude`, `longitude`, `humidite`, `pression`, `temps`, `vitesse_vent`, `direction_vent`) VALUES
(23, 312, 'Bunza', 12, 4, 18, 1007.28, 'Clear', 2, 349),
(24, 265, 'Mitrofanovka', 50, 40, 82, 1018.06, 'Clouds', 3, 292),
(25, 0, '', 46.9868, 5.88867, 0, 0, '', 0, 0),
(26, 0, '', 47.39, 2.13135, 0, 0, '', 0, 0),
(27, 0, '', 47.9522, 7.29492, 0, 0, '', 0, 0),
(28, 0, '', 48.7553, 5.75684, 0, 0, '', 0, 0),
(29, 0, '', 47.6867, 4.92188, 0, 0, '', 0, 0),
(30, 286, 'Bourbonne-les-Bains', 47.9964, 5.69092, 71, 1034, 'Clouds', 5, 40),
(31, 291, 'Clugnat', 46.3536, 2.04346, 42, 1032, 'Clear', 4, 60),
(32, 291, 'Saint-Cernin', 45.0493, 2.43897, 48, 1029, 'Clear', 3, 40),
(33, 294, 'Fleurance', 43.9048, 0.725098, 26, 1029, 'Clear', 2, 330),
(34, 294, 'Argestues', 42.3169, 1.23047, 16, 1026, 'Clear', 2, 170),
(35, 289, 'Aveizieux', 45.5746, 4.35059, 58, 1031, 'Clouds', 5, 340),
(36, 288, 'RosiÃ¨res-aux-Salines', 48.6102, 6.32812, 58, 1034, 'Clouds', 5, 50),
(37, 289, 'DÃ©partement de la Meuse', 48.9577, 5.3833, 32, 1029, 'Clear', 4, 320),
(38, 289, 'Saint-Amour', 46.4445, 5.33935, 44, 1030, 'Clear', 7, 50),
(39, 296, 'Saint-Jean-du-Gard', 44.1891, 3.7793, 27, 1024, 'Clear', 5, 20),
(40, 291, 'Ecouflant', 47.5237, -0.527344, 42, 1032, 'Clear', 4, 80),
(41, 291, 'Souillac', 44.8471, 1.51611, 43, 1029.06, 'Clear', 3, 42),
(42, 293, 'Beaumont-sur-Leze', 43.3801, 1.34033, 24, 1029, 'Clear', 4, 330),
(43, 290, 'Severac-le-Chateau', 44.3622, 3.12012, 39, 1029, 'Clear', 6, 340),
(44, 291, 'Le Garric', 44.0155, 2.26318, 39, 1029, 'Clear', 6, 340),
(45, 288, 'Villouxel', 48.348, 5.44922, 62, 1034, 'Clouds', 5, 50),
(46, 288, 'Usson-en-Forez', 45.4052, 3.91113, 58, 1031, 'Clouds', 5, 340),
(47, 294, 'Montagnac-sur-Auvignon', 44.1733, 0.461426, 26, 1029, 'Clear', 2, 330),
(48, 291, 'Clamecy', 47.4643, 3.69141, 52, 1032, 'Clear', 5, 40),
(49, 287, 'Hennezel', 48.1285, 6.17432, 71, 1034, 'Clouds', 5, 40),
(50, 289, 'Mailly-le-Camp', 48.5957, 4.26269, 67, 1034, 'Clear', 4, 30),
(51, 291, 'Neuvy-sur-Loire', 47.5385, 2.87842, 42, 1033, 'Clear', 5, 40),
(52, 290, 'Crouy-sur-Ourcq', 49.0874, 3.0542, 45, 1034, 'Clear', 2, 350),
(53, 290, 'Les Ulis', 48.6683, 2.17529, 48, 1034, 'Clear', 3, 40),
(54, 291, 'Vendeuvre-du-Poitou', 46.7314, 0.32959, 42, 1032, 'Clear', 4, 70),
(55, 291, 'Sainte-Solange', 47.1066, 2.63672, 42, 1033, 'Clear', 5, 40),
(56, 292, 'Availles-Limouzine', 46.1256, 0.527344, 34, 1030, 'Clear', 6, 60),
(57, 282, 'Pfaffenhofen', 48.3772, 11.1841, 76, 1034, 'Rain', 4, 320),
(58, 289, 'Castel del Rio', 44.2521, 11.4478, 39, 1023, 'Clear', 2, 50),
(59, 288, 'Adria', 45.0803, 12.019, 81, 1023, 'Mist', 3, 230),
(60, 291, 'Saint-Gaultier', 46.5957, 1.34033, 42, 1032, 'Clear', 4, 60),
(61, 289, 'Chaource', 48.0551, 4.24072, 63, 1034, 'Clear', 3, 20),
(62, 290, 'Voulx', 48.3042, 2.96631, 48, 1034, 'Clear', 1, 0),
(63, 286, 'Arrondissement de LunÃ©ville', 48.5084, 6.63574, 58, 1034, 'Clouds', 5, 50),
(64, 268, 'Taosi', 35.9402, 111.445, 71, 1029.02, 'Clear', 1, 113),
(65, 267, 'Xinzhi', 36.4368, 111.841, 62, 1029.3, 'Clouds', 1, 141),
(66, 273, 'Shandong Sheng', 35.9046, 119.18, 80, 1027.5, 'Clouds', 2, 350),
(67, 272, 'Wonju', 37.2456, 128.057, 54, 1019, 'Haze', 1, 360),
(68, 276, 'Kamoenai', 43.9117, 140.142, 100, 1014.66, 'Clear', 10, 319),
(69, 267, 'Shimizu', 43.0187, 142.866, 85, 1013.84, 'Clouds', 2, 289),
(70, 290, 'Pouilly-sur-Loire', 47.3007, 2.94434, 51, 1032, 'Clear', 3, 20),
(71, 289, 'La Chapelle-Gauthier', 48.5521, 2.83447, 59, 1033, 'Clear', 2, 0),
(72, 288, 'Giat', 45.7742, 2.43897, 51, 1031, 'Clear', 5, 10),
(73, 292, 'Graulhet', 43.7622, 2.04346, 36, 1029, 'Clear', 4, 290),
(74, 289, 'Voves', 48.3188, 1.6919, 48, 1033, 'Clear', 3, 60),
(75, 289, 'Carentoir', 47.8196, -2.10938, 51, 1032, 'Clear', 4, 120),
(76, 286, '', 46.0189, -5.40527, 91, 1027.59, 'Clear', 8, 126),
(77, 290, 'Bailleau-le-Pin', 48.348, 1.31836, 48, 1033, 'Clear', 3, 60),
(78, 288, 'Saint-Forgeux', 45.8355, 4.5044, 51, 1029, 'Clear', 7, 350),
(79, 287, 'Le Villard', 45.6208, 6.13037, 47, 1028, 'Clear', 5, 350),
(80, 276, 'Kemnath', 49.8725, 11.8872, 80, 1036, 'Clear', 2, 340),
(81, 288, 'Serravalle a Po', 45.0958, 11.0742, 50, 1024, 'Mist', 1, 0),
(82, 266, 'Sasnovy Bor', 52.4527, 29.1797, 62, 1032.13, 'Clouds', 10, 18),
(83, 273, 'Slivo Pole', 43.9889, 26.1914, 92, 1018, 'Clouds', 11, 50),
(84, 284, 'SulaymÄnÄ«yah', 34.2663, 42.627, 86, 1018.13, 'Clouds', 3, 73),
(85, 288, '', 25.1204, 21.1816, 38, 1017.75, 'Clear', 3, 46),
(86, 301, 'Gbadolite', 4.51619, 20.8301, 64, 1006.93, 'Clouds', 1, 245),
(87, 293, '', -7.4115, 25.8398, 88, 1012.97, 'Rain', 4, 290),
(88, 295, 'Namwala', -15.4166, 25.5762, 85, 1011.47, 'Clouds', 3, 22),
(89, 302, 'Mabuli', -25.7653, 24.6973, 32, 1010.75, 'Clouds', 3, 318),
(90, 287, 'Arrondissement de Montbard', 47.6617, 4.6582, 67, 1032, 'Clear', 6, 30),
(91, 268, 'Radzanow', 51.5327, 20.8301, 80, 1041.35, 'Clear', 6, 14),
(92, 286, 'Gatteville-le-Phare', 49.9194, -0.615234, 54, 1034, 'Clear', 3, 70),
(93, 293, 'Duron', 40.6098, -2.72461, 15, 1030, 'Clear', 2, 260),
(94, 289, 'Erquy', 48.7743, -2.46094, 62, 1032, 'Clear', 6, 120),
(95, 294, 'Camares', 43.7354, 2.90039, 36, 1029, 'Clear', 4, 290),
(96, 283, 'Nalut', 31.6861, 11.1621, 73, 1023.81, 'Clouds', 3, 3),
(97, 298, 'Agadez', 18.7659, 11.1621, 23, 1008.49, 'Clear', 3, 202),
(98, 300, 'Republic of Chad', 15.3213, 18.8086, 19, 1009.43, 'Clouds', 4, 8),
(99, 284, 'Charny', 47.8344, 3.14209, 74, 1033.69, 'Clear', 3, 44),
(100, 289, 'Saint-Just-le-Martel', 45.8355, 1.38428, 44, 1030, 'Clear', 6, 60),
(101, 288, 'Montbrison', 45.6054, 4.021, 58, 1030, 'Clear', 3, 290),
(102, 277, 'Arrondissement de Gap', 44.6599, 5.95459, 74, 1025.19, 'Clear', 1, 355),
(103, 288, 'Chatillon-sur-Seine', 47.9522, 4.6582, 62, 1034, 'Clear', 2, 40),
(104, 290, 'Genille', 47.2261, 1.09863, 62, 1032, 'Clear', 4, 50),
(105, 290, 'Ingrandes', 47.4197, -0.944824, 45, 1032, 'Clear', 3, 70),
(106, 290, 'Guemene-Penfao', 47.6126, -1.80176, 55, 1031, 'Clear', 3, 110);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `valeurs`
--
ALTER TABLE `valeurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `valeurs`
--
ALTER TABLE `valeurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
