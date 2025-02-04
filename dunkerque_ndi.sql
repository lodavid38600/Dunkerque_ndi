-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 02 déc. 2021 à 18:30
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dunkerque_ndi`
--

-- --------------------------------------------------------

--
-- Structure de la table `bateau`
--

DROP TABLE IF EXISTS `bateau`;
CREATE TABLE IF NOT EXISTS `bateau` (
  `Id_Bateau` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Bateau` varchar(150) NOT NULL,
  `Description_Bateau` varchar(500) NOT NULL,
  `Approuve_Bateau` int(11) NOT NULL,
  PRIMARY KEY (`Id_Bateau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `Email_Compte` varchar(100) NOT NULL,
  `Nom_Compte` varchar(50) NOT NULL,
  `Prenom_Compte` varchar(50) NOT NULL,
  `Mdp_Compte` varchar(100) NOT NULL,
  `Droit_Compte` tinyint(1) NOT NULL,
  PRIMARY KEY (`Email_Compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `decoration`
--

DROP TABLE IF EXISTS `decoration`;
CREATE TABLE IF NOT EXISTS `decoration` (
  `Id_Decoration` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Decoration` varchar(50) NOT NULL,
  `Approuve_Decoration` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_Decoration`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sauve`
--

DROP TABLE IF EXISTS `sauve`;
CREATE TABLE IF NOT EXISTS `sauve` (
  `Id_Sauve` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Sauve` varchar(50) NOT NULL,
  `Prenom_Sauve` varchar(50) NOT NULL,
  `Approuve_Sauve` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_Sauve`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sauvetage`
--

DROP TABLE IF EXISTS `sauvetage`;
CREATE TABLE IF NOT EXISTS `sauvetage` (
  `Id_Sauvetage` int(11) NOT NULL AUTO_INCREMENT,
  `Date_Sauvetage` date DEFAULT NULL,
  `Nbr_Sauve` int(11) DEFAULT NULL,
  `Approuve_Sauvetage` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_Sauvetage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sauveteur`
--

DROP TABLE IF EXISTS `sauveteur`;
CREATE TABLE IF NOT EXISTS `sauveteur` (
  `Id_sauveteur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Sauveteur` varchar(50) NOT NULL,
  `Prenom_Sauveteur` varchar(50) NOT NULL,
  `Nbr_Sauveteur` int(11) NOT NULL,
  `Date_Nais_Sauveteur` date NOT NULL,
  `Approuve_Sauveteur` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id_sauveteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
