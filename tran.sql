-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 17 déc. 2022 à 20:52
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tran`
--

-- --------------------------------------------------------

--
-- Structure de la table `commercant`
--

CREATE TABLE `commercant` (
  `SIREN` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Raison_sociale` varchar(50) DEFAULT NULL,
  `id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `commercant`
--

INSERT INTO `commercant` (`SIREN`, `Raison_sociale`, `id`) VALUES
('320367139', 'Nike France', '01'),
('387584972', 'GIE CRISTALINE', '04'),
('481278240', 'Lenovo', '02'),
('552008443', 'Bic', '03'),
('873152695', 'Boulanger', '07');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` varchar(50) NOT NULL,
  `mdp` varchar(250) DEFAULT NULL,
  `niveau` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `mdp`, `niveau`) VALUES
('01', '41DCBD52EB5EA632507D44370144DDD6A6940EF612BAC1E77728F47DD0F40C23', '1'),
('02', 'E158EFB99E836D0B2AD79C87AD3B60947E067E408A45482DF7D465A3F394C6C8', '1'),
('03', '8FB350A26AC92F354158BB7D320AC71E7F5C17357CA1451389E4E318790F76CE', '1'),
('04', 'BD18834BCB491C20A05D710C63AD3E0CEE2F07502A2422B56749C9244B347378', '1'),
('05', 'A4DFB15D63DA667C7A039D6FCF2F48C06D111D9D8ED222090695CB3852208228', '2'),
('06', 'E6BD99DB7663CFCB8A5AA6C338E444D8A85C9B6C42B3904D5E3A21DAD4C0AA47', '3'),
('07', '108723F6A5B4C5CB3937496F772205932807F3CF40D48AD76B5E401066EAB0CE', '1');

-- --------------------------------------------------------

--
-- Structure de la table `impaye`
--

CREATE TABLE `impaye` (
  `num_dos` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `code_motif` tinyint(1) DEFAULT NULL,
  `num_autorisation` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `impaye`
--

INSERT INTO `impaye` (`num_dos`, `code_motif`, `num_autorisation`) VALUES
('11139', 4, '842237676'),
('11457', 1, '244142988'),
('11737', 1, '738519144'),
('11997', 2, '839209817'),
('12632', 3, '369895189'),
('13229', 5, '727261172'),
('13439', 6, '190266957'),
('14398', 2, '164406196'),
('14815', 2, '320225890'),
('15849', 7, '854563316'),
('16467', 5, '952280660'),
('16648', 8, '408474551'),
('18444', 7, '125700532'),
('18499', 5, '804922820'),
('19607', 3, '959438360'),
('22373', 8, '906374258'),
('23005', 7, '286651087'),
('23269', 7, '261486594'),
('23858', 6, '567028649'),
('25738', 6, '106367752'),
('25837', 4, '833746152'),
('27026', 3, '939091449'),
('27089', 5, '493238575'),
('27597', 8, '476905304'),
('28771', 6, '384755544'),
('29637', 6, '864857296'),
('30104', 1, '524691893'),
('30141', 1, '398932754'),
('30173', 5, '627427643'),
('30875', 8, '277573597'),
('31287', 5, '731512228'),
('31614', 3, '340555138'),
('31696', 8, '482265402'),
('31768', 7, '240605339'),
('34346', 7, '896040062'),
('34991', 4, '521427904'),
('35202', 7, '183617485'),
('35633', 7, '883566527'),
('35652', 3, '156707847'),
('37288', 4, '962846330'),
('37643', 6, '731182077'),
('38690', 3, '356025817'),
('39163', 6, '469152159'),
('40111', 2, '772799987'),
('40675', 8, '505359567'),
('43523', 7, '335148670'),
('46538', 2, '661221691'),
('46620', 8, '663874667'),
('46631', 8, '525969874'),
('47576', 2, '808911166'),
('49770', 7, '888759486'),
('50195', 8, '410307285'),
('51277', 6, '410047679'),
('52036', 1, '367027304'),
('52337', 7, '294120361'),
('52671', 4, '696104132'),
('53424', 6, '303180874'),
('53698', 4, '752561356'),
('53948', 7, '580823531'),
('54640', 6, '459560882'),
('55131', 8, '953250550'),
('57463', 1, '842562678'),
('57552', 6, '966346005'),
('61423', 1, '388970800'),
('61819', 5, '334199472'),
('62108', 4, '894983569'),
('63531', 4, '226480280'),
('63864', 8, '913389315'),
('64294', 2, '182758029'),
('64444', 6, '574712126'),
('64625', 4, '980900089'),
('65538', 1, '288195520'),
('66341', 7, '812018684'),
('68850', 4, '681277077'),
('70510', 4, '710039657'),
('71064', 8, '548207695'),
('71248', 7, '598442275'),
('72811', 8, '879766196'),
('73567', 6, '110774026'),
('74708', 3, '599416219'),
('75226', 6, '493612723'),
('77474', 3, '963767099'),
('77671', 8, '918253245'),
('77903', 6, '608572620'),
('78353', 1, '616017999'),
('79072', 7, '512682399'),
('79222', 3, '391417503'),
('79491', 1, '853137103'),
('79764', 7, '575646078'),
('80282', 6, '281726278'),
('81310', 4, '886129473'),
('81984', 7, '232066609'),
('82634', 6, '640604221'),
('83675', 5, '487022806'),
('84490', 7, '111764276'),
('85245', 7, '762366217'),
('85657', 6, '294924011'),
('86035', 1, '734357576'),
('86547', 3, '101364088'),
('91097', 3, '318997650'),
('91769', 3, '150362674'),
('92242', 5, '661524299'),
('92640', 5, '589648554'),
('94846', 2, '936797767'),
('96386', 2, '672094331'),
('97331', 3, '402560936'),
('98557', 8, '330772417'),
('98752', 8, '305528442');

-- --------------------------------------------------------

--
-- Structure de la table `motifs_impaye`
--

CREATE TABLE `motifs_impaye` (
  `code` tinyint(1) NOT NULL,
  `libelle` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `motifs_impaye`
--

INSERT INTO `motifs_impaye` (`code`, `libelle`) VALUES
(1, 'fraude a la carte'),
(2, 'compte a decouvert'),
(3, 'compte cloture'),
(4, 'compte bloque'),
(5, 'provision insuffisante'),
(6, 'operation contestee par le debiteur'),
(7, 'titulaire decede'),
(8, 'raison non communiquee, contactez la banque du client');

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `num_autorisation` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `num_remise` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date_vente` date DEFAULT NULL,
  `num_carte` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `reseau` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `montant` int DEFAULT NULL,
  `date_traitement` date DEFAULT NULL,
  `sens` char(1) DEFAULT NULL,
  `SIREN` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`num_autorisation`, `num_remise`, `date_vente`, `num_carte`, `reseau`, `montant`, `date_traitement`, `sens`, `SIREN`) VALUES
('101364088', '589246003', '2022-08-26', '46406*******4198', 'CB', 101133, '2022-08-26', '-', '481278240'),
('106367752', '411371787', '2022-04-07', '80468*******7038', 'CB', 298507, '2022-04-07', '-', '552008443'),
('107487726', '861341896', '2022-01-08', '27399*******8940', 'CB', 279286, '2022-01-08', '+', '387584972'),
('110774026', '458214418', '2022-10-01', '37397*******9056', 'CB', 299475, '2022-10-01', '-', '481278240'),
('111695485', '257635033', '2022-03-09', '64453*******6061', 'CB', 289723, '2022-03-09', '+', '481278240'),
('111764276', '987572804', '2022-07-11', '12660*******9039', 'CB', 147885, '2022-07-11', '-', '320367139'),
('119273471', '678298347', '2022-03-20', '43051*******2355', 'CB', 77220, '2022-03-20', '+', '552008443'),
('121690136', '678298347', '2022-03-20', '43051*******2355', 'CB', 288196, '2022-03-20', '+', '552008443'),
('125700532', '265606543', '2022-07-04', '69928*******8862', 'CB', 364903, '2022-07-04', '-', '552008443'),
('132254000', '236646001', '2022-04-02', '83481*******2593', 'CB', 151798, '2022-04-02', '+', '320367139'),
('135108041', '683356300', '2022-02-24', '31343*******5496', 'CB', 145560, '2022-02-24', '+', '387584972'),
('141948254', '674349963', '2022-04-11', '29506*******9487', 'CB', 319694, '2022-04-11', '+', '481278240'),
('150362674', '662837206', '2022-06-03', '62882*******6473', 'CB', 296889, '2022-06-03', '-', '387584972'),
('151736945', '265606543', '2022-07-04', '69928*******8862', 'CB', 128026, '2022-07-04', '+', '552008443'),
('156258720', '798589333', '2022-08-13', '94677*******4763', 'CB', 71277, '2022-08-13', '+', '387584972'),
('156707847', '215730432', '2022-06-05', '91967*******6108', 'CB', 157352, '2022-06-05', '-', '387584972'),
('164406196', '411371787', '2022-04-07', '80468*******7038', 'CB', 184284, '2022-04-07', '-', '552008443'),
('167742898', '914052703', '2022-10-05', '15782*******2986', 'CB', 252085, '2022-10-05', '+', '552008443'),
('172534135', '674349963', '2022-04-11', '29506*******9487', 'CB', 238880, '2022-04-11', '+', '481278240'),
('179562226', '448062452', '2022-01-10', '60009*******2732', 'CB', 332938, '2022-01-10', '+', '552008443'),
('182758029', '265606543', '2022-07-04', '69928*******8862', 'CB', 285897, '2022-07-04', '-', '552008443'),
('183617485', '121508461', '2022-07-06', '19228*******3444', 'CB', 166329, '2022-07-06', '-', '481278240'),
('190266957', '356047979', '2022-08-19', '59135*******7002', 'CB', 221214, '2022-08-19', '-', '481278240'),
('191348171', '991030218', '2022-03-05', '76615*******1407', 'CB', 55758, '2022-03-05', '+', '481278240'),
('202173447', '446260281', '2022-08-25', '12445*******2923', 'CB', 331589, '2022-08-25', '+', '552008443'),
('202196921', '674349963', '2022-04-11', '29506*******9487', 'CB', 75673, '2022-04-11', '+', '481278240'),
('205284015', '494860137', '2022-06-15', '57640*******3464', 'CB', 292066, '2022-06-15', '+', '481278240'),
('205897110', '120856978', '2022-05-11', '95881*******9214', 'CB', 150743, '2022-05-11', '+', '387584972'),
('212416259', '792354986', '2022-01-01', '72549*******9444', 'CB', 278668, '2022-01-01', '+', '552008443'),
('213760680', '149837151', '2022-03-26', '89370*******7817', 'CB', 235638, '2022-03-26', '+', '387584972'),
('219850964', '755725341', '2022-09-30', '25556*******2603', 'CB', 245760, '2022-09-30', '+', '387584972'),
('226480280', '456518852', '2022-10-14', '51129*******8658', 'CB', 243031, '2022-10-14', '-', '552008443'),
('232066609', '346325147', '2022-09-09', '85535*******6187', 'CB', 102088, '2022-09-09', '-', '481278240'),
('240605339', '482350348', '2022-12-02', '21348*******7962', 'CB', 264827, '2022-12-02', '-', '320367139'),
('240652640', '210515772', '2022-08-09', '56735*******5954', 'CB', 343536, '2022-08-09', '+', '387584972'),
('244142988', '121508461', '2022-07-06', '19228*******3444', 'CB', 155402, '2022-07-06', '-', '481278240'),
('256067599', '215730432', '2022-06-05', '91967*******6108', 'CB', 203764, '2022-06-05', '+', '387584972'),
('256951760', '439231833', '2022-12-14', '39021*******7865', 'CB', 174584, '2022-12-14', '+', '481278240'),
('261486594', '241177653', '2022-11-26', '18763*******6384', 'CB', 68864, '2022-11-26', '-', '387584972'),
('275826959', '482350348', '2022-12-02', '21348*******7962', 'CB', 264095, '2022-12-02', '+', '320367139'),
('277573597', '241177653', '2022-11-26', '18763*******6384', 'CB', 253570, '2022-11-26', '-', '387584972'),
('277629892', '458214418', '2022-10-01', '37397*******9056', 'CB', 69827, '2022-10-01', '+', '481278240'),
('281726278', '241177653', '2022-11-26', '18763*******6384', 'CB', 87649, '2022-11-26', '-', '387584972'),
('286397287', '908812240', '2022-02-05', '79197*******5716', 'CB', 171496, '2022-02-05', '+', '387584972'),
('286651087', '448062452', '2022-01-10', '60009*******2732', 'CB', 55450, '2022-01-10', '-', '552008443'),
('288195520', '978843551', '2022-11-05', '54953*******3736', 'CB', 167113, '2022-11-05', '-', '481278240'),
('288228253', '482350348', '2022-12-02', '21348*******7962', 'CB', 234179, '2022-12-02', '+', '320367139'),
('290782584', '914052703', '2022-10-05', '15782*******2986', 'CB', 90503, '2022-10-05', '+', '552008443'),
('294120361', '792354986', '2022-01-01', '72549*******9444', 'CB', 316052, '2022-01-01', '-', '552008443'),
('294924011', '792354986', '2022-01-01', '72549*******9444', 'CB', 116905, '2022-01-01', '-', '552008443'),
('296438449', '914052703', '2022-10-05', '15782*******2986', 'CB', 256068, '2022-10-05', '+', '552008443'),
('303180874', '798589333', '2022-08-13', '94677*******4763', 'CB', 309492, '2022-08-13', '-', '387584972'),
('305528442', '991030218', '2022-03-05', '76615*******1407', 'CB', 241626, '2022-03-05', '-', '481278240'),
('318985602', '241177653', '2022-11-26', '18763*******6384', 'CB', 356902, '2022-11-26', '+', '387584972'),
('318997650', '861341896', '2022-01-08', '27399*******8940', 'CB', 353065, '2022-01-08', '-', '387584972'),
('320225890', '482350348', '2022-12-02', '21348*******7962', 'CB', 309119, '2022-12-02', '-', '320367139'),
('330772417', '448062452', '2022-01-10', '60009*******2732', 'CB', 112342, '2022-01-10', '-', '552008443'),
('334199472', '241177653', '2022-11-26', '18763*******6384', 'CB', 361333, '2022-11-26', '-', '387584972'),
('335148670', '991030218', '2022-03-05', '76615*******1407', 'CB', 108581, '2022-03-05', '-', '481278240'),
('340555138', '908812240', '2022-02-05', '79197*******5716', 'CB', 324062, '2022-02-05', '-', '387584972'),
('348766204', '356047979', '2022-08-19', '59135*******7002', 'CB', 204198, '2022-08-19', '+', '481278240'),
('356025817', '914052703', '2022-10-05', '15782*******2986', 'CB', 68355, '2022-10-05', '-', '552008443'),
('367027304', '215730432', '2022-06-05', '91967*******6108', 'CB', 105280, '2022-06-05', '-', '387584972'),
('369895189', '210515772', '2022-08-09', '56735*******5954', 'CB', 176912, '2022-08-09', '-', '387584972'),
('375427218', '215730432', '2022-06-05', '91967*******6108', 'CB', 117999, '2022-06-05', '+', '387584972'),
('384755544', '411371787', '2022-04-07', '80468*******7038', 'CB', 366202, '2022-04-07', '-', '552008443'),
('388233807', '881802465', '2022-02-09', '51470*******6168', 'CB', 176982, '2022-02-09', '+', '387584972'),
('388970800', '580099438', '2022-03-09', '48335*******9025', 'CB', 237038, '2022-03-09', '-', '552008443'),
('391417503', '678298347', '2022-03-20', '43051*******2355', 'CB', 95341, '2022-03-20', '-', '552008443'),
('398932754', '699652524', '2022-03-18', '45713*******5054', 'CB', 100347, '2022-03-18', '-', '320367139'),
('400581085', '121508461', '2022-07-06', '19228*******3444', 'CB', 343686, '2022-07-06', '+', '481278240'),
('402560936', '798589333', '2022-08-13', '94677*******4763', 'CB', 134737, '2022-08-13', '-', '387584972'),
('408474551', '236646001', '2022-04-02', '83481*******2593', 'CB', 368896, '2022-04-02', '-', '320367139'),
('409250991', '678298347', '2022-03-20', '43051*******2355', 'CB', 234673, '2022-03-20', '+', '552008443'),
('410047679', '580099438', '2022-03-09', '48335*******9025', 'CB', 289724, '2022-03-09', '-', '552008443'),
('410136988', '265606543', '2022-07-04', '69928*******8862', 'CB', 79662, '2022-07-04', '+', '552008443'),
('410307285', '456518852', '2022-10-14', '51129*******8658', 'CB', 189226, '2022-10-14', '-', '552008443'),
('422234748', '683356300', '2022-02-24', '31343*******5496', 'CB', 268169, '2022-02-24', '+', '387584972'),
('434144000', '982734877', '2022-02-08', '66364*******9304', 'CB', 60308, '2022-02-08', '+', '481278240'),
('440503165', '678298347', '2022-03-20', '43051*******2355', 'CB', 152444, '2022-03-20', '+', '552008443'),
('442561499', '215730432', '2022-06-05', '91967*******6108', 'CB', 59080, '2022-06-05', '+', '387584972'),
('443475690', '448062452', '2022-01-10', '60009*******2732', 'CB', 281161, '2022-01-10', '+', '552008443'),
('459560882', '448062452', '2022-01-10', '60009*******2732', 'CB', 170893, '2022-01-10', '-', '552008443'),
('461861192', '121508461', '2022-07-06', '19228*******3444', 'CB', 133799, '2022-07-06', '+', '481278240'),
('469152159', '699652524', '2022-03-18', '45713*******5054', 'CB', 255090, '2022-03-18', '-', '320367139'),
('476905304', '265606543', '2022-07-04', '69928*******8862', 'CB', 202933, '2022-07-04', '-', '552008443'),
('482265402', '371607728', '2022-09-15', '71602*******7044', 'CB', 350752, '2022-09-15', '-', '320367139'),
('487022806', '881802465', '2022-02-09', '51470*******6168', 'CB', 357478, '2022-02-09', '-', '387584972'),
('488778240', '978843551', '2022-11-05', '54953*******3736', 'CB', 287886, '2022-11-05', '+', '481278240'),
('493238575', '861341896', '2022-01-08', '27399*******8940', 'CB', 111612, '2022-01-08', '-', '387584972'),
('493612723', '991030218', '2022-03-05', '76615*******1407', 'CB', 349912, '2022-03-05', '-', '481278240'),
('502076535', '798589333', '2022-08-13', '94677*******4763', 'CB', 333354, '2022-08-13', '+', '387584972'),
('502599961', '494860137', '2022-06-15', '57640*******3464', 'CB', 65007, '2022-06-15', '+', '481278240'),
('503590931', '149837151', '2022-03-26', '89370*******7817', 'CB', 293860, '2022-03-26', '+', '387584972'),
('505359567', '411371787', '2022-04-07', '80468*******7038', 'CB', 54756, '2022-04-07', '-', '552008443'),
('512682399', '861341896', '2022-01-08', '27399*******8940', 'CB', 242408, '2022-01-08', '-', '387584972'),
('519566027', '346325147', '2022-09-09', '85535*******6187', 'CB', 226307, '2022-09-09', '+', '481278240'),
('521427904', '755725341', '2022-09-30', '25556*******2603', 'CB', 346694, '2022-09-30', '-', '387584972'),
('524691893', '699652524', '2022-03-18', '45713*******5054', 'CB', 179837, '2022-03-18', '-', '320367139'),
('525969874', '236646001', '2022-04-02', '83481*******2593', 'CB', 356474, '2022-04-02', '-', '320367139'),
('536315950', '755725341', '2022-09-30', '25556*******2603', 'CB', 65009, '2022-09-30', '+', '387584972'),
('548207695', '346325147', '2022-09-09', '85535*******6187', 'CB', 196095, '2022-09-09', '-', '481278240'),
('553766639', '121508461', '2022-07-06', '19228*******3444', 'CB', 365285, '2022-07-06', '+', '481278240'),
('560460581', '838535839', '2022-10-17', '85040*******9716', 'CB', 308908, '2022-10-17', '+', '481278240'),
('561426633', '346325147', '2022-09-09', '85535*******6187', 'CB', 339477, '2022-09-09', '+', '481278240'),
('567015238', '458214418', '2022-10-01', '37397*******9056', 'CB', 242988, '2022-10-01', '+', '481278240'),
('567028649', '411371787', '2022-04-07', '80468*******7038', 'CB', 364334, '2022-04-07', '-', '552008443'),
('569915890', '674349963', '2022-04-11', '29506*******9487', 'CB', 92493, '2022-04-11', '+', '481278240'),
('573125272', '458214418', '2022-10-01', '37397*******9056', 'CB', 105825, '2022-10-01', '+', '481278240'),
('574712126', '674349963', '2022-04-11', '29506*******9487', 'CB', 69821, '2022-04-11', '-', '481278240'),
('575548468', '448062452', '2022-01-10', '60009*******2732', 'CB', 137762, '2022-01-10', '+', '552008443'),
('575646078', '683356300', '2022-02-24', '31343*******5496', 'CB', 152832, '2022-02-24', '-', '387584972'),
('580823531', '371607728', '2022-09-15', '71602*******7044', 'CB', 275839, '2022-09-15', '-', '320367139'),
('589073503', '448062452', '2022-01-10', '60009*******2732', 'CB', 100974, '2022-01-10', '+', '552008443'),
('589648554', '881802465', '2022-02-09', '51470*******6168', 'CB', 235918, '2022-02-09', '-', '387584972'),
('590864376', '699652524', '2022-03-18', '45713*******5054', 'CB', 260314, '2022-03-18', '+', '320367139'),
('598442275', '121508461', '2022-07-06', '19228*******3444', 'CB', 111375, '2022-07-06', '-', '481278240'),
('599416219', '908812240', '2022-02-05', '79197*******5716', 'CB', 87276, '2022-02-05', '-', '387584972'),
('601209278', '210515772', '2022-08-09', '56735*******5954', 'CB', 352949, '2022-08-09', '+', '387584972'),
('608572620', '257635033', '2022-03-09', '64453*******6061', 'CB', 293992, '2022-03-09', '-', '481278240'),
('616017999', '908812240', '2022-02-05', '79197*******5716', 'CB', 247866, '2022-02-05', '-', '387584972'),
('620451301', '580099438', '2022-03-09', '48335*******9025', 'CB', 218060, '2022-03-09', '+', '552008443'),
('622576613', '798589333', '2022-08-13', '94677*******4763', 'CB', 366714, '2022-08-13', '+', '387584972'),
('627427643', '120856978', '2022-05-11', '95881*******9214', 'CB', 198027, '2022-05-11', '-', '387584972'),
('640604221', '215730432', '2022-06-05', '91967*******6108', 'CB', 356245, '2022-06-05', '-', '387584972'),
('650639095', '914052703', '2022-10-05', '15782*******2986', 'CB', 176737, '2022-10-05', '+', '552008443'),
('661221691', '861341896', '2022-01-08', '27399*******8940', 'CB', 288956, '2022-01-08', '-', '387584972'),
('661524299', '356047979', '2022-08-19', '59135*******7002', 'CB', 191270, '2022-08-19', '-', '481278240'),
('663187051', '678298347', '2022-03-20', '43051*******2355', 'CB', 223523, '2022-03-20', '+', '552008443'),
('663464476', '978843551', '2022-11-05', '54953*******3736', 'CB', 289353, '2022-11-05', '+', '481278240'),
('663874667', '792354986', '2022-01-01', '72549*******9444', 'CB', 360924, '2022-01-01', '-', '552008443'),
('672094331', '241177653', '2022-11-26', '18763*******6384', 'CB', 364311, '2022-11-26', '-', '387584972'),
('674304245', '755725341', '2022-09-30', '25556*******2603', 'CB', 299934, '2022-09-30', '+', '387584972'),
('675115387', '674349963', '2022-04-11', '29506*******9487', 'CB', 253576, '2022-04-11', '+', '481278240'),
('681277077', '121508461', '2022-07-06', '19228*******3444', 'CB', 161100, '2022-07-06', '-', '481278240'),
('690545723', '798589333', '2022-08-13', '94677*******4763', 'CB', 270970, '2022-08-13', '+', '387584972'),
('696104132', '991030218', '2022-03-05', '76615*******1407', 'CB', 284929, '2022-03-05', '-', '481278240'),
('703124274', '346325147', '2022-09-09', '85535*******6187', 'CB', 173759, '2022-09-09', '+', '481278240'),
('705191957', '236646001', '2022-04-02', '83481*******2593', 'CB', 119600, '2022-04-02', '+', '320367139'),
('710039657', '678298347', '2022-03-20', '43051*******2355', 'CB', 363637, '2022-03-20', '-', '552008443'),
('724678905', '378242986', '2022-09-25', '74802*******6906', 'CB', 111520, '2022-09-25', '+', '320367139'),
('727261172', '265606543', '2022-07-04', '69928*******8862', 'CB', 80268, '2022-07-04', '-', '552008443'),
('729382573', '265606543', '2022-07-04', '69928*******8862', 'CB', 328660, '2022-07-04', '+', '552008443'),
('729481631', '236646001', '2022-04-02', '83481*******2593', 'CB', 110265, '2022-04-02', '+', '320367139'),
('731182077', '458214418', '2022-10-01', '37397*******9056', 'CB', 52005, '2022-10-01', '-', '481278240'),
('731512228', '446260281', '2022-08-25', '12445*******2923', 'CB', 179017, '2022-08-25', '-', '552008443'),
('734357576', '838535839', '2022-10-17', '85040*******9716', 'CB', 281669, '2022-10-17', '-', '481278240'),
('738519144', '236646001', '2022-04-02', '83481*******2593', 'CB', 277799, '2022-04-02', '-', '320367139'),
('739175372', '482350348', '2022-12-02', '21348*******7962', 'CB', 316328, '2022-12-02', '+', '320367139'),
('752561356', '149837151', '2022-03-26', '89370*******7817', 'CB', 88818, '2022-03-26', '-', '387584972'),
('756069021', '494860137', '2022-06-15', '57640*******3464', 'CB', 292778, '2022-06-15', '+', '481278240'),
('760547423', '210515772', '2022-08-09', '56735*******5954', 'CB', 305050, '2022-08-09', '+', '387584972'),
('762366217', '683356300', '2022-02-24', '31343*******5496', 'CB', 266246, '2022-02-24', '-', '387584972'),
('772487856', '371607728', '2022-09-15', '71602*******7044', 'CB', 55445, '2022-09-15', '+', '320367139'),
('772799987', '978843551', '2022-11-05', '54953*******3736', 'CB', 76135, '2022-11-05', '-', '481278240'),
('780812601', '482350348', '2022-12-02', '21348*******7962', 'CB', 294434, '2022-12-02', '+', '320367139'),
('785506730', '798589333', '2022-08-13', '94677*******4763', 'CB', 100730, '2022-08-13', '+', '387584972'),
('790693760', '265606543', '2022-07-04', '69928*******8862', 'CB', 242652, '2022-07-04', '+', '552008443'),
('804692954', '378242986', '2022-09-25', '74802*******6906', 'CB', 193056, '2022-09-25', '+', '320367139'),
('804922820', '678298347', '2022-03-20', '43051*******2355', 'CB', 262438, '2022-03-20', '-', '552008443'),
('808911166', '210515772', '2022-08-09', '56735*******5954', 'CB', 339364, '2022-08-09', '-', '387584972'),
('812018684', '356047979', '2022-08-19', '59135*******7002', 'CB', 163647, '2022-08-19', '-', '481278240'),
('812110815', '755725341', '2022-09-30', '25556*******2603', 'CB', 114624, '2022-09-30', '+', '387584972'),
('819058057', '378242986', '2022-09-25', '74802*******6906', 'CB', 62615, '2022-09-25', '+', '320367139'),
('824971236', '978843551', '2022-11-05', '54953*******3736', 'CB', 51273, '2022-11-05', '+', '481278240'),
('830658230', '991030218', '2022-03-05', '76615*******1407', 'CB', 193882, '2022-03-05', '+', '481278240'),
('833746152', '494860137', '2022-06-15', '57640*******3464', 'CB', 173587, '2022-06-15', '-', '481278240'),
('837974419', '149837151', '2022-03-26', '89370*******7817', 'CB', 226907, '2022-03-26', '+', '387584972'),
('839209817', '257635033', '2022-03-09', '64453*******6061', 'CB', 162153, '2022-03-09', '-', '481278240'),
('842237676', '378242986', '2022-09-25', '74802*******6906', 'CB', 341055, '2022-09-25', '-', '320367139'),
('842562678', '149837151', '2022-03-26', '89370*******7817', 'CB', 56543, '2022-03-26', '-', '387584972'),
('846253968', '914052703', '2022-10-05', '15782*******2986', 'CB', 365294, '2022-10-05', '+', '552008443'),
('853137103', '371607728', '2022-09-15', '71602*******7044', 'CB', 167682, '2022-09-15', '-', '320367139'),
('854563316', '241177653', '2022-11-26', '18763*******6384', 'CB', 281961, '2022-11-26', '-', '387584972'),
('864857296', '792354986', '2022-01-01', '72549*******9444', 'CB', 187945, '2022-01-01', '-', '552008443'),
('866518408', '699652524', '2022-03-18', '45713*******5054', 'CB', 98461, '2022-03-18', '+', '320367139'),
('867582021', '683356300', '2022-02-24', '31343*******5496', 'CB', 84101, '2022-02-24', '+', '387584972'),
('875776545', '346325147', '2022-09-09', '85535*******6187', 'CB', 336521, '2022-09-09', '+', '481278240'),
('879766196', '356047979', '2022-08-19', '59135*******7002', 'CB', 357653, '2022-08-19', '-', '481278240'),
('881277125', '439231833', '2022-12-14', '39021*******7865', 'CB', 177093, '2022-12-14', '+', '481278240'),
('883044947', '378242986', '2022-09-25', '74802*******6906', 'CB', 191759, '2022-09-25', '+', '320367139'),
('883566527', '482350348', '2022-12-02', '21348*******7962', 'CB', 90783, '2022-12-02', '-', '320367139'),
('886129473', '411371787', '2022-04-07', '80468*******7038', 'CB', 180222, '2022-04-07', '-', '552008443'),
('887507488', '662837206', '2022-06-03', '62882*******6473', 'CB', 79967, '2022-06-03', '+', '387584972'),
('888759486', '991030218', '2022-03-05', '76615*******1407', 'CB', 95522, '2022-03-05', '-', '481278240'),
('889124223', '411371787', '2022-04-07', '80468*******7038', 'CB', 338360, '2022-04-07', '+', '552008443'),
('891535565', '908812240', '2022-02-05', '79197*******5716', 'CB', 110016, '2022-02-05', '+', '387584972'),
('892518768', '149837151', '2022-03-26', '89370*******7817', 'CB', 180574, '2022-03-26', '+', '387584972'),
('894983569', '149837151', '2022-03-26', '89370*******7817', 'CB', 277006, '2022-03-26', '-', '387584972'),
('896040062', '755725341', '2022-09-30', '25556*******2603', 'CB', 169970, '2022-09-30', '-', '387584972'),
('898152548', '987572804', '2022-07-11', '12660*******9039', 'CB', 269404, '2022-07-11', '+', '320367139'),
('906374258', '662837206', '2022-06-03', '62882*******6473', 'CB', 207516, '2022-06-03', '-', '387584972'),
('913389315', '674349963', '2022-04-11', '29506*******9487', 'CB', 267231, '2022-04-11', '-', '481278240'),
('918253245', '908812240', '2022-02-05', '79197*******5716', 'CB', 302523, '2022-02-05', '-', '387584972'),
('936797767', '881802465', '2022-02-09', '51470*******6168', 'CB', 362139, '2022-02-09', '-', '387584972'),
('939091449', '458214418', '2022-10-01', '37397*******9056', 'CB', 90328, '2022-10-01', '-', '481278240'),
('939356883', '356047979', '2022-08-19', '59135*******7002', 'CB', 338293, '2022-08-19', '+', '481278240'),
('941656593', '236646001', '2022-04-02', '83481*******2593', 'CB', 70397, '2022-04-02', '+', '320367139'),
('952280660', '699652524', '2022-03-18', '45713*******5054', 'CB', 111136, '2022-03-18', '-', '320367139'),
('953250550', '346325147', '2022-09-09', '85535*******6187', 'CB', 186887, '2022-09-09', '-', '481278240'),
('958437231', '798589333', '2022-08-13', '94677*******4763', 'CB', 96670, '2022-08-13', '+', '387584972'),
('959438360', '494860137', '2022-06-15', '57640*******3464', 'CB', 281670, '2022-06-15', '-', '481278240'),
('962846330', '292100110', '2022-06-05', '84162*******2146', 'CB', 339925, '2022-06-05', '-', '481278240'),
('963767099', '411371787', '2022-04-07', '80468*******7038', 'CB', 367277, '2022-04-07', '-', '552008443'),
('966346005', '371607728', '2022-09-15', '71602*******7044', 'CB', 210309, '2022-09-15', '-', '320367139'),
('966467862', '674349963', '2022-04-11', '29506*******9487', 'CB', 248820, '2022-04-11', '+', '481278240'),
('977670079', '792354986', '2022-01-01', '72549*******9444', 'CB', 334798, '2022-01-01', '+', '552008443'),
('979495860', '978843551', '2022-11-05', '54953*******3736', 'CB', 203933, '2022-11-05', '+', '481278240'),
('980900089', '978843551', '2022-11-05', '54953*******3736', 'CB', 221235, '2022-11-05', '-', '481278240'),
('996363386', '978843551', '2022-11-05', '54953*******3736', 'CB', 182477, '2022-11-05', '+', '481278240'),
('996567991', '448062452', '2022-01-10', '60009*******2732', 'CB', 162070, '2022-01-10', '+', '552008443');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commercant`
--
ALTER TABLE `commercant`
  ADD PRIMARY KEY (`SIREN`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `impaye`
--
ALTER TABLE `impaye`
  ADD PRIMARY KEY (`num_dos`),
  ADD KEY `num_remise` (`num_autorisation`),
  ADD KEY `code_motif` (`code_motif`);

--
-- Index pour la table `motifs_impaye`
--
ALTER TABLE `motifs_impaye`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`num_autorisation`),
  ADD KEY `SIREN` (`SIREN`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commercant`
--
ALTER TABLE `commercant`
  ADD CONSTRAINT `Commercant_ibfk_1` FOREIGN KEY (`id`) REFERENCES `compte` (`id`);

--
-- Contraintes pour la table `impaye`
--
ALTER TABLE `impaye`
  ADD CONSTRAINT `impaye_ibfk_1` FOREIGN KEY (`num_autorisation`) REFERENCES `transaction` (`num_autorisation`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Impaye_ibfk_2` FOREIGN KEY (`code_motif`) REFERENCES `motifs_impaye` (`code`);

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`SIREN`) REFERENCES `commercant` (`SIREN`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
