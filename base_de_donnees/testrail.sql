-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 07 Août 2018 à 20:32
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `testrail`
--

-- --------------------------------------------------------

--
-- Structure de la table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `view` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `case_id` int(11) DEFAULT NULL,
  `test_change_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `estimate` int(11) DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `custom_preconds` longtext COLLATE utf8_unicode_ci,
  `custom_steps` longtext COLLATE utf8_unicode_ci,
  `custom_expected` longtext COLLATE utf8_unicode_ci,
  `custom_steps_separated` longtext COLLATE utf8_unicode_ci,
  `custom_mission` longtext COLLATE utf8_unicode_ci,
  `custom_goals` longtext COLLATE utf8_unicode_ci,
  `custom_automation_type` int(11) DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `is_copy` tinyint(1) NOT NULL,
  `copyof_id` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `estimate_forecast` int(11) DEFAULT NULL,
  `refs` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suite_id` int(11) NOT NULL,
  `updated_on` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cases`
--

INSERT INTO `cases` (`id`, `section_id`, `title`, `display_order`, `priority_id`, `estimate`, `milestone_id`, `custom_preconds`, `custom_steps`, `custom_expected`, `custom_steps_separated`, `custom_mission`, `custom_goals`, `custom_automation_type`, `type_id`, `is_copy`, `copyof_id`, `created_on`, `user_id`, `estimate_forecast`, `refs`, `suite_id`, `updated_on`, `updated_by`, `template_id`) VALUES
(1, 1, 'test', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1531921228, 1, NULL, NULL, 1, 1531921228, 1, 1),
(2, 2, 'test2ndDegres', 1, 2, NULL, NULL, 'Lancer le programme et taper sur la touche lang', 'etape1', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1530812482, 1, NULL, NULL, 3, 1533554684, 1, 1),
(3, 2, 'testTranslate', 2, 2, NULL, NULL, 'lng FR/EN', 'Cliquer FR 1ere fois\nCliquer EN 1ere fois\nCliquer FR 2e fois\nCliquer EN 2e fois', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1530874969, 1, NULL, NULL, 3, 1533655057, 1, 1),
(4, 2, 'testTranslateButton', 3, 2, NULL, NULL, 'Ce test s\'assure que les deux langues possibles sont FR/EN', 'Effecer et tester les bouton de FR/EN', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1533585868, 1, NULL, NULL, 3, 1533592432, 1, 1),
(5, 2, 'testHistoriqueClick', 4, 2, NULL, NULL, 'Ce test s\'assure qu\'une nouvelle fenetre est affichee apres click sur le bouton historique', 'Clique sur bouton historique', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1533587845, 1, NULL, NULL, 3, 1533592405, 1, 1),
(6, 2, 'TesthandleHelpClick', 5, 2, NULL, NULL, 'Ce test s\'assure qu\'une fenetre d\'aide est ouverte apres click sur le bouton help', 'Clique sur bouton d\'aide ou help', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1533587885, 1, NULL, NULL, 3, 1533592424, 1, 1),
(7, 2, 'testClearButton', 6, 2, NULL, NULL, 'Ce test s\'assure que les differents champs sont initialises apres click sur le bouton clear', 'Clique sur bouton effacer', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1533587916, 1, NULL, NULL, 3, 1533592441, 1, 1),
(8, 2, 'testResolution', 7, 2, NULL, NULL, 'Ce test s\'assure que la methode de resolution resoud sans probleme une equation du second degres', 'Etap1: recuperation des id\nEtape2: cas ou le systeme admet deux solutions x1 et x2 dans R\nEtape3: Cas ou le systeme n\'admet pas de solution dans R\nEtape4: cas ou le systeme admet une solution double x0 dans R', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1533587981, 1, NULL, NULL, 3, 1533641226, 1, 1),
(9, 2, 'testResolutionSaisieLettres', 8, 2, NULL, NULL, 'Ce test s\'assure que la méthode de résolution affiche un message d\'erreur lorsqu\'on saisit des lettres', 'Etape1: Recuperation des idEtape2: Verifier les objet non nulsEtape3: Saisi de valeurs non valides comme des lettres', NULL, NULL, NULL, NULL, 0, 7, 0, NULL, 1533641701, 1, NULL, NULL, 3, 1533642334, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `case_assocs`
--

CREATE TABLE `case_assocs` (
  `id` int(11) NOT NULL,
  `case_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `case_changes`
--

CREATE TABLE `case_changes` (
  `id` int(11) NOT NULL,
  `case_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `changes` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `case_changes`
--

INSERT INTO `case_changes` (`id`, `case_id`, `type_id`, `created_on`, `user_id`, `changes`) VALUES
(1, 2, 6, 1530874846, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Lancer le programme et taper sur la touche lang"}]'),
(2, 2, 6, 1533554501, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"etape1"}]'),
(3, 3, 6, 1533586332, 1, '[{"type_id":1,"field":"title","old_value":"testTranslate","new_value":"test2ndDegres"},{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Ce test s\'assure que les deux langues possibles sont FR\\/EN"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"Cliquer FR 1ere fois\\nCliquer EN 1ere foisCliquer FR 2e foisCliquer EN 2e fois"}]'),
(4, 3, 6, 1533586814, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":"Cliquer FR 1ere fois\\nCliquer EN 1ere foisCliquer FR 2e foisCliquer EN 2e fois","new_value":"Cliquer FR 1ere fois\\nCliquer EN 1ere fois\\nCliquer FR 2e fois\\nCliquer EN 2e fois"}]'),
(5, 3, 6, 1533586892, 1, '[{"type_id":1,"field":"title","old_value":"test2ndDegres","new_value":"testTranslate"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":"Cliquer FR 1ere fois\\nCliquer EN 1ere fois\\nCliquer FR 2e fois\\nCliquer EN 2e fois","new_value":"Cliquer FR 1ere fois\\r\\nCliquer EN 1ere fois\\r\\nCliquer FR 2e fois\\r\\nCliquer EN 2e fois"}]'),
(6, 5, 6, 1533592405, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Ce test s\'assure qu\'une nouvelle fenetre est affichee apres click sur le bouton historique"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"Clique sur bouton historique"}]'),
(7, 6, 6, 1533592424, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Ce test s\'assure qu\'une fenetre d\'aide est ouverte apres click sur le bouton help"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"Clique sur bouton d\'aide ou help"}]'),
(8, 4, 6, 1533592432, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Ce test s\'assure que les deux langues possibles sont FR\\/EN"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"Effecer et tester les bouton de FR\\/EN"}]'),
(9, 7, 6, 1533592441, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Ce test s\'assure que les differents champs sont initialises apres click sur le bouton clear"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"Clique sur bouton effacer"}]'),
(10, 8, 6, 1533641226, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Ce test s\'assure que la methode de resolution resoud sans probleme une equation du second degres"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"Etap1: recuperation des id\\nEtape2: cas ou le systeme admet deux solutions x1 et x2 dans R\\nEtape3: Cas ou le systeme n\'admet pas de solution dans R\\nEtape4: cas ou le systeme admet une solution double x0 dans R"}]'),
(11, 9, 6, 1533642273, 1, '[{"type_id":1,"field":"title","old_value":"testResolutionSaisieLettres","new_value":"testResolution"},{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":null,"new_value":"Ce test s\'assure que la m\\u00e9thode de r\\u00e9solution affiche un message d\'erreur lorsqu\'on saisit des lettres"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":null,"new_value":"Etape1: Recuperation des idEtape2: Verifier les objet non nulsEtape3: Saisi de valeurs non valides comme des lettres"}]'),
(12, 9, 6, 1533642334, 1, '[{"type_id":1,"field":"title","old_value":"testResolution","new_value":"testResolutionSaisieLettres"}]'),
(13, 3, 6, 1533655057, 1, '[{"type_id":6,"old_text":null,"new_text":null,"label":"Preconditions","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_preconds","old_value":"Ce test s\'assure que les deux langues possibles sont FR\\/EN","new_value":"lng FR\\/EN"},{"type_id":6,"old_text":null,"new_text":null,"label":"Steps","options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"field":"custom_steps","old_value":"Cliquer FR 1ere fois\\r\\nCliquer EN 1ere fois\\r\\nCliquer FR 2e fois\\r\\nCliquer EN 2e fois","new_value":"Cliquer FR 1ere fois\\nCliquer EN 1ere fois\\nCliquer FR 2e fois\\nCliquer EN 2e fois"}]');

-- --------------------------------------------------------

--
-- Structure de la table `case_types`
--

CREATE TABLE `case_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `case_types`
--

INSERT INTO `case_types` (`id`, `name`, `is_default`, `is_deleted`) VALUES
(1, 'Acceptance', 0, 0),
(2, 'Accessibility', 0, 0),
(3, 'Automated', 0, 0),
(4, 'Compatibility', 0, 0),
(5, 'Destructive', 0, 0),
(6, 'Functional', 0, 0),
(7, 'Other', 1, 0),
(8, 'Performance', 0, 0),
(9, 'Regression', 0, 0),
(10, 'Security', 0, 0),
(11, 'Smoke & Sanity', 0, 0),
(12, 'Usability', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `config_groups`
--

CREATE TABLE `config_groups` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `defects`
--

CREATE TABLE `defects` (
  `id` int(11) NOT NULL,
  `defect_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `test_change_id` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exports`
--

CREATE TABLE `exports` (
  `id` int(11) NOT NULL,
  `filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `size` bigint(20) NOT NULL,
  `created_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `system_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `label` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `type_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `configs` longtext COLLATE utf8_unicode_ci NOT NULL,
  `is_multi` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `status_id` int(11) NOT NULL,
  `is_system` tinyint(1) NOT NULL,
  `include_all` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fields`
--

INSERT INTO `fields` (`id`, `name`, `system_name`, `entity_id`, `label`, `description`, `type_id`, `location_id`, `display_order`, `configs`, `is_multi`, `is_active`, `status_id`, `is_system`, `include_all`) VALUES
(1, 'preconds', 'custom_preconds', 1, 'Preconditions', 'The preconditions of this test case. Reference other test cases with [C#] (e.g. [C17]).', 3, 2, 1, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"id":"4be1344d55d11"}]', 0, 1, 1, 0, 0),
(2, 'steps', 'custom_steps', 1, 'Steps', 'The required steps to execute the test case.', 3, 2, 2, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"id":"4be97c65ea2fd"}]', 0, 1, 1, 0, 0),
(3, 'expected', 'custom_expected', 1, 'Expected Result', 'The expected result after executing the test case.', 3, 2, 3, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"id":"4be1345cafd07"}]', 0, 1, 1, 0, 0),
(4, 'dc330d77', 'estimate', 1, 'Estimate', NULL, 1, 1, 1, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false},"id":"4be97c65ea2fd"}]', 0, 1, 1, 1, 1),
(5, 'ddfe71c8', 'milestone_id', 1, 'Milestone', NULL, 9, 1, 2, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false},"id":"4be97c65ea2fd"}]', 0, 0, 1, 1, 1),
(6, 'c4bd4336', 'refs', 1, 'References', NULL, 1, 1, 3, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false},"id":"4be97c65ea2fd"}]', 0, 1, 1, 1, 1),
(7, 'd4d1e651', 'version', 2, 'Version', NULL, 1, 4, 2, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false},"id":"4be97c65ea2fd"}]', 0, 1, 1, 1, 1),
(8, 'e7c13ac2', 'elapsed', 2, 'Elapsed', NULL, 1, 4, 3, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false},"id":"4be97c65ea2fd"}]', 0, 1, 1, 1, 1),
(9, 'a6637b4f', 'defects', 2, 'Defects', NULL, 1, 4, 4, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false},"id":"4be97c65ea2fd"}]', 0, 1, 1, 1, 1),
(10, 'steps_separated', 'custom_steps_separated', 1, 'Steps', NULL, 10, 2, 4, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false,"format":"markdown","has_expected":true,"rows":"5"},"id":"4be97c65ea2fd"}]', 0, 1, 1, 0, 0),
(11, 'step_results', 'custom_step_results', 2, 'Steps', NULL, 11, 3, 1, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false,"format":"markdown","has_expected":true,"has_actual":true,"rows":"5"},"id":"4be97c65ea2fd"}]', 0, 1, 1, 0, 0),
(12, 'mission', 'custom_mission', 1, 'Mission', 'A high-level overview of what to test and which areas to cover, usually just 1-2 sentences.', 3, 2, 5, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"id":"4be1345cafd07"}]', 0, 1, 1, 0, 0),
(13, 'goals', 'custom_goals', 1, 'Goals', 'A detailed list of goals to cover as part of the exploratory sessions.', 3, 2, 6, '[{"context":{"is_global":true,"project_ids":null},"options":{"is_required":false,"default_value":"","format":"markdown","rows":"7"},"id":"4be1345cafd07"}]', 0, 1, 1, 0, 0),
(14, 'automation_type', 'custom_automation_type', 1, 'Automation Type', NULL, 6, 1, 5, '[{"context":{"is_global":true,"project_ids":[]},"options":{"is_required":false,"default_value":"0","items":"0, None\\n1, Ranorex"},"id":"7a34a519-f458-40bb-af43-ed63baf874ee"}]', 0, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `field_templates`
--

CREATE TABLE `field_templates` (
  `field_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `field_templates`
--

INSERT INTO `field_templates` (`field_id`, `template_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(10, 2),
(11, 2),
(12, 3),
(13, 3);

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `group_users`
--

CREATE TABLE `group_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` int(11) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `heartbeat` int(11) NOT NULL,
  `is_done` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message_recps`
--

CREATE TABLE `message_recps` (
  `user_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `milestones`
--

CREATE TABLE `milestones` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `due_on` int(11) DEFAULT NULL,
  `completed_on` int(11) DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `start_on` int(11) DEFAULT NULL,
  `started_on` int(11) DEFAULT NULL,
  `is_started` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `milestones`
--

INSERT INTO `milestones` (`id`, `project_id`, `name`, `due_on`, `completed_on`, `is_completed`, `description`, `start_on`, `started_on`, `is_started`, `parent_id`) VALUES
(1, 1, 'testsomme', NULL, NULL, 0, NULL, NULL, 1531920911, 1, NULL),
(2, 3, 'tes', NULL, NULL, 0, NULL, NULL, 1530812530, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `preferences`
--

INSERT INTO `preferences` (`id`, `user_id`, `name`, `value`) VALUES
(1, 1, 'goals', '{"1":true,"2":true,"3":true}'),
(2, 1, 'todos_overview_user_ids', '1'),
(3, 1, 'todos_overview_status_ids', '3,4,5'),
(5, 1, 'cases_qpane', '1'),
(7, 1, 'dashboard_overview_display', 'large'),
(8, 1, 'admin_users_show', 'active');

-- --------------------------------------------------------

--
-- Structure de la table `priorities`
--

CREATE TABLE `priorities` (
  `id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `priorities`
--

INSERT INTO `priorities` (`id`, `priority`, `name`, `short_name`, `is_default`, `is_deleted`) VALUES
(1, 1, 'Low', 'Low', 0, 0),
(2, 2, 'Medium', 'Medium', 1, 0),
(3, 3, 'High', 'High', 0, 0),
(4, 4, 'Critical', 'Critical', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `announcement` longtext COLLATE utf8_unicode_ci,
  `show_announcement` tinyint(1) NOT NULL,
  `defect_id_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defect_add_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_access` int(11) NOT NULL,
  `default_role_id` int(11) DEFAULT NULL,
  `reference_id_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_add_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defect_plugin` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defect_config` longtext COLLATE utf8_unicode_ci,
  `is_completed` tinyint(1) NOT NULL,
  `completed_on` int(11) DEFAULT NULL,
  `defect_template` longtext COLLATE utf8_unicode_ci,
  `suite_mode` int(11) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `reference_plugin` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_config` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `projects`
--

INSERT INTO `projects` (`id`, `name`, `announcement`, `show_announcement`, `defect_id_url`, `defect_add_url`, `default_access`, `default_role_id`, `reference_id_url`, `reference_add_url`, `defect_plugin`, `defect_config`, `is_completed`, `completed_on`, `defect_template`, `suite_mode`, `master_id`, `reference_plugin`, `reference_config`) VALUES
(1, 'testsomme', NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, NULL),
(2, 'test_somme_2', NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 2, NULL, NULL),
(3, 'test2ndDegres', NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `project_access`
--

CREATE TABLE `project_access` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `project_access`
--

INSERT INTO `project_access` (`project_id`, `user_id`, `access`, `role_id`) VALUES
(3, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `project_favs`
--

CREATE TABLE `project_favs` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `project_groups`
--

CREATE TABLE `project_groups` (
  `project_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `project_history`
--

CREATE TABLE `project_history` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `suite_id` int(11) DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `run_id` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `plan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `project_history`
--

INSERT INTO `project_history` (`id`, `project_id`, `action`, `created_on`, `user_id`, `suite_id`, `milestone_id`, `run_id`, `name`, `is_deleted`, `plan_id`) VALUES
(1, 1, 1, 1531920911, 1, NULL, 1, NULL, NULL, 0, NULL),
(2, 1, 1, 1531922930, 1, NULL, NULL, 1, NULL, 0, NULL),
(3, 3, 1, 1530812443, 1, NULL, NULL, 2, 'Test Run 05/07/2018', 1, NULL),
(4, 3, 1, 1530812530, 1, NULL, 2, NULL, NULL, 0, NULL),
(5, 3, 1, 1533555501, 1, NULL, NULL, 3, NULL, 0, NULL),
(6, 3, 2, 1533593598, 1, NULL, NULL, 2, 'Test Run 05/07/2018', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `refs`
--

CREATE TABLE `refs` (
  `id` int(11) NOT NULL,
  `reference_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `case_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `plugin` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `access` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `executed_on` int(11) DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  `dir` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formats` longtext COLLATE utf8_unicode_ci NOT NULL,
  `system_options` longtext COLLATE utf8_unicode_ci,
  `custom_options` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `status_message` longtext COLLATE utf8_unicode_ci,
  `status_trace` longtext COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL,
  `heartbeat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `reports`
--

INSERT INTO `reports` (`id`, `plugin`, `project_id`, `name`, `description`, `access`, `created_by`, `created_on`, `executed_on`, `execution_time`, `dir`, `formats`, `system_options`, `custom_options`, `status`, `status_message`, `status_trace`, `is_locked`, `heartbeat`) VALUES
(3, 'cases_activity_summary', 3, 'Rapport projet 2nd degres 06/08/2018', NULL, 1, 1, 1533602165, NULL, NULL, '2018/08/report-3-09f9134d-473f-4b3b-b500-45f81be806bf', '["raw_zip","inline","standalone_zip","pdf"]', '{"name":"Rapport projet 2nd degres 06\\/08\\/2018","description":null,"access":"1","schedule_now":true,"schedule_later":false,"schedule_interval":"1","schedule_weekday":1,"schedule_day":1,"schedule_hour":8,"notify_user":false,"notify_link":false,"notify_link_recipients":null,"notify_attachment":false,"notify_attachment_recipients":"tangomobenjamin@gmail.com\\r\\nfangfang1913@gmail.com\\r\\nniamymathias14@gmail.com\\r\\nmoktarmendah2015@gmail.com\\r\\nmor0093@gmail.com","notify_attachment_html_format":false,"notify_attachment_pdf_format":false}', '{"cases_groupby":"suite","changes_daterange":"5","changes_daterange_from":null,"changes_daterange_to":null,"suites_include":"1","suites_ids":null,"sections_include":"1","sections_ids":null,"cases_columns":{"cases:id":75,"cases:title":0,"cases:created_by":125,"cases:updated_by":125},"cases_filters":null,"cases_limit":1000,"content_hide_links":false,"cases_include_new":true,"cases_include_updated":true}', 1, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `report_jobs`
--

CREATE TABLE `report_jobs` (
  `id` int(11) NOT NULL,
  `plugin` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `executed_on` int(11) DEFAULT NULL,
  `system_options` longtext COLLATE utf8_unicode_ci,
  `custom_options` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` int(11) NOT NULL,
  `is_default` int(11) NOT NULL,
  `display_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `is_default`, `display_order`) VALUES
(1, 'Lead', 262143, 1, 18),
(2, 'Designer', 258636, 0, 10),
(3, 'Tester', 258624, 0, 8),
(4, 'Read-only', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `runs`
--

CREATE TABLE `runs` (
  `id` int(11) NOT NULL,
  `suite_id` int(11) DEFAULT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `completed_on` int(11) DEFAULT NULL,
  `include_all` tinyint(1) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `passed_count` int(11) NOT NULL DEFAULT '0',
  `retest_count` int(11) NOT NULL DEFAULT '0',
  `failed_count` int(11) NOT NULL DEFAULT '0',
  `untested_count` int(11) NOT NULL DEFAULT '0',
  `assignedto_id` int(11) DEFAULT NULL,
  `is_plan` tinyint(1) NOT NULL DEFAULT '0',
  `plan_id` int(11) DEFAULT NULL,
  `entry_id` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entries` longtext COLLATE utf8_unicode_ci,
  `config` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_ids` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_index` int(11) DEFAULT NULL,
  `blocked_count` int(11) NOT NULL DEFAULT '0',
  `is_editable` tinyint(1) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `custom_status1_count` int(11) NOT NULL DEFAULT '0',
  `custom_status2_count` int(11) NOT NULL DEFAULT '0',
  `custom_status3_count` int(11) NOT NULL DEFAULT '0',
  `custom_status4_count` int(11) NOT NULL DEFAULT '0',
  `custom_status5_count` int(11) NOT NULL DEFAULT '0',
  `custom_status6_count` int(11) NOT NULL DEFAULT '0',
  `custom_status7_count` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL,
  `updated_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `runs`
--

INSERT INTO `runs` (`id`, `suite_id`, `milestone_id`, `created_on`, `user_id`, `project_id`, `is_completed`, `completed_on`, `include_all`, `name`, `description`, `passed_count`, `retest_count`, `failed_count`, `untested_count`, `assignedto_id`, `is_plan`, `plan_id`, `entry_id`, `entries`, `config`, `config_ids`, `entry_index`, `blocked_count`, `is_editable`, `content_id`, `custom_status1_count`, `custom_status2_count`, `custom_status3_count`, `custom_status4_count`, `custom_status5_count`, `custom_status6_count`, `custom_status7_count`, `updated_by`, `updated_on`) VALUES
(1, 1, NULL, 1531922930, 1, 1, 0, NULL, 1, 'Test Run 18/07/2018', NULL, 0, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1531922930),
(3, 3, NULL, 1533555501, 1, 3, 0, NULL, 1, 'Test Run 06/08/2018', NULL, 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1533555501);

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `suite_id` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_copy` tinyint(1) NOT NULL,
  `copyof_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sections`
--

INSERT INTO `sections` (`id`, `suite_id`, `name`, `display_order`, `is_copy`, `copyof_id`, `parent_id`, `depth`, `description`) VALUES
(1, 1, 'testsomme', 1, 0, NULL, NULL, 0, NULL),
(2, 3, 'Test Cases', 1, 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) NOT NULL,
  `user_data` longtext COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `sessions`
--

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`, `id`) VALUES
('8b485f7c-2357-4333-b5b8-758406dfa68a', '', '', 1533655072, '{"user_id":1,"last_login":1530784817,"rememberme":true,"csrf":"U4e7Qnp\\/SLBCFY6sA\\/gR","users_tab":1}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'session_policy', ''),
(2, 'session_absolute_policy', ''),
(3, 'session_remember_me_disabled', '0'),
(4, 'database_version', '188'),
(5, 'installation_name', 'TestRail QA'),
(6, 'installation_url', 'http://localhost/CQML/testrail/'),
(7, 'attachment_dir', NULL),
(8, 'report_dir', NULL),
(9, 'default_language', 'en'),
(10, 'default_locale', 'fr-fr'),
(11, 'default_timezone', NULL),
(12, 'email_server', NULL),
(13, 'email_ssl', '0'),
(14, 'email_from', NULL),
(15, 'email_user', NULL),
(16, 'email_pass', NULL),
(17, 'email_notifications', '1'),
(18, 'license_key', 'pjUDdM7ZSTlz8jqPdKstT4Kn3A4Ored3e7zPlvrDwiRx85l9DGnV0CrZaspt\r\nWsLtepa2FZftEfRzMdXHeZTYfkGVKLsZtU2/XlTsq8ZW/Hk8rBYzbhUunvK4\r\nr8keDiL9eAJyYjGbIZx1FZULOqDNL/kyudhL72VYZJTB30C1V65KEjiNenea\r\nydIc8r5fPwfvdgQDljj4aPtO9aMZhkth1ipbrV+SrCKdMrVH2d/YuDtCvaHu\r\nhQbJa6KxPjiTiR0l'),
(31, 'login_text', NULL),
(32, 'password_policy', NULL),
(33, 'password_policy_custom', '.{15,}\r\n[a-z]\r\n[A-Z]\r\n[0-9]\r\n[`~!@#$%^&*()\\-_=+[\\]|;:\'",<>./?]'),
(34, 'password_policy_desc', 'Minimum of 15 characters, at least one lower & upper case character, a number and a special character.'),
(35, 'forgot_password', '1'),
(36, 'invite_users', '1'),
(37, 'ip_check', '0'),
(38, 'ip_policy', '; You can use simple IP addresses:\r\n; 192.168.1.1\r\n; Or entire networks:\r\n; 192.168.1.0/24'),
(39, 'check_for_updates', '1'),
(40, 'edit_mode', '86400'),
(41, 'name_format', '0'),
(42, 'partial_count', '500'),
(43, 'apiv2_enabled', '1'),
(44, 'apiv2_session_enabled', '0');

-- --------------------------------------------------------

--
-- Structure de la table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `system_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `color_dark` int(11) NOT NULL,
  `color_medium` int(11) NOT NULL,
  `color_bright` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `is_system` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_untested` tinyint(1) NOT NULL,
  `is_final` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `system_name`, `label`, `color_dark`, `color_medium`, `color_bright`, `display_order`, `is_system`, `is_active`, `is_untested`, `is_final`) VALUES
(1, 'passed', 'passed', 'Passed', 6667107, 9820525, 12709313, 1, 1, 1, 0, 1),
(2, 'blocked', 'blocked', 'Blocked', 9474192, 13684944, 14737632, 2, 1, 1, 0, 1),
(3, 'untested', 'untested', 'Untested', 11579568, 15395562, 15790320, 3, 1, 1, 1, 0),
(4, 'retest', 'retest', 'Retest', 13026868, 15593088, 16448182, 4, 1, 1, 0, 0),
(5, 'failed', 'failed', 'Failed', 14250867, 15829135, 16631751, 5, 1, 1, 0, 1),
(6, 'custom_status1', 'custom_status1', 'Unnamed 1', 0, 10526880, 13684944, 6, 0, 0, 0, 0),
(7, 'custom_status2', 'custom_status2', 'Unnamed 2', 0, 10526880, 13684944, 7, 0, 0, 0, 0),
(8, 'custom_status3', 'custom_status3', 'Unnamed 3', 0, 10526880, 13684944, 8, 0, 0, 0, 0),
(9, 'custom_status4', 'custom_status4', 'Unnamed 4', 0, 10526880, 13684944, 9, 0, 0, 0, 0),
(10, 'custom_status5', 'custom_status5', 'Unnamed 5', 0, 10526880, 13684944, 10, 0, 0, 0, 0),
(11, 'custom_status6', 'custom_status6', 'Unnamed 6', 0, 10526880, 13684944, 11, 0, 0, 0, 0),
(12, 'custom_status7', 'custom_status7', 'Unnamed 7', 0, 10526880, 13684944, 12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL,
  `test_id` int(11) NOT NULL,
  `run_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suites`
--

CREATE TABLE `suites` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_on` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_copy` tinyint(1) NOT NULL,
  `copyof_id` int(11) DEFAULT NULL,
  `is_master` tinyint(1) NOT NULL,
  `is_baseline` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `completed_on` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `suites`
--

INSERT INTO `suites` (`id`, `name`, `project_id`, `description`, `created_on`, `created_by`, `is_copy`, `copyof_id`, `is_master`, `is_baseline`, `parent_id`, `is_completed`, `completed_on`) VALUES
(1, 'Master', 1, NULL, 1531917842, 1, 0, NULL, 1, 0, NULL, 0, NULL),
(2, 'Master', 2, NULL, 1531918982, 1, 0, NULL, 1, 0, NULL, 0, NULL),
(3, 'Master', 3, NULL, 1533490097, 1, 0, NULL, 1, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `heartbeat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `task`
--

INSERT INTO `task` (`id`, `is_locked`, `heartbeat`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `include_all` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `templates`
--

INSERT INTO `templates` (`id`, `name`, `is_default`, `is_deleted`, `include_all`) VALUES
(1, 'Test Case (Text)', 1, 0, 1),
(2, 'Test Case (Steps)', 0, 0, 1),
(3, 'Exploratory Session', 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `template_projects`
--

CREATE TABLE `template_projects` (
  `template_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `run_id` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `assignedto_id` int(11) DEFAULT NULL,
  `is_selected` tinyint(1) NOT NULL,
  `last_status_change_id` int(11) DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `in_progress` int(11) NOT NULL,
  `in_progress_by` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `tested_by` int(11) DEFAULT NULL,
  `tested_on` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tests`
--

INSERT INTO `tests` (`id`, `run_id`, `case_id`, `status_id`, `assignedto_id`, `is_selected`, `last_status_change_id`, `is_completed`, `in_progress`, `in_progress_by`, `content_id`, `tested_by`, `tested_on`) VALUES
(1, 1, 1, 3, NULL, 1, NULL, 0, 0, NULL, 1, NULL, NULL),
(4, 3, 2, 1, NULL, 1, 1, 0, 0, NULL, 2, 1, 1533556756),
(5, 3, 3, 1, NULL, 1, 4, 0, 0, NULL, 3, 1, 1533587148),
(8, 3, 4, 1, NULL, 1, 5, 0, 0, NULL, 4, 1, 1533594265),
(10, 3, 5, 1, NULL, 1, 6, 0, 0, NULL, 5, 1, 1533594273),
(12, 3, 6, 1, NULL, 1, 7, 0, 0, NULL, 6, 1, 1533594289),
(14, 3, 7, 1, NULL, 1, 8, 0, 0, NULL, 7, 1, 1533594298),
(16, 3, 8, 1, NULL, 1, 9, 0, 0, NULL, 8, 1, 1533641632),
(17, 3, 9, 1, NULL, 1, 10, 0, 0, NULL, 9, 1, 1533642274);

-- --------------------------------------------------------

--
-- Structure de la table `test_activities`
--

CREATE TABLE `test_activities` (
  `date` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `run_id` int(11) NOT NULL,
  `passed_count` int(11) NOT NULL,
  `retest_count` int(11) NOT NULL,
  `failed_count` int(11) NOT NULL,
  `untested_count` int(11) NOT NULL,
  `blocked_count` int(11) NOT NULL,
  `custom_status1_count` int(11) NOT NULL,
  `custom_status2_count` int(11) NOT NULL,
  `custom_status3_count` int(11) NOT NULL,
  `custom_status4_count` int(11) NOT NULL,
  `custom_status5_count` int(11) NOT NULL,
  `custom_status6_count` int(11) NOT NULL,
  `custom_status7_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `test_activities`
--

INSERT INTO `test_activities` (`date`, `project_id`, `run_id`, `passed_count`, `retest_count`, `failed_count`, `untested_count`, `blocked_count`, `custom_status1_count`, `custom_status2_count`, `custom_status3_count`, `custom_status4_count`, `custom_status5_count`, `custom_status6_count`, `custom_status7_count`) VALUES
(20180806, 3, 3, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(20180807, 3, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `test_assocs`
--

CREATE TABLE `test_assocs` (
  `id` int(11) NOT NULL,
  `test_change_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `test_changes`
--

CREATE TABLE `test_changes` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `version` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elapsed` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defects` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `assignedto_id` int(11) DEFAULT NULL,
  `unassigned` tinyint(1) NOT NULL,
  `project_id` int(11) NOT NULL,
  `run_id` int(11) NOT NULL,
  `is_selected` tinyint(1) NOT NULL,
  `caching` int(11) NOT NULL,
  `custom_step_results` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `test_changes`
--

INSERT INTO `test_changes` (`id`, `test_id`, `user_id`, `status_id`, `comment`, `version`, `elapsed`, `defects`, `created_on`, `assignedto_id`, `unassigned`, `project_id`, `run_id`, `is_selected`, `caching`, `custom_step_results`) VALUES
(1, 4, 1, 1, NULL, NULL, NULL, NULL, 1533556756, NULL, 0, 3, 3, 1, 0, NULL),
(2, 5, 1, 1, NULL, NULL, NULL, NULL, 1533587022, NULL, 0, 3, 3, 1, 0, NULL),
(3, 5, 1, 2, NULL, NULL, NULL, NULL, 1533587111, NULL, 0, 3, 3, 1, 0, NULL),
(4, 5, 1, 1, NULL, NULL, NULL, NULL, 1533587148, NULL, 0, 3, 3, 1, 0, NULL),
(5, 8, 1, 1, NULL, NULL, NULL, NULL, 1533594265, NULL, 0, 3, 3, 1, 0, NULL),
(6, 10, 1, 1, NULL, NULL, NULL, NULL, 1533594273, NULL, 0, 3, 3, 1, 0, NULL),
(7, 12, 1, 1, NULL, NULL, NULL, NULL, 1533594289, NULL, 0, 3, 3, 1, 0, NULL),
(8, 14, 1, 1, NULL, NULL, NULL, NULL, 1533594298, NULL, 0, 3, 3, 1, 0, NULL),
(9, 16, 1, 1, NULL, NULL, NULL, NULL, 1533641632, NULL, 0, 3, 3, 1, 0, NULL),
(10, 17, 1, 1, NULL, NULL, NULL, NULL, 1533642274, NULL, 0, 3, 3, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `test_progress`
--

CREATE TABLE `test_progress` (
  `date` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `run_id` int(11) NOT NULL,
  `tests` int(11) NOT NULL,
  `forecasts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `test_timers`
--

CREATE TABLE `test_timers` (
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `started_on` int(11) NOT NULL,
  `elapsed` int(11) NOT NULL,
  `is_paused` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `uiscripts`
--

CREATE TABLE `uiscripts` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `includes` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excludes` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8_unicode_ci,
  `js` longtext COLLATE utf8_unicode_ci,
  `css` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `salt` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `rememberme` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifications` tinyint(1) NOT NULL,
  `csrf` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `login_token` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_token_until` int(11) DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `is_reset_password_forced` tinyint(1) NOT NULL DEFAULT '0',
  `data_processing_agreement` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `salt`, `hash`, `is_active`, `rememberme`, `locale`, `language`, `notifications`, `csrf`, `role_id`, `login_token`, `timezone`, `login_token_until`, `last_activity`, `is_reset_password_forced`, `data_processing_agreement`) VALUES
(1, 'Mor Seck', 'mor0093@gmail.com', 1, '', '1:$2y$10$uLL2e8tvIv7oc5Hp9ha5ruobRXk6cnAYtAEP8jWHHWC1QDXdcMCQi', 1, '', NULL, NULL, 1, '', 1, NULL, NULL, NULL, 1533654942, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_columns`
--

CREATE TABLE `user_columns` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `columns` longtext COLLATE utf8_unicode_ci NOT NULL,
  `group_by` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `group_order` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_exports`
--

CREATE TABLE `user_exports` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `format` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_fields`
--

CREATE TABLE `user_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `system_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `type_id` int(11) NOT NULL,
  `fallback` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_filters`
--

CREATE TABLE `user_filters` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `filters` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` int(11) NOT NULL,
  `updated_on` int(11) NOT NULL,
  `attempts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user_logins`
--

INSERT INTO `user_logins` (`id`, `name`, `created_on`, `updated_on`, `attempts`) VALUES
(1, 'mor0093@gmail.com', 1530784817, 1533655056, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` int(11) NOT NULL,
  `expires_on` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `user_id`, `type_id`, `name`, `series`, `hash`, `created_on`, `expires_on`) VALUES
(1, 1, 2, NULL, 'zApDY/MtTnfwSd9lLIWQ', '1:$2y$10$nK92OKHdX1ZMuk25KxB3qusoluUO7pYda34ZPWRn6DsJph77twb.6', 1530784817, 1533376817);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_attachments_case_id` (`case_id`),
  ADD KEY `ix_attachments_test_change_id` (`test_change_id`);

--
-- Index pour la table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_cases_section_id` (`section_id`),
  ADD KEY `ix_cases_suite_id` (`suite_id`),
  ADD KEY `ix_cases_copyof_id` (`copyof_id`);

--
-- Index pour la table `case_assocs`
--
ALTER TABLE `case_assocs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_case_assocs_case_id` (`case_id`);

--
-- Index pour la table `case_changes`
--
ALTER TABLE `case_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_case_changes_case_id` (`case_id`);

--
-- Index pour la table `case_types`
--
ALTER TABLE `case_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_configs_group_id` (`group_id`);

--
-- Index pour la table `config_groups`
--
ALTER TABLE `config_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_config_groups_project_id` (`project_id`);

--
-- Index pour la table `defects`
--
ALTER TABLE `defects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_defects_defect_id` (`defect_id`),
  ADD KEY `ix_defects_test_change_id` (`test_change_id`),
  ADD KEY `ix_defects_case_id` (`case_id`);

--
-- Index pour la table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_exports_created_on` (`created_on`);

--
-- Index pour la table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_fields_name` (`entity_id`,`name`);

--
-- Index pour la table `field_templates`
--
ALTER TABLE `field_templates`
  ADD PRIMARY KEY (`field_id`,`template_id`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`group_id`,`user_id`),
  ADD KEY `ix_group_users_user_id` (`user_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_jobs_name` (`name`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message_recps`
--
ALTER TABLE `message_recps`
  ADD PRIMARY KEY (`message_id`,`user_id`);

--
-- Index pour la table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_milestones_project_id` (`project_id`),
  ADD KEY `ix_milestones_parent_id` (`parent_id`);

--
-- Index pour la table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_preferences_name` (`user_id`,`name`),
  ADD KEY `ix_preferences_user_id` (`user_id`);

--
-- Index pour la table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project_access`
--
ALTER TABLE `project_access`
  ADD PRIMARY KEY (`project_id`,`user_id`);

--
-- Index pour la table `project_favs`
--
ALTER TABLE `project_favs`
  ADD PRIMARY KEY (`user_id`,`project_id`);

--
-- Index pour la table `project_groups`
--
ALTER TABLE `project_groups`
  ADD PRIMARY KEY (`project_id`,`group_id`);

--
-- Index pour la table `project_history`
--
ALTER TABLE `project_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_project_history_project_order` (`project_id`,`created_on`);

--
-- Index pour la table `refs`
--
ALTER TABLE `refs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_refs_reference_id` (`reference_id`),
  ADD KEY `ix_refs_case_id` (`case_id`);

--
-- Index pour la table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_reports_project_id` (`project_id`);

--
-- Index pour la table `report_jobs`
--
ALTER TABLE `report_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_report_jobs_project_id` (`project_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `runs`
--
ALTER TABLE `runs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_runs_project_id` (`project_id`),
  ADD KEY `ix_runs_plan_id` (`plan_id`),
  ADD KEY `ix_runs_milestone_id` (`milestone_id`),
  ADD KEY `ix_runs_suite_id` (`suite_id`);

--
-- Index pour la table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_sections_suite_id` (`suite_id`),
  ADD KEY `ix_sections_copyof_id` (`copyof_id`),
  ADD KEY `ix_sections_parent_id` (`parent_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_sessions_session_id` (`session_id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_settings_name` (`name`);

--
-- Index pour la table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_statuses_name` (`name`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_subscriptions_run_test` (`run_id`,`test_id`,`user_id`);

--
-- Index pour la table `suites`
--
ALTER TABLE `suites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_suites_project_id` (`project_id`),
  ADD KEY `ix_suites_copyof_id` (`copyof_id`);

--
-- Index pour la table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `template_projects`
--
ALTER TABLE `template_projects`
  ADD PRIMARY KEY (`template_id`,`project_id`);

--
-- Index pour la table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_tests_run_id` (`run_id`),
  ADD KEY `ix_tests_case_id` (`case_id`,`is_selected`),
  ADD KEY `ix_tests_content_id` (`content_id`);

--
-- Index pour la table `test_activities`
--
ALTER TABLE `test_activities`
  ADD PRIMARY KEY (`date`,`project_id`,`run_id`),
  ADD KEY `ix_test_activities_run_id` (`run_id`);

--
-- Index pour la table `test_assocs`
--
ALTER TABLE `test_assocs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_test_assocs_test_change_id` (`test_change_id`),
  ADD KEY `ix_test_assocs_test_id` (`test_id`);

--
-- Index pour la table `test_changes`
--
ALTER TABLE `test_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_test_changes_test_id` (`test_id`),
  ADD KEY `ix_test_changes_project_order` (`project_id`,`is_selected`,`created_on`),
  ADD KEY `ix_test_changes_run_order` (`run_id`,`is_selected`,`created_on`);

--
-- Index pour la table `test_progress`
--
ALTER TABLE `test_progress`
  ADD PRIMARY KEY (`date`,`project_id`,`run_id`),
  ADD KEY `ix_test_progress_run_id` (`run_id`);

--
-- Index pour la table `test_timers`
--
ALTER TABLE `test_timers`
  ADD PRIMARY KEY (`test_id`,`user_id`),
  ADD KEY `ix_test_timers_user_id` (`user_id`);

--
-- Index pour la table `uiscripts`
--
ALTER TABLE `uiscripts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_users_email` (`email`);

--
-- Index pour la table `user_columns`
--
ALTER TABLE `user_columns`
  ADD PRIMARY KEY (`user_id`,`project_id`,`area_id`);

--
-- Index pour la table `user_exports`
--
ALTER TABLE `user_exports`
  ADD PRIMARY KEY (`user_id`,`project_id`,`area_id`,`format`);

--
-- Index pour la table `user_fields`
--
ALTER TABLE `user_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_user_fields_name` (`name`);

--
-- Index pour la table `user_filters`
--
ALTER TABLE `user_filters`
  ADD PRIMARY KEY (`user_id`,`project_id`,`area_id`);

--
-- Index pour la table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_user_logins_name` (`name`);

--
-- Index pour la table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_user_settings_name` (`user_id`,`name`);

--
-- Index pour la table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_user_tokens_user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `case_assocs`
--
ALTER TABLE `case_assocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `case_changes`
--
ALTER TABLE `case_changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `case_types`
--
ALTER TABLE `case_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `config_groups`
--
ALTER TABLE `config_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `defects`
--
ALTER TABLE `defects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `project_history`
--
ALTER TABLE `project_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `refs`
--
ALTER TABLE `refs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `report_jobs`
--
ALTER TABLE `report_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `runs`
--
ALTER TABLE `runs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `suites`
--
ALTER TABLE `suites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `test_assocs`
--
ALTER TABLE `test_assocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `test_changes`
--
ALTER TABLE `test_changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `uiscripts`
--
ALTER TABLE `uiscripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `user_fields`
--
ALTER TABLE `user_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT pour la table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
