/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `extratime` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `extratime`;

CREATE TABLE IF NOT EXISTS `menu` (
  `user_login` tinyint(4) NOT NULL,
  `moduleId` tinyint(4) NOT NULL,
  `role_nom` tinyint(4) NOT NULL,
  `privilegeicon` tinyint(4) NOT NULL,
  `privilegecode2` tinyint(4) NOT NULL,
  `privilegeId` tinyint(4) NOT NULL,
  `privilegeNom` tinyint(4) NOT NULL,
  `privilegeIsMenu` tinyint(4) NOT NULL,
  `privilegeIsParent` tinyint(4) NOT NULL,
  `privilegeParentId` tinyint(4) NOT NULL,
  `privilegeCode` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `parametre_system` (
  `system_type_id` tinyint(4) NOT NULL,
  `system_type_parameter_isVisible` tinyint(4) NOT NULL,
  `parametre_groupe_id` tinyint(4) NOT NULL,
  `system_type_parameter_code` tinyint(4) NOT NULL,
  `system_type_parameter_created_datetime` tinyint(4) NOT NULL,
  `system_type_parameter_create_user_role_id` tinyint(4) NOT NULL,
  `system_type_parameter_display_name` tinyint(4) NOT NULL,
  `system_type_parameter_id` tinyint(4) NOT NULL,
  `system_type_parameter_modify_datetime` tinyint(4) NOT NULL,
  `system_type_parameter_modify_user_role_id` tinyint(4) NOT NULL,
  `system_type_parameter_name` tinyint(4) NOT NULL,
  `system_type_parameter_required` tinyint(4) NOT NULL,
  `system_type_parameter_modify` tinyint(4) NOT NULL,
  `system_type_parameter_status` tinyint(4) NOT NULL,
  `system_type_parameter_version` tinyint(4) NOT NULL,
  `system_type_parameter_data_type_id` tinyint(4) NOT NULL,
  `system_type_parameter_order` tinyint(4) NOT NULL,
  `data_type_display_name` tinyint(4) NOT NULL,
  `data_type_id` tinyint(4) NOT NULL,
  `data_type_name` tinyint(4) NOT NULL,
  `parametre_groupe_value` tinyint(4) NOT NULL,
  `parametre_groupe_status` tinyint(4) NOT NULL,
  `parametre_groupe_order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `parametre_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametre_system` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `parametre_tickets` (
  `incident_type_id` tinyint(4) NOT NULL,
  `ticket_parameter_isVisible` tinyint(4) NOT NULL,
  `ticket_parametre_groupe_id` tinyint(4) NOT NULL,
  `ticket_parameter_code` tinyint(4) NOT NULL,
  `ticket_parameter_created_datetime` tinyint(4) NOT NULL,
  `ticket_parameter_create_user_role_id` tinyint(4) NOT NULL,
  `ticket_parameter_display_name` tinyint(4) NOT NULL,
  `ticket_parameter_id` tinyint(4) NOT NULL,
  `ticket_parameter_modify_datetime` tinyint(4) NOT NULL,
  `ticket_parameter_modify_user_role_id` tinyint(4) NOT NULL,
  `ticket_parameter_name` tinyint(4) NOT NULL,
  `ticket_parameter_required` tinyint(4) NOT NULL,
  `ticket_parameter_modify` tinyint(4) NOT NULL,
  `ticket_parameter_status` tinyint(4) NOT NULL,
  `ticket_parameter_version` tinyint(4) NOT NULL,
  `ticket_parameter_data_type_id` tinyint(4) NOT NULL,
  `ticket_parameter_order` tinyint(4) NOT NULL,
  `data_type_display_name` tinyint(4) NOT NULL,
  `data_type_id` tinyint(4) NOT NULL,
  `data_type_name` tinyint(4) NOT NULL,
  `ticket_parametre_groupe_value` tinyint(4) NOT NULL,
  `ticket_parametre_groupe_status` tinyint(4) NOT NULL,
  `ticket_parametre_groupe_order` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `parametre_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametre_tickets` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `parametre_value` (
  `system_type_parameter_isVisible` tinyint(4) NOT NULL,
  `system_type_parameter_version` tinyint(4) NOT NULL,
  `system_type_parameter_code` tinyint(4) NOT NULL,
  `parametre_groupe_order` tinyint(4) NOT NULL,
  `partenaireId` tinyint(4) NOT NULL,
  `system_type_parameter_order` tinyint(4) NOT NULL,
  `partenaire_system_type_data_value` tinyint(4) NOT NULL,
  `partenaire_system_type_id` tinyint(4) NOT NULL,
  `system_type_parameter_id` tinyint(4) NOT NULL,
  `system_type_id` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `parametre_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametre_value` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `parametre_value_composant` (
  `system_type_parameter_isVisible` tinyint(4) NOT NULL,
  `system_type_parameter_version` tinyint(4) NOT NULL,
  `system_type_parameter_code` tinyint(4) NOT NULL,
  `parametre_groupe_order` tinyint(4) NOT NULL,
  `partenaireId` tinyint(4) NOT NULL,
  `system_type_parameter_order` tinyint(4) NOT NULL,
  `partenaire_system_type_data_value` tinyint(4) NOT NULL,
  `partenaire_system_type_id` tinyint(4) NOT NULL,
  `system_type_parameter_id` tinyint(4) NOT NULL,
  `system_type_id` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `parametre_value_composant` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametre_value_composant` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `partenaire_system_type_id` (
  `partenaire_system_type_id` tinyint(4) NOT NULL,
  `partenaireId` tinyint(4) NOT NULL,
  `system_type_id` tinyint(4) NOT NULL,
  `partenaire_system_type_active_status` tinyint(4) NOT NULL,
  `partenaire_system_type_create_urc_id` tinyint(4) NOT NULL,
  `partenaire_system_type_date_extreme` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `partenaire_system_type_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `partenaire_system_type_id` ENABLE KEYS */;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `refresh_rapport_materialized`(
    IN method VARCHAR(16)
, IN ts TIMESTAMP
, OUT rc INT
)
BEGIN

    IF UPPER(method) = 'REBUILD' THEN

        TRUNCATE TABLE tb_ticket_mouvement;
        TRUNCATE TABLE tb_rapport_materialized;
        INSERT INTO tb_rapport_materialized SELECT * from v_rapport;
        INSERT INTO tb_ticket_mouvement SELECT * FROM tb_ticket WHERE ticket_user_id=0 AND ticket_date BETWEEN DATE_SUB(NOW(), INTERVAL 1 DAY) AND NOW();
    ELSEIF UPPER(method) = 'REFRESH FULL' THEN

        REPLACE INTO tb_rapport_materialized
        SELECT *
        FROM (
                 SELECT *
                 FROM tb_rapport_materialized
                 UNION ALL
                 SELECT *
                 FROM v_rapport_mouvement
             ) x ;
        delete from tb_ticket_mouvement where ticket_user_login is not null;
        SET rc = 0;
    ELSEIF UPPER(method) = 'REFRESH' THEN

        REPLACE INTO tb_rapport_materialized
        SELECT *
        FROM (
                 SELECT *
                 FROM tb_rapport_materialized
                 UNION ALL
                 SELECT *
                 FROM v_rapport_mouvement
                 WHERE ticket_date < ts
             ) x
        ;

        DELETE
        FROM tb_ticket_mouvement
        WHERE ticket_date < ts
        ;
        SET rc = 0;
    ELSE
        SET rc = 1;
    END IF;

END//
DELIMITER ;

CREATE TABLE IF NOT EXISTS `satisfaction` (
  `user_id` varchar(100) DEFAULT NULL,
  `satisfaction` varchar(100) DEFAULT NULL,
  `date_satisfaction` date DEFAULT NULL,
  `raison` varchar(200) DEFAULT NULL,
  `agence_id` int(11) DEFAULT NULL,
  `ticket` int(11) DEFAULT NULL,
  `agence_nom` varchar(75) DEFAULT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `sugestion_value` varchar(200) DEFAULT NULL,
  UNIQUE KEY `satisfaction_date_satisfaction_agence_id_ticket_uindex` (`date_satisfaction`,`agence_id`,`ticket`,`agence_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `satisfaction` (`user_id`, `satisfaction`, `date_satisfaction`, `raison`, `agence_id`, `ticket`, `agence_nom`, `user_login`, `sugestion_value`) VALUES
	(NULL, '002', '2023-05-23', '0', 1144, 160, 'PAIX 1', NULL, ''),
	(NULL, '002', '2023-12-15', '0', 1151, 50, '30 JUIN-HUILLERIES', NULL, ''),
	(NULL, '004', '2023-09-06', '56', 1143, 5, 'HQ SIEGE CAISSE', NULL, 'La qualité de billet de banques'),
	(NULL, '002', '2023-12-12', '0', 1143, 99, 'HQ SIEGE CAISSE', NULL, ''),
	(NULL, '002', '2023-10-25', '0', 1156, 70, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-11-13', '0', 1156, 2, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-11-13', '0', 1156, 5, 'LUMUMBA', NULL, ''),
	(NULL, '002', '2023-07-28', '0', 1158, 125, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-08-14', '0', 1158, 15, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-08-31', '0', 1140, 1, 'HQ SIEGE HALL', NULL, ''),
	(NULL, '001', '2023-11-10', '0', 1140, 7, 'HQ SIEGE HALL', NULL, ''),
	(NULL, '001', '2023-07-26', '0', 1142, 15, 'POSTE', NULL, ''),
	(NULL, '004', '2023-09-28', '55', 1165, 75, 'BRIKIN', NULL, 'Le temps d\'attente'),
	(NULL, '001', '2023-10-07', '0', 1152, 3, 'MONISHOP', NULL, ''),
	(NULL, '002', '2023-12-08', '0', 1172, 70, 'MBANZA-NGUNGU', NULL, ''),
	(NULL, '001', '2023-11-02', '0', 1190, 1, 'HQ CONGO CHOC', NULL, ''),
	(NULL, '003', '2023-11-17', '0', 1142, 999, 'POSTE', NULL, ''),
	(NULL, '001', '2023-09-05', '0', 1175, 568, 'LUBUMBASHI CENTRE VILLE', NULL, ''),
	(NULL, '004', '2023-12-01', '54', 1175, 1, 'LUBUMBASHI CENTRE VILLE', NULL, 'La qualité de service'),
	(NULL, '001', '2023-12-12', '0', 1149, 1, 'GOMA', NULL, ''),
	(NULL, '001', '2023-10-25', '0', 1156, 50, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-10-25', '0', 1156, 51, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-11-10', '0', 1144, 8, 'PAIX 1', NULL, ''),
	(NULL, '004', '2023-12-07', '54', 1143, 593, 'HQ SIEGE CAISSE', NULL, 'La qualité de service'),
	(NULL, '002', '2023-07-27', '0', 1174, 55, 'LIKASI', NULL, ''),
	(NULL, '004', '2023-08-25', '58', 1182, 3, 'LUKALA DILALA', NULL, 'les procédures'),
	(NULL, '002', '2023-11-29', '0', 1178, 5, 'MBUJI MAYI', NULL, ''),
	(NULL, '001', '2023-10-19', '0', 1154, 4, 'KINTAMBO', NULL, ''),
	(NULL, '002', '2022-06-17', '0', 1158, 1, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-01-02', '0', 1158, 897135841, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-02-14', '0', 1158, 9, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-03-16', '0', 1158, 2, 'MATONGE', NULL, ''),
	(NULL, '003', '2023-06-20', '0', 1158, 133, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-06-26', '0', 1158, 49, 'MATONGE', NULL, ''),
	(NULL, '003', '2023-06-26', '0', 1158, 211, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-07-06', '0', 1158, 49, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-07-19', '0', 1158, 20, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-08-25', '0', 1150, 2, 'DES AVIATEURS', NULL, ''),
	(NULL, '001', '2023-09-01', '0', 1150, 3, 'DES AVIATEURS', NULL, ''),
	(NULL, '004', '2023-09-01', '54', 1150, 9, 'DES AVIATEURS', NULL, 'La qualité de service'),
	(NULL, '004', '2023-09-01', '55', 1150, 5, 'DES AVIATEURS', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-09-01', '55', 1150, 8, 'DES AVIATEURS', NULL, 'Le temps d\'attente'),
	(NULL, '001', '2023-09-01', '0', 1150, 44, 'DES AVIATEURS', NULL, ''),
	(NULL, '001', '2023-12-15', '0', 1185, 7777777, 'LA KENYA', NULL, ''),
	(NULL, '001', '2023-09-28', '0', 1148, 1, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1148, 30, 'DURBA', NULL, ''),
	(NULL, '001', '2023-11-02', '0', 1148, 21, 'DURBA', NULL, ''),
	(NULL, '003', '2023-11-02', '0', 1148, 32, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1148, 10, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1148, 3, 'DURBA', NULL, ''),
	(NULL, '003', '2023-11-02', '0', 1148, 7, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1148, 9, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1148, 5, 'DURBA', NULL, ''),
	(NULL, '003', '2023-11-14', '0', 1148, 10, 'DURBA', NULL, ''),
	(NULL, '004', '2023-11-14', '55', 1148, 12, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1148, 29, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '54', 1148, 16, 'DURBA', NULL, 'La qualité de service'),
	(NULL, '004', '2023-11-14', '55', 1148, 28, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1148, 32, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1148, 30, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1148, 33, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1148, 52, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '001', '2023-11-17', '0', 1177, 21, 'KANANGA', NULL, ''),
	(NULL, '002', '2024-01-02', '0', 1171, 0, 'MATADI', NULL, ''),
	(NULL, '001', '2024-01-03', '0', 1169, 56, 'LUKALA', NULL, ''),
	(NULL, '001', '2024-01-05', '0', 1156, 52, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2024-01-05', '0', 1156, 80, 'LUMUMBA', NULL, ''),
	(NULL, '002', '2024-01-06', '0', 1152, 54, 'MONISHOP', NULL, ''),
	(NULL, '001', '2024-01-24', '0', 1156, 1, 'LUMUMBA', NULL, ''),
	(NULL, '002', '2024-01-24', '0', 1156, 2, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2024-01-24', '0', 1156, 3, 'LUMUMBA', NULL, ''),
	(NULL, '002', '2023-05-23', '0', 1196, 160, 'PAIX 1', NULL, ''),
	(NULL, '002', '2023-06-14', '0', 1196, 2, 'PAIX 1', NULL, ''),
	(NULL, '002', '2023-12-15', '0', 1203, 50, '30 JUIN-HUILLERIES', NULL, ''),
	(NULL, '004', '2023-09-06', '56', 1195, 5, 'HQ SIEGE CAISSE', NULL, 'La qualité de billet de banques'),
	(NULL, '002', '2023-12-12', '0', 1195, 99, 'HQ SIEGE CAISSE', NULL, ''),
	(NULL, '002', '2023-10-25', '0', 1208, 70, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-11-13', '0', 1208, 2, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-11-13', '0', 1208, 5, 'LUMUMBA', NULL, ''),
	(NULL, '002', '2023-07-28', '0', 1210, 125, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-08-14', '0', 1210, 15, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-08-31', '0', 1192, 1, 'HQ SIEGE HALL', NULL, ''),
	(NULL, '001', '2023-11-10', '0', 1192, 7, 'HQ SIEGE HALL', NULL, ''),
	(NULL, '001', '2023-07-26', '0', 1194, 15, 'POSTE', NULL, ''),
	(NULL, '004', '2023-09-28', '55', 1217, 75, 'BRIKIN', NULL, 'Le temps d\'attente'),
	(NULL, '001', '2023-10-07', '0', 1204, 3, 'MONISHOP', NULL, ''),
	(NULL, '002', '2023-12-08', '0', 1224, 70, 'MBANZA-NGUNGU', NULL, ''),
	(NULL, '001', '2023-11-02', '0', 1242, 1, 'HQ CONGO CHOC', NULL, ''),
	(NULL, '003', '2023-11-17', '0', 1194, 999, 'POSTE', NULL, ''),
	(NULL, '001', '2023-09-05', '0', 1227, 568, 'LUBUMBASHI CENTRE VILLE', NULL, ''),
	(NULL, '004', '2023-12-01', '54', 1227, 1, 'LUBUMBASHI CENTRE VILLE', NULL, 'La qualité de service'),
	(NULL, '001', '2023-12-12', '0', 1201, 1, 'GOMA', NULL, ''),
	(NULL, '001', '2023-10-25', '0', 1208, 50, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-10-25', '0', 1208, 51, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2023-11-10', '0', 1196, 8, 'PAIX 1', NULL, ''),
	(NULL, '004', '2023-12-07', '54', 1195, 593, 'HQ SIEGE CAISSE', NULL, 'La qualité de service'),
	(NULL, '002', '2023-07-27', '0', 1226, 55, 'LIKASI', NULL, ''),
	(NULL, '004', '2023-08-25', '58', 1234, 3, 'LUKALA DILALA', NULL, 'les procédures'),
	(NULL, '002', '2023-11-29', '0', 1230, 5, 'MBUJI MAYI', NULL, ''),
	(NULL, '001', '2023-10-19', '0', 1206, 4, 'KINTAMBO', NULL, ''),
	(NULL, '002', '2022-06-17', '0', 1210, 1, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-01-02', '0', 1210, 897135841, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-02-14', '0', 1210, 9, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-03-16', '0', 1210, 2, 'MATONGE', NULL, ''),
	(NULL, '003', '2023-06-20', '0', 1210, 133, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-06-26', '0', 1210, 49, 'MATONGE', NULL, ''),
	(NULL, '003', '2023-06-26', '0', 1210, 211, 'MATONGE', NULL, ''),
	(NULL, '002', '2023-07-06', '0', 1210, 49, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-07-19', '0', 1210, 20, 'MATONGE', NULL, ''),
	(NULL, '001', '2023-08-25', '0', 1202, 2, 'DES AVIATEURS', NULL, ''),
	(NULL, '001', '2023-09-01', '0', 1202, 3, 'DES AVIATEURS', NULL, ''),
	(NULL, '004', '2023-09-01', '54', 1202, 9, 'DES AVIATEURS', NULL, 'La qualité de service'),
	(NULL, '004', '2023-09-01', '55', 1202, 5, 'DES AVIATEURS', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-09-01', '55', 1202, 8, 'DES AVIATEURS', NULL, 'Le temps d\'attente'),
	(NULL, '001', '2023-09-01', '0', 1202, 44, 'DES AVIATEURS', NULL, ''),
	(NULL, '001', '2023-12-15', '0', 1237, 7777777, 'LA KENYA', NULL, ''),
	(NULL, '001', '2023-09-28', '0', 1200, 1, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1200, 30, 'DURBA', NULL, ''),
	(NULL, '001', '2023-11-02', '0', 1200, 21, 'DURBA', NULL, ''),
	(NULL, '003', '2023-11-02', '0', 1200, 32, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1200, 10, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1200, 3, 'DURBA', NULL, ''),
	(NULL, '003', '2023-11-02', '0', 1200, 7, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1200, 9, 'DURBA', NULL, ''),
	(NULL, '002', '2023-11-02', '0', 1200, 5, 'DURBA', NULL, ''),
	(NULL, '003', '2023-11-14', '0', 1200, 10, 'DURBA', NULL, ''),
	(NULL, '004', '2023-11-14', '55', 1200, 12, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1200, 29, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '54', 1200, 16, 'DURBA', NULL, 'La qualité de service'),
	(NULL, '004', '2023-11-14', '55', 1200, 28, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1200, 32, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1200, 30, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1200, 33, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '004', '2023-11-14', '55', 1200, 52, 'DURBA', NULL, 'Le temps d\'attente'),
	(NULL, '001', '2023-11-17', '0', 1229, 21, 'KANANGA', NULL, ''),
	(NULL, '002', '2024-01-02', '0', 1223, 0, 'MATADI', NULL, ''),
	(NULL, '001', '2024-01-03', '0', 1221, 56, 'LUKALA', NULL, ''),
	(NULL, '001', '2024-01-05', '0', 1208, 52, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2024-01-05', '0', 1208, 80, 'LUMUMBA', NULL, ''),
	(NULL, '002', '2024-01-06', '0', 1204, 54, 'MONISHOP', NULL, ''),
	(NULL, '001', '2024-01-24', '0', 1208, 1, 'LUMUMBA', NULL, ''),
	(NULL, '002', '2024-01-24', '0', 1208, 2, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2024-01-24', '0', 1208, 3, 'LUMUMBA', NULL, ''),
	(NULL, '001', '2024-02-13', NULL, 1244, 83, 'HUILERIE AFRICANA', NULL, NULL),
	(NULL, '002', '2024-03-14', NULL, 1, 3, 'ROTANA', NULL, NULL);

CREATE TABLE IF NOT EXISTS `tb_adresse` (
  `adresse_id` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_nom` text DEFAULT NULL,
  `adresse_partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`adresse_id`),
  KEY `partenaire_adresse_idx` (`adresse_partenaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_agence` (
  `agence_id` int(11) NOT NULL AUTO_INCREMENT,
  `agence_nom` varchar(45) NOT NULL,
  `agence_ip` varchar(45) NOT NULL,
  `agence_status` int(11) NOT NULL,
  `partenaire_id` int(11) DEFAULT NULL,
  `agence_is_primary` tinyint(1) DEFAULT 0,
  `agence_heure_ouverture` varchar(45) DEFAULT '08:00:00',
  `agence_heure_fermeture` varchar(45) DEFAULT '16:00:00',
  `agence_code` varchar(99) DEFAULT NULL,
  `is_master` int(11) DEFAULT 0,
  `agence_key` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`agence_id`),
  UNIQUE KEY `agence_nom_partenaireid_key` (`agence_nom`,`agence_ip`,`partenaire_id`),
  KEY `agence_partenaire` (`partenaire_id`) USING BTREE,
  CONSTRAINT `agence_partenaireid_fkey` FOREIGN KEY (`partenaire_id`) REFERENCES `tb_partenaire` (`partenaireid`)
) ENGINE=InnoDB AUTO_INCREMENT=1383 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_agence` (`agence_id`, `agence_nom`, `agence_ip`, `agence_status`, `partenaire_id`, `agence_is_primary`, `agence_heure_ouverture`, `agence_heure_fermeture`, `agence_code`, `is_master`, `agence_key`) VALUES
	(1382, 'LIMETE', '10.33.8.119', 1, 16, 1, '08:00:00', '16:00:00', '', 0, '85a42aa0-ad0b-46ca-9b8a-f4217961f994');

CREATE TABLE IF NOT EXISTS `tb_background` (
  `background_id` int(11) NOT NULL AUTO_INCREMENT,
  `background_image` varchar(45) DEFAULT NULL,
  `background_color` varchar(45) DEFAULT NULL,
  `background_text` varchar(45) DEFAULT NULL,
  `partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`background_id`),
  KEY `partenaire_background_idx` (`partenaire_id`),
  CONSTRAINT `partenaire_background` FOREIGN KEY (`partenaire_id`) REFERENCES `tb_partenaire` (`partenaireid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_background` (`background_id`, `background_image`, `background_color`, `background_text`, `partenaire_id`) VALUES
	(22, 'ecobank.jpg', '#00597d', '#f5ebeb', 16);

CREATE TABLE IF NOT EXISTS `tb_bande_annonce` (
  `bande_annonce_id` int(11) NOT NULL AUTO_INCREMENT,
  `bande_annonce_txt` text NOT NULL,
  `bande_annonce_status` tinyint(1) NOT NULL DEFAULT 1,
  `bande_annonce_date` datetime NOT NULL DEFAULT current_timestamp(),
  `bande_annonce_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bande_annonce_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2915 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_bande_annonce` (`bande_annonce_id`, `bande_annonce_txt`, `bande_annonce_status`, `bande_annonce_date`, `bande_annonce_key`) VALUES
	(2913, 'ECOBANK LA BANQUE PANAFRICAINE ', 1, '2024-06-18 11:38:04', '001ann78-43e7-4a75-95a6-03c1233040fe'),
	(2914, 'ECOBANK UN MEILLEUR CHOIX POUR UN SERVICE DE MEILLEUR  QUALITÉS ', 1, '2024-06-18 11:38:04', 'ef12ff14-43a3-46d6-a189-c55eb5af81ab');

CREATE TABLE IF NOT EXISTS `tb_bande_anonce` (
  `bande_id` int(11) NOT NULL AUTO_INCREMENT,
  `bande_text` text NOT NULL,
  `bande_create_date` datetime DEFAULT current_timestamp(),
  `bande_modify_date` datetime DEFAULT current_timestamp(),
  `bande_create_user_id` int(11) DEFAULT 0,
  `bande_modify_user_id` int(11) DEFAULT 0,
  `bande_status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bande_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_config_sound` (
  `config_sound_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_sound_status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`config_sound_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_config_sound` (`config_sound_id`, `config_sound_status`) VALUES
	(1, 0);

CREATE TABLE IF NOT EXISTS `tb_config_system` (
  `config_system_id` int(11) NOT NULL AUTO_INCREMENT,
  `kiosk_phone_panel` int(11) NOT NULL DEFAULT 0,
  `volume_video` double DEFAULT 0,
  `kiosk_client_vip` int(11) NOT NULL DEFAULT 0,
  `kiosk_multi_canal` int(11) NOT NULL DEFAULT 0,
  `partenaire_id` int(11) DEFAULT NULL,
  `kiosk_create_date` datetime NOT NULL,
  `kiosk_user_create` int(11) NOT NULL,
  `is_ldap` int(11) NOT NULL DEFAULT 0,
  `server_adresse` varchar(90) DEFAULT NULL,
  `domaine` varchar(90) DEFAULT NULL,
  `kiosk_size_panel` int(11) NOT NULL DEFAULT 0,
  `kiosk_label` varchar(45) DEFAULT NULL,
  `kiosk_manager` int(11) DEFAULT 0,
  `kiosk_confirm` int(11) DEFAULT 1,
  `url_sms` varchar(255) DEFAULT 'localhost:8090/ExtratimePlus',
  `url_master` varchar(255) DEFAULT 'localhost',
  `url_crm` varchar(255) DEFAULT 'localhost:8090/ExtratimePlus',
  `is_master` int(11) DEFAULT 0,
  `is_satisfaction` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`config_system_id`),
  KEY `tb_config_system_tb_partenaire_partenaireid_fk` (`partenaire_id`),
  CONSTRAINT `tb_config_system_tb_partenaire_partenaireid_fk` FOREIGN KEY (`partenaire_id`) REFERENCES `tb_partenaire` (`partenaireid`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_config_system` (`config_system_id`, `kiosk_phone_panel`, `volume_video`, `kiosk_client_vip`, `kiosk_multi_canal`, `partenaire_id`, `kiosk_create_date`, `kiosk_user_create`, `is_ldap`, `server_adresse`, `domaine`, `kiosk_size_panel`, `kiosk_label`, `kiosk_manager`, `kiosk_confirm`, `url_sms`, `url_master`, `url_crm`, `is_master`, `is_satisfaction`) VALUES
	(145, 0, 0, 0, 1, 16, '2024-05-07 17:12:16', 1092, 0, '', '', 100, 'AGENCE', 1, 1, 'none', '10.33.1.16', 'localhost', 0, 0);

CREATE TABLE IF NOT EXISTS `tb_config_ticket` (
  `config_ticket_logo` varchar(100) NOT NULL,
  `config_ticket_label1` varchar(100) DEFAULT NULL,
  `config_ticket_label2` varchar(100) DEFAULT NULL,
  `config_ticket_title` varchar(100) DEFAULT NULL,
  `config_ticket_status` int(11) NOT NULL DEFAULT 1,
  `partenaire` int(11) DEFAULT NULL,
  `config_ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`config_ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_data_type` (
  `data_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_type_name` varchar(45) DEFAULT NULL,
  `data_type_display_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`data_type_id`),
  UNIQUE KEY `data_type_name_UNIQUE` (`data_type_name`),
  UNIQUE KEY `data_type_display_name_UNIQUE` (`data_type_display_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_data_type` (`data_type_id`, `data_type_name`, `data_type_display_name`) VALUES
	(1, 'text', 'texte'),
	(3, 'date', 'date'),
	(4, 'list', 'liste'),
	(5, 'textarea', 'texte area'),
	(6, 'file', 'fichier');

CREATE TABLE IF NOT EXISTS `tb_guichet` (
  `guichet_id` int(11) NOT NULL AUTO_INCREMENT,
  `guichet_code` varchar(45) NOT NULL,
  `guichet_status` int(11) NOT NULL,
  `guichet_service` int(11) NOT NULL,
  `guichet_order` varchar(50) NOT NULL,
  `guichet_guichet_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`guichet_id`),
  KEY `FK_guichet_guichet_type_id` (`guichet_guichet_type_id`),
  CONSTRAINT `FK_guichet_guichet_type_id` FOREIGN KEY (`guichet_guichet_type_id`) REFERENCES `tb_guichet_type` (`guichet_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_guichet2` (
  `guichet2_id` int(11) NOT NULL AUTO_INCREMENT,
  `guichet2_code` varchar(45) NOT NULL,
  `guichet2_status` int(11) NOT NULL DEFAULT 1,
  `guicht2_message` varchar(100) DEFAULT 'NumÃ¢??ÃƒÂ¢Ã¢?Â¬Ã¢?ro @ticket, pour le GuichÃ¢??ÃƒÂ¢Ã¢?Â¬Ã‚Â¿t @bur',
  PRIMARY KEY (`guichet2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_guichet2` (`guichet2_id`, `guichet2_code`, `guichet2_status`, `guicht2_message`) VALUES
	(1, 'A', 0, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(2, 'B', 0, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(3, 'C', 0, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(4, 'D', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(5, 'E', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(6, 'F', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(7, 'G', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(8, 'H', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(9, 'I', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(10, 'J', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(11, 'K', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(12, 'L', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(13, 'M', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(14, 'N', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(15, 'O', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(16, 'P', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(17, 'Q', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(18, 'R', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(19, 'S', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(20, 'T', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(21, 'U', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(22, 'V', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(23, 'W', 1, '@service, Numéro @ticket, pour le Guichèt @bur'),
	(24, 'X', 1, 'Numéro @ticket, pour le Guichèt @bur'),
	(25, 'Y', 1, 'Numéro @ticket, pour le Guichèt @bur'),
	(26, 'Z', 1, 'Numéro @ticket, pour le Guichèt @bur');

CREATE TABLE IF NOT EXISTS `tb_guichet_type` (
  `guichet_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `guichet_type_code` varchar(45) NOT NULL,
  `guichet_type_status` int(11) DEFAULT 1,
  PRIMARY KEY (`guichet_type_id`),
  UNIQUE KEY `guichet_type_code` (`guichet_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_guichet_users` (
  `guichet_users_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT 0,
  `guichet_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`guichet_users_id`),
  KEY `FK_tb_guichet_users_tb_users` (`user_id`),
  KEY `FK_tb_guichet_users_tb_guichet` (`guichet_id`),
  CONSTRAINT `FK_tb_guichet_users_tb_guichet` FOREIGN KEY (`guichet_id`) REFERENCES `tb_guichet` (`guichet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_guichet_users_tb_users` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_logo` (
  `logo_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_nom` varchar(45) DEFAULT NULL,
  `partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`logo_id`),
  KEY `partenaire_logo_idx` (`partenaire_id`),
  CONSTRAINT `partenaire_logo` FOREIGN KEY (`partenaire_id`) REFERENCES `tb_partenaire` (`partenaireid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_logo` (`logo_id`, `logo_nom`, `partenaire_id`) VALUES
	(28, 'ecobank.jpg', 16);

CREATE TABLE IF NOT EXISTS `tb_manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT NULL,
  `service_manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`manager_id`),
  UNIQUE KEY `tb_manager_service_manager_id_service_id_uindex` (`service_manager_id`,`service_id`),
  KEY `tb_manager_tb_service_service_id_fk` (`service_id`),
  CONSTRAINT `tb_manager_tb_service_manager_service_manager_id_fk` FOREIGN KEY (`service_manager_id`) REFERENCES `tb_service_manager` (`service_manager_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_manager_tb_service_service_id_fk` FOREIGN KEY (`service_id`) REFERENCES `tb_service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_manager` (`manager_id`, `service_id`, `service_manager_id`) VALUES
	(66, 857, 195551),
	(94, 858, 195551),
	(95, 859, 195551),
	(67, 864, 195551),
	(68, 865, 195551),
	(69, 868, 195551),
	(70, 869, 195551),
	(71, 870, 195551),
	(72, 871, 195551),
	(97, 872, 195551),
	(98, 883, 195551),
	(99, 884, 195551),
	(100, 887, 195551),
	(75, 855, 195552),
	(76, 856, 195552),
	(77, 860, 195552),
	(78, 861, 195552),
	(79, 862, 195552),
	(80, 863, 195552),
	(96, 867, 195552);

CREATE TABLE IF NOT EXISTS `tb_module` (
  `moduleid` int(11) NOT NULL AUTO_INCREMENT,
  `modulenom` varchar(45) NOT NULL,
  `modulecode` varchar(45) NOT NULL,
  `modulestatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`moduleid`),
  UNIQUE KEY `module_modulenom_modulecode_key` (`modulenom`,`modulecode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_module` (`moduleid`, `modulenom`, `modulecode`, `modulestatus`) VALUES
	(5, 'ADMINISTRATION', 'ADMINISTRATION', 1);

CREATE TABLE IF NOT EXISTS `tb_module_partenaire` (
  `module_partenaire_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_partenaire_id`),
  UNIQUE KEY `module_id_partenaire_id` (`module_id`,`partenaire_id`),
  KEY `module_partenaire` (`partenaire_id`) USING BTREE,
  KEY `module_partenaire2` (`module_id`) USING BTREE,
  KEY `mod_partenaire` (`module_id`),
  KEY `banq_mod` (`partenaire_id`),
  CONSTRAINT `banq_mod` FOREIGN KEY (`partenaire_id`) REFERENCES `tb_partenaire` (`partenaireid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mod_partenaire` FOREIGN KEY (`module_id`) REFERENCES `tb_module` (`moduleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_module_partenaire` (`module_partenaire_id`, `module_id`, `partenaire_id`) VALUES
	(23, 5, 8),
	(31, 5, 16);

CREATE TABLE IF NOT EXISTS `tb_mouvement` (
  `mouvement_id` int(11) NOT NULL AUTO_INCREMENT,
  `mouvement_service_id` int(11) NOT NULL,
  `mouvement_guichet_id` int(11) NOT NULL,
  `mouvement_ticket_id` int(11) NOT NULL,
  `mouvement_date` date NOT NULL,
  `mouvement_heure_debut` time DEFAULT NULL,
  `mouvement_heure_fin` time DEFAULT NULL,
  `mouvement_status` int(11) DEFAULT 1,
  `mouvement_user_id` int(11) DEFAULT 0,
  PRIMARY KEY (`mouvement_id`),
  KEY `FK_mouvement_service_id` (`mouvement_service_id`),
  KEY `FK_mouvement_guichet_id` (`mouvement_guichet_id`),
  CONSTRAINT `FK_mouvement_guichet_id` FOREIGN KEY (`mouvement_guichet_id`) REFERENCES `tb_guichet` (`guichet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mouvement_service_id` FOREIGN KEY (`mouvement_service_id`) REFERENCES `tb_service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_partenaire` (
  `partenaireid` int(11) NOT NULL AUTO_INCREMENT,
  `partenairenom` varchar(75) NOT NULL,
  `partenairestatus` int(11) DEFAULT NULL,
  `partenaire_sigle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`partenaireid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_partenaire` (`partenaireid`, `partenairenom`, `partenairestatus`, `partenaire_sigle`) VALUES
	(8, 'Josam', 1, 'Josam'),
	(16, 'Ecobank', 1, 'Ecobank');

CREATE TABLE IF NOT EXISTS `tb_privilege` (
  `privilegeid` int(11) NOT NULL AUTO_INCREMENT,
  `privilegenom` varchar(45) DEFAULT NULL,
  `privilegecode` varchar(45) NOT NULL,
  `moduleid` int(11) DEFAULT NULL,
  `privilegeismenu` int(11) DEFAULT 1,
  `privilegeisparent` int(11) DEFAULT 1,
  `privilegeparentid` int(11) DEFAULT 0,
  `privilegeicon` varchar(45) DEFAULT NULL,
  `privilegecode2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`privilegeid`),
  UNIQUE KEY `privilege_privilegecode_privilegenom_key` (`privilegecode`,`privilegenom`),
  KEY `module_priv` (`moduleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_privilege` (`privilegeid`, `privilegenom`, `privilegecode`, `moduleid`, `privilegeismenu`, `privilegeisparent`, `privilegeparentid`, `privilegeicon`, `privilegecode2`) VALUES
	(25, 'Gestion d acces', 'Gestion d acces', 5, 1, 1, 0, 'icon-folder', 'Gestion d acces'),
	(26, 'Modules', 'module.jsf', 5, 1, 1, 25, 'fa fa-gear', 'Modules'),
	(28, 'Partnenaire', 'partenaires.jsf', 5, 1, 1, 25, 'fa fa-university', 'Partnenaire'),
	(30, 'Groupe guichets', 'guichetType.jsf', 7, 1, 1, 0, 'fa fa-home', 'SALLE D\'ACCUEIL'),
	(32, 'Gestion des videos', 'Gestion des videos', 5, 0, 1, 0, '', 'Gestion des videos'),
	(33, 'Gestion des profils', 'Gestion des profils', 5, 0, 1, 0, '', 'Gestion des profils'),
	(34, 'Gestion des agences', 'Gestion des agences', 5, 0, 1, 0, '', 'Gestion des agences'),
	(35, 'Consultation des rapports', 'Consultation des rapports', 5, 0, 1, 0, '', 'Consultation des rapports'),
	(36, 'Gestion des services', 'Gestion des services', 5, 0, 1, 0, '', 'Gestion des services'),
	(37, 'Gestion des guichets', 'Gestion des guichets', 5, 0, 1, 0, '', 'Gestion des guichets'),
	(38, 'Gestion des annonces', 'Gestion des annonces', 5, 0, 1, 0, '', 'Gestion des annonces'),
	(39, 'Gestion des sons', 'Gestion des sons', 5, 0, 1, 0, '', 'Gestion des sons'),
	(40, 'Gestion des seuils d alerte', 'Gestion des seuils d alerte', 5, 0, 1, 0, '', 'Gestion des seuils d alerte'),
	(41, 'Fermeture guichet', 'Fermeture guichet', 5, 0, 1, 0, '', 'Fermeture guichet');

CREATE TABLE IF NOT EXISTS `tb_raison` (
  `raison_id` int(11) NOT NULL AUTO_INCREMENT,
  `raison_value` varchar(95) NOT NULL,
  `raison_status` tinyint(1) NOT NULL DEFAULT 1,
  `raison_create_user` int(11) DEFAULT NULL,
  `raison_create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`raison_id`),
  UNIQUE KEY `tb_raison_raison_value_uindex` (`raison_value`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_raison` (`raison_id`, `raison_value`, `raison_status`, `raison_create_user`, `raison_create_date`) VALUES
	(96, 'Problème de connexion', 1, NULL, NULL),
	(97, 'CAISSE EN ATTENTE D\'APPROVISIONNEMENT', 1, NULL, NULL),
	(98, 'JETON MAL TIRE', 1, NULL, NULL),
	(99, 'COUPURE D\'ELECTRICITE', 1, NULL, NULL),
	(100, 'BESOIN PHYSIOLOGIQUE URGENT DE L\'AGENT/CLIENT', 1, NULL, NULL),
	(101, 'EN  ATTENTE CONFIRMATION MAIL', 1, NULL, NULL),
	(102, 'MTCN INCORRECT', 1, NULL, NULL),
	(103, 'MODIFICATION MTCN', 1, NULL, NULL),
	(104, 'SIGNATURE NON NUMERISEE', 1, NULL, NULL),
	(105, 'CLIENT AVEC PLUSIEURS OPERATIONS', 1, NULL, NULL),
	(106, 'OPERATION SOUMISE A LA VALIDATION', 1, NULL, NULL),
	(107, 'VERIFICATION SIGNATURE', 1, NULL, NULL),
	(131, '', 1, NULL, NULL);

CREATE TABLE IF NOT EXISTS `tb_raison_ticket` (
  `raison_ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `raison_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `raison_ticket_create_date` datetime NOT NULL,
  PRIMARY KEY (`raison_ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_rapport_connexion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT '0',
  `dates` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_rapport_connexion` (`id`, `login`, `dates`, `status`) VALUES
	(3, 'Ecobank', '2024-05-07 15:20:15', 1),
	(4, 'Ecobank', '2024-05-07 15:20:51', 0),
	(5, 'Ecobank', '2024-05-07 15:39:06', 1),
	(6, 'Ecobank', '2024-05-07 15:39:31', 0),
	(7, 'Ecobank', '2024-05-07 15:39:44', 1),
	(8, 'Ecobank', '2024-05-07 15:46:20', 0),
	(9, 'Ecobank', '2024-05-07 15:46:34', 1),
	(10, 'Ecobank', '2024-05-07 15:46:45', 0),
	(11, 'Ecobank', '2024-05-07 17:11:25', 1),
	(12, 'Ecobank', '2024-05-07 17:12:17', 0),
	(13, 'nyamabo', '2024-05-07 17:26:47', 1),
	(14, 'nyamabo', '2024-05-07 17:28:33', 0),
	(15, 'nyamabo', '2024-05-07 17:30:29', 1),
	(16, 'nyamabo', '2024-05-07 17:34:54', 0),
	(17, 'tekadanga', '2024-05-07 17:36:07', 1),
	(18, 'tekadanga', '2024-05-07 17:51:22', 1),
	(19, 'kokanya', '2024-05-07 17:54:00', 1),
	(20, 'tekadanga', '2024-05-07 18:05:57', 0),
	(21, 'kokanya', '2024-05-07 18:07:34', 1),
	(22, 'kokanya', '2024-05-07 18:11:30', 0),
	(23, 'Ecobank', '2024-05-07 18:16:03', 1),
	(24, 'Ecobank', '2024-05-07 18:16:47', 0),
	(25, 'simon', '2024-05-07 18:16:56', 1),
	(26, 'simon', '2024-05-07 18:23:43', 0),
	(27, 'simon', '2024-05-07 18:24:13', 1),
	(28, 'simon', '2024-05-07 18:30:25', 0),
	(29, 'tekadanga', '2024-05-08 12:01:03', 1),
	(30, 'kokanya', '2024-05-08 12:15:25', 1),
	(31, 'Ecobank', '2024-05-08 12:20:23', 1),
	(32, 'Ecobank', '2024-05-08 12:53:15', 1),
	(33, 'Ecobank', '2024-05-08 12:54:26', 0),
	(34, 'tekadanga', '2024-05-08 12:54:32', 1),
	(35, 'kokanya', '2024-05-08 12:57:50', 1),
	(36, 'Ecobank', '2024-05-08 14:00:20', 1),
	(37, 'Ecobank', '2024-05-08 14:00:46', 0),
	(38, 'beni', '2024-05-08 14:00:55', 1),
	(39, 'nyamabo', '2024-05-08 14:06:58', 1),
	(40, 'tekadanga', '2024-05-08 17:43:20', 0),
	(41, 'Ecobank', '2024-06-17 09:29:14', 1),
	(42, 'Ecobank', '2024-06-17 09:49:41', 1),
	(43, 'Ecobank', '2024-06-17 09:50:54', 0),
	(44, 'mutala', '2024-06-17 09:51:01', 1),
	(45, 'mutala', '2024-06-17 09:58:49', 0),
	(46, 'mutala', '2024-06-17 09:59:03', 1),
	(47, 'Ecobank', '2024-06-17 10:06:25', 1),
	(48, 'Ecobank', '2024-06-17 10:07:39', 0),
	(49, 'nyota', '2024-06-17 10:07:45', 1),
	(50, 'nyota', '2024-06-17 10:17:57', 0),
	(51, 'nyota', '2024-06-17 10:18:36', 1),
	(52, 'Ecobank', '2024-06-17 10:26:32', 1),
	(53, 'Ecobank', '2024-06-17 10:26:51', 0),
	(54, 'nyamabo', '2024-06-17 10:26:56', 1),
	(55, 'nyamabo', '2024-06-17 10:42:00', 0),
	(56, 'nyamabo', '2024-06-17 10:42:25', 1),
	(57, 'Ecobank', '2024-06-17 10:46:17', 1),
	(58, 'Ecobank', '2024-06-17 10:47:19', 0),
	(59, 'beni', '2024-06-17 10:47:23', 1),
	(60, 'Ecobank', '2024-06-17 10:51:47', 1),
	(61, 'Ecobank', '2024-06-17 10:52:44', 0),
	(62, 'kokanya', '2024-06-17 10:52:55', 1),
	(63, 'kokanya', '2024-06-17 10:55:57', 0),
	(64, 'kokanya', '2024-06-17 10:56:14', 1),
	(65, 'kokanya', '2024-06-17 11:02:24', 0),
	(66, 'mutala', '2024-06-17 11:34:41', 1),
	(67, 'kokanya', '2024-06-17 11:35:54', 1),
	(68, 'kokanya', '2024-06-17 11:35:54', 1),
	(69, 'nyamabo', '2024-06-17 11:46:48', 1),
	(70, 'beni', '2024-06-17 11:59:57', 1),
	(71, 'nyota', '2024-06-17 12:54:58', 1),
	(72, 'beni', '2024-06-17 14:58:08', 1),
	(73, 'beni', '2024-06-17 16:32:33', 1),
	(74, 'kokanya', '2024-06-17 17:06:41', 0),
	(75, 'nyota', '2024-06-17 17:06:55', 0),
	(76, 'mutala', '2024-06-18 08:30:16', 1),
	(77, 'nyota', '2024-06-18 08:31:41', 1),
	(78, 'nyamabo', '2024-06-18 08:36:15', 1),
	(79, 'kokanya', '2024-06-18 08:39:25', 1),
	(80, 'Ecobank', '2024-06-18 11:26:27', 1),
	(81, 'Ecobank', '2024-06-18 11:31:20', 1),
	(82, 'Ecobank', '2024-06-18 11:31:25', 0);

CREATE TABLE IF NOT EXISTS `tb_rapport_materialized` (
  `ticket_id` int(11) NOT NULL DEFAULT 0,
  `ticket_date` datetime NOT NULL,
  `ticket_heure_debut` time DEFAULT '00:00:00',
  `ticket_heure_fin` time DEFAULT '00:00:00',
  `ticket_date2` date NOT NULL,
  `ticket_number` int(11) NOT NULL,
  `ticket_service_id` int(11) NOT NULL,
  `ticket_guichet` int(11) DEFAULT 0,
  `ticket_user_id` int(11) DEFAULT 0,
  `ticket_status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_login` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_status` int(11) NOT NULL,
  `partenaire_id` int(11) NOT NULL,
  `creation_date` timestamp NULL DEFAULT current_timestamp(),
  `version` int(11) DEFAULT 1,
  `user_mail` varchar(45) DEFAULT '0',
  `user_is_connect` int(11) DEFAULT 0,
  `service_id` int(11) NOT NULL DEFAULT 0,
  `service_name` varchar(50) NOT NULL,
  `service_desc` text DEFAULT NULL,
  `service_create_user_id` int(11) DEFAULT NULL,
  `service_modify_user_id` int(11) DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_modify_date` date DEFAULT NULL,
  `service_status` int(11) DEFAULT NULL,
  `service_icon` text DEFAULT NULL,
  `guichet2_id` int(11) NOT NULL DEFAULT 0,
  `guichet2_code` varchar(45) NOT NULL,
  `guichet2_status` int(11) NOT NULL DEFAULT 1,
  `ticket_raison_id` int(11) DEFAULT NULL,
  `ticket_client_number` varchar(20) DEFAULT NULL,
  `ticket_agence_id` int(11) DEFAULT NULL,
  `ticket_agence_nom` varchar(50) DEFAULT NULL,
  `ticket_syncronized` int(11) DEFAULT 0,
  `user_code` varchar(95) DEFAULT '0',
  UNIQUE KEY `materialized_unique_index` (`ticket_date2`,`ticket_number`,`ticket_agence_id`),
  KEY `materialized_key_index1` (`ticket_date2`),
  KEY `materialized_key_index2` (`ticket_user_id`),
  KEY `materialized_key_index3` (`ticket_service_id`),
  KEY `materialized_key_index4` (`ticket_agence_id`),
  KEY `materialized_key_index5` (`ticket_guichet`),
  KEY `materialized_key_index6` (`ticket_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_rapport_materialized` (`ticket_id`, `ticket_date`, `ticket_heure_debut`, `ticket_heure_fin`, `ticket_date2`, `ticket_number`, `ticket_service_id`, `ticket_guichet`, `ticket_user_id`, `ticket_status`, `user_id`, `user_login`, `user_name`, `user_lastname`, `user_password`, `user_status`, `partenaire_id`, `creation_date`, `version`, `user_mail`, `user_is_connect`, `service_id`, `service_name`, `service_desc`, `service_create_user_id`, `service_modify_user_id`, `service_create_date`, `service_modify_date`, `service_status`, `service_icon`, `guichet2_id`, `guichet2_code`, `guichet2_status`, `ticket_raison_id`, `ticket_client_number`, `ticket_agence_id`, `ticket_agence_nom`, `ticket_syncronized`, `user_code`) VALUES
	(51, '2024-05-08 12:53:13', '12:56:46', '13:08:15', '2024-05-08', 1, 855, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(52, '2024-05-08 13:01:17', '13:01:30', '13:02:08', '2024-05-08', 2, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(53, '2024-05-08 13:04:57', '13:08:27', '13:26:28', '2024-05-08', 3, 855, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(54, '2024-05-08 13:05:16', '13:11:04', '13:14:51', '2024-05-08', 4, 856, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(55, '2024-05-08 13:05:48', '13:15:13', '13:16:27', '2024-05-08', 5, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(56, '2024-05-08 13:09:13', '13:25:34', '13:25:51', '2024-05-08', 6, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(57, '2024-05-08 13:12:39', '13:28:06', '13:38:20', '2024-05-08', 7, 855, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(58, '2024-05-08 13:24:30', '13:33:38', '13:34:10', '2024-05-08', 8, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(59, '2024-05-08 13:25:47', '13:41:45', '13:42:09', '2024-05-08', 9, 856, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(60, '2024-05-08 13:26:08', '13:47:02', '13:49:44', '2024-05-08', 10, 856, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(61, '2024-05-08 13:26:38', '13:38:26', '13:48:46', '2024-05-08', 11, 855, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(62, '2024-05-08 13:29:08', '13:48:55', '13:54:49', '2024-05-08', 12, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(63, '2024-05-08 13:37:20', '13:49:48', '13:52:17', '2024-05-08', 13, 856, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(64, '2024-05-08 13:37:37', '13:40:31', '13:41:33', '2024-05-08', 14, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(65, '2024-05-08 13:48:46', '14:39:05', '15:29:59', '2024-05-08', 15, 863, 1, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 96, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(66, '2024-05-08 13:59:16', '14:03:25', '14:03:42', '2024-05-08', 16, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(67, '2024-05-08 14:05:02', '14:13:14', '14:21:58', '2024-05-08', 17, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(68, '2024-05-08 14:12:29', '14:18:00', '14:23:03', '2024-05-08', 18, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(69, '2024-05-08 14:14:16', '14:23:48', '14:24:08', '2024-05-08', 19, 856, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 96, '', 1382, 'LIMETE', 0, 'kokanya'),
	(70, '2024-05-08 14:15:15', '14:22:49', '14:31:22', '2024-05-08', 20, 855, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(71, '2024-05-08 14:15:37', '14:31:18', '14:46:57', '2024-05-08', 21, 856, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(72, '2024-05-08 14:25:50', '14:31:33', '14:41:25', '2024-05-08', 22, 855, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(73, '2024-05-08 14:35:04', '14:41:32', '14:48:08', '2024-05-08', 23, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(74, '2024-05-08 14:35:25', '14:56:17', '15:02:58', '2024-05-08', 24, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(75, '2024-05-08 14:35:33', '15:03:05', '15:03:48', '2024-05-08', 25, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(76, '2024-05-08 14:37:02', '15:03:55', '15:04:27', '2024-05-08', 26, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(77, '2024-05-08 14:46:24', '14:47:06', '14:47:31', '2024-05-08', 27, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(78, '2024-05-08 14:47:37', '14:48:15', '14:54:35', '2024-05-08', 28, 855, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(80, '2024-05-08 14:56:36', '15:04:37', '15:25:44', '2024-05-08', 30, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(81, '2024-05-08 14:56:54', '15:20:06', '15:24:51', '2024-05-08', 31, 856, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(82, '2024-05-08 14:58:54', '15:02:33', '15:03:43', '2024-05-08', 32, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(83, '2024-05-08 15:02:44', '15:25:53', '15:32:03', '2024-05-08', 33, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(85, '2024-05-08 15:26:43', '15:32:15', '15:37:49', '2024-05-08', 35, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(86, '2024-05-08 15:27:26', '15:33:59', '15:45:58', '2024-05-08', 36, 855, 2, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(87, '2024-05-08 15:36:17', '15:39:38', '15:48:25', '2024-05-08', 37, 856, 3, 716742974, 0, 716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'tekadanga'),
	(131, '2024-06-17 09:54:01', '09:54:59', '09:55:50', '2024-06-17', 1, 856, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(132, '2024-06-17 09:54:08', '09:55:57', '09:56:09', '2024-06-17', 2, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(133, '2024-06-17 09:54:14', '10:32:42', '10:37:50', '2024-06-17', 3, 860, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 860, 'RAPID TRANSFERT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(134, '2024-06-17 09:54:19', '09:57:33', '09:57:21', '2024-06-17', 4, 861, 2, 716742982, 99, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 861, 'WESTERN UNION', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 106, '', 1382, 'LIMETE', 0, 'mutala'),
	(135, '2024-06-17 10:13:49', '10:16:16', '10:16:59', '2024-06-17', 5, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 97, '', 1382, 'LIMETE', 0, 'nyota'),
	(136, '2024-06-17 10:13:53', '10:30:57', '10:30:34', '2024-06-17', 6, 856, 3, 716742972, 99, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 100, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(137, '2024-06-17 10:13:57', '10:38:25', '10:38:57', '2024-06-17', 7, 860, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 860, 'RAPID TRANSFERT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(138, '2024-06-17 10:14:04', '11:35:08', '11:35:33', '2024-06-17', 8, 855, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(139, '2024-06-17 10:14:08', '10:39:03', '10:41:41', '2024-06-17', 9, 856, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(141, '2024-06-17 10:47:05', '11:35:41', '11:36:03', '2024-06-17', 11, 855, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(142, '2024-06-17 10:50:48', '12:55:23', '12:58:23', '2024-06-17', 12, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(143, '2024-06-17 10:51:44', '12:58:25', '12:59:06', '2024-06-17', 13, 862, 1, 716742983, 3, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(145, '2024-06-17 10:56:50', '10:57:10', '10:57:44', '2024-06-17', 15, 856, 4, 716742973, 3, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(146, '2024-06-17 10:57:15', '11:00:12', '11:00:01', '2024-06-17', 16, 863, 4, 716742973, 99, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 97, '', 1382, 'LIMETE', 0, 'kokanya'),
	(148, '2024-06-17 11:01:16', '11:43:00', '11:48:47', '2024-06-17', 18, 856, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(149, '2024-06-17 11:01:25', '11:36:28', '11:37:01', '2024-06-17', 19, 855, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(150, '2024-06-17 11:04:14', '11:48:53', '11:49:38', '2024-06-17', 20, 856, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(152, '2024-06-17 11:15:16', '12:59:07', '13:03:09', '2024-06-17', 22, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(153, '2024-06-17 11:17:19', '13:03:10', '13:05:57', '2024-06-17', 23, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(155, '2024-06-17 11:20:21', '13:05:58', '13:12:11', '2024-06-17', 25, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(156, '2024-06-17 11:23:27', '11:51:22', '11:52:48', '2024-06-17', 26, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(157, '2024-06-17 11:23:37', '11:51:57', '11:52:29', '2024-06-17', 27, 856, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(158, '2024-06-17 11:27:42', '11:39:11', '11:40:05', '2024-06-17', 28, 855, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(159, '2024-06-17 11:27:49', '11:59:11', '12:08:24', '2024-06-17', 29, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(160, '2024-06-17 11:28:10', '11:41:25', '11:51:14', '2024-06-17', 30, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(161, '2024-06-17 11:38:42', '12:04:10', '12:04:24', '2024-06-17', 31, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(162, '2024-06-17 11:39:01', '13:12:12', '13:18:01', '2024-06-17', 32, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(163, '2024-06-17 11:39:14', '12:17:32', '12:17:40', '2024-06-17', 33, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 102, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(164, '2024-06-17 11:39:27', '11:56:54', '11:57:37', '2024-06-17', 34, 867, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(165, '2024-06-17 11:53:10', '12:18:25', '12:34:03', '2024-06-17', 35, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(166, '2024-06-17 11:53:31', '12:10:56', '12:28:10', '2024-06-17', 36, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(167, '2024-06-17 11:58:27', '12:12:27', '12:13:03', '2024-06-17', 37, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(168, '2024-06-17 11:58:37', '13:18:02', '13:26:00', '2024-06-17', 38, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(169, '2024-06-17 11:58:45', '13:26:02', '13:32:06', '2024-06-17', 39, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(170, '2024-06-17 11:59:01', '13:32:07', '13:35:57', '2024-06-17', 40, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(171, '2024-06-17 12:06:08', '12:15:24', '12:15:38', '2024-06-17', 41, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(172, '2024-06-17 12:06:19', '12:34:10', '12:34:47', '2024-06-17', 42, 863, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(173, '2024-06-17 12:14:23', '14:13:55', '14:19:17', '2024-06-17', 43, 861, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 861, 'WESTERN UNION', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(174, '2024-06-17 12:14:38', '12:16:37', '12:17:53', '2024-06-17', 44, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(175, '2024-06-17 12:16:28', '13:35:58', '13:37:57', '2024-06-17', 45, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(176, '2024-06-17 12:17:17', '13:37:58', '13:39:52', '2024-06-17', 46, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(177, '2024-06-17 12:19:13', '13:39:53', '13:42:52', '2024-06-17', 47, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(178, '2024-06-17 12:20:48', '12:29:25', '12:29:52', '2024-06-17', 48, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(179, '2024-06-17 12:24:50', '12:26:35', '12:29:15', '2024-06-17', 49, 855, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(180, '2024-06-17 12:26:38', '12:28:22', '12:37:24', '2024-06-17', 50, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(181, '2024-06-17 12:31:06', '12:50:55', '12:57:25', '2024-06-17', 51, 855, 2, 716742982, 3, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 101, '', 1382, 'LIMETE', 0, 'mutala'),
	(182, '2024-06-17 12:31:17', '12:44:09', '12:48:23', '2024-06-17', 52, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(183, '2024-06-17 12:32:46', '12:33:03', '12:34:59', '2024-06-17', 53, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(184, '2024-06-17 12:33:24', '12:48:28', '12:56:36', '2024-06-17', 54, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(185, '2024-06-17 12:33:34', '12:37:32', '12:43:59', '2024-06-17', 55, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(186, '2024-06-17 12:41:56', '13:42:54', '13:45:41', '2024-06-17', 56, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(187, '2024-06-17 12:47:05', '12:57:29', '12:58:04', '2024-06-17', 57, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(188, '2024-06-17 12:48:49', '12:56:41', '13:55:00', '2024-06-17', 58, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(189, '2024-06-17 12:49:38', '13:01:23', '13:05:22', '2024-06-17', 59, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(190, '2024-06-17 12:51:20', '14:33:24', '14:33:56', '2024-06-17', 60, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 102, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(191, '2024-06-17 13:02:13', '13:06:16', '13:07:04', '2024-06-17', 61, 856, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(192, '2024-06-17 13:02:22', '13:06:31', '13:06:53', '2024-06-17', 62, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(193, '2024-06-17 13:02:53', '13:45:42', '13:48:31', '2024-06-17', 63, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(194, '2024-06-17 13:03:28', '13:07:19', '13:20:43', '2024-06-17', 64, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(195, '2024-06-17 13:13:33', '13:20:53', '13:37:26', '2024-06-17', 65, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(196, '2024-06-17 13:13:52', '13:14:02', '13:16:09', '2024-06-17', 66, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(197, '2024-06-17 13:21:05', '13:26:54', '13:31:01', '2024-06-17', 67, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(198, '2024-06-17 13:21:15', '13:48:09', '13:48:18', '2024-06-17', 68, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 101, '', 1382, 'LIMETE', 0, 'mutala'),
	(199, '2024-06-17 13:21:45', '13:34:53', '13:35:23', '2024-06-17', 69, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(200, '2024-06-17 13:22:03', '14:10:05', '14:13:39', '2024-06-17', 70, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(202, '2024-06-17 13:28:54', '13:38:46', '13:39:37', '2024-06-17', 72, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(203, '2024-06-17 13:30:38', '13:40:38', '13:48:03', '2024-06-17', 73, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(204, '2024-06-17 13:31:02', '13:43:11', '13:47:58', '2024-06-17', 74, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(205, '2024-06-17 13:31:34', '13:48:34', '13:49:43', '2024-06-17', 75, 862, 1, 716742983, 3, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(206, '2024-06-17 13:34:17', '14:19:22', '14:38:53', '2024-06-17', 76, 861, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 861, 'WESTERN UNION', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(207, '2024-06-17 13:34:24', '13:49:47', '13:49:59', '2024-06-17', 77, 862, 1, 716742983, 3, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(208, '2024-06-17 13:34:31', '13:48:24', '13:51:37', '2024-06-17', 78, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(209, '2024-06-17 13:38:40', '14:00:28', '14:03:44', '2024-06-17', 79, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(210, '2024-06-17 13:40:00', '13:49:08', '13:50:25', '2024-06-17', 80, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(211, '2024-06-17 13:41:01', '14:03:45', '14:09:59', '2024-06-17', 81, 862, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(212, '2024-06-17 13:41:14', '13:50:45', '14:03:35', '2024-06-17', 82, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 98, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(213, '2024-06-17 13:43:03', '14:04:47', '14:12:23', '2024-06-17', 83, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(214, '2024-06-17 13:43:34', '13:54:43', '13:55:08', '2024-06-17', 84, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(215, '2024-06-17 13:45:19', '14:12:33', '14:22:38', '2024-06-17', 85, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(216, '2024-06-17 13:57:28', '14:04:36', '14:19:17', '2024-06-17', 86, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 101, '', 1382, 'LIMETE', 0, 'mutala'),
	(217, '2024-06-17 13:59:55', '14:02:26', '14:10:22', '2024-06-17', 87, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(218, '2024-06-17 14:04:11', '14:22:43', '14:32:46', '2024-06-17', 88, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(219, '2024-06-17 14:06:11', '14:10:28', '14:49:58', '2024-06-17', 89, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(220, '2024-06-17 14:09:02', '14:27:36', '14:28:31', '2024-06-17', 90, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(221, '2024-06-17 14:12:24', '14:39:51', '14:41:45', '2024-06-17', 91, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(222, '2024-06-17 14:13:12', '14:29:53', '14:38:56', '2024-06-17', 92, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(223, '2024-06-17 14:14:29', '14:41:51', '14:44:18', '2024-06-17', 93, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(224, '2024-06-17 14:23:12', '14:44:19', '14:59:35', '2024-06-17', 94, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(225, '2024-06-17 14:23:33', '14:50:01', '15:02:44', '2024-06-17', 95, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(226, '2024-06-17 14:30:06', '15:03:11', '15:09:13', '2024-06-17', 96, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(227, '2024-06-17 15:12:58', '15:13:13', '15:30:57', '2024-06-17', 97, 869, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 869, 'RETRAIT CHEQUIER', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(229, '2024-06-18 08:10:26', '08:38:34', '08:41:55', '2024-06-18', 1, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(230, '2024-06-18 08:10:39', '08:48:33', '08:54:55', '2024-06-18', 2, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 96, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(231, '2024-06-18 08:17:36', '09:03:48', '09:03:53', '2024-06-18', 3, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 98, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(232, '2024-06-18 08:22:34', '09:28:47', '09:30:11', '2024-06-18', 4, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(233, '2024-06-18 08:23:00', '09:03:56', '09:04:02', '2024-06-18', 5, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 98, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(234, '2024-06-18 08:34:21', '08:41:57', '08:52:42', '2024-06-18', 6, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(235, '2024-06-18 08:36:55', '08:42:10', '08:48:26', '2024-06-18', 7, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(236, '2024-06-18 08:49:41', '09:51:59', '09:52:04', '2024-06-18', 8, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 101, '', 1382, 'LIMETE', 0, 'mutala'),
	(237, '2024-06-18 08:50:48', '08:52:44', '09:01:02', '2024-06-18', 9, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(238, '2024-06-18 08:54:57', '09:04:14', '09:05:40', '2024-06-18', 10, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(239, '2024-06-18 08:59:18', '09:03:30', '09:12:29', '2024-06-18', 11, 861, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 861, 'WESTERN UNION', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(240, '2024-06-18 08:59:24', '09:13:40', '09:23:10', '2024-06-18', 12, 861, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 861, 'WESTERN UNION', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(241, '2024-06-18 09:07:59', '11:00:34', '11:00:36', '2024-06-18', 13, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 101, '', 1382, 'LIMETE', 0, 'mutala'),
	(242, '2024-06-18 09:08:22', '09:12:31', '09:13:27', '2024-06-18', 14, 856, 1, 716742983, 2, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 98, '', 1382, 'LIMETE', 0, 'nyota'),
	(243, '2024-06-18 09:11:29', '09:16:10', '09:21:10', '2024-06-18', 15, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(244, '2024-06-18 09:12:21', '09:17:28', '09:18:40', '2024-06-18', 16, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(245, '2024-06-18 09:13:26', '09:21:18', '09:23:20', '2024-06-18', 17, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(246, '2024-06-18 09:17:38', '09:23:29', '09:29:26', '2024-06-18', 18, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(247, '2024-06-18 09:19:44', '09:52:02', '09:56:01', '2024-06-18', 19, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(248, '2024-06-18 09:27:25', '09:27:36', '09:42:00', '2024-06-18', 20, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(249, '2024-06-18 09:27:36', '09:31:41', '09:36:29', '2024-06-18', 21, 855, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(250, '2024-06-18 09:27:56', '09:37:13', '09:42:03', '2024-06-18', 22, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(251, '2024-06-18 09:28:08', '09:39:33', '09:40:09', '2024-06-18', 23, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(252, '2024-06-18 09:31:35', '09:56:05', '09:57:57', '2024-06-18', 24, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(253, '2024-06-18 09:38:31', '09:42:40', '09:49:46', '2024-06-18', 25, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(254, '2024-06-18 09:38:54', '09:49:50', '10:03:04', '2024-06-18', 26, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(255, '2024-06-18 09:40:28', '09:42:03', '09:52:55', '2024-06-18', 27, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(256, '2024-06-18 09:51:30', '09:52:35', '09:53:02', '2024-06-18', 28, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(257, '2024-06-18 09:55:06', '09:58:01', '10:00:11', '2024-06-18', 29, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(258, '2024-06-18 09:56:36', '10:00:14', '10:02:10', '2024-06-18', 30, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(259, '2024-06-18 09:59:34', '09:59:39', '10:11:24', '2024-06-18', 31, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(260, '2024-06-18 10:00:59', '10:02:37', '10:05:34', '2024-06-18', 32, 855, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(261, '2024-06-18 10:02:52', '10:03:11', '10:17:08', '2024-06-18', 33, 855, 1, 716742983, 2, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 107, '', 1382, 'LIMETE', 0, 'nyota'),
	(262, '2024-06-18 10:12:08', '10:14:17', '10:22:08', '2024-06-18', 34, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(263, '2024-06-18 10:17:19', '10:28:51', '10:31:42', '2024-06-18', 35, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(264, '2024-06-18 10:17:41', '10:19:43', '10:28:25', '2024-06-18', 36, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(265, '2024-06-18 10:17:50', '13:34:23', '13:35:08', '2024-06-18', 37, 856, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(266, '2024-06-18 10:20:28', '10:20:46', '10:42:53', '2024-06-18', 38, 855, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(267, '2024-06-18 10:21:08', '10:22:13', '11:54:11', '2024-06-18', 39, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(268, '2024-06-18 10:36:57', '10:41:23', '10:42:13', '2024-06-18', 40, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(269, '2024-06-18 10:57:41', '11:21:27', '11:21:31', '2024-06-18', 41, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 106, '', 1382, 'LIMETE', 0, 'mutala'),
	(270, '2024-06-18 10:58:04', '11:23:40', '11:26:07', '2024-06-18', 42, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(271, '2024-06-18 10:58:21', '11:26:11', '11:35:13', '2024-06-18', 43, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(272, '2024-06-18 11:02:21', '11:04:15', '11:18:07', '2024-06-18', 44, 855, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(273, '2024-06-18 11:06:38', '11:54:56', '11:56:05', '2024-06-18', 45, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(274, '2024-06-18 11:06:46', '11:25:05', '11:25:12', '2024-06-18', 46, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 106, '', 1382, 'LIMETE', 0, 'mutala'),
	(275, '2024-06-18 11:07:52', '11:11:16', '11:12:28', '2024-06-18', 47, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(276, '2024-06-18 11:07:59', '11:14:47', '11:20:43', '2024-06-18', 48, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(277, '2024-06-18 11:15:00', '11:34:29', '11:41:27', '2024-06-18', 49, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(278, '2024-06-18 11:15:35', '11:18:24', '11:26:40', '2024-06-18', 50, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(279, '2024-06-18 11:24:21', '11:35:17', '11:41:13', '2024-06-18', 51, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(280, '2024-06-18 11:29:34', '11:41:32', '11:42:07', '2024-06-18', 52, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(281, '2024-06-18 11:29:41', '11:43:26', '11:47:19', '2024-06-18', 53, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(282, '2024-06-18 11:32:36', '11:47:22', '11:54:38', '2024-06-18', 54, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(285, '2024-06-18 11:40:27', '11:54:44', '12:02:48', '2024-06-18', 57, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 100, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(286, '2024-06-18 11:40:51', '11:51:45', '11:51:56', '2024-06-18', 58, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(287, '2024-06-18 11:52:30', '13:04:22', '13:04:28', '2024-06-18', 59, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 98, '', 1382, 'LIMETE', 0, 'mutala'),
	(288, '2024-06-18 11:54:02', '11:54:30', '12:36:23', '2024-06-18', 60, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(289, '2024-06-18 12:03:53', '12:18:59', '12:32:50', '2024-06-18', 61, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 100, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(290, '2024-06-18 12:04:58', '12:27:10', '12:31:51', '2024-06-18', 62, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(291, '2024-06-18 12:06:08', '12:43:19', '12:43:21', '2024-06-18', 63, 855, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 98, '', 1382, 'LIMETE', 0, 'mutala'),
	(292, '2024-06-18 12:06:27', '12:15:57', '12:18:57', '2024-06-18', 64, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(293, '2024-06-18 12:09:24', '13:04:33', '13:04:39', '2024-06-18', 65, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 98, '', 1382, 'LIMETE', 0, 'mutala'),
	(294, '2024-06-18 12:10:01', '13:04:43', '13:04:49', '2024-06-18', 66, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 98, '', 1382, 'LIMETE', 0, 'mutala'),
	(295, '2024-06-18 12:13:28', '12:27:34', '12:33:48', '2024-06-18', 67, 855, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(296, '2024-06-18 12:14:38', '12:32:19', '12:35:18', '2024-06-18', 68, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(297, '2024-06-18 12:25:53', '12:33:54', '12:43:42', '2024-06-18', 69, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(298, '2024-06-18 12:26:58', '12:35:24', '12:37:12', '2024-06-18', 70, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(299, '2024-06-18 12:28:10', '12:50:53', '12:50:55', '2024-06-18', 71, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 98, '', 1382, 'LIMETE', 0, 'mutala'),
	(300, '2024-06-18 12:30:56', '12:36:14', '12:40:50', '2024-06-18', 72, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(301, '2024-06-18 12:31:49', '12:43:44', '13:17:56', '2024-06-18', 73, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(302, '2024-06-18 12:32:39', '12:51:16', '12:51:42', '2024-06-18', 74, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(303, '2024-06-18 12:33:02', '12:51:21', '12:56:26', '2024-06-18', 75, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(304, '2024-06-18 12:38:02', '12:54:20', '12:54:36', '2024-06-18', 76, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(305, '2024-06-18 12:38:11', '12:46:04', '12:50:19', '2024-06-18', 77, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(306, '2024-06-18 12:38:19', '12:50:30', '12:55:06', '2024-06-18', 78, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 98, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(307, '2024-06-18 12:48:49', '12:55:19', '12:57:58', '2024-06-18', 79, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(308, '2024-06-18 12:51:20', '12:54:41', '12:55:21', '2024-06-18', 80, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(309, '2024-06-18 12:51:29', '12:56:29', '13:11:21', '2024-06-18', 81, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(310, '2024-06-18 12:52:25', '13:07:05', '13:19:46', '2024-06-18', 82, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(311, '2024-06-18 12:52:47', '12:56:19', '12:56:41', '2024-06-18', 83, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(313, '2024-06-18 12:53:47', '12:58:02', '13:05:15', '2024-06-18', 85, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(314, '2024-06-18 12:54:10', '13:04:56', '13:05:46', '2024-06-18', 86, 856, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 98, '', 1382, 'LIMETE', 0, 'mutala'),
	(316, '2024-06-18 13:05:05', '13:11:24', '13:23:38', '2024-06-18', 88, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(317, '2024-06-18 13:05:20', '13:20:04', '13:33:37', '2024-06-18', 89, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(318, '2024-06-18 13:05:30', '13:18:01', '13:22:59', '2024-06-18', 90, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(319, '2024-06-18 13:12:27', '13:31:17', '13:33:58', '2024-06-18', 91, 855, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(320, '2024-06-18 13:14:27', '13:37:39', '13:38:07', '2024-06-18', 92, 867, 2, 716742982, 0, 716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 2, 'B', 0, 0, '', 1382, 'LIMETE', 0, 'mutala'),
	(321, '2024-06-18 13:15:06', '13:38:37', '13:38:55', '2024-06-18', 93, 855, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(322, '2024-06-18 13:16:43', '13:23:44', '13:25:05', '2024-06-18', 94, 856, 4, 716742973, 0, 716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 4, 'D', 1, 0, '', 1382, 'LIMETE', 0, 'kokanya'),
	(323, '2024-06-18 13:17:14', '13:38:59', '13:43:56', '2024-06-18', 95, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(325, '2024-06-18 13:17:44', '13:47:01', '13:47:26', '2024-06-18', 96, 855, 3, 716742972, 3, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(326, '2024-06-18 13:19:53', '13:44:07', '13:46:21', '2024-06-18', 98, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 98, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(327, '2024-06-18 13:20:04', '14:19:36', '14:19:42', '2024-06-18', 99, 856, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(328, '2024-06-18 13:20:18', '13:51:15', '13:58:36', '2024-06-18', 100, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(329, '2024-06-18 13:20:30', '14:03:44', '14:08:38', '2024-06-18', 101, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(331, '2024-06-18 13:33:55', '13:47:29', '13:50:38', '2024-06-18', 103, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(332, '2024-06-18 13:34:08', '13:54:01', '14:01:29', '2024-06-18', 104, 855, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(333, '2024-06-18 13:34:17', '14:15:31', '14:19:26', '2024-06-18', 105, 855, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(334, '2024-06-18 13:35:40', '14:08:39', '14:15:26', '2024-06-18', 106, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(335, '2024-06-18 13:39:39', '14:10:04', '14:19:12', '2024-06-18', 107, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 98, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(336, '2024-06-18 13:41:34', '14:20:23', '14:23:27', '2024-06-18', 108, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(337, '2024-06-18 13:41:52', '14:24:26', '14:26:57', '2024-06-18', 109, 856, 1, 716742983, 0, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(338, '2024-06-18 13:42:01', '14:26:58', '14:38:46', '2024-06-18', 110, 856, 1, 716742983, 3, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(339, '2024-06-18 13:45:28', '14:01:49', '14:10:02', '2024-06-18', 111, 863, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(340, '2024-06-18 13:46:16', '13:50:49', '13:53:28', '2024-06-18', 112, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 98, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(341, '2024-06-18 13:47:01', '14:38:49', '14:39:06', '2024-06-18', 113, 856, 1, 716742983, 3, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(342, '2024-06-18 13:47:55', '14:39:08', '14:39:31', '2024-06-18', 114, 856, 1, 716742983, 3, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(344, '2024-06-18 13:56:00', '14:19:53', '14:22:40', '2024-06-18', 116, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(345, '2024-06-18 13:57:27', '14:23:36', '14:24:14', '2024-06-18', 117, 855, 1, 716742983, 3, 716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 1, 'A', 0, 0, '', 1382, 'LIMETE', 0, 'nyota'),
	(346, '2024-06-18 14:01:22', '14:22:43', '14:24:45', '2024-06-18', 118, 862, 3, 716742972, 0, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 0, '', 1382, 'LIMETE', 0, 'nyamabo'),
	(347, '2024-06-18 14:09:08', '14:32:58', '14:33:48', '2024-06-18', 119, 855, 3, 716742972, 2, 716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 3, 'C', 0, 100, '', 1382, 'LIMETE', 0, 'nyamabo');

CREATE TABLE IF NOT EXISTS `tb_region` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_nom` varchar(255) NOT NULL,
  `region_status` int(11) NOT NULL DEFAULT 1,
  `partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `tb_region_region_nom_uindex` (`region_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_region_agence` (
  `region_agence_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) NOT NULL,
  `agence_id` int(11) NOT NULL,
  PRIMARY KEY (`region_agence_id`),
  UNIQUE KEY `tb_region_agence_region_id_agence_id_uindex` (`region_id`,`agence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_nom` varchar(45) NOT NULL,
  `role_status` int(11) NOT NULL,
  `partenaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_role_nom_partenaireid_key` (`role_nom`,`partenaire_id`),
  KEY `role_partenaire` (`partenaire_id`) USING BTREE,
  CONSTRAINT `role_partenaireid_fkey` FOREIGN KEY (`partenaire_id`) REFERENCES `tb_partenaire` (`partenaireid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_role` (`role_id`, `role_nom`, `role_status`, `partenaire_id`) VALUES
	(39, 'admin', 1, 8),
	(41, 'Josam', 1, 8),
	(42, 'superviseur', 1, 8),
	(43, 'guichetier', 1, 8),
	(69, 'Ecobank', 1, 16),
	(71, 'GUICHETIER', 1, 16),
	(72, 'SUPERVISEUR', 1, 16),
	(73, 'COMMERCIAL', 1, 16),
	(74, 'Admin', 1, 16),
	(3145, 'CAISSIER', 1, 16),
	(3146, 'OPERATEUR', 1, 16),
	(3147, 'CLIENTELE', 1, 16);

CREATE TABLE IF NOT EXISTS `tb_role_privilege` (
  `role_privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  PRIMARY KEY (`role_privilege_id`),
  UNIQUE KEY `roleprivilege_roleid_privilegeid_key` (`role_id`,`privilege_id`),
  KEY `role_privilege` (`role_id`) USING BTREE,
  KEY `role_privilege2` (`privilege_id`) USING BTREE,
  CONSTRAINT `roleprivilege_privilegeid_fkey` FOREIGN KEY (`privilege_id`) REFERENCES `tb_privilege` (`privilegeid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roleprivilege_roleid_fkey` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=524215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_role_privilege` (`role_privilege_id`, `role_id`, `privilege_id`) VALUES
	(80, 39, 25),
	(82, 39, 32),
	(81, 39, 33),
	(245, 39, 34),
	(247, 39, 35),
	(248, 39, 36),
	(250, 39, 37),
	(251, 39, 38),
	(252, 39, 39),
	(253, 39, 40),
	(254, 39, 41),
	(68, 41, 25),
	(331, 41, 26),
	(330, 41, 28),
	(71, 41, 32),
	(72, 41, 33),
	(73, 41, 34),
	(74, 41, 35),
	(75, 41, 36),
	(76, 41, 37),
	(77, 41, 38),
	(78, 41, 39),
	(79, 41, 40),
	(84, 41, 41),
	(85, 42, 25),
	(86, 42, 32),
	(87, 42, 33),
	(246, 42, 34),
	(88, 42, 35),
	(249, 42, 36),
	(89, 42, 37),
	(90, 42, 38),
	(363, 42, 40),
	(91, 42, 41),
	(92, 43, 41),
	(332, 69, 25),
	(335, 69, 32),
	(336, 69, 33),
	(337, 69, 34),
	(338, 69, 35),
	(339, 69, 36),
	(340, 69, 37),
	(341, 69, 38),
	(342, 69, 39),
	(343, 69, 40),
	(344, 69, 41),
	(358, 71, 41),
	(359, 72, 35),
	(361, 72, 38),
	(362, 72, 40),
	(360, 72, 41),
	(364, 73, 41),
	(365, 74, 25),
	(366, 74, 32),
	(367, 74, 33),
	(368, 74, 34),
	(369, 74, 35),
	(370, 74, 36),
	(371, 74, 38),
	(372, 74, 40),
	(373, 74, 41),
	(524189, 3145, 41),
	(524190, 3146, 41),
	(524191, 3147, 41);

CREATE TABLE IF NOT EXISTS `tb_role_user` (
  `role_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_user_id`),
  UNIQUE KEY `ind_roleid_userid` (`role_id`,`user_id`),
  KEY `role_usser` (`role_id`) USING BTREE,
  KEY `user_role` (`user_id`) USING BTREE,
  CONSTRAINT `roleusser` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userrole` FOREIGN KEY (`user_id`) REFERENCES `tb_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2960 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_role_user` (`role_user_id`, `role_id`, `user_id`) VALUES
	(2823, 69, 1092);

CREATE TABLE IF NOT EXISTS `tb_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(50) NOT NULL,
  `service_desc` text DEFAULT NULL,
  `service_create_user_id` int(11) DEFAULT NULL,
  `service_modify_user_id` int(11) DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_modify_date` date DEFAULT NULL,
  `service_status` int(11) DEFAULT NULL,
  `service_icon` text DEFAULT NULL,
  `service_priority` int(11) DEFAULT 0,
  `service_mono_file` int(11) DEFAULT 0,
  `service_key` varchar(250) DEFAULT '0',
  PRIMARY KEY (`service_id`),
  UNIQUE KEY `tb_service_pk` (`service_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1465 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_service` (`service_id`, `service_name`, `service_desc`, `service_create_user_id`, `service_modify_user_id`, `service_create_date`, `service_modify_date`, `service_status`, `service_icon`, `service_priority`, `service_mono_file`, `service_key`) VALUES
	(855, 'RETRAIT', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '9598e327-31df-4a1d-845e-4173b558a252'),
	(856, 'DEPOT', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'f9c37006-d5b9-44a2-923e-61cd355e39fe'),
	(857, 'OUVERTURE COMPTE', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'e6ae5fd3-eb7e-49a8-8c56-5e60a53f0861'),
	(858, 'COMMANDE CARTE', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'a5c95e57-91c1-4c42-b6f7-3525ef810f5b'),
	(859, 'COMMANDE CHEQUIER', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'be69baf5-01bb-42e8-a7c7-045006f0d06c'),
	(860, 'RAPID TRANSFERT', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'feda7ea5-5937-42dd-b7b9-435d546d9419'),
	(861, 'WESTERN UNION', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'baf3dd4a-1db0-49bc-a46d-f15b4933e88f'),
	(862, 'CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '06b241e8-8081-4621-85ec-f3cca9d30d89'),
	(863, 'VISA USA', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '266d87d5-c225-48e1-a72e-98ba131a2f9c'),
	(864, 'REACTIVATION COMPTE', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '9ce817c0-9d6a-4d5e-a48d-f6792d0a10c6'),
	(865, 'RELEVE BANCAIRE', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '5c57e2c8-d366-46ad-a03b-eee35b692515'),
	(867, 'AIRTEL MONEY', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '9851872e-4733-4616-b5ea-da6a2ceff984'),
	(868, 'REEDITION PIN', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '2a5ce9cf-77f6-455b-bad0-b01511348d8d'),
	(869, 'RETRAIT CHEQUIER', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '7a5f0fee-34a7-4ac5-bcf0-cd22968aac95'),
	(870, 'RENOUVELLEMENT CARTE', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'a025898f-c834-4c88-b355-c7a39ba71209'),
	(871, 'TRANSFERT NATIONAL', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '30566df0-ee2d-4fc5-a63d-79fc2dca2cbc'),
	(872, 'TRANSFERT INTERNATIONAL', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 'eb88eb2f-4672-4c6c-8e6f-2c90d3319c3d'),
	(883, 'ACHAT CARTE CASH EXPRESS', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '238df4b4-8d4a-4f38-b21a-b567f5c012d8'),
	(884, 'RÉCLAMATION', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '794db861-33fe-4114-b30b-ed2d908bf49a'),
	(887, 'ECOBANK MOBILE', '', NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '0b33b7d8-5463-43e9-bc21-aa097a6e90e1');

CREATE TABLE IF NOT EXISTS `tb_service_agence` (
  `service_agence_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `agence_id` int(11) NOT NULL,
  PRIMARY KEY (`service_agence_id`),
  KEY `FK_tb_service_agence_agence_id` (`agence_id`),
  KEY `FK_tb_service_agence_service_id` (`service_id`),
  CONSTRAINT `FK_tb_service_agence_agence_id` FOREIGN KEY (`agence_id`) REFERENCES `tb_agence` (`agence_id`),
  CONSTRAINT `FK_tb_service_agence_service_id` FOREIGN KEY (`service_id`) REFERENCES `tb_service` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_service_guichet_type` (
  `service_guichet_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT 0,
  `guichet_id` int(11) DEFAULT 0,
  PRIMARY KEY (`service_guichet_type_id`),
  KEY `FK__tb_guichet_type` (`guichet_id`),
  KEY `FK__tb_service` (`service_id`),
  CONSTRAINT `FK__tb_guichet_type` FOREIGN KEY (`guichet_id`) REFERENCES `tb_guichet_type` (`guichet_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK__tb_service` FOREIGN KEY (`service_id`) REFERENCES `tb_service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_service_manager` (
  `service_manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_manager_name` varchar(100) NOT NULL,
  `service_manager_desc` varchar(100) DEFAULT 'NULL',
  `service_manager_create_user_id` int(11) DEFAULT NULL,
  `service_manager_modify_user_id` int(11) DEFAULT NULL,
  `service_manager_create_date` datetime DEFAULT NULL,
  `service_manager_modify_date` datetime DEFAULT NULL,
  `icon_name` text DEFAULT NULL,
  `service_manager_status` tinyint(1) NOT NULL DEFAULT 1,
  `service_manager_key` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`service_manager_id`),
  UNIQUE KEY `Index 2` (`service_manager_name`)
) ENGINE=InnoDB AUTO_INCREMENT=195557 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_service_manager` (`service_manager_id`, `service_manager_name`, `service_manager_desc`, `service_manager_create_user_id`, `service_manager_modify_user_id`, `service_manager_create_date`, `service_manager_modify_date`, `icon_name`, `service_manager_status`, `service_manager_key`) VALUES
	(195551, 'CLIENTELE', '', NULL, NULL, NULL, NULL, NULL, 1, '6b7df309-12fa-49de-a7d1-05a59421b988'),
	(195552, 'CAISSE ', '', NULL, NULL, NULL, NULL, NULL, 1, '2f96a161-6b7e-4ede-84a3-249f1e4a08f9'),
	(195555, '', '', NULL, NULL, NULL, NULL, NULL, 1, '2ab57c72-b5f2-4ed2-a43f-fd574e73d89a'),
	(195556, '.', '', NULL, NULL, NULL, NULL, NULL, 1, 'c954c9ea-3f71-4f9c-9cda-1b70efc13e80');

CREATE TABLE IF NOT EXISTS `tb_service_medecin` (
  `service_medecin_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `medecin_id` int(11) NOT NULL,
  PRIMARY KEY (`service_medecin_id`),
  KEY `FK_tb_service_medecin_service_id` (`service_id`),
  KEY `FK_tb_service_medecin_medecin_id` (`medecin_id`),
  CONSTRAINT `FK_tb_service_medecin_medecin_id` FOREIGN KEY (`medecin_id`) REFERENCES `tb_users` (`user_id`),
  CONSTRAINT `FK_tb_service_medecin_service_id` FOREIGN KEY (`service_id`) REFERENCES `tb_service` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_seuils_alert` (
  `seuils_alert_id` int(11) NOT NULL AUTO_INCREMENT,
  `seuils_alert_premier` int(11) NOT NULL DEFAULT 10,
  `seuils_alert_deuxieme` int(11) NOT NULL DEFAULT 20,
  `seuils_alert_status` tinyint(1) NOT NULL DEFAULT 1,
  `seuils_alert_service` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`seuils_alert_id`),
  KEY `FK_tb_seuils_alert_tb_service` (`seuils_alert_service`),
  CONSTRAINT `FK_tb_seuils_alert_tb_service` FOREIGN KEY (`seuils_alert_service`) REFERENCES `tb_service` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_seuils_alert` (`seuils_alert_id`, `seuils_alert_premier`, `seuils_alert_deuxieme`, `seuils_alert_status`, `seuils_alert_service`) VALUES
	(192, 10, 20, 1, 867),
	(193, 10, 20, 1, 858),
	(194, 10, 20, 1, 862),
	(195, 10, 20, 1, 856),
	(196, 10, 20, 1, 859),
	(198, 10, 20, 1, 868),
	(199, 10, 20, 1, 857),
	(200, 10, 20, 1, 864),
	(201, 10, 20, 1, 860),
	(202, 10, 20, 1, 870),
	(203, 10, 20, 1, 864),
	(204, 10, 20, 1, 865),
	(205, 10, 20, 1, 855),
	(206, 10, 20, 1, 869),
	(207, 10, 20, 1, 872),
	(208, 10, 20, 1, 871),
	(209, 10, 20, 1, 863),
	(210, 10, 20, 1, 861);

CREATE TABLE IF NOT EXISTS `tb_sugestion` (
  `sugestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `sugestion_value` varchar(95) NOT NULL,
  `sugestion_status` tinyint(1) NOT NULL DEFAULT 1,
  `sugestion_create_user` int(11) DEFAULT NULL,
  `sugestion_create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sugestion_id`),
  UNIQUE KEY `tb_sugestion_sugestion_value_uindex` (`sugestion_value`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_sugestion` (`sugestion_id`, `sugestion_value`, `sugestion_status`, `sugestion_create_user`, `sugestion_create_date`) VALUES
	(54, 'La qualité de service', 1, NULL, NULL),
	(55, 'Le temps d\'attente', 1, NULL, NULL),
	(56, 'La qualité de billet de banques', 1, NULL, NULL),
	(57, 'Le taux de change', 1, NULL, NULL),
	(58, 'les procédures', 1, NULL, NULL);

CREATE TABLE IF NOT EXISTS `tb_t` (
  `ticket_id` int(11) NOT NULL DEFAULT 0,
  `ticket_date` datetime NOT NULL,
  `ticket_heure_debut` time DEFAULT '00:00:00',
  `ticket_heure_fin` time DEFAULT '00:00:00',
  `ticket_date2` date NOT NULL,
  `ticket_number` int(11) NOT NULL,
  `ticket_service_id` int(11) NOT NULL,
  `ticket_guichet` int(11) DEFAULT 0,
  `ticket_user_id` int(11) DEFAULT 0,
  `ticket_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_date` datetime NOT NULL,
  `ticket_heure_debut` time DEFAULT '00:00:00',
  `ticket_heure_fin` time DEFAULT '00:00:00',
  `ticket_date2` date NOT NULL,
  `ticket_number` int(11) NOT NULL,
  `ticket_service_id` int(11) NOT NULL,
  `ticket_guichet` int(11) DEFAULT 0,
  `ticket_user_id` int(11) DEFAULT 0,
  `ticket_status` int(11) NOT NULL DEFAULT 1,
  `ticket_client_number` varchar(20) DEFAULT NULL,
  `ticket_is_vip` int(11) DEFAULT NULL,
  `ticket_raison_id` int(11) DEFAULT NULL,
  `ticket_agence_id` int(11) DEFAULT NULL,
  `ticket_agence_nom` varchar(50) DEFAULT NULL,
  `ticket_syncronized` int(11) DEFAULT 0,
  `ticket_user_login` varchar(50) DEFAULT NULL,
  `ticket_service_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  UNIQUE KEY `index_ticket_server` (`ticket_date2`,`ticket_number`,`ticket_agence_id`),
  KEY `FK_ticket_service_id` (`ticket_service_id`),
  KEY `tiket_key_index1` (`ticket_date2`),
  KEY `tiket_key_index2` (`ticket_user_id`),
  KEY `tiket_key_index3` (`ticket_service_id`),
  KEY `tiket_key_index4` (`ticket_agence_id`),
  KEY `tiket_key_index5` (`ticket_guichet`),
  KEY `tiket_key_index6` (`ticket_status`),
  CONSTRAINT `FK_ticket_service_id` FOREIGN KEY (`ticket_service_id`) REFERENCES `tb_service` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_ticket` (`ticket_id`, `ticket_date`, `ticket_heure_debut`, `ticket_heure_fin`, `ticket_date2`, `ticket_number`, `ticket_service_id`, `ticket_guichet`, `ticket_user_id`, `ticket_status`, `ticket_client_number`, `ticket_is_vip`, `ticket_raison_id`, `ticket_agence_id`, `ticket_agence_nom`, `ticket_syncronized`, `ticket_user_login`, `ticket_service_name`) VALUES
	(51, '2024-05-08 12:53:13', '12:56:46', '13:08:15', '2024-05-08', 1, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(52, '2024-05-08 13:01:17', '13:01:30', '13:02:08', '2024-05-08', 2, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(53, '2024-05-08 13:04:57', '13:08:27', '13:26:28', '2024-05-08', 3, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(54, '2024-05-08 13:05:16', '13:11:04', '13:14:51', '2024-05-08', 4, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(55, '2024-05-08 13:05:48', '13:15:13', '13:16:27', '2024-05-08', 5, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(56, '2024-05-08 13:09:13', '13:25:34', '13:25:51', '2024-05-08', 6, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(57, '2024-05-08 13:12:39', '13:28:06', '13:38:20', '2024-05-08', 7, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(58, '2024-05-08 13:24:30', '13:33:38', '13:34:10', '2024-05-08', 8, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(59, '2024-05-08 13:25:47', '13:41:45', '13:42:09', '2024-05-08', 9, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(60, '2024-05-08 13:26:08', '13:47:02', '13:49:44', '2024-05-08', 10, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(61, '2024-05-08 13:26:38', '13:38:26', '13:48:46', '2024-05-08', 11, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(62, '2024-05-08 13:29:08', '13:48:55', '13:54:49', '2024-05-08', 12, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(63, '2024-05-08 13:37:20', '13:49:48', '13:52:17', '2024-05-08', 13, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(64, '2024-05-08 13:37:37', '13:40:31', '13:41:33', '2024-05-08', 14, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(65, '2024-05-08 13:48:46', '14:39:05', '15:29:59', '2024-05-08', 15, 863, 1, 716742972, 0, '', 0, 96, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(66, '2024-05-08 13:59:16', '14:03:25', '14:03:42', '2024-05-08', 16, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(67, '2024-05-08 14:05:02', '14:13:14', '14:21:58', '2024-05-08', 17, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(68, '2024-05-08 14:12:29', '14:18:00', '14:23:03', '2024-05-08', 18, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(69, '2024-05-08 14:14:16', '14:23:48', '14:24:08', '2024-05-08', 19, 856, 2, 716742973, 0, '', 0, 96, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(70, '2024-05-08 14:15:15', '14:22:49', '14:31:22', '2024-05-08', 20, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(71, '2024-05-08 14:15:37', '14:31:18', '14:46:57', '2024-05-08', 21, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(72, '2024-05-08 14:25:50', '14:31:33', '14:41:25', '2024-05-08', 22, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(73, '2024-05-08 14:35:04', '14:41:32', '14:48:08', '2024-05-08', 23, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(74, '2024-05-08 14:35:25', '14:56:17', '15:02:58', '2024-05-08', 24, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(75, '2024-05-08 14:35:33', '15:03:05', '15:03:48', '2024-05-08', 25, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(76, '2024-05-08 14:37:02', '15:03:55', '15:04:27', '2024-05-08', 26, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(77, '2024-05-08 14:46:24', '14:47:06', '14:47:31', '2024-05-08', 27, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(78, '2024-05-08 14:47:37', '14:48:15', '14:54:35', '2024-05-08', 28, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(79, '2024-05-08 14:56:27', '15:35:14', '00:00:00', '2024-05-08', 29, 863, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(80, '2024-05-08 14:56:36', '15:04:37', '15:25:44', '2024-05-08', 30, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(81, '2024-05-08 14:56:54', '15:20:06', '15:24:51', '2024-05-08', 31, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(82, '2024-05-08 14:58:54', '15:02:33', '15:03:43', '2024-05-08', 32, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(83, '2024-05-08 15:02:44', '15:25:53', '15:32:03', '2024-05-08', 33, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(84, '2024-05-08 15:05:52', '15:30:09', '00:00:00', '2024-05-08', 34, 856, 0, 716742972, 99, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(85, '2024-05-08 15:26:43', '15:32:15', '15:37:49', '2024-05-08', 35, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(86, '2024-05-08 15:27:26', '15:33:59', '15:45:58', '2024-05-08', 36, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(87, '2024-05-08 15:36:17', '15:39:38', '15:48:25', '2024-05-08', 37, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(88, '2024-05-09 08:01:17', '00:00:00', '00:00:00', '2024-05-09', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(89, '2024-05-09 08:01:40', '00:00:00', '00:00:00', '2024-05-09', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(90, '2024-05-09 08:01:50', '00:00:00', '00:00:00', '2024-05-09', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(91, '2024-05-09 08:02:07', '00:00:00', '00:00:00', '2024-05-09', 4, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(92, '2024-05-09 08:05:33', '00:00:00', '00:00:00', '2024-05-09', 5, 862, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'cash express'),
	(93, '2024-05-09 08:08:19', '00:00:00', '00:00:00', '2024-05-09', 6, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(94, '2024-05-09 08:08:44', '00:00:00', '00:00:00', '2024-05-09', 7, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(95, '2024-05-09 08:10:06', '00:00:00', '00:00:00', '2024-05-09', 8, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(96, '2024-05-09 08:22:03', '00:00:00', '00:00:00', '2024-05-09', 9, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(97, '2024-05-09 08:23:42', '00:00:00', '00:00:00', '2024-05-09', 10, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(98, '2024-05-09 08:24:06', '00:00:00', '00:00:00', '2024-05-09', 11, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(99, '2024-05-09 09:05:46', '00:00:00', '00:00:00', '2024-05-09', 12, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(100, '2024-05-09 09:06:05', '00:00:00', '00:00:00', '2024-05-09', 13, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(101, '2024-05-09 09:06:45', '00:00:00', '00:00:00', '2024-05-09', 14, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(102, '2024-05-09 09:07:10', '00:00:00', '00:00:00', '2024-05-09', 15, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(103, '2024-05-10 10:13:10', '00:00:00', '00:00:00', '2024-05-10', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(104, '2024-05-10 17:41:26', '00:00:00', '00:00:00', '2024-05-10', 2, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(105, '2024-05-11 11:58:10', '00:00:00', '00:00:00', '2024-05-11', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(106, '2024-05-13 16:33:19', '00:00:00', '00:00:00', '2024-05-13', 1, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(107, '2024-05-14 07:57:08', '00:00:00', '00:00:00', '2024-05-14', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(108, '2024-05-14 07:57:18', '00:00:00', '00:00:00', '2024-05-14', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(109, '2024-05-14 07:57:30', '00:00:00', '00:00:00', '2024-05-14', 3, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(110, '2024-05-14 11:15:51', '00:00:00', '00:00:00', '2024-05-14', 4, 859, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'commande chequier'),
	(111, '2024-05-14 11:16:06', '00:00:00', '00:00:00', '2024-05-14', 5, 870, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'renouvellement carte'),
	(112, '2024-05-14 11:16:15', '00:00:00', '00:00:00', '2024-05-14', 6, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(113, '2024-05-14 11:17:12', '00:00:00', '00:00:00', '2024-05-14', 7, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(114, '2024-05-14 11:18:21', '00:00:00', '00:00:00', '2024-05-14', 8, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(115, '2024-05-14 11:25:08', '00:00:00', '00:00:00', '2024-05-14', 9, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(116, '2024-05-14 12:04:49', '00:00:00', '00:00:00', '2024-05-14', 10, 869, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait chequier'),
	(117, '2024-05-14 12:12:48', '00:00:00', '00:00:00', '2024-05-14', 11, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(118, '2024-05-14 17:13:59', '00:00:00', '00:00:00', '2024-05-14', 12, 862, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'cash express'),
	(119, '2024-05-15 11:41:12', '00:00:00', '00:00:00', '2024-05-15', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(120, '2024-05-15 12:52:33', '00:00:00', '00:00:00', '2024-05-15', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(121, '2024-05-15 15:19:37', '00:00:00', '00:00:00', '2024-05-15', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(122, '2024-05-16 09:28:01', '00:00:00', '00:00:00', '2024-05-16', 1, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(123, '2024-05-16 09:29:19', '00:00:00', '00:00:00', '2024-05-16', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(124, '2024-05-16 09:51:03', '00:00:00', '00:00:00', '2024-05-16', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(125, '2024-05-20 09:45:25', '00:00:00', '00:00:00', '2024-05-20', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(126, '2024-05-20 09:54:37', '00:00:00', '00:00:00', '2024-05-20', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(127, '2024-05-20 10:46:21', '00:00:00', '00:00:00', '2024-05-20', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(128, '2024-06-07 13:11:37', '00:00:00', '00:00:00', '2024-06-07', 1, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(129, '2024-06-14 08:28:33', '00:00:00', '00:00:00', '2024-06-14', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(130, '2024-06-14 14:10:54', '00:00:00', '00:00:00', '2024-06-14', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(131, '2024-06-17 09:54:01', '09:54:59', '09:55:50', '2024-06-17', 1, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(132, '2024-06-17 09:54:08', '09:55:57', '09:56:09', '2024-06-17', 2, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(133, '2024-06-17 09:54:14', '10:32:42', '10:37:50', '2024-06-17', 3, 860, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'rapid transfert'),
	(134, '2024-06-17 09:54:19', '09:57:33', '09:57:21', '2024-06-17', 4, 861, 2, 716742982, 99, '', 0, 106, 1382, 'LIMETE', 0, 'mutala', 'western union'),
	(135, '2024-06-17 10:13:49', '10:16:16', '10:16:59', '2024-06-17', 5, 856, 1, 716742983, 0, '', 0, 97, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(136, '2024-06-17 10:13:53', '10:30:57', '10:30:34', '2024-06-17', 6, 856, 3, 716742972, 99, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(137, '2024-06-17 10:13:57', '10:38:25', '10:38:57', '2024-06-17', 7, 860, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'rapid transfert'),
	(138, '2024-06-17 10:14:04', '11:35:08', '11:35:33', '2024-06-17', 8, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(139, '2024-06-17 10:14:08', '10:39:03', '10:41:41', '2024-06-17', 9, 856, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(140, '2024-06-17 10:46:52', '10:59:05', '00:00:00', '2024-06-17', 10, 863, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'visa usa'),
	(141, '2024-06-17 10:47:05', '11:35:41', '11:36:03', '2024-06-17', 11, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(142, '2024-06-17 10:50:48', '12:55:23', '12:58:23', '2024-06-17', 12, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(143, '2024-06-17 10:51:44', '12:58:25', '12:59:06', '2024-06-17', 13, 862, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(144, '2024-06-17 10:53:07', '10:57:09', '00:00:00', '2024-06-17', 14, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(145, '2024-06-17 10:56:50', '10:57:10', '10:57:44', '2024-06-17', 15, 856, 4, 716742973, 3, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(146, '2024-06-17 10:57:15', '11:00:12', '11:00:01', '2024-06-17', 16, 863, 4, 716742973, 99, '', 0, 97, 1382, 'LIMETE', 0, 'kokanya', 'visa usa'),
	(147, '2024-06-17 10:58:29', '11:02:26', '00:00:00', '2024-06-17', 17, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(148, '2024-06-17 11:01:16', '11:43:00', '11:48:47', '2024-06-17', 18, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(149, '2024-06-17 11:01:25', '11:36:28', '11:37:01', '2024-06-17', 19, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(150, '2024-06-17 11:04:14', '11:48:53', '11:49:38', '2024-06-17', 20, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(151, '2024-06-17 11:04:36', '11:51:20', '00:00:00', '2024-06-17', 21, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(152, '2024-06-17 11:15:16', '12:59:07', '13:03:09', '2024-06-17', 22, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(153, '2024-06-17 11:17:19', '13:03:10', '13:05:57', '2024-06-17', 23, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(154, '2024-06-17 11:19:38', '11:51:21', '00:00:00', '2024-06-17', 24, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(155, '2024-06-17 11:20:21', '13:05:58', '13:12:11', '2024-06-17', 25, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(156, '2024-06-17 11:23:27', '11:51:22', '11:52:48', '2024-06-17', 26, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(157, '2024-06-17 11:23:37', '11:51:57', '11:52:29', '2024-06-17', 27, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(158, '2024-06-17 11:27:42', '11:39:11', '11:40:05', '2024-06-17', 28, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(159, '2024-06-17 11:27:49', '11:59:11', '12:08:24', '2024-06-17', 29, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(160, '2024-06-17 11:28:10', '11:41:25', '11:51:14', '2024-06-17', 30, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(161, '2024-06-17 11:38:42', '12:04:10', '12:04:24', '2024-06-17', 31, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(162, '2024-06-17 11:39:01', '13:12:12', '13:18:01', '2024-06-17', 32, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(163, '2024-06-17 11:39:14', '12:17:32', '12:17:40', '2024-06-17', 33, 863, 3, 716742972, 0, '', 0, 102, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(164, '2024-06-17 11:39:27', '11:56:54', '11:57:37', '2024-06-17', 34, 867, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(165, '2024-06-17 11:53:10', '12:18:25', '12:34:03', '2024-06-17', 35, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(166, '2024-06-17 11:53:31', '12:10:56', '12:28:10', '2024-06-17', 36, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(167, '2024-06-17 11:58:27', '12:12:27', '12:13:03', '2024-06-17', 37, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(168, '2024-06-17 11:58:37', '13:18:02', '13:26:00', '2024-06-17', 38, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(169, '2024-06-17 11:58:45', '13:26:02', '13:32:06', '2024-06-17', 39, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(170, '2024-06-17 11:59:01', '13:32:07', '13:35:57', '2024-06-17', 40, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(171, '2024-06-17 12:06:08', '12:15:24', '12:15:38', '2024-06-17', 41, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(172, '2024-06-17 12:06:19', '12:34:10', '12:34:47', '2024-06-17', 42, 863, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(173, '2024-06-17 12:14:23', '14:13:55', '14:19:17', '2024-06-17', 43, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(174, '2024-06-17 12:14:38', '12:16:37', '12:17:53', '2024-06-17', 44, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(175, '2024-06-17 12:16:28', '13:35:58', '13:37:57', '2024-06-17', 45, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(176, '2024-06-17 12:17:17', '13:37:58', '13:39:52', '2024-06-17', 46, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(177, '2024-06-17 12:19:13', '13:39:53', '13:42:52', '2024-06-17', 47, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(178, '2024-06-17 12:20:48', '12:29:25', '12:29:52', '2024-06-17', 48, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(179, '2024-06-17 12:24:50', '12:26:35', '12:29:15', '2024-06-17', 49, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(180, '2024-06-17 12:26:38', '12:28:22', '12:37:24', '2024-06-17', 50, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(181, '2024-06-17 12:31:06', '12:50:55', '12:57:25', '2024-06-17', 51, 855, 2, 716742982, 3, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(182, '2024-06-17 12:31:17', '12:44:09', '12:48:23', '2024-06-17', 52, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(183, '2024-06-17 12:32:46', '12:33:03', '12:34:59', '2024-06-17', 53, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(184, '2024-06-17 12:33:24', '12:48:28', '12:56:36', '2024-06-17', 54, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(185, '2024-06-17 12:33:34', '12:37:32', '12:43:59', '2024-06-17', 55, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(186, '2024-06-17 12:41:56', '13:42:54', '13:45:41', '2024-06-17', 56, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(187, '2024-06-17 12:47:05', '12:57:29', '12:58:04', '2024-06-17', 57, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(188, '2024-06-17 12:48:49', '12:56:41', '13:55:00', '2024-06-17', 58, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(189, '2024-06-17 12:49:38', '13:01:23', '13:05:22', '2024-06-17', 59, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(190, '2024-06-17 12:51:20', '14:33:24', '14:33:56', '2024-06-17', 60, 856, 3, 716742972, 0, '', 0, 102, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(191, '2024-06-17 13:02:13', '13:06:16', '13:07:04', '2024-06-17', 61, 856, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(192, '2024-06-17 13:02:22', '13:06:31', '13:06:53', '2024-06-17', 62, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(193, '2024-06-17 13:02:53', '13:45:42', '13:48:31', '2024-06-17', 63, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(194, '2024-06-17 13:03:28', '13:07:19', '13:20:43', '2024-06-17', 64, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(195, '2024-06-17 13:13:33', '13:20:53', '13:37:26', '2024-06-17', 65, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(196, '2024-06-17 13:13:52', '13:14:02', '13:16:09', '2024-06-17', 66, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(197, '2024-06-17 13:21:05', '13:26:54', '13:31:01', '2024-06-17', 67, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(198, '2024-06-17 13:21:15', '13:48:09', '13:48:18', '2024-06-17', 68, 855, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(199, '2024-06-17 13:21:45', '13:34:53', '13:35:23', '2024-06-17', 69, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(200, '2024-06-17 13:22:03', '14:10:05', '14:13:39', '2024-06-17', 70, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(201, '2024-06-17 13:27:41', '13:39:41', '00:00:00', '2024-06-17', 71, 856, 0, 716742982, 99, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(202, '2024-06-17 13:28:54', '13:38:46', '13:39:37', '2024-06-17', 72, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(203, '2024-06-17 13:30:38', '13:40:38', '13:48:03', '2024-06-17', 73, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(204, '2024-06-17 13:31:02', '13:43:11', '13:47:58', '2024-06-17', 74, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(205, '2024-06-17 13:31:34', '13:48:34', '13:49:43', '2024-06-17', 75, 862, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(206, '2024-06-17 13:34:17', '14:19:22', '14:38:53', '2024-06-17', 76, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(207, '2024-06-17 13:34:24', '13:49:47', '13:49:59', '2024-06-17', 77, 862, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(208, '2024-06-17 13:34:31', '13:48:24', '13:51:37', '2024-06-17', 78, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(209, '2024-06-17 13:38:40', '14:00:28', '14:03:44', '2024-06-17', 79, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(210, '2024-06-17 13:40:00', '13:49:08', '13:50:25', '2024-06-17', 80, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(211, '2024-06-17 13:41:01', '14:03:45', '14:09:59', '2024-06-17', 81, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(212, '2024-06-17 13:41:14', '13:50:45', '14:03:35', '2024-06-17', 82, 863, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(213, '2024-06-17 13:43:03', '14:04:47', '14:12:23', '2024-06-17', 83, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(214, '2024-06-17 13:43:34', '13:54:43', '13:55:08', '2024-06-17', 84, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(215, '2024-06-17 13:45:19', '14:12:33', '14:22:38', '2024-06-17', 85, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(216, '2024-06-17 13:57:28', '14:04:36', '14:19:17', '2024-06-17', 86, 856, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(217, '2024-06-17 13:59:55', '14:02:26', '14:10:22', '2024-06-17', 87, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(218, '2024-06-17 14:04:11', '14:22:43', '14:32:46', '2024-06-17', 88, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(219, '2024-06-17 14:06:11', '14:10:28', '14:49:58', '2024-06-17', 89, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(220, '2024-06-17 14:09:02', '14:27:36', '14:28:31', '2024-06-17', 90, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(221, '2024-06-17 14:12:24', '14:39:51', '14:41:45', '2024-06-17', 91, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(222, '2024-06-17 14:13:12', '14:29:53', '14:38:56', '2024-06-17', 92, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(223, '2024-06-17 14:14:29', '14:41:51', '14:44:18', '2024-06-17', 93, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(224, '2024-06-17 14:23:12', '14:44:19', '14:59:35', '2024-06-17', 94, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(225, '2024-06-17 14:23:33', '14:50:01', '15:02:44', '2024-06-17', 95, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(226, '2024-06-17 14:30:06', '15:03:11', '15:09:13', '2024-06-17', 96, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(227, '2024-06-17 15:12:58', '15:13:13', '15:30:57', '2024-06-17', 97, 869, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait chequier'),
	(228, '2024-06-17 15:22:55', '15:24:39', '00:00:00', '2024-06-17', 98, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(229, '2024-06-18 08:10:26', '08:38:34', '08:41:55', '2024-06-18', 1, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(230, '2024-06-18 08:10:39', '08:48:33', '08:54:55', '2024-06-18', 2, 856, 3, 716742972, 0, '', 0, 96, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(231, '2024-06-18 08:17:36', '09:03:48', '09:03:53', '2024-06-18', 3, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(232, '2024-06-18 08:22:34', '09:28:47', '09:30:11', '2024-06-18', 4, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(233, '2024-06-18 08:23:00', '09:03:56', '09:04:02', '2024-06-18', 5, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(234, '2024-06-18 08:34:21', '08:41:57', '08:52:42', '2024-06-18', 6, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(235, '2024-06-18 08:36:55', '08:42:10', '08:48:26', '2024-06-18', 7, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(236, '2024-06-18 08:49:41', '09:51:59', '09:52:04', '2024-06-18', 8, 867, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(237, '2024-06-18 08:50:48', '08:52:44', '09:01:02', '2024-06-18', 9, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(238, '2024-06-18 08:54:57', '09:04:14', '09:05:40', '2024-06-18', 10, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(239, '2024-06-18 08:59:18', '09:03:30', '09:12:29', '2024-06-18', 11, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(240, '2024-06-18 08:59:24', '09:13:40', '09:23:10', '2024-06-18', 12, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(241, '2024-06-18 09:07:59', '11:00:34', '11:00:36', '2024-06-18', 13, 856, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(242, '2024-06-18 09:08:22', '09:12:31', '09:13:27', '2024-06-18', 14, 856, 1, 716742983, 2, '', 0, 98, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(243, '2024-06-18 09:11:29', '09:16:10', '09:21:10', '2024-06-18', 15, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(244, '2024-06-18 09:12:21', '09:17:28', '09:18:40', '2024-06-18', 16, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(245, '2024-06-18 09:13:26', '09:21:18', '09:23:20', '2024-06-18', 17, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(246, '2024-06-18 09:17:38', '09:23:29', '09:29:26', '2024-06-18', 18, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(247, '2024-06-18 09:19:44', '09:52:02', '09:56:01', '2024-06-18', 19, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(248, '2024-06-18 09:27:25', '09:27:36', '09:42:00', '2024-06-18', 20, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(249, '2024-06-18 09:27:36', '09:31:41', '09:36:29', '2024-06-18', 21, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(250, '2024-06-18 09:27:56', '09:37:13', '09:42:03', '2024-06-18', 22, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(251, '2024-06-18 09:28:08', '09:39:33', '09:40:09', '2024-06-18', 23, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(252, '2024-06-18 09:31:35', '09:56:05', '09:57:57', '2024-06-18', 24, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(253, '2024-06-18 09:38:31', '09:42:40', '09:49:46', '2024-06-18', 25, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(254, '2024-06-18 09:38:54', '09:49:50', '10:03:04', '2024-06-18', 26, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(255, '2024-06-18 09:40:28', '09:42:03', '09:52:55', '2024-06-18', 27, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(256, '2024-06-18 09:51:30', '09:52:35', '09:53:02', '2024-06-18', 28, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(257, '2024-06-18 09:55:06', '09:58:01', '10:00:11', '2024-06-18', 29, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(258, '2024-06-18 09:56:36', '10:00:14', '10:02:10', '2024-06-18', 30, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(259, '2024-06-18 09:59:34', '09:59:39', '10:11:24', '2024-06-18', 31, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(260, '2024-06-18 10:00:59', '10:02:37', '10:05:34', '2024-06-18', 32, 855, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(261, '2024-06-18 10:02:52', '10:03:11', '10:17:08', '2024-06-18', 33, 855, 1, 716742983, 2, '', 0, 107, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(262, '2024-06-18 10:12:08', '10:14:17', '10:22:08', '2024-06-18', 34, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(263, '2024-06-18 10:17:19', '10:28:51', '10:31:42', '2024-06-18', 35, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(264, '2024-06-18 10:17:41', '10:19:43', '10:28:25', '2024-06-18', 36, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(265, '2024-06-18 10:17:50', '13:34:23', '13:35:08', '2024-06-18', 37, 856, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(266, '2024-06-18 10:20:28', '10:20:46', '10:42:53', '2024-06-18', 38, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(267, '2024-06-18 10:21:08', '10:22:13', '11:54:11', '2024-06-18', 39, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(268, '2024-06-18 10:36:57', '10:41:23', '10:42:13', '2024-06-18', 40, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(269, '2024-06-18 10:57:41', '11:21:27', '11:21:31', '2024-06-18', 41, 856, 2, 716742982, 0, '', 0, 106, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(270, '2024-06-18 10:58:04', '11:23:40', '11:26:07', '2024-06-18', 42, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(271, '2024-06-18 10:58:21', '11:26:11', '11:35:13', '2024-06-18', 43, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(272, '2024-06-18 11:02:21', '11:04:15', '11:18:07', '2024-06-18', 44, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(273, '2024-06-18 11:06:38', '11:54:56', '11:56:05', '2024-06-18', 45, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(274, '2024-06-18 11:06:46', '11:25:05', '11:25:12', '2024-06-18', 46, 855, 2, 716742982, 0, '', 0, 106, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(275, '2024-06-18 11:07:52', '11:11:16', '11:12:28', '2024-06-18', 47, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(276, '2024-06-18 11:07:59', '11:14:47', '11:20:43', '2024-06-18', 48, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(277, '2024-06-18 11:15:00', '11:34:29', '11:41:27', '2024-06-18', 49, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(278, '2024-06-18 11:15:35', '11:18:24', '11:26:40', '2024-06-18', 50, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(279, '2024-06-18 11:24:21', '11:35:17', '11:41:13', '2024-06-18', 51, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(280, '2024-06-18 11:29:34', '11:41:32', '11:42:07', '2024-06-18', 52, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(281, '2024-06-18 11:29:41', '11:43:26', '11:47:19', '2024-06-18', 53, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(282, '2024-06-18 11:32:36', '11:47:22', '11:54:38', '2024-06-18', 54, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(283, '2024-06-18 11:39:32', '00:00:00', '00:00:00', '2024-06-18', 55, 864, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'reactivation compte'),
	(284, '2024-06-18 11:39:53', '11:54:30', '00:00:00', '2024-06-18', 56, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(285, '2024-06-18 11:40:27', '11:54:44', '12:02:48', '2024-06-18', 57, 863, 3, 716742972, 0, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(286, '2024-06-18 11:40:51', '11:51:45', '11:51:56', '2024-06-18', 58, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(287, '2024-06-18 11:52:30', '13:04:22', '13:04:28', '2024-06-18', 59, 867, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(288, '2024-06-18 11:54:02', '11:54:30', '12:36:23', '2024-06-18', 60, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(289, '2024-06-18 12:03:53', '12:18:59', '12:32:50', '2024-06-18', 61, 863, 3, 716742972, 0, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(290, '2024-06-18 12:04:58', '12:27:10', '12:31:51', '2024-06-18', 62, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(291, '2024-06-18 12:06:08', '12:43:19', '12:43:21', '2024-06-18', 63, 855, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(292, '2024-06-18 12:06:27', '12:15:57', '12:18:57', '2024-06-18', 64, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(293, '2024-06-18 12:09:24', '13:04:33', '13:04:39', '2024-06-18', 65, 867, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(294, '2024-06-18 12:10:01', '13:04:43', '13:04:49', '2024-06-18', 66, 867, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(295, '2024-06-18 12:13:28', '12:27:34', '12:33:48', '2024-06-18', 67, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(296, '2024-06-18 12:14:38', '12:32:19', '12:35:18', '2024-06-18', 68, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(297, '2024-06-18 12:25:53', '12:33:54', '12:43:42', '2024-06-18', 69, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(298, '2024-06-18 12:26:58', '12:35:24', '12:37:12', '2024-06-18', 70, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(299, '2024-06-18 12:28:10', '12:50:53', '12:50:55', '2024-06-18', 71, 856, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(300, '2024-06-18 12:30:56', '12:36:14', '12:40:50', '2024-06-18', 72, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(301, '2024-06-18 12:31:49', '12:43:44', '13:17:56', '2024-06-18', 73, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(302, '2024-06-18 12:32:39', '12:51:16', '12:51:42', '2024-06-18', 74, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(303, '2024-06-18 12:33:02', '12:51:21', '12:56:26', '2024-06-18', 75, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(304, '2024-06-18 12:38:02', '12:54:20', '12:54:36', '2024-06-18', 76, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(305, '2024-06-18 12:38:11', '12:46:04', '12:50:19', '2024-06-18', 77, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(306, '2024-06-18 12:38:19', '12:50:30', '12:55:06', '2024-06-18', 78, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(307, '2024-06-18 12:48:49', '12:55:19', '12:57:58', '2024-06-18', 79, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(308, '2024-06-18 12:51:20', '12:54:41', '12:55:21', '2024-06-18', 80, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(309, '2024-06-18 12:51:29', '12:56:29', '13:11:21', '2024-06-18', 81, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(310, '2024-06-18 12:52:25', '13:07:05', '13:19:46', '2024-06-18', 82, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(311, '2024-06-18 12:52:47', '12:56:19', '12:56:41', '2024-06-18', 83, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(312, '2024-06-18 12:52:56', '00:00:00', '00:00:00', '2024-06-18', 84, 861, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'western union'),
	(313, '2024-06-18 12:53:47', '12:58:02', '13:05:15', '2024-06-18', 85, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(314, '2024-06-18 12:54:10', '13:04:56', '13:05:46', '2024-06-18', 86, 856, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(315, '2024-06-18 12:59:16', '13:11:23', '00:00:00', '2024-06-18', 87, 855, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(316, '2024-06-18 13:05:05', '13:11:24', '13:23:38', '2024-06-18', 88, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(317, '2024-06-18 13:05:20', '13:20:04', '13:33:37', '2024-06-18', 89, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(318, '2024-06-18 13:05:30', '13:18:01', '13:22:59', '2024-06-18', 90, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(319, '2024-06-18 13:12:27', '13:31:17', '13:33:58', '2024-06-18', 91, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(320, '2024-06-18 13:14:27', '13:37:39', '13:38:07', '2024-06-18', 92, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(321, '2024-06-18 13:15:06', '13:38:37', '13:38:55', '2024-06-18', 93, 855, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(322, '2024-06-18 13:16:43', '13:23:44', '13:25:05', '2024-06-18', 94, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(323, '2024-06-18 13:17:14', '13:38:59', '13:43:56', '2024-06-18', 95, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(325, '2024-06-18 13:17:44', '13:47:01', '13:47:26', '2024-06-18', 96, 855, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(326, '2024-06-18 13:19:53', '13:44:07', '13:46:21', '2024-06-18', 98, 856, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(327, '2024-06-18 13:20:04', '14:19:36', '14:19:42', '2024-06-18', 99, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(328, '2024-06-18 13:20:18', '13:51:15', '13:58:36', '2024-06-18', 100, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(329, '2024-06-18 13:20:30', '14:03:44', '14:08:38', '2024-06-18', 101, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(330, '2024-06-18 13:26:46', '00:00:00', '00:00:00', '2024-06-18', 102, 867, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'airtel money'),
	(331, '2024-06-18 13:33:55', '13:47:29', '13:50:38', '2024-06-18', 103, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(332, '2024-06-18 13:34:08', '13:54:01', '14:01:29', '2024-06-18', 104, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(333, '2024-06-18 13:34:17', '14:15:31', '14:19:26', '2024-06-18', 105, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(334, '2024-06-18 13:35:40', '14:08:39', '14:15:26', '2024-06-18', 106, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(335, '2024-06-18 13:39:39', '14:10:04', '14:19:12', '2024-06-18', 107, 863, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(336, '2024-06-18 13:41:34', '14:20:23', '14:23:27', '2024-06-18', 108, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(337, '2024-06-18 13:41:52', '14:24:26', '14:26:57', '2024-06-18', 109, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(338, '2024-06-18 13:42:01', '14:26:58', '14:38:46', '2024-06-18', 110, 856, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(339, '2024-06-18 13:45:28', '14:01:49', '14:10:02', '2024-06-18', 111, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(340, '2024-06-18 13:46:16', '13:50:49', '13:53:28', '2024-06-18', 112, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(341, '2024-06-18 13:47:01', '14:38:49', '14:39:06', '2024-06-18', 113, 856, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(342, '2024-06-18 13:47:55', '14:39:08', '14:39:31', '2024-06-18', 114, 856, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(343, '2024-06-18 13:55:05', '14:39:37', '00:00:00', '2024-06-18', 115, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(344, '2024-06-18 13:56:00', '14:19:53', '14:22:40', '2024-06-18', 116, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(345, '2024-06-18 13:57:27', '14:23:36', '14:24:14', '2024-06-18', 117, 855, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(346, '2024-06-18 14:01:22', '14:22:43', '14:24:45', '2024-06-18', 118, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(347, '2024-06-18 14:09:08', '14:32:58', '14:33:48', '2024-06-18', 119, 855, 3, 716742972, 2, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(348, '2024-06-18 14:10:50', '00:00:00', '00:00:00', '2024-06-18', 120, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(349, '2024-06-18 14:15:50', '14:39:28', '00:00:00', '2024-06-18', 121, 855, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(350, '2024-06-18 14:19:00', '00:00:00', '00:00:00', '2024-06-18', 122, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(351, '2024-06-18 14:19:27', '00:00:00', '00:00:00', '2024-06-18', 123, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(352, '2024-06-18 14:19:51', '00:00:00', '00:00:00', '2024-06-18', 124, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(353, '2024-06-18 14:21:12', '00:00:00', '00:00:00', '2024-06-18', 125, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(354, '2024-06-18 14:24:26', '00:00:00', '00:00:00', '2024-06-18', 126, 861, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'western union'),
	(355, '2024-06-18 14:41:15', '00:00:00', '00:00:00', '2024-06-18', 127, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(356, '2024-06-19 08:08:11', '00:00:00', '00:00:00', '2024-06-19', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(357, '2024-06-19 08:08:42', '00:00:00', '00:00:00', '2024-06-19', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(358, '2024-06-19 08:47:31', '00:00:00', '00:00:00', '2024-06-19', 3, 867, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'airtel money'),
	(359, '2024-06-19 08:48:01', '00:00:00', '00:00:00', '2024-06-19', 4, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(360, '2024-06-19 08:48:48', '00:00:00', '00:00:00', '2024-06-19', 5, 869, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait chequier'),
	(361, '2024-06-19 08:48:57', '00:00:00', '00:00:00', '2024-06-19', 6, 867, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'airtel money'),
	(362, '2024-06-19 08:49:23', '00:00:00', '00:00:00', '2024-06-19', 7, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(363, '2024-06-19 10:37:02', '00:00:00', '00:00:00', '2024-06-19', 8, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(365, '2024-06-19 10:40:00', '00:00:00', '00:00:00', '2024-06-19', 10, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(366, '2024-06-19 12:17:39', '00:00:00', '00:00:00', '2024-06-19', 11, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(367, '2024-06-19 12:18:06', '00:00:00', '00:00:00', '2024-06-19', 12, 883, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'achat carte cash express'),
	(368, '2024-06-19 14:13:51', '00:00:00', '00:00:00', '2024-06-19', 13, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(369, '2024-06-19 14:14:02', '00:00:00', '00:00:00', '2024-06-19', 14, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(370, '2024-06-26 12:25:09', '00:00:00', '00:00:00', '2024-06-26', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(371, '2024-06-27 13:37:06', '00:00:00', '00:00:00', '2024-06-27', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(372, '2024-06-27 13:37:17', '00:00:00', '00:00:00', '2024-06-27', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(373, '2024-07-01 14:23:09', '00:00:00', '00:00:00', '2024-07-01', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(375, '2024-07-01 14:25:27', '00:00:00', '00:00:00', '2024-07-01', 3, 863, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'visa usa'),
	(376, '2024-07-01 14:28:40', '00:00:00', '00:00:00', '2024-07-01', 4, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(377, '2024-07-03 09:04:08', '00:00:00', '00:00:00', '2024-07-03', 1, 862, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'cash express'),
	(378, '2024-07-03 09:44:54', '00:00:00', '00:00:00', '2024-07-03', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(379, '2024-07-03 10:52:36', '00:00:00', '00:00:00', '2024-07-03', 3, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(380, '2024-07-03 12:41:11', '00:00:00', '00:00:00', '2024-07-03', 4, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(381, '2024-07-03 13:37:57', '00:00:00', '00:00:00', '2024-07-03', 5, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(382, '2024-07-03 13:38:11', '00:00:00', '00:00:00', '2024-07-03', 6, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(383, '2024-07-04 09:30:29', '00:00:00', '00:00:00', '2024-07-04', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(384, '2024-07-04 11:59:29', '00:00:00', '00:00:00', '2024-07-04', 2, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(385, '2024-07-04 11:59:52', '00:00:00', '00:00:00', '2024-07-04', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot');

CREATE TABLE IF NOT EXISTS `tb_ticket_mouvement` (
  `ticket_id` int(11) NOT NULL DEFAULT 0,
  `ticket_date` datetime NOT NULL,
  `ticket_heure_debut` time DEFAULT '00:00:00',
  `ticket_heure_fin` time DEFAULT '00:00:00',
  `ticket_date2` date NOT NULL,
  `ticket_number` int(11) NOT NULL,
  `ticket_service_id` int(11) NOT NULL,
  `ticket_guichet` int(11) DEFAULT 0,
  `ticket_user_id` int(11) DEFAULT 0,
  `ticket_status` int(11) NOT NULL DEFAULT 1,
  `ticket_client_number` varchar(20) DEFAULT NULL,
  `ticket_is_vip` int(11) DEFAULT NULL,
  `ticket_raison_id` int(11) DEFAULT NULL,
  `ticket_agence_id` int(11) DEFAULT NULL,
  `ticket_agence_nom` varchar(50) DEFAULT NULL,
  `ticket_syncronized` int(11) DEFAULT 0,
  `ticket_user_login` varchar(50) DEFAULT NULL,
  `ticket_service_name` varchar(255) DEFAULT NULL,
  KEY `mouvements_key_index` (`ticket_user_id`),
  KEY `tiket_mouv_key_index6` (`ticket_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_ticket_mouvement` (`ticket_id`, `ticket_date`, `ticket_heure_debut`, `ticket_heure_fin`, `ticket_date2`, `ticket_number`, `ticket_service_id`, `ticket_guichet`, `ticket_user_id`, `ticket_status`, `ticket_client_number`, `ticket_is_vip`, `ticket_raison_id`, `ticket_agence_id`, `ticket_agence_nom`, `ticket_syncronized`, `ticket_user_login`, `ticket_service_name`) VALUES
	(51, '2024-05-08 12:53:13', '12:56:46', '13:08:15', '2024-05-08', 1, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(52, '2024-05-08 13:01:17', '13:01:30', '13:02:08', '2024-05-08', 2, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(53, '2024-05-08 13:04:57', '13:08:27', '13:26:28', '2024-05-08', 3, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(54, '2024-05-08 13:05:16', '13:11:04', '13:14:51', '2024-05-08', 4, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(55, '2024-05-08 13:05:48', '13:15:13', '13:16:27', '2024-05-08', 5, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(56, '2024-05-08 13:09:13', '13:25:34', '13:25:51', '2024-05-08', 6, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(57, '2024-05-08 13:12:39', '13:28:06', '13:38:20', '2024-05-08', 7, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(58, '2024-05-08 13:24:30', '13:33:38', '13:34:10', '2024-05-08', 8, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(59, '2024-05-08 13:25:47', '13:41:45', '13:42:09', '2024-05-08', 9, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(60, '2024-05-08 13:26:08', '13:47:02', '13:49:44', '2024-05-08', 10, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(61, '2024-05-08 13:26:38', '13:38:26', '13:48:46', '2024-05-08', 11, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(62, '2024-05-08 13:29:08', '13:48:55', '13:54:49', '2024-05-08', 12, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(63, '2024-05-08 13:37:20', '13:49:48', '13:52:17', '2024-05-08', 13, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(64, '2024-05-08 13:37:37', '13:40:31', '13:41:33', '2024-05-08', 14, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(65, '2024-05-08 13:48:46', '14:39:05', '15:29:59', '2024-05-08', 15, 863, 1, 716742972, 0, '', 0, 96, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(66, '2024-05-08 13:59:16', '14:03:25', '14:03:42', '2024-05-08', 16, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(67, '2024-05-08 14:05:02', '14:13:14', '14:21:58', '2024-05-08', 17, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(68, '2024-05-08 14:12:29', '14:18:00', '14:23:03', '2024-05-08', 18, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(69, '2024-05-08 14:14:16', '14:23:48', '14:24:08', '2024-05-08', 19, 856, 2, 716742973, 0, '', 0, 96, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(70, '2024-05-08 14:15:15', '14:22:49', '14:31:22', '2024-05-08', 20, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(71, '2024-05-08 14:15:37', '14:31:18', '14:46:57', '2024-05-08', 21, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(72, '2024-05-08 14:25:50', '14:31:33', '14:41:25', '2024-05-08', 22, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(73, '2024-05-08 14:35:04', '14:41:32', '14:48:08', '2024-05-08', 23, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(74, '2024-05-08 14:35:25', '14:56:17', '15:02:58', '2024-05-08', 24, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(75, '2024-05-08 14:35:33', '15:03:05', '15:03:48', '2024-05-08', 25, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(76, '2024-05-08 14:37:02', '15:03:55', '15:04:27', '2024-05-08', 26, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(77, '2024-05-08 14:46:24', '14:47:06', '14:47:31', '2024-05-08', 27, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(78, '2024-05-08 14:47:37', '14:48:15', '14:54:35', '2024-05-08', 28, 855, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'retrait'),
	(79, '2024-05-08 14:56:27', '15:35:14', '00:00:00', '2024-05-08', 29, 863, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(80, '2024-05-08 14:56:36', '15:04:37', '15:25:44', '2024-05-08', 30, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(81, '2024-05-08 14:56:54', '15:20:06', '15:24:51', '2024-05-08', 31, 856, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(82, '2024-05-08 14:58:54', '15:02:33', '15:03:43', '2024-05-08', 32, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(83, '2024-05-08 15:02:44', '15:25:53', '15:32:03', '2024-05-08', 33, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(84, '2024-05-08 15:05:52', '15:30:09', '00:00:00', '2024-05-08', 34, 856, 0, 716742972, 99, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(85, '2024-05-08 15:26:43', '15:32:15', '15:37:49', '2024-05-08', 35, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(86, '2024-05-08 15:27:26', '15:33:59', '15:45:58', '2024-05-08', 36, 855, 2, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(87, '2024-05-08 15:36:17', '15:39:38', '15:48:25', '2024-05-08', 37, 856, 3, 716742974, 0, '', 0, 0, 1382, 'LIMETE', 0, 'tekadanga', 'depot'),
	(88, '2024-05-09 08:01:17', '00:00:00', '00:00:00', '2024-05-09', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(89, '2024-05-09 08:01:40', '00:00:00', '00:00:00', '2024-05-09', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(90, '2024-05-09 08:01:50', '00:00:00', '00:00:00', '2024-05-09', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(91, '2024-05-09 08:02:07', '00:00:00', '00:00:00', '2024-05-09', 4, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(92, '2024-05-09 08:05:33', '00:00:00', '00:00:00', '2024-05-09', 5, 862, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'cash express'),
	(93, '2024-05-09 08:08:19', '00:00:00', '00:00:00', '2024-05-09', 6, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(94, '2024-05-09 08:08:44', '00:00:00', '00:00:00', '2024-05-09', 7, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(95, '2024-05-09 08:10:06', '00:00:00', '00:00:00', '2024-05-09', 8, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(96, '2024-05-09 08:22:03', '00:00:00', '00:00:00', '2024-05-09', 9, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(97, '2024-05-09 08:23:42', '00:00:00', '00:00:00', '2024-05-09', 10, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(98, '2024-05-09 08:24:06', '00:00:00', '00:00:00', '2024-05-09', 11, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(99, '2024-05-09 09:05:46', '00:00:00', '00:00:00', '2024-05-09', 12, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(100, '2024-05-09 09:06:05', '00:00:00', '00:00:00', '2024-05-09', 13, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(101, '2024-05-09 09:06:45', '00:00:00', '00:00:00', '2024-05-09', 14, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(102, '2024-05-09 09:07:10', '00:00:00', '00:00:00', '2024-05-09', 15, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(103, '2024-05-10 10:13:10', '00:00:00', '00:00:00', '2024-05-10', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(104, '2024-05-10 17:41:26', '00:00:00', '00:00:00', '2024-05-10', 2, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(105, '2024-05-11 11:58:10', '00:00:00', '00:00:00', '2024-05-11', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(106, '2024-05-13 16:33:19', '00:00:00', '00:00:00', '2024-05-13', 1, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(107, '2024-05-14 07:57:08', '00:00:00', '00:00:00', '2024-05-14', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(108, '2024-05-14 07:57:18', '00:00:00', '00:00:00', '2024-05-14', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(109, '2024-05-14 07:57:30', '00:00:00', '00:00:00', '2024-05-14', 3, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(110, '2024-05-14 11:15:51', '00:00:00', '00:00:00', '2024-05-14', 4, 859, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'commande chequier'),
	(111, '2024-05-14 11:16:06', '00:00:00', '00:00:00', '2024-05-14', 5, 870, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'renouvellement carte'),
	(112, '2024-05-14 11:16:15', '00:00:00', '00:00:00', '2024-05-14', 6, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(113, '2024-05-14 11:17:12', '00:00:00', '00:00:00', '2024-05-14', 7, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(114, '2024-05-14 11:18:21', '00:00:00', '00:00:00', '2024-05-14', 8, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(115, '2024-05-14 11:25:08', '00:00:00', '00:00:00', '2024-05-14', 9, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(116, '2024-05-14 12:04:49', '00:00:00', '00:00:00', '2024-05-14', 10, 869, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait chequier'),
	(117, '2024-05-14 12:12:48', '00:00:00', '00:00:00', '2024-05-14', 11, 884, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'réclamation'),
	(118, '2024-05-14 17:13:59', '00:00:00', '00:00:00', '2024-05-14', 12, 862, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'cash express'),
	(119, '2024-05-15 11:41:12', '00:00:00', '00:00:00', '2024-05-15', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(120, '2024-05-15 12:52:33', '00:00:00', '00:00:00', '2024-05-15', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(121, '2024-05-15 15:19:37', '00:00:00', '00:00:00', '2024-05-15', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(122, '2024-05-16 09:28:01', '00:00:00', '00:00:00', '2024-05-16', 1, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(123, '2024-05-16 09:29:19', '00:00:00', '00:00:00', '2024-05-16', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(124, '2024-05-16 09:51:03', '00:00:00', '00:00:00', '2024-05-16', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(125, '2024-05-20 09:45:25', '00:00:00', '00:00:00', '2024-05-20', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(126, '2024-05-20 09:54:37', '00:00:00', '00:00:00', '2024-05-20', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(127, '2024-05-20 10:46:21', '00:00:00', '00:00:00', '2024-05-20', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(128, '2024-06-07 13:11:37', '00:00:00', '00:00:00', '2024-06-07', 1, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(129, '2024-06-14 08:28:33', '00:00:00', '00:00:00', '2024-06-14', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(130, '2024-06-14 14:10:54', '00:00:00', '00:00:00', '2024-06-14', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(131, '2024-06-17 09:54:01', '09:54:59', '09:55:50', '2024-06-17', 1, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(132, '2024-06-17 09:54:08', '09:55:57', '09:56:09', '2024-06-17', 2, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(133, '2024-06-17 09:54:14', '10:32:42', '10:37:50', '2024-06-17', 3, 860, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'rapid transfert'),
	(134, '2024-06-17 09:54:19', '09:57:33', '09:57:21', '2024-06-17', 4, 861, 2, 716742982, 99, '', 0, 106, 1382, 'LIMETE', 0, 'mutala', 'western union'),
	(135, '2024-06-17 10:13:49', '10:16:16', '10:16:59', '2024-06-17', 5, 856, 1, 716742983, 0, '', 0, 97, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(136, '2024-06-17 10:13:53', '10:30:57', '10:30:34', '2024-06-17', 6, 856, 3, 716742972, 99, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(137, '2024-06-17 10:13:57', '10:38:25', '10:38:57', '2024-06-17', 7, 860, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'rapid transfert'),
	(138, '2024-06-17 10:14:04', '11:35:08', '11:35:33', '2024-06-17', 8, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(139, '2024-06-17 10:14:08', '10:39:03', '10:41:41', '2024-06-17', 9, 856, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(140, '2024-06-17 10:46:52', '10:59:05', '00:00:00', '2024-06-17', 10, 863, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'visa usa'),
	(141, '2024-06-17 10:47:05', '11:35:41', '11:36:03', '2024-06-17', 11, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(142, '2024-06-17 10:50:48', '12:55:23', '12:58:23', '2024-06-17', 12, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(143, '2024-06-17 10:51:44', '12:58:25', '12:59:06', '2024-06-17', 13, 862, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(144, '2024-06-17 10:53:07', '10:57:09', '00:00:00', '2024-06-17', 14, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(145, '2024-06-17 10:56:50', '10:57:10', '10:57:44', '2024-06-17', 15, 856, 4, 716742973, 3, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(146, '2024-06-17 10:57:15', '11:00:12', '11:00:01', '2024-06-17', 16, 863, 4, 716742973, 99, '', 0, 97, 1382, 'LIMETE', 0, 'kokanya', 'visa usa'),
	(147, '2024-06-17 10:58:29', '11:02:26', '00:00:00', '2024-06-17', 17, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(148, '2024-06-17 11:01:16', '11:43:00', '11:48:47', '2024-06-17', 18, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(149, '2024-06-17 11:01:25', '11:36:28', '11:37:01', '2024-06-17', 19, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(150, '2024-06-17 11:04:14', '11:48:53', '11:49:38', '2024-06-17', 20, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(151, '2024-06-17 11:04:36', '11:51:20', '00:00:00', '2024-06-17', 21, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(152, '2024-06-17 11:15:16', '12:59:07', '13:03:09', '2024-06-17', 22, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(153, '2024-06-17 11:17:19', '13:03:10', '13:05:57', '2024-06-17', 23, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(154, '2024-06-17 11:19:38', '11:51:21', '00:00:00', '2024-06-17', 24, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(155, '2024-06-17 11:20:21', '13:05:58', '13:12:11', '2024-06-17', 25, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(156, '2024-06-17 11:23:27', '11:51:22', '11:52:48', '2024-06-17', 26, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(157, '2024-06-17 11:23:37', '11:51:57', '11:52:29', '2024-06-17', 27, 856, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(158, '2024-06-17 11:27:42', '11:39:11', '11:40:05', '2024-06-17', 28, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(159, '2024-06-17 11:27:49', '11:59:11', '12:08:24', '2024-06-17', 29, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(160, '2024-06-17 11:28:10', '11:41:25', '11:51:14', '2024-06-17', 30, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(161, '2024-06-17 11:38:42', '12:04:10', '12:04:24', '2024-06-17', 31, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(162, '2024-06-17 11:39:01', '13:12:12', '13:18:01', '2024-06-17', 32, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(163, '2024-06-17 11:39:14', '12:17:32', '12:17:40', '2024-06-17', 33, 863, 3, 716742972, 0, '', 0, 102, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(164, '2024-06-17 11:39:27', '11:56:54', '11:57:37', '2024-06-17', 34, 867, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(165, '2024-06-17 11:53:10', '12:18:25', '12:34:03', '2024-06-17', 35, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(166, '2024-06-17 11:53:31', '12:10:56', '12:28:10', '2024-06-17', 36, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(167, '2024-06-17 11:58:27', '12:12:27', '12:13:03', '2024-06-17', 37, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(168, '2024-06-17 11:58:37', '13:18:02', '13:26:00', '2024-06-17', 38, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(169, '2024-06-17 11:58:45', '13:26:02', '13:32:06', '2024-06-17', 39, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(170, '2024-06-17 11:59:01', '13:32:07', '13:35:57', '2024-06-17', 40, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(171, '2024-06-17 12:06:08', '12:15:24', '12:15:38', '2024-06-17', 41, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(172, '2024-06-17 12:06:19', '12:34:10', '12:34:47', '2024-06-17', 42, 863, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(173, '2024-06-17 12:14:23', '14:13:55', '14:19:17', '2024-06-17', 43, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(174, '2024-06-17 12:14:38', '12:16:37', '12:17:53', '2024-06-17', 44, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(175, '2024-06-17 12:16:28', '13:35:58', '13:37:57', '2024-06-17', 45, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(176, '2024-06-17 12:17:17', '13:37:58', '13:39:52', '2024-06-17', 46, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(177, '2024-06-17 12:19:13', '13:39:53', '13:42:52', '2024-06-17', 47, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(178, '2024-06-17 12:20:48', '12:29:25', '12:29:52', '2024-06-17', 48, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(179, '2024-06-17 12:24:50', '12:26:35', '12:29:15', '2024-06-17', 49, 855, 2, 716742982, 3, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(180, '2024-06-17 12:26:38', '12:28:22', '12:37:24', '2024-06-17', 50, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(181, '2024-06-17 12:31:06', '12:50:55', '12:57:25', '2024-06-17', 51, 855, 2, 716742982, 3, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(182, '2024-06-17 12:31:17', '12:44:09', '12:48:23', '2024-06-17', 52, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(183, '2024-06-17 12:32:46', '12:33:03', '12:34:59', '2024-06-17', 53, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(184, '2024-06-17 12:33:24', '12:48:28', '12:56:36', '2024-06-17', 54, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(185, '2024-06-17 12:33:34', '12:37:32', '12:43:59', '2024-06-17', 55, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(186, '2024-06-17 12:41:56', '13:42:54', '13:45:41', '2024-06-17', 56, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(187, '2024-06-17 12:47:05', '12:57:29', '12:58:04', '2024-06-17', 57, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(188, '2024-06-17 12:48:49', '12:56:41', '13:55:00', '2024-06-17', 58, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(189, '2024-06-17 12:49:38', '13:01:23', '13:05:22', '2024-06-17', 59, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(190, '2024-06-17 12:51:20', '14:33:24', '14:33:56', '2024-06-17', 60, 856, 3, 716742972, 0, '', 0, 102, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(191, '2024-06-17 13:02:13', '13:06:16', '13:07:04', '2024-06-17', 61, 856, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(192, '2024-06-17 13:02:22', '13:06:31', '13:06:53', '2024-06-17', 62, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(193, '2024-06-17 13:02:53', '13:45:42', '13:48:31', '2024-06-17', 63, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(194, '2024-06-17 13:03:28', '13:07:19', '13:20:43', '2024-06-17', 64, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(195, '2024-06-17 13:13:33', '13:20:53', '13:37:26', '2024-06-17', 65, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(196, '2024-06-17 13:13:52', '13:14:02', '13:16:09', '2024-06-17', 66, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(197, '2024-06-17 13:21:05', '13:26:54', '13:31:01', '2024-06-17', 67, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(198, '2024-06-17 13:21:15', '13:48:09', '13:48:18', '2024-06-17', 68, 855, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(199, '2024-06-17 13:21:45', '13:34:53', '13:35:23', '2024-06-17', 69, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(200, '2024-06-17 13:22:03', '14:10:05', '14:13:39', '2024-06-17', 70, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(201, '2024-06-17 13:27:41', '13:39:41', '00:00:00', '2024-06-17', 71, 856, 0, 716742982, 99, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(202, '2024-06-17 13:28:54', '13:38:46', '13:39:37', '2024-06-17', 72, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(203, '2024-06-17 13:30:38', '13:40:38', '13:48:03', '2024-06-17', 73, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(204, '2024-06-17 13:31:02', '13:43:11', '13:47:58', '2024-06-17', 74, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(205, '2024-06-17 13:31:34', '13:48:34', '13:49:43', '2024-06-17', 75, 862, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(206, '2024-06-17 13:34:17', '14:19:22', '14:38:53', '2024-06-17', 76, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(207, '2024-06-17 13:34:24', '13:49:47', '13:49:59', '2024-06-17', 77, 862, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(208, '2024-06-17 13:34:31', '13:48:24', '13:51:37', '2024-06-17', 78, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(209, '2024-06-17 13:38:40', '14:00:28', '14:03:44', '2024-06-17', 79, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(210, '2024-06-17 13:40:00', '13:49:08', '13:50:25', '2024-06-17', 80, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(211, '2024-06-17 13:41:01', '14:03:45', '14:09:59', '2024-06-17', 81, 862, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'cash express'),
	(212, '2024-06-17 13:41:14', '13:50:45', '14:03:35', '2024-06-17', 82, 863, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(213, '2024-06-17 13:43:03', '14:04:47', '14:12:23', '2024-06-17', 83, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(214, '2024-06-17 13:43:34', '13:54:43', '13:55:08', '2024-06-17', 84, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(215, '2024-06-17 13:45:19', '14:12:33', '14:22:38', '2024-06-17', 85, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(216, '2024-06-17 13:57:28', '14:04:36', '14:19:17', '2024-06-17', 86, 856, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(217, '2024-06-17 13:59:55', '14:02:26', '14:10:22', '2024-06-17', 87, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(218, '2024-06-17 14:04:11', '14:22:43', '14:32:46', '2024-06-17', 88, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(219, '2024-06-17 14:06:11', '14:10:28', '14:49:58', '2024-06-17', 89, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(220, '2024-06-17 14:09:02', '14:27:36', '14:28:31', '2024-06-17', 90, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(221, '2024-06-17 14:12:24', '14:39:51', '14:41:45', '2024-06-17', 91, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(222, '2024-06-17 14:13:12', '14:29:53', '14:38:56', '2024-06-17', 92, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(223, '2024-06-17 14:14:29', '14:41:51', '14:44:18', '2024-06-17', 93, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(224, '2024-06-17 14:23:12', '14:44:19', '14:59:35', '2024-06-17', 94, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(225, '2024-06-17 14:23:33', '14:50:01', '15:02:44', '2024-06-17', 95, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(226, '2024-06-17 14:30:06', '15:03:11', '15:09:13', '2024-06-17', 96, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(227, '2024-06-17 15:12:58', '15:13:13', '15:30:57', '2024-06-17', 97, 869, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait chequier'),
	(228, '2024-06-17 15:22:55', '15:24:39', '00:00:00', '2024-06-17', 98, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(229, '2024-06-18 08:10:26', '08:38:34', '08:41:55', '2024-06-18', 1, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(230, '2024-06-18 08:10:39', '08:48:33', '08:54:55', '2024-06-18', 2, 856, 3, 716742972, 0, '', 0, 96, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(231, '2024-06-18 08:17:36', '09:03:48', '09:03:53', '2024-06-18', 3, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(232, '2024-06-18 08:22:34', '09:28:47', '09:30:11', '2024-06-18', 4, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(233, '2024-06-18 08:23:00', '09:03:56', '09:04:02', '2024-06-18', 5, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(234, '2024-06-18 08:34:21', '08:41:57', '08:52:42', '2024-06-18', 6, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(235, '2024-06-18 08:36:55', '08:42:10', '08:48:26', '2024-06-18', 7, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(236, '2024-06-18 08:49:41', '09:51:59', '09:52:04', '2024-06-18', 8, 867, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(237, '2024-06-18 08:50:48', '08:52:44', '09:01:02', '2024-06-18', 9, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(238, '2024-06-18 08:54:57', '09:04:14', '09:05:40', '2024-06-18', 10, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(239, '2024-06-18 08:59:18', '09:03:30', '09:12:29', '2024-06-18', 11, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(240, '2024-06-18 08:59:24', '09:13:40', '09:23:10', '2024-06-18', 12, 861, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'western union'),
	(241, '2024-06-18 09:07:59', '11:00:34', '11:00:36', '2024-06-18', 13, 856, 2, 716742982, 0, '', 0, 101, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(242, '2024-06-18 09:08:22', '09:12:31', '09:13:27', '2024-06-18', 14, 856, 1, 716742983, 2, '', 0, 98, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(243, '2024-06-18 09:11:29', '09:16:10', '09:21:10', '2024-06-18', 15, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(244, '2024-06-18 09:12:21', '09:17:28', '09:18:40', '2024-06-18', 16, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(245, '2024-06-18 09:13:26', '09:21:18', '09:23:20', '2024-06-18', 17, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(246, '2024-06-18 09:17:38', '09:23:29', '09:29:26', '2024-06-18', 18, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(247, '2024-06-18 09:19:44', '09:52:02', '09:56:01', '2024-06-18', 19, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(248, '2024-06-18 09:27:25', '09:27:36', '09:42:00', '2024-06-18', 20, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(249, '2024-06-18 09:27:36', '09:31:41', '09:36:29', '2024-06-18', 21, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(250, '2024-06-18 09:27:56', '09:37:13', '09:42:03', '2024-06-18', 22, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(251, '2024-06-18 09:28:08', '09:39:33', '09:40:09', '2024-06-18', 23, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(252, '2024-06-18 09:31:35', '09:56:05', '09:57:57', '2024-06-18', 24, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(253, '2024-06-18 09:38:31', '09:42:40', '09:49:46', '2024-06-18', 25, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(254, '2024-06-18 09:38:54', '09:49:50', '10:03:04', '2024-06-18', 26, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(255, '2024-06-18 09:40:28', '09:42:03', '09:52:55', '2024-06-18', 27, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(256, '2024-06-18 09:51:30', '09:52:35', '09:53:02', '2024-06-18', 28, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(257, '2024-06-18 09:55:06', '09:58:01', '10:00:11', '2024-06-18', 29, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(258, '2024-06-18 09:56:36', '10:00:14', '10:02:10', '2024-06-18', 30, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(259, '2024-06-18 09:59:34', '09:59:39', '10:11:24', '2024-06-18', 31, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(260, '2024-06-18 10:00:59', '10:02:37', '10:05:34', '2024-06-18', 32, 855, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(261, '2024-06-18 10:02:52', '10:03:11', '10:17:08', '2024-06-18', 33, 855, 1, 716742983, 2, '', 0, 107, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(262, '2024-06-18 10:12:08', '10:14:17', '10:22:08', '2024-06-18', 34, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(263, '2024-06-18 10:17:19', '10:28:51', '10:31:42', '2024-06-18', 35, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(264, '2024-06-18 10:17:41', '10:19:43', '10:28:25', '2024-06-18', 36, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(265, '2024-06-18 10:17:50', '13:34:23', '13:35:08', '2024-06-18', 37, 856, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(266, '2024-06-18 10:20:28', '10:20:46', '10:42:53', '2024-06-18', 38, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(267, '2024-06-18 10:21:08', '10:22:13', '11:54:11', '2024-06-18', 39, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(268, '2024-06-18 10:36:57', '10:41:23', '10:42:13', '2024-06-18', 40, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(269, '2024-06-18 10:57:41', '11:21:27', '11:21:31', '2024-06-18', 41, 856, 2, 716742982, 0, '', 0, 106, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(270, '2024-06-18 10:58:04', '11:23:40', '11:26:07', '2024-06-18', 42, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(271, '2024-06-18 10:58:21', '11:26:11', '11:35:13', '2024-06-18', 43, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(272, '2024-06-18 11:02:21', '11:04:15', '11:18:07', '2024-06-18', 44, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(273, '2024-06-18 11:06:38', '11:54:56', '11:56:05', '2024-06-18', 45, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(274, '2024-06-18 11:06:46', '11:25:05', '11:25:12', '2024-06-18', 46, 855, 2, 716742982, 0, '', 0, 106, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(275, '2024-06-18 11:07:52', '11:11:16', '11:12:28', '2024-06-18', 47, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(276, '2024-06-18 11:07:59', '11:14:47', '11:20:43', '2024-06-18', 48, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(277, '2024-06-18 11:15:00', '11:34:29', '11:41:27', '2024-06-18', 49, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(278, '2024-06-18 11:15:35', '11:18:24', '11:26:40', '2024-06-18', 50, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(279, '2024-06-18 11:24:21', '11:35:17', '11:41:13', '2024-06-18', 51, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(280, '2024-06-18 11:29:34', '11:41:32', '11:42:07', '2024-06-18', 52, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(281, '2024-06-18 11:29:41', '11:43:26', '11:47:19', '2024-06-18', 53, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(282, '2024-06-18 11:32:36', '11:47:22', '11:54:38', '2024-06-18', 54, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(283, '2024-06-18 11:39:32', '00:00:00', '00:00:00', '2024-06-18', 55, 864, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'reactivation compte'),
	(284, '2024-06-18 11:39:53', '11:54:30', '00:00:00', '2024-06-18', 56, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(285, '2024-06-18 11:40:27', '11:54:44', '12:02:48', '2024-06-18', 57, 863, 3, 716742972, 0, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(286, '2024-06-18 11:40:51', '11:51:45', '11:51:56', '2024-06-18', 58, 855, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(287, '2024-06-18 11:52:30', '13:04:22', '13:04:28', '2024-06-18', 59, 867, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(288, '2024-06-18 11:54:02', '11:54:30', '12:36:23', '2024-06-18', 60, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(289, '2024-06-18 12:03:53', '12:18:59', '12:32:50', '2024-06-18', 61, 863, 3, 716742972, 0, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(290, '2024-06-18 12:04:58', '12:27:10', '12:31:51', '2024-06-18', 62, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(291, '2024-06-18 12:06:08', '12:43:19', '12:43:21', '2024-06-18', 63, 855, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'retrait'),
	(292, '2024-06-18 12:06:27', '12:15:57', '12:18:57', '2024-06-18', 64, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(293, '2024-06-18 12:09:24', '13:04:33', '13:04:39', '2024-06-18', 65, 867, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(294, '2024-06-18 12:10:01', '13:04:43', '13:04:49', '2024-06-18', 66, 867, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(295, '2024-06-18 12:13:28', '12:27:34', '12:33:48', '2024-06-18', 67, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(296, '2024-06-18 12:14:38', '12:32:19', '12:35:18', '2024-06-18', 68, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(297, '2024-06-18 12:25:53', '12:33:54', '12:43:42', '2024-06-18', 69, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(298, '2024-06-18 12:26:58', '12:35:24', '12:37:12', '2024-06-18', 70, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(299, '2024-06-18 12:28:10', '12:50:53', '12:50:55', '2024-06-18', 71, 856, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(300, '2024-06-18 12:30:56', '12:36:14', '12:40:50', '2024-06-18', 72, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(301, '2024-06-18 12:31:49', '12:43:44', '13:17:56', '2024-06-18', 73, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(302, '2024-06-18 12:32:39', '12:51:16', '12:51:42', '2024-06-18', 74, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(303, '2024-06-18 12:33:02', '12:51:21', '12:56:26', '2024-06-18', 75, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(304, '2024-06-18 12:38:02', '12:54:20', '12:54:36', '2024-06-18', 76, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(305, '2024-06-18 12:38:11', '12:46:04', '12:50:19', '2024-06-18', 77, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(306, '2024-06-18 12:38:19', '12:50:30', '12:55:06', '2024-06-18', 78, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(307, '2024-06-18 12:48:49', '12:55:19', '12:57:58', '2024-06-18', 79, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(308, '2024-06-18 12:51:20', '12:54:41', '12:55:21', '2024-06-18', 80, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(309, '2024-06-18 12:51:29', '12:56:29', '13:11:21', '2024-06-18', 81, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(310, '2024-06-18 12:52:25', '13:07:05', '13:19:46', '2024-06-18', 82, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(311, '2024-06-18 12:52:47', '12:56:19', '12:56:41', '2024-06-18', 83, 856, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(312, '2024-06-18 12:52:56', '00:00:00', '00:00:00', '2024-06-18', 84, 861, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'western union'),
	(313, '2024-06-18 12:53:47', '12:58:02', '13:05:15', '2024-06-18', 85, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(314, '2024-06-18 12:54:10', '13:04:56', '13:05:46', '2024-06-18', 86, 856, 2, 716742982, 0, '', 0, 98, 1382, 'LIMETE', 0, 'mutala', 'depot'),
	(315, '2024-06-18 12:59:16', '13:11:23', '00:00:00', '2024-06-18', 87, 855, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(316, '2024-06-18 13:05:05', '13:11:24', '13:23:38', '2024-06-18', 88, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(317, '2024-06-18 13:05:20', '13:20:04', '13:33:37', '2024-06-18', 89, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(318, '2024-06-18 13:05:30', '13:18:01', '13:22:59', '2024-06-18', 90, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(319, '2024-06-18 13:12:27', '13:31:17', '13:33:58', '2024-06-18', 91, 855, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'retrait'),
	(320, '2024-06-18 13:14:27', '13:37:39', '13:38:07', '2024-06-18', 92, 867, 2, 716742982, 0, '', 0, 0, 1382, 'LIMETE', 0, 'mutala', 'airtel money'),
	(321, '2024-06-18 13:15:06', '13:38:37', '13:38:55', '2024-06-18', 93, 855, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(322, '2024-06-18 13:16:43', '13:23:44', '13:25:05', '2024-06-18', 94, 856, 4, 716742973, 0, '', 0, 0, 1382, 'LIMETE', 0, 'kokanya', 'depot'),
	(323, '2024-06-18 13:17:14', '13:38:59', '13:43:56', '2024-06-18', 95, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(325, '2024-06-18 13:17:44', '13:47:01', '13:47:26', '2024-06-18', 96, 855, 3, 716742972, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(326, '2024-06-18 13:19:53', '13:44:07', '13:46:21', '2024-06-18', 98, 856, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(327, '2024-06-18 13:20:04', '14:19:36', '14:19:42', '2024-06-18', 99, 856, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'depot'),
	(328, '2024-06-18 13:20:18', '13:51:15', '13:58:36', '2024-06-18', 100, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(329, '2024-06-18 13:20:30', '14:03:44', '14:08:38', '2024-06-18', 101, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(330, '2024-06-18 13:26:46', '00:00:00', '00:00:00', '2024-06-18', 102, 867, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'airtel money'),
	(331, '2024-06-18 13:33:55', '13:47:29', '13:50:38', '2024-06-18', 103, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(332, '2024-06-18 13:34:08', '13:54:01', '14:01:29', '2024-06-18', 104, 855, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(333, '2024-06-18 13:34:17', '14:15:31', '14:19:26', '2024-06-18', 105, 855, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(334, '2024-06-18 13:35:40', '14:08:39', '14:15:26', '2024-06-18', 106, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(335, '2024-06-18 13:39:39', '14:10:04', '14:19:12', '2024-06-18', 107, 863, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(336, '2024-06-18 13:41:34', '14:20:23', '14:23:27', '2024-06-18', 108, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(337, '2024-06-18 13:41:52', '14:24:26', '14:26:57', '2024-06-18', 109, 856, 1, 716742983, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(338, '2024-06-18 13:42:01', '14:26:58', '14:38:46', '2024-06-18', 110, 856, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(339, '2024-06-18 13:45:28', '14:01:49', '14:10:02', '2024-06-18', 111, 863, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'visa usa'),
	(340, '2024-06-18 13:46:16', '13:50:49', '13:53:28', '2024-06-18', 112, 862, 3, 716742972, 0, '', 0, 98, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(341, '2024-06-18 13:47:01', '14:38:49', '14:39:06', '2024-06-18', 113, 856, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(342, '2024-06-18 13:47:55', '14:39:08', '14:39:31', '2024-06-18', 114, 856, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(343, '2024-06-18 13:55:05', '14:39:37', '00:00:00', '2024-06-18', 115, 856, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'depot'),
	(344, '2024-06-18 13:56:00', '14:19:53', '14:22:40', '2024-06-18', 116, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(345, '2024-06-18 13:57:27', '14:23:36', '14:24:14', '2024-06-18', 117, 855, 1, 716742983, 3, '', 0, 0, 1382, 'LIMETE', 0, 'nyota', 'retrait'),
	(346, '2024-06-18 14:01:22', '14:22:43', '14:24:45', '2024-06-18', 118, 862, 3, 716742972, 0, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'cash express'),
	(347, '2024-06-18 14:09:08', '14:32:58', '14:33:48', '2024-06-18', 119, 855, 3, 716742972, 2, '', 0, 100, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(348, '2024-06-18 14:10:50', '00:00:00', '00:00:00', '2024-06-18', 120, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(349, '2024-06-18 14:15:50', '14:39:28', '00:00:00', '2024-06-18', 121, 855, 0, 0, 9, '', 0, 0, 1382, 'LIMETE', 0, 'nyamabo', 'retrait'),
	(350, '2024-06-18 14:19:00', '00:00:00', '00:00:00', '2024-06-18', 122, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(351, '2024-06-18 14:19:27', '00:00:00', '00:00:00', '2024-06-18', 123, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(352, '2024-06-18 14:19:51', '00:00:00', '00:00:00', '2024-06-18', 124, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(353, '2024-06-18 14:21:12', '00:00:00', '00:00:00', '2024-06-18', 125, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(354, '2024-06-18 14:24:26', '00:00:00', '00:00:00', '2024-06-18', 126, 861, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'western union'),
	(355, '2024-06-18 14:41:15', '00:00:00', '00:00:00', '2024-06-18', 127, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(356, '2024-06-19 08:08:11', '00:00:00', '00:00:00', '2024-06-19', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(357, '2024-06-19 08:08:42', '00:00:00', '00:00:00', '2024-06-19', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(358, '2024-06-19 08:47:31', '00:00:00', '00:00:00', '2024-06-19', 3, 867, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'airtel money'),
	(359, '2024-06-19 08:48:01', '00:00:00', '00:00:00', '2024-06-19', 4, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(360, '2024-06-19 08:48:48', '00:00:00', '00:00:00', '2024-06-19', 5, 869, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait chequier'),
	(361, '2024-06-19 08:48:57', '00:00:00', '00:00:00', '2024-06-19', 6, 867, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'airtel money'),
	(362, '2024-06-19 08:49:23', '00:00:00', '00:00:00', '2024-06-19', 7, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(363, '2024-06-19 10:37:02', '00:00:00', '00:00:00', '2024-06-19', 8, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(365, '2024-06-19 10:40:00', '00:00:00', '00:00:00', '2024-06-19', 10, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(366, '2024-06-19 12:17:39', '00:00:00', '00:00:00', '2024-06-19', 11, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(367, '2024-06-19 12:18:06', '00:00:00', '00:00:00', '2024-06-19', 12, 883, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'achat carte cash express'),
	(368, '2024-06-19 14:13:51', '00:00:00', '00:00:00', '2024-06-19', 13, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(369, '2024-06-19 14:14:02', '00:00:00', '00:00:00', '2024-06-19', 14, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(370, '2024-06-26 12:25:09', '00:00:00', '00:00:00', '2024-06-26', 1, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(371, '2024-06-27 13:37:06', '00:00:00', '00:00:00', '2024-06-27', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(372, '2024-06-27 13:37:17', '00:00:00', '00:00:00', '2024-06-27', 2, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(373, '2024-07-01 14:23:09', '00:00:00', '00:00:00', '2024-07-01', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(375, '2024-07-01 14:25:27', '00:00:00', '00:00:00', '2024-07-01', 3, 863, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'visa usa'),
	(376, '2024-07-01 14:28:40', '00:00:00', '00:00:00', '2024-07-01', 4, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(377, '2024-07-03 09:04:08', '00:00:00', '00:00:00', '2024-07-03', 1, 862, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'cash express'),
	(378, '2024-07-03 09:44:54', '00:00:00', '00:00:00', '2024-07-03', 2, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(379, '2024-07-03 10:52:36', '00:00:00', '00:00:00', '2024-07-03', 3, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(380, '2024-07-03 12:41:11', '00:00:00', '00:00:00', '2024-07-03', 4, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(381, '2024-07-03 13:37:57', '00:00:00', '00:00:00', '2024-07-03', 5, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(382, '2024-07-03 13:38:11', '00:00:00', '00:00:00', '2024-07-03', 6, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(383, '2024-07-04 09:30:29', '00:00:00', '00:00:00', '2024-07-04', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(384, '2024-07-04 11:59:29', '00:00:00', '00:00:00', '2024-07-04', 2, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(385, '2024-07-04 11:59:52', '00:00:00', '00:00:00', '2024-07-04', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot'),
	(383, '2024-07-04 09:30:29', '00:00:00', '00:00:00', '2024-07-04', 1, 855, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'retrait'),
	(384, '2024-07-04 11:59:29', '00:00:00', '00:00:00', '2024-07-04', 2, 857, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'ouverture compte'),
	(385, '2024-07-04 11:59:52', '00:00:00', '00:00:00', '2024-07-04', 3, 856, 0, 0, 1, '', 0, 0, 1382, 'LIMETE', 0, NULL, 'depot');

CREATE TABLE IF NOT EXISTS `tb_ticket_transfert` (
  `ticket_transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `send` int(11) NOT NULL,
  `ticket_transfer_date` datetime DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  PRIMARY KEY (`ticket_transfer_id`),
  KEY `tb_ticket_transfert_tb_ticket_ticket_id_fk` (`ticket_id`),
  CONSTRAINT `tb_ticket_transfert_tb_ticket_ticket_id_fk` FOREIGN KEY (`ticket_id`) REFERENCES `tb_ticket` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_ticket_transfert` (`ticket_transfer_id`, `owner`, `send`, `ticket_transfer_date`, `ticket_id`) VALUES
	(1, 1092, 716742972, '2024-05-08 15:34:54', 84),
	(2, 716742972, 716742982, '2024-06-17 09:58:01', 134),
	(3, 716742981, 716742972, '2024-06-17 10:31:44', 136),
	(4, 716742972, 716742973, '2024-06-17 11:01:44', 146),
	(5, 716742972, 716742982, '2024-06-17 13:40:33', 201),
	(6, 716742983, 716742972, '2024-06-17 13:41:04', 200),
	(7, 716742983, 716742973, '2024-06-18 08:43:36', 232),
	(8, 716742972, 716742983, '2024-06-18 10:20:18', 265),
	(9, 716742983, 716742982, '2024-06-18 12:26:43', 295),
	(10, 716742983, 716742982, '2024-06-18 13:08:14', 318),
	(11, 716742972, 716742983, '2024-06-18 13:30:51', 326),
	(12, 716742972, 716742983, '2024-06-18 13:50:59', 327);

CREATE TABLE IF NOT EXISTS `tb_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_status` int(11) NOT NULL,
  `partenaire_id` int(11) NOT NULL,
  `creation_date` timestamp NULL DEFAULT current_timestamp(),
  `version` int(11) DEFAULT 1,
  `user_mail` varchar(45) DEFAULT NULL,
  `user_is_connect` int(11) DEFAULT 0,
  `user_type_connexion` int(11) DEFAULT 0,
  `user_code` varchar(95) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_login_unique` (`user_login`),
  KEY `partenaire_user` (`partenaire_id`) USING BTREE,
  CONSTRAINT `partenaireuser` FOREIGN KEY (`partenaire_id`) REFERENCES `tb_partenaire` (`partenaireid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=716745748 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_users` (`user_id`, `user_login`, `user_name`, `user_lastname`, `user_password`, `user_status`, `partenaire_id`, `creation_date`, `version`, `user_mail`, `user_is_connect`, `user_type_connexion`, `user_code`) VALUES
	(1092, 'Ecobank', 'Ecobank', 'Ecobank', '93-8355127-53-38-64-32-1227762-4022-345144', 1, 16, '2024-06-17 08:50:31', 3, '0', 1, 0, '0'),
	(716742970, 'gsita', 'sita', 'gabriel', '-67-10147-373792274-6712-7913-7140-32-72-128', 1, 16, '2024-05-07 13:14:00', 3, '0', 0, 0, 'gsita'),
	(716742971, 'glutumba', 'lutumba', 'guerschom', '89-19-50-8083-8-36-32120-7-578255426-114', 1, 16, '2024-05-07 13:14:00', 3, '0', 0, 0, 'glutumba'),
	(716742972, 'nyamabo', 'nyamabo', 'mamie', '-100112-797142-32-6740-877231-39269-2348', 1, 16, '2024-06-17 09:28:09', 3, '0', 0, 0, 'nyamabo'),
	(716742973, 'kokanya', 'kokanya', 'fiston', '5012441-58127-27-8223-10379-11345-3474-55-76', 1, 16, '2024-06-17 09:54:53', 3, '0', 0, 0, 'kokanya'),
	(716742974, 'tekadanga', 'tekadanga', 'germain', '76-44-108-125-77-15-118-104-9853-37-89-3-38444', 1, 16, '2024-05-08 11:55:48', 3, '0', 0, 0, 'tekadanga'),
	(716742975, 'simon', 'saisi', 'simon', '87121-10389119-12550111-55-8-73-102-56-88124-71', 1, 16, '2024-05-07 17:18:20', 3, '0', 0, 0, 'simon'),
	(716742976, 'beni', 'wenele', 'beni', '-50-40-106-99-5656-9312099-66-4756127861476', 1, 16, '2024-06-17 09:47:50', 3, '0', 0, 0, 'beni'),
	(716742977, 'odia', 'odia', 'genie', '16101-93-119111-4476-34-52115-76-76112-1055350', 1, 16, '2024-05-07 14:17:56', 3, '0', 0, 0, 'odia'),
	(716742978, 'ndombe', 'ndombe', 'laryssa', '3288-61-48-39-64-9990-145222-2-41-512316', 1, 16, '2024-05-07 13:47:32', 3, '0', 0, 0, 'ndombe'),
	(716742979, 'mwalumba', 'mwalumba', 'divine', '-23-653157-11-12383-124-295131-359392113125', 1, 16, '2024-05-07 13:47:32', 2, '0', 0, 0, 'mwalumba'),
	(716742980, 'ugalula', 'ugalula', 'patience', '116398716-14110-24-89-20-86115-110931081677', 1, 16, '2024-05-07 13:47:32', 2, '0', 0, 0, 'ugalula'),
	(716742981, 'lutala', 'mutala', 'tatiana', '30-12-46278990-15-80-16-11812571-9330-5', 1, 16, '2024-06-17 08:39:11', 2, '0', 0, 0, 'lutala'),
	(716742982, 'mutala', 'mutala', 'tatiana', '127-63-12-2808960-110-593123-123-96107120-6', 1, 16, '2024-06-17 08:51:41', 2, '0', 0, 0, 'mutala'),
	(716742983, 'nyota', 'nyota', 'sylvie', '-1998-1630-110-357-11318-116-8-96-97-8412173', 1, 16, '2024-06-17 09:08:43', 2, NULL, 0, 0, 'nyota');

CREATE TABLE IF NOT EXISTS `tb_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_name` varchar(50) NOT NULL DEFAULT 'V0',
  `video_desc` varchar(150) NOT NULL DEFAULT 'aucun',
  `video_create_date` datetime DEFAULT current_timestamp(),
  `video_modify_date` datetime DEFAULT current_timestamp(),
  `video_create_user_id` int(11) DEFAULT 0,
  `video_modify_user_id` int(11) DEFAULT 0,
  `video_status` tinyint(4) NOT NULL DEFAULT 1,
  `video_key` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tb_video` (`video_id`, `video_name`, `video_desc`, `video_create_date`, `video_modify_date`, `video_create_user_id`, `video_modify_user_id`, `video_status`, `video_key`) VALUES
	(162, 'ecobank_mpesa.mp4', 'mpesa', '2024-05-07 15:44:08', NULL, 0, 0, 1, '435ef794-caf6-4cf8-a70e-6d1af3f56de5'),
	(163, 'vid-20180814-wa0005.mp4', 'Vd', '2024-05-07 15:44:35', NULL, 0, 0, 1, '146b4477-6b6f-4fd3-95a2-b56fe97667b9'),
	(164, 'ecobank official.mp4', 'Officiel', '2024-05-07 15:45:59', NULL, 0, 0, 1, 'bb149d95-8368-456d-abd7-eb2346aaef75'),
	(165, 'spot cashxpress 2019 tv.mp4', 'Ashexpress', '2024-05-07 15:46:19', NULL, 0, 0, 1, '8b37628f-18e8-4f06-bf45-ddd0547e8ada');

CREATE TABLE IF NOT EXISTS `tb_video_agence` (
  `video_agence_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `agence_id` int(11) NOT NULL,
  PRIMARY KEY (`video_agence_id`),
  KEY `FK_tb_video_agence_agence_id` (`agence_id`),
  KEY `FK_tb_video_agence_video_id` (`video_id`),
  CONSTRAINT `FK_tb_video_agence_agence_id` FOREIGN KEY (`agence_id`) REFERENCES `tb_agence` (`agence_id`),
  CONSTRAINT `FK_tb_video_agence_video_id` FOREIGN KEY (`video_id`) REFERENCES `tb_video` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `tb_vip` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_number` varchar(20) NOT NULL,
  `vip_region_name` varchar(90) DEFAULT NULL,
  `vip_status` tinyint(1) DEFAULT 1,
  `vip_create_date` datetime DEFAULT NULL,
  `vip_create_user` int(11) DEFAULT 0,
  `vip_modify_user` int(11) DEFAULT 0,
  `vip_modify_date` datetime DEFAULT NULL,
  `vip_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`vip_id`),
  UNIQUE KEY `tb_vip_vip_number_uindex` (`vip_number`)
) ENGINE=InnoDB AUTO_INCREMENT=23766 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `v_authenticate` (
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_password` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_is_connect` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_count_service` (
	`total` BIGINT(21) NOT NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_service_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_count_ticket_user` (
	`total` BIGINT(21) NOT NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_user_id` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_count_ticket_user_service` (
	`total` BIGINT(21) NOT NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_service_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_fileattente` (
	`mouvement_id` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`user_is_connect` INT(11) NULL,
	`ticket_id` INT(11) NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`mouvement_guichet_id` INT(11) NOT NULL,
	`mouvement_date` DATE NOT NULL,
	`mouvement_service_id` INT(11) NOT NULL,
	`mouvement_status` INT(11) NULL,
	`guichet_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_date` DATETIME NOT NULL,
	`mouvement_heure_debut` TIME NULL,
	`mouvement_heure_fin` TIME NULL
) ENGINE=MyISAM;

CREATE TABLE `v_fileattente2` (
	`mouvement_id` INT(11) NOT NULL,
	`mouvement_guichet_id` INT(11) NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`mouvement_date` DATE NOT NULL,
	`mouvement_service_id` INT(11) NOT NULL,
	`mouvement_status` INT(11) NULL,
	`guichet_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_menu` (
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleId` INT(11) NULL,
	`role_nom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegeicon` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegecode2` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegeId` INT(11) NOT NULL,
	`privilegeNom` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegeIsMenu` INT(11) NULL,
	`privilegeIsParent` INT(11) NULL,
	`privilegeParentId` INT(11) NULL,
	`privilegeCode` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_module` (
	`moduleId` INT(11) NOT NULL,
	`moduleNom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleCode` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleStatus` INT(11) NULL,
	`partenaire_id` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_module_partenaire` (
	`moduleId` INT(11) NOT NULL,
	`moduleNom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleCode` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`partenaire_id` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_module_privilege` (
	`privilegeNom` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegeId` INT(11) NOT NULL,
	`partenaireid` INT(11) NOT NULL,
	`role_id` INT(11) NOT NULL,
	`moduleNom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleid` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_mouvement_tichet` (
	`mouvement_id` INT(11) NOT NULL,
	`mouvement_service_id` INT(11) NOT NULL,
	`mouvement_guichet_id` INT(11) NOT NULL,
	`mouvement_ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`mouvement_date` DATE NOT NULL,
	`mouvement_heure_debut` TIME NULL,
	`mouvement_heure_fin` TIME NULL
) ENGINE=MyISAM;

CREATE TABLE `v_partenaire` (
	`partenaireid` INT(11) NOT NULL,
	`partenairenom` VARCHAR(75) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`partenairestatus` INT(11) NULL,
	`partenaire_sigle` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`background_id` INT(11) NOT NULL,
	`background_image` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`background_color` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`background_text` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`logo_id` INT(11) NOT NULL,
	`logo_nom` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_privilegenom` (
	`privilegeid` INT(11) NOT NULL,
	`privilegeNom` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleNom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleid` INT(11) NOT NULL,
	`partenaire_id` INT(11) NULL,
	`user_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_rapport` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_lastname` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_password` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_status` INT(11) NOT NULL,
	`partenaire_id` INT(11) NOT NULL,
	`creation_date` TIMESTAMP NULL,
	`version` INT(11) NULL,
	`user_mail` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`user_is_connect` INT(11) NULL,
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_create_user_id` INT(11) NULL,
	`service_modify_user_id` INT(11) NULL,
	`service_create_date` DATE NULL,
	`service_modify_date` DATE NULL,
	`service_status` INT(11) NULL,
	`service_icon` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_id` INT(11) NOT NULL,
	`guichet2_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_status` INT(11) NOT NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`user_code` VARCHAR(95) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_rapport02` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_total_execute` BIGINT(21) NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_lastname` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_password` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_status` INT(11) NOT NULL,
	`partenaire_id` INT(11) NOT NULL,
	`creation_date` TIMESTAMP NULL,
	`version` INT(11) NULL,
	`user_mail` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`user_is_connect` INT(11) NULL,
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_create_user_id` INT(11) NULL,
	`service_modify_user_id` INT(11) NULL,
	`service_create_date` DATE NULL,
	`service_modify_date` DATE NULL,
	`service_status` INT(11) NULL,
	`service_icon` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_id` INT(11) NOT NULL,
	`guichet2_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_status` INT(11) NOT NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`user_code` VARCHAR(95) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_rapport_mouvement` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_lastname` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_password` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_status` INT(11) NOT NULL,
	`partenaire_id` INT(11) NOT NULL,
	`creation_date` TIMESTAMP NULL,
	`version` INT(11) NULL,
	`user_mail` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`user_is_connect` INT(11) NULL,
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_create_user_id` INT(11) NULL,
	`service_modify_user_id` INT(11) NULL,
	`service_create_date` DATE NULL,
	`service_modify_date` DATE NULL,
	`service_status` INT(11) NULL,
	`service_icon` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_id` INT(11) NOT NULL,
	`guichet2_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_status` INT(11) NOT NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`user_code` VARCHAR(95) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_region_agence` (
	`agence_id` INT(11) NOT NULL,
	`agence_nom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_ip` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_status` INT(11) NOT NULL,
	`partenaire_id` INT(11) NULL,
	`agence_is_primary` TINYINT(1) NULL,
	`agence_heure_ouverture` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_heure_fermeture` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_code` VARCHAR(99) NULL COLLATE 'utf8mb4_unicode_ci',
	`is_master` INT(11) NULL,
	`region_id` INT(11) NOT NULL,
	`region_nom` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`region_status` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_role` (
	`role_id` INT(11) NOT NULL,
	`role_nom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`role_status` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`partenaire_id` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_role_privilege` (
	`privilegeNom` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegeId` INT(11) NOT NULL,
	`partenaireid` INT(11) NOT NULL,
	`role_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_role_privilege2` (
	`privilegeNom` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegeId` INT(11) NOT NULL,
	`partenaire_id` INT(11) NULL,
	`role_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_role_user_partenaire` (
	`role_nom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`role_id` INT(11) NOT NULL,
	`partenaire_id` INT(11) NOT NULL,
	`role_status` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_status` INT(11) NOT NULL,
	`user_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`partenairenom` VARCHAR(75) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`partenairestatus` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_role_user_privilege` (
	`privilegeid` INT(11) NOT NULL,
	`privilegeNom` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`privilegecode` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`moduleid` INT(11) NULL,
	`user_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_satisfaction` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_lastname` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_password` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_status` INT(11) NOT NULL,
	`partenaire_id` INT(11) NOT NULL,
	`creation_date` TIMESTAMP NULL,
	`version` INT(11) NULL,
	`user_mail` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`user_is_connect` INT(11) NULL,
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_create_user_id` INT(11) NULL,
	`service_modify_user_id` INT(11) NULL,
	`service_create_date` DATE NULL,
	`service_modify_date` DATE NULL,
	`service_status` INT(11) NULL,
	`service_icon` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_id` INT(11) NOT NULL,
	`guichet2_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_status` INT(11) NOT NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`user_code` VARCHAR(95) NULL COLLATE 'utf8mb4_unicode_ci',
	`date_satisfaction` DATE NULL,
	`satisfaction` VARCHAR(100) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket` INT(11) NULL,
	`raison` VARCHAR(200) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_satisfaction02` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_is_vip` INT(11) NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`ticket_user_login` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_service_name` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`date_satisfaction` DATE NULL,
	`satisfaction` VARCHAR(100) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket` INT(11) NULL,
	`raison` VARCHAR(200) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_satisfaction03` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_lastname` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_password` VARCHAR(250) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_status` INT(11) NOT NULL,
	`partenaire_id` INT(11) NOT NULL,
	`creation_date` TIMESTAMP NULL,
	`version` INT(11) NULL,
	`user_mail` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`user_is_connect` INT(11) NULL,
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_create_user_id` INT(11) NULL,
	`service_modify_user_id` INT(11) NULL,
	`service_create_date` DATE NULL,
	`service_modify_date` DATE NULL,
	`service_status` INT(11) NULL,
	`service_icon` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_id` INT(11) NOT NULL,
	`guichet2_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet2_status` INT(11) NOT NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`user_code` VARCHAR(95) NULL COLLATE 'utf8mb4_unicode_ci',
	`date_satisfaction` DATE NULL,
	`satisfaction` VARCHAR(100) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket` INT(11) NULL,
	`raison` VARCHAR(200) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_service_agence` (
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_key` VARCHAR(250) NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_nom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_key` VARCHAR(250) NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_service_group` (
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_create_user_id` INT(11) NULL,
	`service_modify_user_id` INT(11) NULL,
	`service_create_date` DATE NULL,
	`service_modify_date` DATE NULL,
	`service_status` INT(11) NULL,
	`service_icon` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_manager_id` INT(11) NOT NULL,
	`service_priority` INT(11) NULL,
	`service_mono_file` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_service_guichet` (
	`service_id` INT(11) NOT NULL,
	`guichet_type_id` INT(11) NULL,
	`guichet_id` INT(11) NOT NULL,
	`guichet_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet_status` INT(11) NOT NULL,
	`guichet_service` INT(11) NOT NULL,
	`guichet_order` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_service_guichet_type` (
	`service_id` INT(11) NOT NULL,
	`guichet_type_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`guichet_type_code` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_service_guichet_user` (
	`service_id` INT(11) NULL,
	`guichet_id` INT(11) NULL,
	`user_id` INT(11) NULL,
	`user_is_connect` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_service_user` (
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`medecin_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_ticket_service` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_is_vip` INT(11) NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`ticket_user_login` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_service_name` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci',
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_ticket_transfer` (
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_is_vip` INT(11) NULL,
	`owner` INT(11) NOT NULL,
	`ticket_service_name` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_ticket_vip` (
	`vip_id` INT(11) NOT NULL,
	`vip_number` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`vip_region_name` VARCHAR(90) NULL COLLATE 'utf8mb4_unicode_ci',
	`vip_status` TINYINT(1) NULL,
	`vip_create_date` DATETIME NULL,
	`vip_create_user` INT(11) NULL,
	`vip_modify_user` INT(11) NULL,
	`vip_modify_date` DATETIME NULL,
	`vip_name` VARCHAR(40) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_id` INT(11) NOT NULL,
	`ticket_date` DATETIME NOT NULL,
	`ticket_heure_debut` TIME NULL,
	`ticket_heure_fin` TIME NULL,
	`ticket_date2` DATE NOT NULL,
	`ticket_number` INT(11) NOT NULL,
	`ticket_service_id` INT(11) NOT NULL,
	`ticket_guichet` INT(11) NULL,
	`ticket_user_id` INT(11) NULL,
	`ticket_status` INT(11) NOT NULL,
	`ticket_client_number` VARCHAR(20) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_is_vip` INT(11) NULL,
	`ticket_raison_id` INT(11) NULL,
	`ticket_agence_id` INT(11) NULL,
	`ticket_agence_nom` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_syncronized` INT(11) NULL,
	`ticket_user_login` VARCHAR(50) NULL COLLATE 'utf8mb4_unicode_ci',
	`ticket_service_name` VARCHAR(255) NULL COLLATE 'utf8mb4_unicode_ci'
) ENGINE=MyISAM;

CREATE TABLE `v_users` (
	`user_id` INT(11) NOT NULL,
	`user_login` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_lastname` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_mail` VARCHAR(45) NULL COLLATE 'utf8mb4_unicode_ci',
	`user_status` INT(11) NOT NULL,
	`partenaireid` INT(11) NOT NULL,
	`role_id` INT(11) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `v_verify_group` (
	`service_id` INT(11) NOT NULL,
	`service_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_desc` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_create_user_id` INT(11) NULL,
	`service_modify_user_id` INT(11) NULL,
	`service_create_date` DATE NULL,
	`service_modify_date` DATE NULL,
	`service_status` INT(11) NULL,
	`service_icon` TEXT NULL COLLATE 'utf8mb4_unicode_ci',
	`service_priority` INT(11) NULL,
	`service_mono_file` INT(11) NULL
) ENGINE=MyISAM;

CREATE TABLE `v_video_agence` (
	`video_id` INT(11) NOT NULL,
	`video_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`video_desc` VARCHAR(150) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`video_key` VARCHAR(250) NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_nom` VARCHAR(45) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_key` VARCHAR(250) NULL COLLATE 'utf8mb4_unicode_ci',
	`agence_id` INT(11) NOT NULL
) ENGINE=MyISAM;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tb_ticket_del` AFTER DELETE ON `tb_ticket` FOR EACH ROW BEGIN

    DELETE FROM tb_ticket_mouvement

    WHERE ticket_id = OLD.ticket_id;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tb_ticket_ins` AFTER INSERT ON `tb_ticket` FOR EACH ROW BEGIN
    INSERT INTO tb_ticket_mouvement
    VALUES (NEW.ticket_id, NEW.ticket_date, NEW.ticket_heure_debut
               , NEW.ticket_heure_fin, NEW.ticket_date2,NEW.ticket_number,NEW.ticket_service_id,NEW.ticket_guichet,
            NEW.ticket_user_id,NEW.ticket_status,NEW.ticket_client_number,NEW.ticket_is_vip,NEW.ticket_raison_id,
            NEW.ticket_agence_id,NEW.ticket_agence_nom,NEW.ticket_syncronized,NEW.ticket_user_login,NEW.ticket_service_name) ;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `tb_ticket_upd` AFTER UPDATE ON `tb_ticket` FOR EACH ROW BEGIN

    UPDATE tb_ticket_mouvement

    SET ticket_status = NEW.ticket_status

      , ticket_client_number = NEW.ticket_client_number

      , ticket_raison_id = NEW.ticket_raison_id

      , ticket_user_id = NEW.ticket_user_id

      , ticket_guichet = NEW.ticket_guichet

      ,ticket_heure_debut = NEW.ticket_heure_debut

      ,ticket_heure_fin = NEW.ticket_heure_fin

      ,ticket_user_login=NEW.ticket_user_login

    WHERE ticket_date = OLD.ticket_date and ticket_number=OLD.ticket_number;



END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `v_rmanager` AFTER UPDATE ON `tb_guichet2` FOR EACH ROW BEGIN

   

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `v_sticketUser` AFTER UPDATE ON `tb_ticket` FOR EACH ROW BEGIN



END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

DROP TABLE IF EXISTS `v_authenticate`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_authenticate` AS select `b`.`user_id` AS `user_id`,`b`.`user_login` AS `user_login`,`b`.`user_password` AS `user_password`,`b`.`user_is_connect` AS `user_is_connect` from (((`tb_role` `a` join `tb_users` `b`) join `tb_role_user` `c`) join `tb_partenaire` `d`) where ((`a`.`role_status` = 1) and (`b`.`user_status` = 1) and (`d`.`partenairestatus` = 1) and (`b`.`user_id` = `c`.`user_id`) and (`a`.`role_id` = `c`.`role_id`) and (`d`.`partenaireid` = `a`.`partenaire_id`) and (`d`.`partenaireid` = `b`.`partenaire_id`)) group by `b`.`user_login`,`b`.`user_password` ;

DROP TABLE IF EXISTS `v_count_service`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_count_service` AS select count(`tb_ticket`.`ticket_id`) AS `total`,`tb_ticket`.`ticket_date2` AS `ticket_date2`,`tb_ticket`.`ticket_service_id` AS `ticket_service_id` from `tb_ticket` group by `tb_ticket`.`ticket_date2`,`tb_ticket`.`ticket_service_id` ;

DROP TABLE IF EXISTS `v_count_ticket_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_count_ticket_user` AS select count(`tb_ticket`.`ticket_id`) AS `total`,`tb_ticket`.`ticket_date2` AS `ticket_date2`,`tb_ticket`.`ticket_user_id` AS `ticket_user_id` from `tb_ticket` group by `tb_ticket`.`ticket_date2`,`tb_ticket`.`ticket_user_id` ;

DROP TABLE IF EXISTS `v_count_ticket_user_service`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_count_ticket_user_service` AS select count(`tb_ticket`.`ticket_id`) AS `total`,`tb_ticket`.`ticket_date2` AS `ticket_date2`,`tb_ticket`.`ticket_user_id` AS `ticket_user_id`,`tb_ticket`.`ticket_service_id` AS `ticket_service_id` from `tb_ticket` group by `tb_ticket`.`ticket_date2`,`tb_ticket`.`ticket_user_id`,`tb_ticket`.`ticket_service_id` ;

DROP TABLE IF EXISTS `v_fileattente`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fileattente` AS select `m`.`mouvement_id` AS `mouvement_id`,`a`.`user_id` AS `user_id`,`a`.`user_is_connect` AS `user_is_connect`,`t`.`ticket_id` AS `ticket_id`,`t`.`ticket_number` AS `ticket_number`,`a`.`user_login` AS `user_login`,`m`.`mouvement_guichet_id` AS `mouvement_guichet_id`,`m`.`mouvement_date` AS `mouvement_date`,`m`.`mouvement_service_id` AS `mouvement_service_id`,`m`.`mouvement_status` AS `mouvement_status`,`g`.`guichet_code` AS `guichet_code`,`t`.`ticket_date` AS `ticket_date`,`m`.`mouvement_heure_debut` AS `mouvement_heure_debut`,`m`.`mouvement_heure_fin` AS `mouvement_heure_fin` from (((((`tb_mouvement` `m` join `tb_ticket` `t`) join `tb_service_medecin` `b`) join `tb_users` `a`) join `tb_service` `s`) join `tb_guichet` `g`) where ((`m`.`mouvement_ticket_id` = `t`.`ticket_id`) and (`m`.`mouvement_service_id` = `s`.`service_id`) and (`g`.`guichet_id` = `m`.`mouvement_guichet_id`) and (`a`.`user_id` = `b`.`medecin_id`) and (`s`.`service_id` = `b`.`service_id`) and (`a`.`user_status` = 1) and (`s`.`service_status` = 1) and (`m`.`mouvement_status` = 1) and (`a`.`user_is_connect` = 1)) ;

DROP TABLE IF EXISTS `v_fileattente2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fileattente2` AS select `m`.`mouvement_id` AS `mouvement_id`,`m`.`mouvement_guichet_id` AS `mouvement_guichet_id`,`t`.`ticket_number` AS `ticket_number`,`u`.`user_login` AS `user_login`,`m`.`mouvement_date` AS `mouvement_date`,`m`.`mouvement_service_id` AS `mouvement_service_id`,`m`.`mouvement_status` AS `mouvement_status`,`g`.`guichet_code` AS `guichet_code` from (((((`tb_mouvement` `m` join `tb_service_medecin` `sm`) join `tb_ticket` `t`) join `tb_guichet` `g`) join `tb_users` `u`) join `tb_service` `s`) where ((`g`.`guichet_id` = `m`.`mouvement_guichet_id`) and (`t`.`ticket_id` = `m`.`mouvement_ticket_id`) and (`m`.`mouvement_status` = 1) and (`g`.`guichet_status` = 1) and (`u`.`user_id` = `sm`.`medecin_id`) and (`u`.`user_status` = 1) and (`m`.`mouvement_service_id` = `s`.`service_id`) and (`s`.`service_status` = 1)) ;

DROP TABLE IF EXISTS `v_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_menu` AS select `b`.`user_login` AS `user_login`,`e`.`moduleid` AS `moduleId`,`c`.`role_nom` AS `role_nom`,`e`.`privilegeicon` AS `privilegeicon`,`e`.`privilegecode2` AS `privilegecode2`,`e`.`privilegeid` AS `privilegeId`,`e`.`privilegenom` AS `privilegeNom`,`e`.`privilegeismenu` AS `privilegeIsMenu`,`e`.`privilegeisparent` AS `privilegeIsParent`,`e`.`privilegeparentid` AS `privilegeParentId`,`e`.`privilegecode` AS `privilegeCode` from (((((`tb_privilege` `e` join `tb_role` `c`) join `tb_partenaire` `a`) join `tb_users` `b`) join `tb_role_user` `d`) join `tb_role_privilege` `f`) where ((`a`.`partenaireid` = `b`.`partenaire_id`) and (`a`.`partenaireid` = `c`.`partenaire_id`) and (`b`.`user_id` = `d`.`user_id`) and (`c`.`role_id` = `d`.`role_id`) and (`c`.`role_id` = `f`.`role_id`) and (`e`.`privilegeid` = `f`.`privilege_id`) and (`b`.`user_status` = 1) and (`c`.`role_status` = 1)) ;

DROP TABLE IF EXISTS `v_module`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_module` AS select `a`.`moduleid` AS `moduleId`,`a`.`modulenom` AS `moduleNom`,`a`.`modulecode` AS `moduleCode`,`a`.`modulestatus` AS `moduleStatus`,`c`.`partenaire_id` AS `partenaire_id` from ((`tb_module` `a` join `tb_partenaire` `b`) join `tb_module_partenaire` `c`) where ((`a`.`moduleid` = `c`.`module_id`) and (`c`.`partenaire_id` = `b`.`partenaireid`)) ;

DROP TABLE IF EXISTS `v_module_partenaire`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_module_partenaire` AS select `a`.`moduleid` AS `moduleId`,`a`.`modulenom` AS `moduleNom`,`a`.`modulecode` AS `moduleCode`,`c`.`partenaire_id` AS `partenaire_id` from (`tb_module` `a` join `tb_module_partenaire` `c`) where ((`a`.`moduleid` = `c`.`module_id`) and (`a`.`modulestatus` = 1)) order by `a`.`moduleid` desc ;

DROP TABLE IF EXISTS `v_module_privilege`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_module_privilege` AS select `e`.`privilegenom` AS `privilegeNom`,`e`.`privilegeid` AS `privilegeId`,`a`.`partenaireid` AS `partenaireid`,`c`.`role_id` AS `role_id`,`d`.`modulenom` AS `moduleNom`,`d`.`moduleid` AS `moduleid` from (((((`tb_privilege` `e` join `tb_role` `c`) join `tb_partenaire` `a`) join `tb_role_privilege` `b`) join `tb_module` `d`) join `tb_module_partenaire` `f`) where ((`a`.`partenaireid` = `c`.`partenaire_id`) and (`e`.`moduleid` = `d`.`moduleid`) and (`c`.`role_id` = `b`.`role_id`) and (`b`.`privilege_id` = `e`.`privilegeid`) and (`c`.`role_status` = 1) and (`f`.`partenaire_id` = `a`.`partenaireid`) and (`e`.`moduleid` = `f`.`module_id`)) order by `e`.`privilegenom` ;

DROP TABLE IF EXISTS `v_mouvement_tichet`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mouvement_tichet` AS select `a`.`mouvement_id` AS `mouvement_id`,`a`.`mouvement_service_id` AS `mouvement_service_id`,`a`.`mouvement_guichet_id` AS `mouvement_guichet_id`,`a`.`mouvement_ticket_id` AS `mouvement_ticket_id`,`b`.`ticket_date` AS `ticket_date`,`b`.`ticket_number` AS `ticket_number`,`a`.`mouvement_date` AS `mouvement_date`,`a`.`mouvement_heure_debut` AS `mouvement_heure_debut`,`a`.`mouvement_heure_fin` AS `mouvement_heure_fin` from (`tb_mouvement` `a` join `tb_ticket` `b`) where (`a`.`mouvement_service_id` = `b`.`ticket_service_id`) ;

DROP TABLE IF EXISTS `v_partenaire`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_partenaire` AS select `a`.`partenaireid` AS `partenaireid`,`a`.`partenairenom` AS `partenairenom`,`a`.`partenairestatus` AS `partenairestatus`,`a`.`partenaire_sigle` AS `partenaire_sigle`,`b`.`background_id` AS `background_id`,`b`.`background_image` AS `background_image`,`b`.`background_color` AS `background_color`,`b`.`background_text` AS `background_text`,`c`.`logo_id` AS `logo_id`,`c`.`logo_nom` AS `logo_nom` from ((`tb_partenaire` `a` join `tb_background` `b`) join `tb_logo` `c`) where ((`a`.`partenaireid` = `b`.`partenaire_id`) and (`b`.`partenaire_id` = `c`.`partenaire_id`)) ;

DROP TABLE IF EXISTS `v_privilegenom`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_privilegenom` AS select `a`.`privilegeid` AS `privilegeid`,`a`.`privilegenom` AS `privilegeNom`,`b`.`modulenom` AS `moduleNom`,`b`.`moduleid` AS `moduleid`,`d`.`partenaire_id` AS `partenaire_id`,`f`.`user_id` AS `user_id` from (((((`tb_privilege` `a` join `tb_module` `b`) join `tb_partenaire` `c`) join `tb_module_partenaire` `d`) join `tb_role_privilege` `e`) join `tb_role_user` `f`) where ((`a`.`moduleid` = `b`.`moduleid`) and (`b`.`moduleid` = `d`.`module_id`) and (`c`.`partenaireid` = `d`.`partenaire_id`) and (`a`.`privilegeid` = `e`.`privilege_id`) and (`e`.`role_id` = `f`.`role_id`)) ;

DROP TABLE IF EXISTS `v_rapport`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rapport` AS select `a`.`ticket_id` AS `ticket_id`,`a`.`ticket_date` AS `ticket_date`,`a`.`ticket_heure_debut` AS `ticket_heure_debut`,`a`.`ticket_heure_fin` AS `ticket_heure_fin`,`a`.`ticket_date2` AS `ticket_date2`,`a`.`ticket_number` AS `ticket_number`,`a`.`ticket_service_id` AS `ticket_service_id`,`a`.`ticket_guichet` AS `ticket_guichet`,`a`.`ticket_user_id` AS `ticket_user_id`,`a`.`ticket_status` AS `ticket_status`,`b`.`user_id` AS `user_id`,`b`.`user_login` AS `user_login`,`b`.`user_name` AS `user_name`,`b`.`user_lastname` AS `user_lastname`,`b`.`user_password` AS `user_password`,`b`.`user_status` AS `user_status`,`b`.`partenaire_id` AS `partenaire_id`,`b`.`creation_date` AS `creation_date`,`b`.`version` AS `version`,`b`.`user_mail` AS `user_mail`,`b`.`user_is_connect` AS `user_is_connect`,`c`.`service_id` AS `service_id`,`c`.`service_name` AS `service_name`,`c`.`service_desc` AS `service_desc`,`c`.`service_create_user_id` AS `service_create_user_id`,`c`.`service_modify_user_id` AS `service_modify_user_id`,`c`.`service_create_date` AS `service_create_date`,`c`.`service_modify_date` AS `service_modify_date`,`c`.`service_status` AS `service_status`,`c`.`service_icon` AS `service_icon`,`d`.`guichet2_id` AS `guichet2_id`,`d`.`guichet2_code` AS `guichet2_code`,`d`.`guichet2_status` AS `guichet2_status`,`a`.`ticket_raison_id` AS `ticket_raison_id`,`a`.`ticket_client_number` AS `ticket_client_number`,`a`.`ticket_agence_id` AS `ticket_agence_id`,`a`.`ticket_agence_nom` AS `ticket_agence_nom`,`a`.`ticket_syncronized` AS `ticket_syncronized`,`b`.`user_code` AS `user_code` from (((`tb_ticket` `a` join `tb_users` `b`) join `tb_service` `c`) join `tb_guichet2` `d`) where ((`a`.`ticket_user_id` = `b`.`user_id`) and (`a`.`ticket_service_id` = `c`.`service_id`) and (`a`.`ticket_guichet` = `d`.`guichet2_id`) and (`b`.`user_status` = 1) and (`c`.`service_status` = 1)) ;

DROP TABLE IF EXISTS `v_rapport02`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rapport02` AS select `a`.`ticket_id` AS `ticket_id`,`a`.`ticket_date` AS `ticket_date`,`a`.`ticket_heure_debut` AS `ticket_heure_debut`,`a`.`ticket_heure_fin` AS `ticket_heure_fin`,`a`.`ticket_date2` AS `ticket_date2`,`a`.`ticket_number` AS `ticket_number`,`a`.`ticket_service_id` AS `ticket_service_id`,(select count(0) from `tb_ticket` `x` where ((`x`.`ticket_user_id` = `b`.`user_id`) and (`x`.`ticket_status` = '0'))) AS `ticket_total_execute`,`a`.`ticket_guichet` AS `ticket_guichet`,`a`.`ticket_user_id` AS `ticket_user_id`,`a`.`ticket_status` AS `ticket_status`,`b`.`user_id` AS `user_id`,`b`.`user_login` AS `user_login`,`b`.`user_name` AS `user_name`,`b`.`user_lastname` AS `user_lastname`,`b`.`user_password` AS `user_password`,`b`.`user_status` AS `user_status`,`b`.`partenaire_id` AS `partenaire_id`,`b`.`creation_date` AS `creation_date`,`b`.`version` AS `version`,`b`.`user_mail` AS `user_mail`,`b`.`user_is_connect` AS `user_is_connect`,`c`.`service_id` AS `service_id`,`c`.`service_name` AS `service_name`,`c`.`service_desc` AS `service_desc`,`c`.`service_create_user_id` AS `service_create_user_id`,`c`.`service_modify_user_id` AS `service_modify_user_id`,`c`.`service_create_date` AS `service_create_date`,`c`.`service_modify_date` AS `service_modify_date`,`c`.`service_status` AS `service_status`,`c`.`service_icon` AS `service_icon`,`d`.`guichet2_id` AS `guichet2_id`,`d`.`guichet2_code` AS `guichet2_code`,`d`.`guichet2_status` AS `guichet2_status`,`a`.`ticket_raison_id` AS `ticket_raison_id`,`a`.`ticket_client_number` AS `ticket_client_number`,`a`.`ticket_agence_id` AS `ticket_agence_id`,`a`.`ticket_agence_nom` AS `ticket_agence_nom`,`a`.`ticket_syncronized` AS `ticket_syncronized`,`b`.`user_code` AS `user_code` from (((`tb_ticket` `a` join `tb_users` `b`) join `tb_service` `c`) join `tb_guichet2` `d`) where ((`a`.`ticket_user_id` = `b`.`user_id`) and (`a`.`ticket_service_id` = `c`.`service_id`) and (`a`.`ticket_guichet` = `d`.`guichet2_id`)) ;

DROP TABLE IF EXISTS `v_rapport_mouvement`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rapport_mouvement` AS select `a`.`ticket_id` AS `ticket_id`,`a`.`ticket_date` AS `ticket_date`,`a`.`ticket_heure_debut` AS `ticket_heure_debut`,`a`.`ticket_heure_fin` AS `ticket_heure_fin`,`a`.`ticket_date2` AS `ticket_date2`,`a`.`ticket_number` AS `ticket_number`,`a`.`ticket_service_id` AS `ticket_service_id`,`a`.`ticket_guichet` AS `ticket_guichet`,`a`.`ticket_user_id` AS `ticket_user_id`,`a`.`ticket_status` AS `ticket_status`,`b`.`user_id` AS `user_id`,`b`.`user_login` AS `user_login`,`b`.`user_name` AS `user_name`,`b`.`user_lastname` AS `user_lastname`,`b`.`user_password` AS `user_password`,`b`.`user_status` AS `user_status`,`b`.`partenaire_id` AS `partenaire_id`,`b`.`creation_date` AS `creation_date`,`b`.`version` AS `version`,`b`.`user_mail` AS `user_mail`,`b`.`user_is_connect` AS `user_is_connect`,`c`.`service_id` AS `service_id`,`c`.`service_name` AS `service_name`,`c`.`service_desc` AS `service_desc`,`c`.`service_create_user_id` AS `service_create_user_id`,`c`.`service_modify_user_id` AS `service_modify_user_id`,`c`.`service_create_date` AS `service_create_date`,`c`.`service_modify_date` AS `service_modify_date`,`c`.`service_status` AS `service_status`,`c`.`service_icon` AS `service_icon`,`d`.`guichet2_id` AS `guichet2_id`,`d`.`guichet2_code` AS `guichet2_code`,`d`.`guichet2_status` AS `guichet2_status`,`a`.`ticket_raison_id` AS `ticket_raison_id`,`a`.`ticket_client_number` AS `ticket_client_number`,`a`.`ticket_agence_id` AS `ticket_agence_id`,`a`.`ticket_agence_nom` AS `ticket_agence_nom`,`a`.`ticket_syncronized` AS `ticket_syncronized`,`b`.`user_code` AS `user_code` from (((`tb_ticket_mouvement` `a` join `tb_users` `b`) join `tb_service` `c`) join `tb_guichet2` `d`) where ((`a`.`ticket_user_id` = `b`.`user_id`) and (`a`.`ticket_service_id` = `c`.`service_id`) and (`a`.`ticket_guichet` = `d`.`guichet2_id`) and ((`a`.`ticket_status` = 0) or (`a`.`ticket_status` = 3))) ;

DROP TABLE IF EXISTS `v_region_agence`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_region_agence` AS select `a`.`agence_id` AS `agence_id`,`a`.`agence_nom` AS `agence_nom`,`a`.`agence_ip` AS `agence_ip`,`a`.`agence_status` AS `agence_status`,`a`.`partenaire_id` AS `partenaire_id`,`a`.`agence_is_primary` AS `agence_is_primary`,`a`.`agence_heure_ouverture` AS `agence_heure_ouverture`,`a`.`agence_heure_fermeture` AS `agence_heure_fermeture`,`a`.`agence_code` AS `agence_code`,`a`.`is_master` AS `is_master`,`r`.`region_id` AS `region_id`,`r`.`region_nom` AS `region_nom`,`r`.`region_status` AS `region_status` from ((`tb_agence` `a` join `tb_region` `r`) join `tb_region_agence` `ra`) where ((`a`.`agence_id` = `ra`.`agence_id`) and (`r`.`region_id` = `ra`.`region_id`)) ;

DROP TABLE IF EXISTS `v_role`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_role` AS select `c`.`role_id` AS `role_id`,`c`.`role_nom` AS `role_nom`,`c`.`role_status` AS `role_status`,`d`.`user_id` AS `user_id`,`c`.`partenaire_id` AS `partenaire_id` from (((`tb_role` `c` join `tb_partenaire` `a`) join `tb_users` `b`) join `tb_role_user` `d`) where ((`a`.`partenaireid` = `b`.`partenaire_id`) and (`a`.`partenaireid` = `c`.`partenaire_id`) and (`b`.`user_status` = '1') and (`c`.`role_status` = '1') and (`b`.`user_id` = `d`.`user_id`) and (`c`.`role_id` = `d`.`role_id`) and (`a`.`partenairestatus` = '1')) order by `c`.`role_id` desc ;

DROP TABLE IF EXISTS `v_role_privilege`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_role_privilege` AS select `e`.`privilegenom` AS `privilegeNom`,`e`.`privilegeid` AS `privilegeId`,`a`.`partenaireid` AS `partenaireid`,`c`.`role_id` AS `role_id` from (((`tb_privilege` `e` join `tb_role` `c`) join `tb_partenaire` `a`) join `tb_role_privilege` `b`) where ((`a`.`partenaireid` = `c`.`partenaire_id`) and (`c`.`role_id` = `b`.`role_id`) and (`b`.`privilege_id` = `e`.`privilegeid`) and (`c`.`role_status` = 1)) order by `e`.`privilegenom` ;

DROP TABLE IF EXISTS `v_role_privilege2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_role_privilege2` AS select `e`.`privilegenom` AS `privilegeNom`,`e`.`privilegeid` AS `privilegeId`,`c`.`partenaire_id` AS `partenaire_id`,`c`.`role_id` AS `role_id` from ((`tb_privilege` `e` join `tb_role` `c`) join `tb_role_privilege` `f`) where ((`c`.`role_id` = `f`.`role_id`) and (`e`.`privilegeid` = `f`.`privilege_id`) and (`c`.`role_status` = '1')) ;

DROP TABLE IF EXISTS `v_role_user_partenaire`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_role_user_partenaire` AS select `a`.`role_nom` AS `role_nom`,`a`.`role_id` AS `role_id`,`b`.`partenaire_id` AS `partenaire_id`,`a`.`role_status` AS `role_status`,`b`.`user_id` AS `user_id`,`b`.`user_login` AS `user_login`,`b`.`user_status` AS `user_status`,`b`.`user_name` AS `user_name`,`c`.`partenairenom` AS `partenairenom`,`c`.`partenairestatus` AS `partenairestatus` from (((`tb_role` `a` join `tb_users` `b`) join `tb_partenaire` `c`) join `tb_role_user` `d`) where ((`a`.`partenaire_id` = `c`.`partenaireid`) and (`c`.`partenaireid` = `b`.`partenaire_id`) and (`d`.`role_id` = `a`.`role_id`) and (`d`.`user_id` = `b`.`user_id`)) ;

DROP TABLE IF EXISTS `v_role_user_privilege`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_role_user_privilege` AS select `e`.`privilegeid` AS `privilegeid`,`e`.`privilegenom` AS `privilegeNom`,`e`.`privilegecode` AS `privilegecode`,`e`.`moduleid` AS `moduleid`,`b`.`user_id` AS `user_id` from (((((`tb_privilege` `e` join `tb_role` `c`) join `tb_partenaire` `a`) join `tb_users` `b`) join `tb_role_user` `d`) join `tb_role_privilege` `f`) where ((`a`.`partenaireid` = `b`.`partenaire_id`) and (`a`.`partenaireid` = `c`.`partenaire_id`) and (`b`.`user_id` = `d`.`user_id`) and (`c`.`role_id` = `d`.`role_id`) and (`c`.`role_id` = `f`.`role_id`) and (`e`.`privilegeid` = `f`.`privilege_id`) and (`b`.`user_status` = '1') and (`c`.`role_status` = '1')) ;

DROP TABLE IF EXISTS `v_satisfaction`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_satisfaction` AS select `a`.`ticket_id` AS `ticket_id`,`a`.`ticket_date` AS `ticket_date`,`a`.`ticket_heure_debut` AS `ticket_heure_debut`,`a`.`ticket_heure_fin` AS `ticket_heure_fin`,`a`.`ticket_date2` AS `ticket_date2`,`a`.`ticket_number` AS `ticket_number`,`a`.`ticket_service_id` AS `ticket_service_id`,`a`.`ticket_guichet` AS `ticket_guichet`,`a`.`ticket_user_id` AS `ticket_user_id`,`a`.`ticket_status` AS `ticket_status`,`a`.`user_id` AS `user_id`,`a`.`user_login` AS `user_login`,`a`.`user_name` AS `user_name`,`a`.`user_lastname` AS `user_lastname`,`a`.`user_password` AS `user_password`,`a`.`user_status` AS `user_status`,`a`.`partenaire_id` AS `partenaire_id`,`a`.`creation_date` AS `creation_date`,`a`.`version` AS `version`,`a`.`user_mail` AS `user_mail`,`a`.`user_is_connect` AS `user_is_connect`,`a`.`service_id` AS `service_id`,`a`.`service_name` AS `service_name`,`a`.`service_desc` AS `service_desc`,`a`.`service_create_user_id` AS `service_create_user_id`,`a`.`service_modify_user_id` AS `service_modify_user_id`,`a`.`service_create_date` AS `service_create_date`,`a`.`service_modify_date` AS `service_modify_date`,`a`.`service_status` AS `service_status`,`a`.`service_icon` AS `service_icon`,`a`.`guichet2_id` AS `guichet2_id`,`a`.`guichet2_code` AS `guichet2_code`,`a`.`guichet2_status` AS `guichet2_status`,`a`.`ticket_raison_id` AS `ticket_raison_id`,`a`.`ticket_client_number` AS `ticket_client_number`,`a`.`ticket_agence_id` AS `ticket_agence_id`,`a`.`ticket_agence_nom` AS `ticket_agence_nom`,`a`.`ticket_syncronized` AS `ticket_syncronized`,`a`.`user_code` AS `user_code`,`b`.`date_satisfaction` AS `date_satisfaction`,`b`.`satisfaction` AS `satisfaction`,`b`.`ticket` AS `ticket`,`b`.`raison` AS `raison` from (`tb_rapport_materialized` `a` join `satisfaction` `b`) where ((`a`.`ticket_agence_id` = `b`.`agence_id`) and (`a`.`ticket_number` = `b`.`ticket`) and (`a`.`ticket_date2` = `b`.`date_satisfaction`)) ;

DROP TABLE IF EXISTS `v_satisfaction02`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_satisfaction02` AS select `a`.`ticket_id` AS `ticket_id`,`a`.`ticket_date` AS `ticket_date`,`a`.`ticket_heure_debut` AS `ticket_heure_debut`,`a`.`ticket_heure_fin` AS `ticket_heure_fin`,`a`.`ticket_date2` AS `ticket_date2`,`a`.`ticket_number` AS `ticket_number`,`a`.`ticket_service_id` AS `ticket_service_id`,`a`.`ticket_guichet` AS `ticket_guichet`,`a`.`ticket_user_id` AS `ticket_user_id`,`a`.`ticket_status` AS `ticket_status`,`a`.`ticket_client_number` AS `ticket_client_number`,`a`.`ticket_is_vip` AS `ticket_is_vip`,`a`.`ticket_raison_id` AS `ticket_raison_id`,`a`.`ticket_agence_id` AS `ticket_agence_id`,`a`.`ticket_agence_nom` AS `ticket_agence_nom`,`a`.`ticket_syncronized` AS `ticket_syncronized`,`a`.`ticket_user_login` AS `ticket_user_login`,`a`.`ticket_service_name` AS `ticket_service_name`,`b`.`date_satisfaction` AS `date_satisfaction`,`b`.`satisfaction` AS `satisfaction`,`b`.`ticket` AS `ticket`,`b`.`raison` AS `raison` from (`tb_ticket` `a` join `satisfaction` `b`) where ((`a`.`ticket_agence_id` = `b`.`agence_id`) and (`a`.`ticket_number` = `b`.`ticket`) and (`a`.`ticket_date2` = `b`.`date_satisfaction`)) ;

DROP TABLE IF EXISTS `v_satisfaction03`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_satisfaction03` AS select `a`.`ticket_id` AS `ticket_id`,`a`.`ticket_date` AS `ticket_date`,`a`.`ticket_heure_debut` AS `ticket_heure_debut`,`a`.`ticket_heure_fin` AS `ticket_heure_fin`,`a`.`ticket_date2` AS `ticket_date2`,`a`.`ticket_number` AS `ticket_number`,`a`.`ticket_service_id` AS `ticket_service_id`,`a`.`ticket_guichet` AS `ticket_guichet`,`a`.`ticket_user_id` AS `ticket_user_id`,`a`.`ticket_status` AS `ticket_status`,`a`.`user_id` AS `user_id`,`a`.`user_login` AS `user_login`,`a`.`user_name` AS `user_name`,`a`.`user_lastname` AS `user_lastname`,`a`.`user_password` AS `user_password`,`a`.`user_status` AS `user_status`,`a`.`partenaire_id` AS `partenaire_id`,`a`.`creation_date` AS `creation_date`,`a`.`version` AS `version`,`a`.`user_mail` AS `user_mail`,`a`.`user_is_connect` AS `user_is_connect`,`a`.`service_id` AS `service_id`,`a`.`service_name` AS `service_name`,`a`.`service_desc` AS `service_desc`,`a`.`service_create_user_id` AS `service_create_user_id`,`a`.`service_modify_user_id` AS `service_modify_user_id`,`a`.`service_create_date` AS `service_create_date`,`a`.`service_modify_date` AS `service_modify_date`,`a`.`service_status` AS `service_status`,`a`.`service_icon` AS `service_icon`,`a`.`guichet2_id` AS `guichet2_id`,`a`.`guichet2_code` AS `guichet2_code`,`a`.`guichet2_status` AS `guichet2_status`,`a`.`ticket_raison_id` AS `ticket_raison_id`,`a`.`ticket_client_number` AS `ticket_client_number`,`a`.`ticket_agence_id` AS `ticket_agence_id`,`a`.`ticket_agence_nom` AS `ticket_agence_nom`,`a`.`ticket_syncronized` AS `ticket_syncronized`,`a`.`user_code` AS `user_code`,`b`.`date_satisfaction` AS `date_satisfaction`,`b`.`satisfaction` AS `satisfaction`,`b`.`ticket` AS `ticket`,`b`.`raison` AS `raison` from (`tb_rapport_materialized` `a` join `satisfaction` `b`) where ((`a`.`ticket_agence_id` = `b`.`agence_id`) and (`a`.`ticket_number` = `b`.`ticket`) and (`a`.`ticket_date2` = `b`.`date_satisfaction`)) ;

DROP TABLE IF EXISTS `v_service_agence`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_service_agence` AS select `a`.`service_id` AS `service_id`,`a`.`service_name` AS `service_name`,`a`.`service_desc` AS `service_desc`,`a`.`service_key` AS `service_key`,`b`.`agence_nom` AS `agence_nom`,`b`.`agence_key` AS `agence_key`,`c`.`agence_id` AS `agence_id` from ((`tb_agence` `b` join `tb_service` `a`) join `tb_service_agence` `c`) where ((`b`.`agence_id` = `c`.`agence_id`) and (`c`.`service_id` = `a`.`service_id`) and (`a`.`service_status` = 1) and (`b`.`agence_status` = 1) and (`a`.`service_key` is not null) and (`b`.`agence_key` is not null)) ;

DROP TABLE IF EXISTS `v_service_group`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_service_group` AS select `s`.`service_id` AS `service_id`,`s`.`service_name` AS `service_name`,`s`.`service_desc` AS `service_desc`,`s`.`service_create_user_id` AS `service_create_user_id`,`s`.`service_modify_user_id` AS `service_modify_user_id`,`s`.`service_create_date` AS `service_create_date`,`s`.`service_modify_date` AS `service_modify_date`,`s`.`service_status` AS `service_status`,`s`.`service_icon` AS `service_icon`,`sm`.`service_manager_id` AS `service_manager_id`,`s`.`service_priority` AS `service_priority`,`s`.`service_mono_file` AS `service_mono_file` from ((`tb_service` `s` join `tb_manager` `m`) join `tb_service_manager` `sm`) where ((`s`.`service_status` = 1) and (`s`.`service_id` = `m`.`service_id`) and (`sm`.`service_manager_id` = `m`.`service_manager_id`)) ;

DROP TABLE IF EXISTS `v_service_guichet`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_service_guichet` AS select `a`.`service_id` AS `service_id`,`b`.`guichet_guichet_type_id` AS `guichet_type_id`,`b`.`guichet_id` AS `guichet_id`,`b`.`guichet_code` AS `guichet_code`,`b`.`guichet_status` AS `guichet_status`,`b`.`guichet_service` AS `guichet_service`,`b`.`guichet_order` AS `guichet_order` from (`tb_service` `a` join `tb_guichet` `b`) where (`a`.`service_id` = `b`.`guichet_service`) ;

DROP TABLE IF EXISTS `v_service_guichet_type`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_service_guichet_type` AS select `a`.`service_id` AS `service_id`,`b`.`guichet_type_id` AS `guichet_type_id`,`a`.`service_name` AS `service_name`,`b`.`guichet_type_code` AS `guichet_type_code` from ((`tb_service_guichet_type` `c` join `tb_service` `a`) join `tb_guichet_type` `b`) where ((`a`.`service_id` = `c`.`service_id`) and (`b`.`guichet_type_id` = `c`.`guichet_id`) and (`a`.`service_status` = 1)) ;

DROP TABLE IF EXISTS `v_service_guichet_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_service_guichet_user` AS select `a`.`service_id` AS `service_id`,`a`.`guichet_id` AS `guichet_id`,`a`.`user_id` AS `user_id`,`b`.`user_is_connect` AS `user_is_connect` from (`tb_guichet_users` `a` join `tb_users` `b`) where ((`a`.`user_id` = `b`.`user_id`) and (`b`.`user_is_connect` = 1)) ;

DROP TABLE IF EXISTS `v_service_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_service_user` AS select `a`.`service_id` AS `service_id`,`a`.`service_name` AS `service_name`,`a`.`service_desc` AS `service_desc`,`b`.`user_login` AS `user_login`,`c`.`medecin_id` AS `medecin_id` from ((`tb_users` `b` join `tb_service` `a`) join `tb_service_medecin` `c`) where ((`b`.`user_id` = `c`.`medecin_id`) and (`c`.`service_id` = `a`.`service_id`) and (`a`.`service_status` = 1) and (`b`.`user_status` = 1)) ;

DROP TABLE IF EXISTS `v_ticket_service`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ticket_service` AS select `t`.`ticket_id` AS `ticket_id`,`t`.`ticket_date` AS `ticket_date`,`t`.`ticket_heure_debut` AS `ticket_heure_debut`,`t`.`ticket_heure_fin` AS `ticket_heure_fin`,`t`.`ticket_date2` AS `ticket_date2`,`t`.`ticket_number` AS `ticket_number`,`t`.`ticket_service_id` AS `ticket_service_id`,`t`.`ticket_guichet` AS `ticket_guichet`,`t`.`ticket_user_id` AS `ticket_user_id`,`t`.`ticket_status` AS `ticket_status`,`t`.`ticket_client_number` AS `ticket_client_number`,`t`.`ticket_is_vip` AS `ticket_is_vip`,`t`.`ticket_raison_id` AS `ticket_raison_id`,`t`.`ticket_agence_id` AS `ticket_agence_id`,`t`.`ticket_agence_nom` AS `ticket_agence_nom`,`t`.`ticket_syncronized` AS `ticket_syncronized`,`t`.`ticket_user_login` AS `ticket_user_login`,`t`.`ticket_service_name` AS `ticket_service_name`,`s`.`service_name` AS `service_name` from (`tb_ticket` `t` join `tb_service` `s`) where ((`t`.`ticket_service_id` = `s`.`service_id`) and (`s`.`service_status` = 1)) ;

DROP TABLE IF EXISTS `v_ticket_transfer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ticket_transfer` AS select `a`.`ticket_id` AS `ticket_id`,`a`.`ticket_date` AS `ticket_date`,`a`.`ticket_heure_debut` AS `ticket_heure_debut`,`a`.`ticket_heure_fin` AS `ticket_heure_fin`,`a`.`ticket_date2` AS `ticket_date2`,`a`.`ticket_number` AS `ticket_number`,`a`.`ticket_service_id` AS `ticket_service_id`,`a`.`ticket_guichet` AS `ticket_guichet`,`a`.`ticket_user_id` AS `ticket_user_id`,`a`.`ticket_status` AS `ticket_status`,`a`.`ticket_client_number` AS `ticket_client_number`,`a`.`ticket_is_vip` AS `ticket_is_vip`,`b`.`owner` AS `owner`,`a`.`ticket_service_name` AS `ticket_service_name` from (`tb_ticket` `a` join `tb_ticket_transfert` `b`) where (`a`.`ticket_id` = `b`.`ticket_id`) ;

DROP TABLE IF EXISTS `v_ticket_vip`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ticket_vip` AS select `v`.`vip_id` AS `vip_id`,`v`.`vip_number` AS `vip_number`,`v`.`vip_region_name` AS `vip_region_name`,`v`.`vip_status` AS `vip_status`,`v`.`vip_create_date` AS `vip_create_date`,`v`.`vip_create_user` AS `vip_create_user`,`v`.`vip_modify_user` AS `vip_modify_user`,`v`.`vip_modify_date` AS `vip_modify_date`,`v`.`vip_name` AS `vip_name`,`t`.`ticket_id` AS `ticket_id`,`t`.`ticket_date` AS `ticket_date`,`t`.`ticket_heure_debut` AS `ticket_heure_debut`,`t`.`ticket_heure_fin` AS `ticket_heure_fin`,`t`.`ticket_date2` AS `ticket_date2`,`t`.`ticket_number` AS `ticket_number`,`t`.`ticket_service_id` AS `ticket_service_id`,`t`.`ticket_guichet` AS `ticket_guichet`,`t`.`ticket_user_id` AS `ticket_user_id`,`t`.`ticket_status` AS `ticket_status`,`t`.`ticket_client_number` AS `ticket_client_number`,`t`.`ticket_is_vip` AS `ticket_is_vip`,`t`.`ticket_raison_id` AS `ticket_raison_id`,`t`.`ticket_agence_id` AS `ticket_agence_id`,`t`.`ticket_agence_nom` AS `ticket_agence_nom`,`t`.`ticket_syncronized` AS `ticket_syncronized`,`t`.`ticket_user_login` AS `ticket_user_login`,`t`.`ticket_service_name` AS `ticket_service_name` from (`tb_ticket` `t` join `tb_vip` `v`) where (`t`.`ticket_client_number` = `v`.`vip_number`) ;

DROP TABLE IF EXISTS `v_users`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_users` AS select `b`.`user_id` AS `user_id`,`b`.`user_login` AS `user_login`,`b`.`user_name` AS `user_name`,`b`.`user_lastname` AS `user_lastname`,`b`.`user_mail` AS `user_mail`,`b`.`user_status` AS `user_status`,`a`.`partenaireid` AS `partenaireid`,`d`.`role_id` AS `role_id` from (((`tb_role` `c` join `tb_partenaire` `a`) join `tb_users` `b`) join `tb_role_user` `d`) where ((`a`.`partenaireid` = `b`.`partenaire_id`) and (`a`.`partenaireid` = `c`.`partenaire_id`) and (`c`.`role_status` = '1') and (`c`.`role_id` = `d`.`role_id`) and (`b`.`user_id` = `d`.`user_id`) and (`b`.`user_status` = 1)) order by `b`.`user_id` desc ;

DROP TABLE IF EXISTS `v_verify_group`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_verify_group` AS select `s`.`service_id` AS `service_id`,`s`.`service_name` AS `service_name`,`s`.`service_desc` AS `service_desc`,`s`.`service_create_user_id` AS `service_create_user_id`,`s`.`service_modify_user_id` AS `service_modify_user_id`,`s`.`service_create_date` AS `service_create_date`,`s`.`service_modify_date` AS `service_modify_date`,`s`.`service_status` AS `service_status`,`s`.`service_icon` AS `service_icon`,`s`.`service_priority` AS `service_priority`,`s`.`service_mono_file` AS `service_mono_file` from `tb_service` `s` where ((`s`.`service_status` = 1) and `s`.`service_id` in (select `tb_manager`.`service_id` from `tb_manager`) is false) ;

DROP TABLE IF EXISTS `v_video_agence`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_video_agence` AS select `a`.`video_id` AS `video_id`,`a`.`video_name` AS `video_name`,`a`.`video_desc` AS `video_desc`,`a`.`video_key` AS `video_key`,`b`.`agence_nom` AS `agence_nom`,`b`.`agence_key` AS `agence_key`,`c`.`agence_id` AS `agence_id` from ((`tb_agence` `b` join `tb_video` `a`) join `tb_video_agence` `c`) where ((`b`.`agence_id` = `c`.`agence_id`) and (`c`.`video_id` = `a`.`video_id`) and (`a`.`video_status` = 1) and (`b`.`agence_status` = 1) and (`a`.`video_key` is not null) and (`b`.`agence_key` is not null)) ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
