-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/07/2024 às 20:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sourcebans`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_admins`
--

CREATE TABLE `sb_admins` (
  `aid` int(6) NOT NULL,
  `user` varchar(64) NOT NULL,
  `authid` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL,
  `gid` int(6) NOT NULL,
  `email` varchar(128) NOT NULL,
  `validate` varchar(128) DEFAULT NULL,
  `extraflags` int(10) NOT NULL,
  `immunity` int(10) NOT NULL DEFAULT 0,
  `srv_group` varchar(128) DEFAULT NULL,
  `srv_flags` varchar(64) DEFAULT NULL,
  `srv_password` varchar(128) DEFAULT NULL,
  `lastvisit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_admins`
--

INSERT INTO `sb_admins` (`aid`, `user`, `authid`, `password`, `gid`, `email`, `validate`, `extraflags`, `immunity`, `srv_group`, `srv_flags`, `srv_password`, `lastvisit`) VALUES
(0, 'CONSOLE', 'STEAM_ID_SERVER', '', 0, '', NULL, 0, 0, NULL, NULL, NULL, NULL),
(1, 'Netto', 'STEAM_0:0:613806079', '$2y$10$bi6/nSlA3llYxmu9sFMPK.bWycQmCVsdwFzYjwRDqNiF5bXwCB1/q', 1, 'servidoralsbr@gmail.com', NULL, -513, 100, 'CONSELHO SERVER', 'abcdefghijklm', NULL, 1719583788),
(8, 'LONDRINA', 'STEAM_0:0:548089172', '$2y$10$DknMB/7gSML9105Prb2ml.w8nvdmD.ZxeQlsTY6eXD.6VMjjYVVwu', 1, 'ALS@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(9, 'TEVEDO', 'STEAM_0:0:102364997', '$2y$10$KzMVmpYNj19cAgQah/GVl.QWx5O/FgzUWnvt4JVhtv19bn5jCd4Dm', 1, 'ALS1@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(10, 'LIANO', 'STEAM_0:1:69141797', '$2y$10$CKYxj.Nyk0UzZV/Ecv3UDeO7tkfdd/WCABHyf4pPFpj5ub4GSsHEW', 1, 'ALS2@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(11, 'VADS', 'STEAM_0:1:841075957', '$2y$10$AHQ6rPUIA/rKhpIrJA01qure0bo5KmxH.k7ix73u4ebNvSYfvtgcm', 1, 'ALS3@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(12, 'CHAOS', 'STEAM_0:0:26076062', '$2y$10$hfJtBGU2UPxj7Jkm9ldLOuTkdO.6XDxgOVPQFq7MWqdc0Kkaw.bpe', 1, 'ALS4@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(13, 'AWA', 'STEAM_0:1:168265702', '$2y$10$8Bzf9LSsea6VekUy7Oupyee39J71f8AChugF3vP8sv0H2D0L4fzi2', 1, 'ALS5@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(14, 'THESUSPECT', 'STEAM_0:0:508886531', '$2y$10$PhU5khWFNS5zS6/4FWaz.eEydctXdIoPe/En3BbDIh5QCto0cksSW', 1, 'ALS6@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(15, 'TG', 'STEAM_0:1:641706648', '$2y$10$28oCtchwrVYnvIstXw9gg.ENNSserThb1g3GMRnz2kt4D5pYt/71u', 1, 'ALS7@ALSBR.COM.BR', NULL, 0, 0, 'CONSELHO SERVER', '', '', NULL),
(16, 'SKULL', 'STEAM_0:0:15209506', '$2y$10$gKqhF2yyIetSqAZRuv7Qo.e90pXiztgENXbtDqWslWULoXCImAOJy', -1, 'ALS19@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(17, 'CADU', 'STEAM_0:1:24695993', '$2y$10$4UqFth3pswbJbOVhv2/rOeXKYcJk053v26tUIRmJrmq/l15VVMG.K', -1, 'ALS9@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(18, 'SUPORTE', 'STEAM_0:1:117047390', '$2y$10$9EyN.KNoBWAl0pK3vFLUn.qYe0tdTM3zc4xTmOL4Gdp45Y0ZxtAIG', -1, 'ALS10@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(19, 'PESCADOR', 'STEAM_0:1:741915820', '$2y$10$Y.9Zb.PPFrMAVZxMVjTl1OhMf0nBJp5ip9tZnetE6g.NkfODRNMYu', -1, 'ALS11@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(20, 'SEV7N', 'STEAM_0:1:148126371', '$2y$10$3m/X.1uU232l3zCvjnL/7uVLpBH5H9w626xWmJgQbWBTxWt87epQ.', -1, 'ALS12@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(21, 'WZ_SUEHTAM', 'STEAM_0:1:440954366', '$2y$10$74j1FuS4SDSjco8Cnf6KvehSslnsHli0pb9RePLZnv1VWX9NlO3Ri', -1, 'ALS13@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(22, 'GENERAL', 'STEAM_0:0:232641092', '$2y$10$dl4lXvWi7EfMpz8B9J6ta.cMmh2U.FKIymv2FJs5xYVWHWmF5e04C', -1, 'ALS14@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(23, 'KONDORO', 'STEAM_0:0:54205025', '$2y$10$6beWhH4SJlAGs87wCwZwIe/rMfw3q5js.9xoe8g07iqdzt2mkR/F2', -1, 'ALS15@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(24, 'MIMIK4', 'STEAM_0:1:523586174', '$2y$10$8h7MnQL4HaP/QVNlCciGZ.KUfHf/y0bbwZ.V5iP/sjW/t/dVIcoj6', -1, 'ALS16@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(25, 'VENOM', 'STEAM_0:1:461362461', '$2y$10$0l78A.g9pmrNVdRZZBkSV./JT//q49nWFlG8B5Ztryc8oin1Ti.r2', -1, 'ALS17@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(26, 'CREMOSINHO', 'STEAM_0:1:656996513', '$2y$10$RVwny5oom8RJwWrqhAtT9O5KixBmDw64XZqLFTay9Wx3ZE9cqgzX2', -1, 'ALS18@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL),
(27, 'CAIOW', 'STEAM_0:0:418941909', '$2y$10$3CG8DFcBntTnRxZrbbLsme0g7Ge9JxXsZ8pGXoDm2KUAR3ZdJRB0y', -1, 'ALS20@ALSBR.COM.BR', NULL, 0, 0, 'MODERADORES', '', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_admins_servers_groups`
--

CREATE TABLE `sb_admins_servers_groups` (
  `admin_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `srv_group_id` int(10) NOT NULL,
  `server_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_admins_servers_groups`
--

INSERT INTO `sb_admins_servers_groups` (`admin_id`, `group_id`, `srv_group_id`, `server_id`) VALUES
(8, 2, -1, 1),
(8, 2, -1, 2),
(8, 2, -1, 3),
(8, 2, -1, 4),
(8, 2, -1, 5),
(8, 2, -1, 6),
(9, 2, -1, 1),
(9, 2, -1, 2),
(9, 2, -1, 3),
(9, 2, -1, 4),
(9, 2, -1, 5),
(9, 2, -1, 6),
(10, 2, -1, 1),
(10, 2, -1, 2),
(10, 2, -1, 3),
(10, 2, -1, 4),
(10, 2, -1, 5),
(10, 2, -1, 6),
(11, 2, -1, 1),
(11, 2, -1, 2),
(11, 2, -1, 3),
(11, 2, -1, 4),
(11, 2, -1, 5),
(11, 2, -1, 6),
(12, 2, -1, 1),
(12, 2, -1, 2),
(12, 2, -1, 3),
(12, 2, -1, 4),
(12, 2, -1, 5),
(12, 2, -1, 6),
(13, 2, -1, 1),
(13, 2, -1, 2),
(13, 2, -1, 3),
(13, 2, -1, 4),
(13, 2, -1, 5),
(13, 2, -1, 6),
(14, 2, -1, 1),
(14, 2, -1, 2),
(14, 2, -1, 3),
(14, 2, -1, 4),
(14, 2, -1, 5),
(14, 2, -1, 6),
(15, 2, -1, 1),
(15, 2, -1, 2),
(15, 2, -1, 3),
(15, 2, -1, 4),
(15, 2, -1, 5),
(15, 2, -1, 6),
(16, 1, -1, 1),
(16, 1, -1, 2),
(16, 1, -1, 3),
(16, 1, -1, 4),
(16, 1, -1, 5),
(16, 1, -1, 6),
(17, 1, -1, 1),
(17, 1, -1, 2),
(17, 1, -1, 3),
(17, 1, -1, 4),
(17, 1, -1, 5),
(17, 1, -1, 6),
(18, 1, -1, 1),
(18, 1, -1, 2),
(18, 1, -1, 3),
(18, 1, -1, 4),
(18, 1, -1, 5),
(18, 1, -1, 6),
(19, 1, -1, 1),
(19, 1, -1, 2),
(19, 1, -1, 3),
(19, 1, -1, 4),
(19, 1, -1, 5),
(19, 1, -1, 6),
(20, 1, -1, 1),
(20, 1, -1, 2),
(20, 1, -1, 3),
(20, 1, -1, 4),
(20, 1, -1, 5),
(20, 1, -1, 6),
(21, 1, -1, 1),
(21, 1, -1, 2),
(21, 1, -1, 3),
(21, 1, -1, 4),
(21, 1, -1, 5),
(21, 1, -1, 6),
(22, 1, -1, 1),
(22, 1, -1, 2),
(22, 1, -1, 3),
(22, 1, -1, 4),
(22, 1, -1, 5),
(22, 1, -1, 6),
(23, 1, -1, 1),
(23, 1, -1, 2),
(23, 1, -1, 3),
(23, 1, -1, 4),
(23, 1, -1, 5),
(23, 1, -1, 6),
(24, 1, -1, 1),
(24, 1, -1, 2),
(24, 1, -1, 3),
(24, 1, -1, 4),
(24, 1, -1, 5),
(24, 1, -1, 6),
(25, 1, -1, 1),
(25, 1, -1, 2),
(25, 1, -1, 3),
(25, 1, -1, 4),
(25, 1, -1, 5),
(25, 1, -1, 6),
(1, 2, -1, 1),
(1, 2, -1, 2),
(1, 2, -1, 3),
(1, 2, -1, 4),
(1, 2, -1, 5),
(1, 2, -1, 6),
(26, 1, -1, 1),
(26, 1, -1, 2),
(26, 1, -1, 3),
(26, 1, -1, 4),
(26, 1, -1, 5),
(26, 1, -1, 6),
(27, 1, -1, 1),
(27, 1, -1, 2),
(27, 1, -1, 3),
(27, 1, -1, 4),
(27, 1, -1, 5),
(27, 1, -1, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_banlog`
--

CREATE TABLE `sb_banlog` (
  `sid` int(6) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `bid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_banlog`
--

INSERT INTO `sb_banlog` (`sid`, `time`, `name`, `bid`) VALUES
(1, 1718806571, 'chuchu de montegrande', 9),
(1, 1719361363, 'franki0s', 17),
(1, 1719493246, 'barbi ♥️ ♥️ ♥', 9),
(4, 1719065297, 'franki0s', 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_bans`
--

CREATE TABLE `sb_bans` (
  `bid` int(6) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `authid` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT 'unnamed',
  `created` int(11) NOT NULL DEFAULT 0,
  `ends` int(11) NOT NULL DEFAULT 0,
  `length` int(10) NOT NULL DEFAULT 0,
  `reason` text NOT NULL,
  `aid` int(6) NOT NULL DEFAULT 0,
  `adminIp` varchar(32) NOT NULL DEFAULT '',
  `sid` int(6) NOT NULL DEFAULT 0,
  `country` varchar(4) DEFAULT NULL,
  `RemovedBy` int(8) DEFAULT NULL,
  `RemoveType` varchar(3) DEFAULT NULL,
  `RemovedOn` int(10) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `ureason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_bans`
--

INSERT INTO `sb_bans` (`bid`, `ip`, `authid`, `name`, `created`, `ends`, `length`, `reason`, `aid`, `adminIp`, `sid`, `country`, `RemovedBy`, `RemoveType`, `RemovedOn`, `type`, `ureason`) VALUES
(7, '201.148.115.196', 'STEAM_0:0:580442862', 'Metaleiro', 1717124700, 1717124700, 0, '[Little Anti-Cheat 1.7.4] Aimbot detectado', 0, '0.0.0.0', 1, 'BR', NULL, NULL, NULL, 0, NULL),
(9, '181.228.59.193', 'STEAM_0:1:689371702', 'chuchu de montegrande', 1718457106, 1718457106, 0, '[Little Anti-Cheat 1.7.4] Detectado Angle-Cheats', 0, '0.0.0.0', 1, 'AR', NULL, NULL, NULL, 0, NULL),
(17, '177.81.25.93', 'STEAM_0:0:426124033', '', 1718839267, 1721431267, 2592000, '\"Linguagem Inapropriada\"', 12, '179.127.253.205', 1, 'BR', 1, 'U', 1719715273, 0, 'Liberação do conselho...'),
(18, '190.44.202.41', 'STEAM_0:1:870063318', 'Holder of card', 1719615480, 1719615480, 0, '[Little Anti-Cheat 1.7.4] Invalid ConVar Detected', 0, '0.0.0.0', 1, 'CL', NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_comments`
--

CREATE TABLE `sb_comments` (
  `cid` int(6) NOT NULL,
  `bid` int(6) NOT NULL,
  `type` varchar(1) NOT NULL,
  `aid` int(6) NOT NULL,
  `commenttxt` longtext NOT NULL,
  `added` int(11) NOT NULL,
  `editaid` int(6) DEFAULT NULL,
  `edittime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_comms`
--

CREATE TABLE `sb_comms` (
  `bid` int(6) NOT NULL,
  `authid` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT 'unnamed',
  `created` int(11) NOT NULL DEFAULT 0,
  `ends` int(11) NOT NULL DEFAULT 0,
  `length` int(10) NOT NULL DEFAULT 0,
  `reason` text NOT NULL,
  `aid` int(6) NOT NULL DEFAULT 0,
  `adminIp` varchar(32) NOT NULL DEFAULT '',
  `sid` int(6) NOT NULL DEFAULT 0,
  `RemovedBy` int(8) DEFAULT NULL,
  `RemoveType` varchar(3) DEFAULT NULL,
  `RemovedOn` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - Mute, 2 - Gag',
  `ureason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_comms`
--

INSERT INTO `sb_comms` (`bid`, `authid`, `name`, `created`, `ends`, `length`, `reason`, `aid`, `adminIp`, `sid`, `RemovedBy`, `RemoveType`, `RemovedOn`, `type`, `ureason`) VALUES
(7, 'STEAM_0:1:569845497', 'Menem_energy', 1720052237, 1720059437, -1, 'Gagged through BaseComm natives', 0, '0.0.0.0', 1, NULL, NULL, NULL, 2, NULL),
(8, 'STEAM_0:1:569845497', 'Menem_energy', 1720052237, 1720059437, -1, 'Muted through BaseComm natives', 0, '0.0.0.0', 1, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_demos`
--

CREATE TABLE `sb_demos` (
  `demid` int(6) NOT NULL,
  `demtype` varchar(1) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `origname` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_groups`
--

CREATE TABLE `sb_groups` (
  `gid` int(6) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT 'unnamed',
  `flags` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_groups`
--

INSERT INTO `sb_groups` (`gid`, `type`, `name`, `flags`) VALUES
(1, 1, 'CONSELHO', -513);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_log`
--

CREATE TABLE `sb_log` (
  `lid` int(11) NOT NULL,
  `type` enum('m','w','e') NOT NULL,
  `title` varchar(512) NOT NULL,
  `message` text NOT NULL,
  `function` text NOT NULL,
  `query` text NOT NULL,
  `aid` int(11) NOT NULL,
  `host` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_log`
--

INSERT INTO `sb_log` (`lid`, `type`, `title`, `message`, `function`, `query`, `aid`, `host`, `created`) VALUES
(1, 'm', 'Admin added', 'Admin (Chaos) has been added.', '', '', 1, '::1', 1716322063),
(2, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '::1', 1716322063),
(3, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '::1', 1716322064),
(4, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '::1', 1716322065),
(5, 'e', 'Rcon Error [ServerID: 4]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '::1', 1716322066),
(6, 'm', 'Permissions Changed', 'Permissions have been changed for (Chaos)', '', '', 3, '::1', 1716323223),
(7, 'm', 'Admin Deleted', 'Admin (Chaos) has been deleted.', '', '', 1, '::1', 1716323263),
(8, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '::1', 1716323263),
(9, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '::1', 1716323264),
(10, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '::1', 1716323264),
(11, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '::1', 1716323264),
(12, 'm', 'Block Deleted', 'Block Nettinho o lokinho (STEAM_0:0:831057160) has been deleted.', '', 'p=commslist&#38;a=delete&#38;id=1&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1717114352),
(13, 'm', 'Block Deleted', 'Block MumblesGOD (STEAM_0:0:426124033) has been deleted.', '', 'p=commslist&#38;a=delete&#38;id=2&#38;key=15e7a20f8a2404c57eeb6d47a0c9ea92', 1, '179.193.115.20', 1717284393),
(14, 'm', 'Server Added', 'Server (179.193.115.20:27019) has been added.', '', '', 1, '179.193.115.20', 1717345921),
(15, 'm', 'Server Added', 'Server (179.193.115.20:27020) has been added.', '', '', 1, '179.193.115.20', 1717348896),
(16, 'm', 'Server Deleted', 'Server (179.193.115.20:27020) has been deleted.', '', '', 1, '179.193.115.20', 1717359044),
(17, 'm', 'Server Added', 'Server (179.193.115.20:27025) has been added.', '', '', 1, '179.193.115.20', 1717359058),
(18, 'm', 'Ban Deleted', 'Ban Netto O LoKO (STEAM_0:0:613806079) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=8&#38;key=7fd3365a2493bcb8c84e6599668352d0', 1, '179.193.115.20', 1717614396),
(19, 'm', 'RCON Sent', 'RCON Command (removeid STEAM_0:1:69141797) was sent to server (179.193.115.20:27018)', '', 'p=banlist&#38;a=delete&#38;id=10&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718556037),
(20, 'm', 'Ban Deleted', 'Ban Kimedo Dipika (STEAM_0:1:69141797) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=10&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718556037),
(21, 'm', 'Ban Added', 'Ban against (STEAM_0:1:69141797) has been added. Reason: teste; Length: 0', '', '', 1, '179.193.115.20', 1718556303),
(22, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718556305),
(23, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718556305),
(24, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718556305),
(25, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718556305),
(26, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718556305),
(27, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718556305),
(28, 'm', 'Player Unbanned', 'liano (STEAM_0:1:69141797) has been unbanned.', '', 'p=banlist&#38;a=unban&#38;id=11&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1718556322),
(29, 'm', 'RCON Sent', 'RCON Command (removeid STEAM_0:0:613806079) was sent to server (179.193.115.20:27018)', '', 'p=banlist&#38;a=unban&#38;id=12&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1718556411),
(30, 'm', 'Player Unbanned', 'Netto O LoKO (STEAM_0:0:613806079) has been unbanned.', '', 'p=banlist&#38;a=unban&#38;id=12&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1718556411),
(31, 'm', 'Admin added', 'Admin (LIANO) has been added.', '', '', 1, '179.193.115.20', 1718556616),
(32, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718556616),
(33, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718556616),
(34, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718556616),
(35, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718556617),
(36, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718556617),
(37, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718556617),
(38, 'm', 'RCON Sent', 'RCON Command (removeid STEAM_0:0:613806079) was sent to server (179.193.115.20:27018)', '', 'p=banlist&#38;a=unban&#38;id=13&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1718556752),
(39, 'm', 'Player Unbanned', 'Netto O LoKO (STEAM_0:0:613806079) has been unbanned.', '', 'p=banlist&#38;a=unban&#38;id=13&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1718556752),
(40, 'm', 'Ban Deleted', 'Ban liano (STEAM_0:1:69141797) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=11&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718556756),
(41, 'm', 'Ban Added', 'Ban against (STEAM_0:0:613806079) has been added. Reason: netto; Length: 1440', '', '', 1, '179.193.115.20', 1718556793),
(42, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718556794),
(43, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718556794),
(44, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718556794),
(45, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718556794),
(46, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718556794),
(47, 'm', 'RCON Sent', 'RCON Command (status) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718556794),
(48, 'm', 'Player Unbanned', 'Netto O LoKO (STEAM_0:0:613806079) has been unbanned.', '', 'p=banlist&#38;a=unban&#38;id=14&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste&#38;bulk=true', 1, '179.193.115.20', 1718556810),
(49, 'm', 'RCON Sent', 'RCON Command (sc_fw_ungag STEAM_0:1:69141797) was sent to server (179.193.115.20:27015)', '', 'p=commslist&#38;a=delete&#38;id=4&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557210),
(50, 'm', 'RCON Sent', 'RCON Command (sc_fw_ungag STEAM_0:1:69141797) was sent to server (179.193.115.20:27016)', '', 'p=commslist&#38;a=delete&#38;id=4&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557210),
(51, 'm', 'RCON Sent', 'RCON Command (sc_fw_ungag STEAM_0:1:69141797) was sent to server (179.193.115.20:27017)', '', 'p=commslist&#38;a=delete&#38;id=4&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557211),
(52, 'm', 'RCON Sent', 'RCON Command (sc_fw_ungag STEAM_0:1:69141797) was sent to server (179.193.115.20:27018)', '', 'p=commslist&#38;a=delete&#38;id=4&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557211),
(53, 'm', 'RCON Sent', 'RCON Command (sc_fw_ungag STEAM_0:1:69141797) was sent to server (179.193.115.20:27019)', '', 'p=commslist&#38;a=delete&#38;id=4&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557211),
(54, 'm', 'RCON Sent', 'RCON Command (sc_fw_ungag STEAM_0:1:69141797) was sent to server (179.193.115.20:27025)', '', 'p=commslist&#38;a=delete&#38;id=4&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557211),
(55, 'm', 'Block Deleted', 'Block Kimedo Dipika (STEAM_0:1:69141797) has been deleted.', '', 'p=commslist&#38;a=delete&#38;id=4&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557211),
(56, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27015)', '', 'p=commslist&#38;a=delete&#38;id=5&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557216),
(57, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27016)', '', 'p=commslist&#38;a=delete&#38;id=5&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557216),
(58, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27017)', '', 'p=commslist&#38;a=delete&#38;id=5&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557216),
(59, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27018)', '', 'p=commslist&#38;a=delete&#38;id=5&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557216),
(60, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27019)', '', 'p=commslist&#38;a=delete&#38;id=5&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557216),
(61, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27025)', '', 'p=commslist&#38;a=delete&#38;id=5&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557216),
(62, 'm', 'Block Deleted', 'Block Kimedo Dipika (STEAM_0:1:69141797) has been deleted.', '', 'p=commslist&#38;a=delete&#38;id=5&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557216),
(63, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27015)', '', 'p=commslist&#38;a=delete&#38;id=3&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557220),
(64, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27016)', '', 'p=commslist&#38;a=delete&#38;id=3&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557220),
(65, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27017)', '', 'p=commslist&#38;a=delete&#38;id=3&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557220),
(66, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27018)', '', 'p=commslist&#38;a=delete&#38;id=3&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557221),
(67, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27019)', '', 'p=commslist&#38;a=delete&#38;id=3&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557221),
(68, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:1:69141797) was sent to server (179.193.115.20:27025)', '', 'p=commslist&#38;a=delete&#38;id=3&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557221),
(69, 'm', 'Block Deleted', 'Block Kimedo Dipika (STEAM_0:1:69141797) has been deleted.', '', 'p=commslist&#38;a=delete&#38;id=3&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557221),
(70, 'm', 'Ban Deleted', 'Ban Netto O LoKO (STEAM_0:0:613806079) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=12&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557239),
(71, 'm', 'Ban Deleted', 'Ban Netto O LoKO (STEAM_0:0:613806079) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=13&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557243),
(72, 'm', 'Ban Deleted', 'Ban Netto O LoKO (STEAM_0:0:613806079) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=14&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718557246),
(73, 'm', 'Admin added', 'Admin (LONDRINA) has been added.', '', '', 1, '179.193.115.20', 1718557441),
(74, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718557441),
(75, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718557441),
(76, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718557441),
(77, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718557441),
(78, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718557442),
(79, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718557442),
(80, 'm', 'Permissions Changed', 'Permissions have been changed for (LONDRINA)', '', '', 1, '179.193.115.20', 1718557504),
(81, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718557504),
(82, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718557505),
(83, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718557505),
(84, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718557505),
(85, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718557505),
(86, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718557505),
(87, 'm', 'Admin added', 'Admin (TEVEDO) has been added.', '', '', 1, '179.193.115.20', 1718633837),
(88, 'm', 'Admin added', 'Admin (CHAOS) has been added.', '', '', 1, '179.193.115.20', 1718633873),
(89, 'm', 'Group Created', 'A new group was created (CONSELHO).', '', '', 1, '179.193.115.20', 1718633961),
(90, 'm', 'Admin Deleted', 'Admin (CHAOS) has been deleted.', '', '', 1, '179.193.115.20', 1718634382),
(91, 'm', 'Admin Deleted', 'Admin (LIANO) has been deleted.', '', '', 1, '179.193.115.20', 1718634388),
(92, 'e', 'Rcon Error [ServerID: 1]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634389),
(93, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634390),
(94, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634391),
(95, 'e', 'Rcon Error [ServerID: 4]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634393),
(96, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634394),
(97, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634395),
(98, 'm', 'Admin Deleted', 'Admin (LONDRINA) has been deleted.', '', '', 1, '179.193.115.20', 1718634397),
(99, 'e', 'Rcon Error [ServerID: 1]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634399),
(100, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634400),
(101, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634401),
(102, 'e', 'Rcon Error [ServerID: 4]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634402),
(103, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634403),
(104, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718634404),
(105, 'm', 'Admin Deleted', 'Admin (TEVEDO) has been deleted.', '', '', 1, '179.193.115.20', 1718634407),
(106, 'm', 'Group Created', 'A new group was created (MODERADORES).', '', '', 1, '179.193.115.20', 1718735161),
(107, 'm', 'Group Created', 'A new group was created (CONSELHO SERVER).', '', '', 1, '179.193.115.20', 1718735264),
(108, 'm', 'Admin added', 'Admin (LONDRINA) has been added.', '', '', 1, '179.193.115.20', 1718735361),
(109, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735361),
(110, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735361),
(111, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735361),
(112, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735362),
(113, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735362),
(114, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735362),
(115, 'm', 'Admin added', 'Admin (TEVEDO) has been added.', '', '', 1, '179.193.115.20', 1718735453),
(116, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735454),
(117, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735454),
(118, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735454),
(119, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735454),
(120, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735454),
(121, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735454),
(122, 'm', 'Admin added', 'Admin (LIANO) has been added.', '', '', 1, '179.193.115.20', 1718735507),
(123, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735508),
(124, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735508),
(125, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735508),
(126, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735508),
(127, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735508),
(128, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735509),
(129, 'm', 'Admin added', 'Admin (VADS) has been added.', '', '', 1, '179.193.115.20', 1718735539),
(130, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735539),
(131, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735539),
(132, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735539),
(133, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735539),
(134, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735540),
(135, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735540),
(136, 'm', 'Admin added', 'Admin (CHAOS) has been added.', '', '', 1, '179.193.115.20', 1718735602),
(137, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735603),
(138, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735603),
(139, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735603),
(140, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735603),
(141, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735603),
(142, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735604),
(143, 'm', 'Admin added', 'Admin (AWA) has been added.', '', '', 1, '179.193.115.20', 1718735643),
(144, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735643),
(145, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735644),
(146, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735644),
(147, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735644),
(148, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735644),
(149, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735644),
(150, 'm', 'Admin added', 'Admin (THESUSPECT) has been added.', '', '', 1, '179.193.115.20', 1718735672),
(151, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735673),
(152, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735673),
(153, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735673),
(154, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735673),
(155, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735673),
(156, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735673),
(157, 'm', 'Admin added', 'Admin (TG) has been added.', '', '', 1, '179.193.115.20', 1718735719),
(158, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735719),
(159, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735719),
(160, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735719),
(161, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735719),
(162, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735719),
(163, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735719),
(164, 'm', 'Admin added', 'Admin (SKULL) has been added.', '', '', 1, '179.193.115.20', 1718735785),
(165, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735785),
(166, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735785),
(167, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735785),
(168, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735785),
(169, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735786),
(170, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735786),
(171, 'm', 'Admin added', 'Admin (CADU) has been added.', '', '', 1, '179.193.115.20', 1718735818),
(172, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735819),
(173, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735819),
(174, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735819),
(175, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735820),
(176, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735820),
(177, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735820),
(178, 'm', 'Admin added', 'Admin (SUPORTE) has been added.', '', '', 1, '179.193.115.20', 1718735860),
(179, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735860),
(180, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735860),
(181, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735861),
(182, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735861),
(183, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735861),
(184, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735861),
(185, 'm', 'Admin added', 'Admin (PESCADOR) has been added.', '', '', 1, '179.193.115.20', 1718735890),
(186, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735890),
(187, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735890),
(188, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735891),
(189, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735891),
(190, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735891),
(191, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735891),
(192, 'm', 'Admin added', 'Admin (SEV7N) has been added.', '', '', 1, '179.193.115.20', 1718735924),
(193, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735924),
(194, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735924),
(195, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735924),
(196, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735924),
(197, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735925),
(198, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735925),
(199, 'm', 'Admin added', 'Admin (WZ_SUEHTAM) has been added.', '', '', 1, '179.193.115.20', 1718735979),
(200, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718735979),
(201, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718735979),
(202, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718735980),
(203, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718735980),
(204, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718735980),
(205, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718735980),
(206, 'm', 'Admin added', 'Admin (GENERAL) has been added.', '', '', 1, '179.193.115.20', 1718736049),
(207, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718736049),
(208, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718736049),
(209, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718736049),
(210, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718736049),
(211, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718736050),
(212, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718736050),
(213, 'm', 'Admin added', 'Admin (KONDORO) has been added.', '', '', 1, '179.193.115.20', 1718736083),
(214, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718736083),
(215, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718736084),
(216, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718736084),
(217, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718736084),
(218, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718736084),
(219, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718736085),
(220, 'm', 'Admin added', 'Admin (MIMIK4) has been added.', '', '', 1, '179.193.115.20', 1718736111),
(221, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718736111),
(222, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718736111),
(223, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718736112),
(224, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718736112),
(225, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718736112),
(226, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718736112),
(227, 'm', 'Admin added', 'Admin (VENOM) has been added.', '', '', 1, '179.193.115.20', 1718736140),
(228, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718736140),
(229, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27016)', '', '', 1, '179.193.115.20', 1718736141),
(230, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27017)', '', '', 1, '179.193.115.20', 1718736141),
(231, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718736141),
(232, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27019)', '', '', 1, '179.193.115.20', 1718736141),
(233, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27025)', '', '', 1, '179.193.115.20', 1718736141),
(234, 'm', 'Admin&#39;s Groups Updated', 'Admin (Netto) groups has been updated.', '', 'p=admin&#38;c=admins&#38;o=editgroup&#38;id=1', 1, '179.193.115.20', 1718736465),
(235, 'm', 'Admin Servers Updated', 'Admin (Netto) server access has been changed.', '', 'p=admin&#38;c=admins&#38;o=editservers&#38;id=1', 1, '179.193.115.20', 1718736539),
(236, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718736539),
(237, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736541),
(238, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736542),
(239, 'e', 'Rcon Error [ServerID: 4]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736543),
(240, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736544),
(241, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736545),
(242, 'm', 'Admin Servers Updated', 'Admin (Netto) server access has been changed.', '', 'p=admin&#38;c=admins&#38;o=editservers&#38;id=1', 1, '179.193.115.20', 1718736545),
(243, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718736545),
(244, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736546),
(245, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736548),
(246, 'e', 'Rcon Error [ServerID: 4]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736549),
(247, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736550),
(248, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718736551),
(249, 'm', 'RCON Sent', 'RCON Command (removeid STEAM_0:1:69141797) was sent to server (179.193.115.20:27015)', '', 'p=banlist&#38;a=unban&#38;id=15&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=TESTE', 1, '179.193.115.20', 1718736648),
(250, 'm', 'Player Unbanned', 'liano (STEAM_0:1:69141797) has been unbanned.', '', 'p=banlist&#38;a=unban&#38;id=15&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=TESTE', 1, '179.193.115.20', 1718736649),
(251, 'm', 'Ban Deleted', 'Ban liano (STEAM_0:1:69141797) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=15&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718736662),
(252, 'm', 'Admin added', 'Admin (CREMOSINHO) has been added.', '', '', 1, '179.193.115.20', 1718747271),
(253, 'm', 'Admin Servers Updated', 'Admin (CREMOSINHO) server access has been changed.', '', 'p=admin&#38;c=admins&#38;o=editservers&#38;id=26', 1, '179.193.115.20', 1718747289),
(254, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718747290),
(255, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718747291),
(256, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718747292),
(257, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718747292),
(258, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718747293),
(259, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718747294),
(260, 'm', 'Admin Details Updated', 'Admin (SKULL) details has been changed.', '', 'p=admin&#38;c=admins&#38;o=editdetails&#38;id=16', 1, '179.193.115.20', 1718763374),
(261, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718763374),
(262, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718763376),
(263, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718763377),
(264, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718763377),
(265, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718763378),
(266, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718763379),
(267, 'm', 'Permissions Changed', 'Permissions have been changed for (Netto)', '', '', 1, '179.193.115.20', 1718764229),
(268, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718764229),
(269, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764231),
(270, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764232),
(271, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718764232),
(272, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764233),
(273, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764234),
(274, 'm', 'Permissions Changed', 'Permissions have been changed for (Netto)', '', '', 1, '179.193.115.20', 1718764242),
(275, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718764243),
(276, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764244),
(277, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764245),
(278, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718764245),
(279, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764246),
(280, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764247),
(281, 'm', 'Permissions Changed', 'Permissions have been changed for (Netto)', '', '', 1, '179.193.115.20', 1718764252),
(282, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1718764253),
(283, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764254),
(284, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764255),
(285, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1718764255),
(286, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764256),
(287, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1718764257),
(288, 'm', 'RCON Sent', 'RCON Command (removeid STEAM_0:0:426124033) was sent to server (179.193.115.20:27018)', '', 'p=banlist&#38;a=unban&#38;id=16&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=TESTE', 1, '179.193.115.20', 1718834779),
(289, 'm', 'Player Unbanned', 'donk666 (STEAM_0:0:426124033) has been unbanned.', '', 'p=banlist&#38;a=unban&#38;id=16&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=TESTE', 1, '179.193.115.20', 1718834779),
(290, 'm', 'Ban Deleted', 'Ban donk666 (STEAM_0:0:426124033) has been deleted.', '', 'p=banlist&#38;a=delete&#38;id=16&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1718834783),
(291, 'm', 'Admin added', 'Admin (CAIOW) has been added.', '', '', 1, '179.193.115.20', 1719583854),
(292, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27015)', '', '', 1, '179.193.115.20', 1719583854);
INSERT INTO `sb_log` (`lid`, `type`, `title`, `message`, `function`, `query`, `aid`, `host`, `created`) VALUES
(293, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1719583855),
(294, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1719583857),
(295, 'm', 'RCON Sent', 'RCON Command (sm_rehash) was sent to server (179.193.115.20:27018)', '', '', 1, '179.193.115.20', 1719583857),
(296, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1719583858),
(297, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', '', 1, '179.193.115.20', 1719583859),
(298, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:0:831057160) was sent to server (179.193.115.20:27015)', '', 'p=commslist&#38;a=unmute&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1719619742),
(299, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=unmute&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1719619743),
(300, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=unmute&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1719619744),
(301, 'm', 'RCON Sent', 'RCON Command (sc_fw_unmute STEAM_0:0:831057160) was sent to server (179.193.115.20:27018)', '', 'p=commslist&#38;a=unmute&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1719619745),
(302, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=unmute&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1719619746),
(303, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=unmute&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1719619747),
(304, 'm', 'Player UnMuted', 'nettinho o lokinho (STEAM_0:0:831057160) has been unmuted.', '', 'p=commslist&#38;a=unmute&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=teste', 1, '179.193.115.20', 1719619747),
(305, 'm', 'Block Deleted', 'Block nettinho o lokinho (STEAM_0:0:831057160) has been deleted.', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619751),
(306, 'm', 'RCON Sent', 'RCON Command ( ) was sent to server (179.193.115.20:27015)', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619752),
(307, 'e', 'Rcon Error [ServerID: 2]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619753),
(308, 'e', 'Rcon Error [ServerID: 3]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619754),
(309, 'm', 'RCON Sent', 'RCON Command ( ) was sent to server (179.193.115.20:27018)', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619755),
(310, 'e', 'Rcon Error [ServerID: 5]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619756),
(311, 'e', 'Rcon Error [ServerID: 6]', 'Can&#39;t connect to RCON server: Uma tentativa de conexão falhou porque o componente conectado não respondeu&#13;&#10;corretamente após um período de tempo ou a conexão estabelecida falhou&#13;&#10;porque o host conectado não respondeu', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619757),
(312, 'm', 'Block Deleted', 'Block  () has been deleted.', '', 'p=commslist&#38;a=delete&#38;id=6&#38;key=a4c43153179128770ad9578ea4d57abd', 1, '179.193.115.20', 1719619757),
(313, 'm', 'Player Unbanned', ' (STEAM_0:0:426124033) has been unbanned.', '', 'p=banlist&#38;a=unban&#38;id=17&#38;key=a4c43153179128770ad9578ea4d57abd&#38;ureason=Libera%C3%A7%C3%A3o%20do%20conselho...', 1, '179.193.115.20', 1719715273);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_login_tokens`
--

CREATE TABLE `sb_login_tokens` (
  `jti` varchar(16) NOT NULL,
  `secret` varchar(64) NOT NULL,
  `lastAccessed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_mods`
--

CREATE TABLE `sb_mods` (
  `mid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `modfolder` varchar(64) NOT NULL,
  `steam_universe` tinyint(4) NOT NULL DEFAULT 0,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_mods`
--

INSERT INTO `sb_mods` (`mid`, `name`, `icon`, `modfolder`, `steam_universe`, `enabled`) VALUES
(0, 'Web', 'web.png', 'NULL', 0, 1),
(1, 'Half-Life 2 Deathmatch', 'hl2dm.png', 'hl2mp', 0, 1),
(2, 'Counter-Strike: Source', 'csource.png', 'cstrike', 0, 1),
(3, 'Day of Defeat: Source', 'dods.png', 'dod', 0, 1),
(4, 'Insurgency: Source', 'ins.png', 'insurgency', 0, 1),
(5, 'Dystopia', 'dys.png', 'dystopia_v1', 0, 1),
(6, 'Hidden: Source', 'hidden.png', 'hidden', 0, 1),
(7, 'Half-Life 2 Capture the Flag', 'hl2ctf.png', 'hl2ctf', 0, 1),
(8, 'Pirates Vikings and Knights II', 'pvkii.png', 'pvkii', 0, 1),
(9, 'Perfect Dark: Source', 'pdark.png', 'pdark', 0, 1),
(10, 'The Ship', 'ship.png', 'ship', 0, 1),
(11, 'Fortress Forever', 'hl2-fortressforever.png', 'FortressForever', 0, 1),
(12, 'Team Fortress 2', 'tf2.png', 'tf', 0, 1),
(13, 'Zombie Panic', 'zps.png', 'zps', 0, 1),
(14, 'Garry\'s Mod', 'gmod.png', 'garrysmod', 0, 1),
(15, 'Left 4 Dead', 'l4d.png', 'left4dead', 1, 1),
(16, 'Left 4 Dead 2', 'l4d2.png', 'left4dead2', 1, 1),
(17, 'CSPromod', 'cspromod.png', 'cspromod', 0, 1),
(18, 'Alien Swarm', 'alienswarm.png', 'alienswarm', 0, 1),
(19, 'E.Y.E: Divine Cybermancy', 'eye.png', 'eye', 0, 1),
(20, 'Nuclear Dawn', 'nucleardawn.png', 'nucleardawn', 0, 1),
(21, 'Counter-Strike: Global Offensive', 'csgo.png', 'csgo', 1, 1),
(22, 'Synergy', 'synergy.png', 'synergy', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_overrides`
--

CREATE TABLE `sb_overrides` (
  `id` int(11) NOT NULL,
  `type` enum('command','group') NOT NULL,
  `name` varchar(32) NOT NULL,
  `flags` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_protests`
--

CREATE TABLE `sb_protests` (
  `pid` int(6) NOT NULL,
  `bid` int(6) NOT NULL,
  `datesubmitted` int(11) NOT NULL,
  `reason` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `archiv` tinyint(1) DEFAULT 0,
  `archivedby` int(11) DEFAULT NULL,
  `pip` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_servers`
--

CREATE TABLE `sb_servers` (
  `sid` int(6) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `port` int(5) NOT NULL,
  `rcon` varchar(64) NOT NULL,
  `modid` int(10) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_servers`
--

INSERT INTO `sb_servers` (`sid`, `ip`, `port`, `rcon`, `modid`, `enabled`) VALUES
(1, '179.193.115.20', 27015, 'abc123', 2, 1),
(2, '179.193.115.20', 27016, 'abc123', 2, 1),
(3, '179.193.115.20', 27017, 'abc123', 2, 1),
(4, '179.193.115.20', 27018, 'abc123', 2, 1),
(5, '179.193.115.20', 27019, 'abc123', 2, 1),
(6, '179.193.115.20', 27025, 'abc123', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_servers_groups`
--

CREATE TABLE `sb_servers_groups` (
  `server_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_settings`
--

CREATE TABLE `sb_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting` varchar(128) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_settings`
--

INSERT INTO `sb_settings` (`id`, `setting`, `value`) VALUES
(16, 'config.exportpublic', '0'),
(17, 'config.enablepubliccomments', '0'),
(18, 'config.enablekickit', '1'),
(20, 'config.theme', 'default'),
(22, 'config.enablegroupbanning', '0'),
(23, 'config.enablefriendsbanning', '0'),
(24, 'config.enableadminrehashing', '1'),
(26, 'config.version', '704'),
(27, 'config.enablesteamlogin', '1'),
(61, 'smtp.pass', 'Alsbr24'),
(62, 'template.title', 'SourceBans++'),
(63, 'template.logo', 'logos/sb-large.png'),
(64, 'config.password.minlength', '7'),
(65, 'config.debug', '0'),
(66, 'config.dateformat', 'Y-m-d H:i:s'),
(67, 'dash.intro.title', 'Se vc esta aqui é porque fez cagada ne!'),
(68, 'banlist.bansperpage', '30'),
(69, 'banlist.hideadminname', '0'),
(70, 'banlist.hideplayerips', '1'),
(71, 'banlist.nocountryfetch', '0'),
(72, 'dash.intro.text', '<center>\r\n<p>&nbsp;N&atilde;o use <strong>xiter</strong>. Aprenda a jogar...</p>\r\n<p>&nbsp;</p>\r\n</center>'),
(73, 'dash.lognopopup', '0'),
(74, 'config.enableprotest', '1'),
(75, 'config.enablecomms', '1'),
(76, 'config.enablesubmit', '1'),
(77, 'protest.emailonlyinvolved', '0'),
(78, 'bans.customreasons', ''),
(79, 'auth.maxlife', '1440'),
(80, 'auth.maxlife.remember', '10080'),
(81, 'auth.maxlife.steam', '10080'),
(82, 'config.defaultpage', '0'),
(83, 'smtp.host', ''),
(84, 'smtp.user', 'Netto'),
(85, 'smtp.port', ''),
(86, 'smtp.verify_peer', '0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_srvgroups`
--

CREATE TABLE `sb_srvgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `flags` varchar(30) NOT NULL,
  `immunity` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `groups_immune` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_srvgroups`
--

INSERT INTO `sb_srvgroups` (`id`, `flags`, `immunity`, `name`, `groups_immune`) VALUES
(1, 'bcdfgjkl', 10, 'MODERADORES', ' '),
(2, 'bcdefghijklm', 100, 'CONSELHO SERVER', ' ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_srvgroups_overrides`
--

CREATE TABLE `sb_srvgroups_overrides` (
  `id` int(11) NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `type` enum('command','group') NOT NULL,
  `name` varchar(32) NOT NULL,
  `access` enum('allow','deny') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sb_submissions`
--

CREATE TABLE `sb_submissions` (
  `subid` int(6) NOT NULL,
  `submitted` int(11) NOT NULL,
  `ModID` int(6) NOT NULL,
  `SteamId` varchar(64) NOT NULL DEFAULT 'unnamed',
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `reason` text NOT NULL,
  `ip` varchar(64) NOT NULL,
  `subname` varchar(128) DEFAULT NULL,
  `sip` varchar(64) DEFAULT NULL,
  `archiv` tinyint(1) DEFAULT 0,
  `archivedby` int(11) DEFAULT NULL,
  `server` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sb_submissions`
--

INSERT INTO `sb_submissions` (`subid`, `submitted`, `ModID`, `SteamId`, `name`, `email`, `reason`, `ip`, `subname`, `sip`, `archiv`, `archivedby`, `server`) VALUES
(1, 1717212076, 0, 'STEAM_0:1:168265702', 'NW AWA', 'STEAM_0:1:448737179', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkk', '170.81.211.102', 'NuJaaj  ͨꜪ:', '45.186.36.118', 0, NULL, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `sb_admins`
--
ALTER TABLE `sb_admins`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Índices de tabela `sb_banlog`
--
ALTER TABLE `sb_banlog`
  ADD PRIMARY KEY (`sid`,`time`,`bid`);

--
-- Índices de tabela `sb_bans`
--
ALTER TABLE `sb_bans`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `type_authid` (`type`,`authid`),
  ADD KEY `type_ip` (`type`,`ip`);
ALTER TABLE `sb_bans` ADD FULLTEXT KEY `reason` (`reason`);
ALTER TABLE `sb_bans` ADD FULLTEXT KEY `authid_2` (`authid`);

--
-- Índices de tabela `sb_comments`
--
ALTER TABLE `sb_comments`
  ADD KEY `cid` (`cid`);
ALTER TABLE `sb_comments` ADD FULLTEXT KEY `commenttxt` (`commenttxt`);

--
-- Índices de tabela `sb_comms`
--
ALTER TABLE `sb_comms`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `type` (`type`),
  ADD KEY `RemoveType` (`RemoveType`),
  ADD KEY `authid` (`authid`),
  ADD KEY `created` (`created`),
  ADD KEY `aid` (`aid`);

--
-- Índices de tabela `sb_demos`
--
ALTER TABLE `sb_demos`
  ADD PRIMARY KEY (`demid`,`demtype`);

--
-- Índices de tabela `sb_groups`
--
ALTER TABLE `sb_groups`
  ADD PRIMARY KEY (`gid`);

--
-- Índices de tabela `sb_log`
--
ALTER TABLE `sb_log`
  ADD PRIMARY KEY (`lid`);

--
-- Índices de tabela `sb_login_tokens`
--
ALTER TABLE `sb_login_tokens`
  ADD PRIMARY KEY (`jti`),
  ADD UNIQUE KEY `secret` (`secret`);

--
-- Índices de tabela `sb_mods`
--
ALTER TABLE `sb_mods`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `modfolder` (`modfolder`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `steam_universe` (`steam_universe`);

--
-- Índices de tabela `sb_overrides`
--
ALTER TABLE `sb_overrides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`name`);

--
-- Índices de tabela `sb_protests`
--
ALTER TABLE `sb_protests`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `bid` (`bid`);

--
-- Índices de tabela `sb_servers`
--
ALTER TABLE `sb_servers`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `ip` (`ip`,`port`);

--
-- Índices de tabela `sb_servers_groups`
--
ALTER TABLE `sb_servers_groups`
  ADD PRIMARY KEY (`server_id`,`group_id`);

--
-- Índices de tabela `sb_settings`
--
ALTER TABLE `sb_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting` (`setting`);

--
-- Índices de tabela `sb_srvgroups`
--
ALTER TABLE `sb_srvgroups`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sb_srvgroups_overrides`
--
ALTER TABLE `sb_srvgroups_overrides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`type`,`name`);

--
-- Índices de tabela `sb_submissions`
--
ALTER TABLE `sb_submissions`
  ADD PRIMARY KEY (`subid`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `sb_admins`
--
ALTER TABLE `sb_admins`
  MODIFY `aid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `sb_bans`
--
ALTER TABLE `sb_bans`
  MODIFY `bid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `sb_comments`
--
ALTER TABLE `sb_comments`
  MODIFY `cid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sb_comms`
--
ALTER TABLE `sb_comms`
  MODIFY `bid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `sb_groups`
--
ALTER TABLE `sb_groups`
  MODIFY `gid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sb_log`
--
ALTER TABLE `sb_log`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT de tabela `sb_mods`
--
ALTER TABLE `sb_mods`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `sb_overrides`
--
ALTER TABLE `sb_overrides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sb_protests`
--
ALTER TABLE `sb_protests`
  MODIFY `pid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sb_servers`
--
ALTER TABLE `sb_servers`
  MODIFY `sid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `sb_settings`
--
ALTER TABLE `sb_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de tabela `sb_srvgroups`
--
ALTER TABLE `sb_srvgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `sb_srvgroups_overrides`
--
ALTER TABLE `sb_srvgroups_overrides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sb_submissions`
--
ALTER TABLE `sb_submissions`
  MODIFY `subid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
