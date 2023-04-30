-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 30 avr. 2023 à 06:35
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `products`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `id` int(11) NOT NULL,
  `permission` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`email`, `name`, `password`, `id`, `permission`) VALUES
('hajjikarim530@gmail.com', 'karim', '12345', 1, 1),
('test', 'simo', '123', 2, 1),
('hajji', 'omar', '123', 4, 0),
('soo', 'koo', '123456789', 5, 1),
('mk', 'hi', 'jPasswordField1', 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE `machine` (
  `id` int(255) NOT NULL,
  `products_err_day` int(50) NOT NULL,
  `products_count_day` int(50) NOT NULL,
  `id_machine` int(50) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `machine`
--

INSERT INTO `machine` (`id`, `products_err_day`, `products_count_day`, `id_machine`, `time`) VALUES
(28, 22, 22, 2, '222'),
(29, 22, 11, 2, '30/04/2023 03:37'),
(30, 22, 11, 12, '30/04/2023 03:45'),
(31, 33, 45, 12, '30/04/2023 03:45'),
(32, 55, 3, 12, '30/04/2023 03:46');

-- --------------------------------------------------------

--
-- Structure de la table `names_machine`
--

CREATE TABLE `names_machine` (
  `id` int(50) NOT NULL,
  `nameMachine` varchar(255) NOT NULL,
  `ref_machine` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `names_machine`
--

INSERT INTO `names_machine` (`id`, `nameMachine`, `ref_machine`, `time`) VALUES
(2, 'machine2', 'ABCF', ''),
(10, 'machie11', 'ABCDW', '03:20:02'),
(11, 'machi', 'ABCDS', '30/04/2023 03'),
(12, 'tst', 'AS', '30/04/2023 03:43'),
(13, 'tet2', 'ACZ', '30/04/2023 03:43');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_machine` (`id_machine`);

--
-- Index pour la table `names_machine`
--
ALTER TABLE `names_machine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `names_machine`
--
ALTER TABLE `names_machine`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `machine_ibfk_1` FOREIGN KEY (`id_machine`) REFERENCES `names_machine` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
