-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:58
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mangas`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `naissance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `naissance`) VALUES
(1, 'Miura, Kentarou', 1966),
(2, 'Araki, Hirohiko', 1960),
(3, 'Inoue, Takehiko', 1967),
(4, 'Oda, Eiichiro', 1975),
(5, 'Urasawa, Naoki', 1960);

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `annee` int(11) DEFAULT NULL,
  `note` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`id`, `titre`, `annee`, `note`, `description`) VALUES
(1, 'Bersek', 1989, 9, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge.'),
(2, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 2004, 9, 'In the American Old West, the world\'s greatest race is about to begin.'),
(3, 'Vagabond', 1998, 9, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions.'),
(4, 'One Piece', 1997, 9, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government.'),
(5, 'Monster', 1994, 9, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf.');

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom_perso` varchar(100) DEFAULT NULL,
  `description_perso` varchar(255) DEFAULT NULL,
  `manga_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom_perso`, `description_perso`, `manga_id`) VALUES
(1, 'Guts', 'Guts is the protagonist of the story.', 1),
(2, 'Farnese de Vandimion', 'Farnese is a noblewoman who led the Holy See\'s ceremonial guard, the Holy Iron Chain Knights.', 1),
(3, 'Gyro Zeppeli', 'Born Julius Caesar Zeppeli, but more commonly referred to as \"Gyro Zeppeli.\"', 2),
(4, 'Johnny Joestar', 'Johnny Joestar, also known as \"Joe Kid\" or \"JoJo\", was a racing prodigy.', 2),
(5, 'Musashi Miyamoto', 'Miyamoto Musashi (1584 – 1645) or Shinmen Takezo (his birth name) at a very young age embarked on a journey to become the strongest samurai only after being exiled from his own village.', 3),
(6, 'Kojirou Sasaki', 'The legendary archrival of Miyamoto Musashi. Raised by Kanemaki Jisai, after he is found as a baby in casket, floating on the ocean.', 3),
(7, 'Luffy Monkey D.', 'Luffy is the captain of the Straw Hat Pirates and is best friends with all of them and values them over all else.', 4),
(8, 'Zoro Roronoa', 'Zoro was the first crew member to be recruited by Luffy.', 4),
(9, 'Johan Liebert', 'Johan Liebert is the namesake \"monster\" of the story and the mystery of his past is the focus of the plot. He has been called a monster, the next Adolf Hitler and even the devil himself.', 5),
(10, 'Kenzou Tenma', 'Doctor Kenzou Tenma is a Japanese neurosurgeon working at the Eisler Memorial Hospital in Düsseldorf.', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manga_id` (`manga_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD CONSTRAINT `personnage_ibfk_1` FOREIGN KEY (`manga_id`) REFERENCES `manga` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
