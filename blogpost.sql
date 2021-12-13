-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 13 déc. 2021 à 02:24
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blogpost`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) DEFAULT NULL,
  `contenu` text,
  `dateCreation` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateModification` datetime DEFAULT CURRENT_TIMESTAMP,
  `categorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categorie_article` (`categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`, `dateCreation`, `dateModification`, `categorie`) VALUES
(1, 'Première victoire du Sénégal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-12 16:50:05', '2021-12-12 16:50:05', 1),
(2, 'Election en Mauritanie', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-12 16:50:05', '2021-12-12 16:50:05', 4),
(3, 'Début de la CAN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-12 16:50:05', '2021-12-12 16:50:05', 1),
(4, 'Pétrole au Sénégal', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-12 16:50:05', '2021-12-12 16:50:05', 4),
(5, 'Inauguration d\'un ENO Ã  l\'UVS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2021-12-12 16:50:05', '2021-12-12 16:50:05', 3),
(6, 'L\'ESP sur le toit du Sénégal au basquet', 'Les Bucks de Milwaukee aussi surnommé les « Deers » sont une franchise de basket-ball de la National Basketball Association basée à Milwaukee dans l\'État du Wisconsin. Elle joue ses matchs à domicile dans la salle du Fiserv Forum', '2021-12-13 01:52:29', '2021-12-13 01:52:29', 1),
(7, 'FIDAK de DAKAR', 'Dakar, 6 déc (APS) – Le ministre du Commerce et des Petites et Moyennes entreprises, Aminata Assome Diatta, a procédé, lundi, au lancement officiel de la 29e édition de la Foire internationale de Dakar (FIDAK), organisée par le Centre international du commerce extérieur du Sénégal (CICES).\r\n \r\n’’Promouvoir l’agrobusiness pour un développement économique et social durable’’ est le thème de la présente édition dont le pays invité d’honneur est le Pakistan. Elle est organisée en même temps que la 17e foire commerciale des Etats membres de l’Organisation de la coopération islamique (OCI), une manifestation que le Sénégal avait déjà abritée en 2017.\r\n\r\n \r\nAu total, ’’vingt-neuf nationalités, dont deux en provenance des pays membres de la CEDEAO, prennent part à cette importante manifestation, vitrine de notre savoir-faire, et facteur d’intégration à travers la diplomatie économique’’, a souligné Aminata Assome Diatta.\r\n \r\nRevenant sur le thème de cette édition, elle a déclaré que l’agrobusiness doit être un pilier de développement économique afin de favoriser la création d’emplois pour une rupture totale des inégalités.\r\n \r\nLes réflexions vont porter sur ’’les enjeux et défis de développement du secteur’’, lequel, dit-elle, nécessite ’’toute une réforme de la chaîne de valeur, à travers une ’’modernisation des techniques et procédures plus adéquates pour faire face à la concurrence mondiale, tout en préservant l’environnement, sans pour autant perdre de vue, l’enjeu de la souveraineté alimentaire.’’\r\n \r\nElle estime que la Fidak, de par son expérience, et de par ses innovations à venir, constituera un levier important pour la promotion de cette activité, moteur de développement de l’Afrique’’. Elle contribuera aussi, dit-elle, à la valorisation de la production nationale, en prenant en compte les spécificités de chaque région.\r\n \r\nA ce propos, le directeur général du CICES, Salihou Keita, a annoncé que des partenariats sont en cours avec les chambres de commerce des quatorze régions du Sénégal, pour diversifier et délocaliser la FIDAK qui, selon, lui ne doit plus être circonscrite à Dakar uniquement.\r\n \r\n’’Et dans cette dynamique de moderniser et d’innover la foire, nous avons envisagé, dès 2022, des foires dédiées, délocalisées à l’intérieur du pays en prenant en compte des potentialités de chaque région’’, a-t-il déclaré.\r\n \r\nIl en sera ainsi, selon lui, de la foire de l’arachide à Kaolack, la foire de la pêche et de l’aquaculture à Mbour et à Thiès, la foire du riz à Saint-Louis et celle de l’automobile à Dakar.\r\n \r\nElle a par ailleurs annoncé la réhabilitation prochaine du CICES pour répondre aux atteintes légitimes du public.\r\n \r\nSelon lui, la direction du CICES s’est ainsi résolument inscrite dans une dynamique de professionnalisation de la FIDAK, à travers un changement de paradigmes, pour aller vers une meilleure gestion des aires d’exposition, sans en exclure le secteur informel.\r\n \r\nLe maire de la ville de Dakar, Soham El Wardini, tout en se réjouissant de la bonne organisation de cette vitrine de l’économie nationale et de l’inventivité du pays, a également invité les différents visiteurs et exposants au respect des mesures barrières pour endiguer la pandémie de Covid-19 qui a été à l’origine de ces deux années de suspension de la foire.', '2021-12-13 01:55:25', '2021-12-13 01:55:25', 5);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'Sport'),
(2, 'Santé'),
(3, 'Education'),
(4, 'Politique'),
(5, 'Commerce');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `login`, `mdp`, `admin`) VALUES
(3, 'diene', 'soura', 'soura@esp.sn', 'passer123', 0),
(4, 'diabong', 'diana', 'diana@esp.sn', 'passer123', 1),
(5, 'deme', 'bamba', 'bamba@esp.sn', 'passer123', 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_categorie_article` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
