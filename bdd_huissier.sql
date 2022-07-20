-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 20 juil. 2022 à 00:14
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd_huissier`
--

-- --------------------------------------------------------

--
-- Structure de la table `Acte`
--

CREATE TABLE `Acte` (
  `num_acte` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Archive`
--

CREATE TABLE `Archive` (
  `num_archive` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `adresse` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Connexion`
--

CREATE TABLE `Connexion` (
  `id_admin` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `users` varchar(20) DEFAULT NULL,
  `mdp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Debiteur`
--

CREATE TABLE `Debiteur` (
  `id_debiteur` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `adresse` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Acte`
--
ALTER TABLE `Acte`
  ADD PRIMARY KEY (`num_acte`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Index pour la table `Archive`
--
ALTER TABLE `Archive`
  ADD PRIMARY KEY (`num_archive`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `Connexion`
--
ALTER TABLE `Connexion`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `Debiteur`
--
ALTER TABLE `Debiteur`
  ADD PRIMARY KEY (`id_debiteur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Connexion`
--
ALTER TABLE `Connexion`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Debiteur`
--
ALTER TABLE `Debiteur`
  MODIFY `id_debiteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Acte`
--
ALTER TABLE `Acte`
  ADD CONSTRAINT `acte_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `Client` (`id_client`),
  ADD CONSTRAINT `acte_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `Connexion` (`id_admin`);

--
-- Contraintes pour la table `Archive`
--
ALTER TABLE `Archive`
  ADD CONSTRAINT `archive_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `Client` (`id_client`),
  ADD CONSTRAINT `archive_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `Connexion` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
