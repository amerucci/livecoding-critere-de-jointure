-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 nov. 2020 à 11:07
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `films`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom_client` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `prenom`, `nom_client`) VALUES
(1, 'Romain', 'Boidron'),
(2, 'Hugo', 'Denis'),
(6, 'Merucci', 'Alain'),
(7, 'Merucci', 'Alain'),
(8, 'Alain', 'Merucci'),
(9, 'Hemza ', ''),
(10, 'Hemza ', 'El Miri'),
(11, 'Chloé', 'Pottier'),
(12, 'test', 'test'),
(13, 'test', 'test'),
(14, 'hugo', 'délire'),
(15, 'hugo', 'délire'),
(16, 'alain', 'm');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nom_film` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `nom_film`) VALUES
(5, 'Matrix 3 révolution'),
(6, 'La guerre des mondes'),
(13, 'Avatar'),
(14, 'Terminator'),
(15, 'Le seigneur des anneaux'),
(16, 'Un jour sans fin'),
(27, 'toto');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id_film` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `date_dbt_location` date NOT NULL,
  `date_fin_location` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`id_film`, `id_client`, `date_dbt_location`, `date_fin_location`) VALUES
(5, 1, '2020-02-05', '2020-02-06'),
(27, 2, '2020-01-31', '2020-03-01'),
(25, 2, '2020-02-06', '2020-03-21'),
(6, 2, '2020-02-14', '2020-02-22'),
(15, 2, '2020-02-22', '2020-02-29'),
(13, 2, '2020-02-22', '2020-02-23'),
(20, 1, '2020-02-06', '2020-05-21'),
(25, 1, '2020-02-23', '2020-02-29'),
(13, 1, '2020-02-27', '2020-02-29'),
(14, 2, '2020-02-14', '2020-02-22'),
(13, 1, '2020-11-10', '2020-11-17');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
