-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Abr-2022 às 18:34
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pixelearte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `street` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(255) NOT NULL DEFAULT '',
  `complement` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `address`
--

INSERT INTO `address` (`id`, `user_id`, `street`, `number`, `complement`, `created_at`, `updated_at`) VALUES
(1, 1, 'rua manoel pedro vieira, 810', '810', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:39:59'),
(2, 2, 'paraguai', '2041', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:01'),
(3, 3, 'emilio daroz ', '107', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:02'),
(4, 4, 'rua lavinia moreira da silva', '145', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:03'),
(5, 5, 'padre anchieta', '121', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:04'),
(6, 6, 'rua amoroso costa', '254', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:06'),
(7, 7, 'alaor martins', '312', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:07'),
(8, 8, 'rua das violetas', '330', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:09'),
(9, 9, 'francisco carlos ', '105', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:10'),
(10, 10, 'torino', '95', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:12'),
(11, 11, 'rua erotidas', '64', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:13'),
(12, 12, 'r. orquideas', '169', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:14'),
(13, 13, 'rua joffre motta', '44', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:14'),
(14, 14, 'rua piauí', '17', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:15'),
(15, 15, 'fernandes marques', '1229', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:16'),
(16, 16, 'av. beta', '07', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:17'),
(17, 17, 'abagiba', '674', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:23'),
(18, 18, 'gumercindo araujo', '302', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:25'),
(19, 19, 'rua 01, quadra 35', '35b', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:26'),
(20, 20, 'rua piauí', '23d', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:27'),
(21, 21, 'rua leopoldina araãºjo', '380', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:28'),
(22, 22, 'rua conceiã§ã£o', '101', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:29'),
(23, 23, 'rua benedetto bonfilgi', '755', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:30'),
(24, 24, 'rua sã£o francisco', '17', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:30'),
(25, 25, 'rua dona zulmira', '479', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:32'),
(26, 26, 'rua mampituba', '740', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:32'),
(27, 27, 'dezeseis', '151', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:34'),
(28, 28, 'rua dos goitacazes', '375', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:35'),
(29, 29, 'av lucio jose de meneses', '930', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:36'),
(30, 30, 'caetano', '3457', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:38'),
(31, 31, 'um nova ', '335', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:39'),
(32, 32, 'sres area especial', '19', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:40'),
(33, 33, 'islandia', '99', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:41'),
(34, 34, 'independência', '700', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:42'),
(35, 35, 'sebastiã£o thomaz de oliveira', '25', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:46'),
(36, 36, 'nogueira', '185', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:48'),
(37, 37, 'tv londrina', '12', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:49'),
(38, 38, 'teofilo otoni', '222', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:51'),
(39, 39, 'joã£o rasmussen', '244', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:53'),
(40, 40, 'travessa elizeu araãºjo', '46', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:56'),
(41, 41, 'av. dr. joão pessoa', '185', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:58'),
(42, 42, 'travessa brandão', '4', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:40:59'),
(43, 43, 'coqueiros', 'SN', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:00'),
(44, 44, 'estrada m boi mirim', '820', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:01'),
(45, 45, 'travessa dos comerciarios ', '5', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:02'),
(46, 46, 'dos jacarandas', '30', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:03'),
(47, 47, 'dona ermelinda pereira', '413', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:04'),
(48, 48, 'rua projetada 02', '742', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:05'),
(49, 49, 'samambaia', '96', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:07'),
(50, 50, 'rua dos gerã¢nios', '110', 'casa 1', '2018-09-03 19:40:57', '2018-09-16 22:41:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_categories`
--

CREATE TABLE `app_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `sub_of` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(15) NOT NULL DEFAULT '',
  `order_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_categories`
--

INSERT INTO `app_categories` (`id`, `sub_of`, `name`, `type`, `order_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Salário', 'income', 0, '2018-11-29 11:30:32', '2018-11-29 12:10:21'),
(2, NULL, 'Investimento', 'income', 1, '2018-11-29 11:30:41', '2018-12-05 00:03:30'),
(3, NULL, 'Empréstimo', 'income', 1, '2018-11-29 11:30:53', '2018-12-05 00:03:35'),
(4, NULL, 'Outras receitas', 'income', 2, '2018-11-29 11:31:21', '2018-11-29 12:09:59'),
(5, NULL, 'Alimentação', 'expense', 0, '2018-11-29 11:32:15', '2018-11-29 11:32:15'),
(6, NULL, 'Aluguel', 'expense', 0, '2018-11-29 11:32:19', '2018-12-05 00:03:44'),
(7, NULL, 'Compras', 'expense', 0, '2018-11-29 11:32:33', '2018-11-29 11:32:33'),
(8, NULL, 'Educação', 'expense', 0, '2018-11-29 11:32:34', '2018-11-29 11:32:38'),
(9, NULL, 'Entretenimento', 'expense', 0, '2018-11-29 11:32:49', '2018-11-29 11:32:51'),
(10, NULL, 'Impostos e taxas', 'expense', 0, '2018-11-29 11:32:57', '2018-11-29 11:32:57'),
(11, NULL, 'Saúde', 'expense', 0, '2018-11-29 11:33:08', '2018-11-29 11:33:31'),
(12, NULL, 'Serviços', 'expense', 0, '2018-11-29 11:33:13', '2018-11-29 11:33:32'),
(13, NULL, 'Viagen', 'expense', 0, '2018-11-29 11:33:23', '2018-12-05 00:03:56'),
(14, NULL, 'Outras despesas', 'expense', 2, '2018-11-29 11:33:29', '2018-11-29 12:10:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_credit_cards`
--

CREATE TABLE `app_credit_cards` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `brand` varchar(20) NOT NULL DEFAULT '',
  `last_digits` varchar(11) NOT NULL DEFAULT '',
  `cvv` varchar(11) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_credit_cards`
--

INSERT INTO `app_credit_cards` (`id`, `user_id`, `brand`, `last_digits`, `cvv`, `hash`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'visa', '5386', '978', 'card_cjqh0engf02q34ka6ewd27xk8ya', 'active', '2019-01-03 20:34:27', '2019-02-12 11:53:42'),
(2, 2, 'mastercard', '7058', '651', 'card_cjqmkmrtr003d6qa6d0ll1z9osa', 'active', '2019-01-07 17:59:29', '2019-02-12 11:53:41'),
(3, 3, 'mastercard', '6013', '1234', 'card_cjq0ww3je014gxy6advoyhyhgx', 'active', '2019-01-04 16:52:55', '2019-02-12 11:53:39'),
(4, 4, 'mastercard', '531', '45', 'card_cjqh0hgx302g68ja6eglnwamif', 'active', '2019-01-03 20:36:39', '2019-02-12 11:53:44'),
(5, 51, 'amex', '9195', '6319', 'card_cjqh11uam00oksca6dz4mugccv', 'active', '2019-01-03 20:52:29', '2019-02-12 11:53:46'),
(6, 51, 'diners', '7885', '888', 'card_cjqh1306j02r54ka6e8nu357kv', 'active', '2019-01-03 20:53:23', '2019-02-12 11:53:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_invoices`
--

CREATE TABLE `app_invoices` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `wallet_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `invoice_of` int(11) UNSIGNED DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(15) NOT NULL DEFAULT '',
  `value` decimal(10,2) NOT NULL,
  `currency` varchar(5) NOT NULL DEFAULT 'BRL',
  `due_at` date NOT NULL,
  `repeat_when` varchar(10) NOT NULL DEFAULT '',
  `period` varchar(10) NOT NULL DEFAULT 'month',
  `enrollments` int(11) DEFAULT NULL,
  `enrollment_of` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_invoices`
--

INSERT INTO `app_invoices` (`id`, `user_id`, `wallet_id`, `category_id`, `invoice_of`, `description`, `type`, `value`, `currency`, `due_at`, `repeat_when`, `period`, `enrollments`, `enrollment_of`, `status`, `created_at`, `updated_at`) VALUES
(1, 51, 22, 1, NULL, 'Salário UpInside', 'fixed_income', '10000.00', 'BRL', '2018-10-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 17:59:56', '2018-12-26 17:59:56'),
(2, 51, 22, 1, 1, 'Salário UpInside', 'income', '10000.00', 'BRL', '2018-10-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 17:59:56', '2018-12-26 17:59:56'),
(3, 51, 22, 1, 1, 'Salário UpInside', 'income', '10000.00', 'BRL', '2018-11-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 17:59:56', '2018-12-26 17:59:56'),
(4, 51, 22, 1, 1, 'Salário UpInside', 'income', '10000.00', 'BRL', '2018-12-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 17:59:56', '2018-12-26 17:59:56'),
(5, 51, 22, 1, 1, 'Salário UpInside', 'income', '10000.00', 'BRL', '2019-01-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 17:59:56', '2019-01-25 16:38:46'),
(6, 51, 22, 1, 1, 'Salário UpInside', 'income', '10000.00', 'BRL', '2019-02-15', 'fixed', 'month', 0, 1, 'unpaid', '2018-12-26 17:59:56', '2018-12-26 17:59:56'),
(7, 51, 22, 1, 1, 'Salário UpInside', 'income', '10000.00', 'BRL', '2019-03-15', 'fixed', 'month', 0, 1, 'unpaid', '2018-12-26 17:59:56', '2018-12-26 17:59:56'),
(8, 51, 22, 2, NULL, 'Investimentos', 'fixed_income', '1220.00', 'BRL', '2018-12-10', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:18', '2018-12-26 18:00:18'),
(9, 51, 22, 2, 8, 'Investimentos', 'income', '1220.00', 'BRL', '2018-12-10', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:19', '2018-12-26 18:00:19'),
(10, 51, 22, 2, 8, 'Investimentos', 'income', '1220.00', 'BRL', '2019-01-10', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:19', '2019-01-15 16:09:42'),
(11, 51, 22, 2, 8, 'Investimentos', 'income', '1220.00', 'BRL', '2019-02-10', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:19', '2019-02-14 16:37:47'),
(12, 51, 22, 2, 8, 'Investimentos', 'income', '1220.00', 'BRL', '2019-03-10', 'fixed', 'month', 0, 1, 'unpaid', '2018-12-26 18:00:19', '2018-12-26 18:00:19'),
(13, 51, 22, 6, NULL, 'Aluguel Quinta', 'fixed_expense', '5000.00', 'BRL', '2018-10-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:40', '2018-12-26 18:00:40'),
(14, 51, 22, 6, 13, 'Aluguel Quinta', 'expense', '5000.00', 'BRL', '2018-10-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:41', '2018-12-26 18:00:41'),
(15, 51, 22, 6, 13, 'Aluguel Quinta', 'expense', '5000.00', 'BRL', '2018-11-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:41', '2018-12-26 18:00:41'),
(16, 51, 22, 6, 13, 'Aluguel Quinta', 'expense', '5000.00', 'BRL', '2018-12-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:41', '2018-12-26 18:00:41'),
(17, 51, 22, 6, 13, 'Aluguel Quinta', 'expense', '5000.00', 'BRL', '2019-01-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:00:41', '2019-01-25 16:38:44'),
(18, 51, 22, 6, 13, 'Aluguel Quinta', 'expense', '5000.00', 'BRL', '2019-02-15', 'fixed', 'month', 0, 1, 'unpaid', '2018-12-26 18:00:41', '2018-12-26 18:00:41'),
(19, 51, 22, 6, 13, 'Aluguel Quinta', 'expense', '5000.00', 'BRL', '2019-03-15', 'fixed', 'month', 0, 1, 'unpaid', '2018-12-26 18:00:41', '2018-12-26 18:00:41'),
(20, 51, 22, 6, NULL, 'Condomínio Quinta', 'fixed_expense', '1000.00', 'BRL', '2018-10-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:01:04', '2018-12-26 18:01:04'),
(21, 51, 22, 6, 20, 'Condomínio Quinta', 'expense', '1000.00', 'BRL', '2018-10-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:01:05', '2018-12-26 18:01:05'),
(22, 51, 22, 6, 20, 'Condomínio Quinta', 'expense', '1000.00', 'BRL', '2018-11-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:01:05', '2018-12-26 18:01:05'),
(23, 51, 22, 6, 20, 'Condomínio Quinta', 'expense', '1000.00', 'BRL', '2018-12-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:01:05', '2018-12-26 18:01:05'),
(24, 51, 22, 6, 20, 'Condomínio Quinta', 'expense', '1000.00', 'BRL', '2019-01-15', 'fixed', 'month', 0, 1, 'paid', '2018-12-26 18:01:05', '2019-01-25 16:38:44'),
(25, 51, 22, 6, 20, 'Condomínio Quinta', 'expense', '1000.00', 'BRL', '2019-02-15', 'fixed', 'month', 0, 1, 'unpaid', '2018-12-26 18:01:05', '2018-12-26 18:01:05'),
(26, 51, 22, 6, 20, 'Condomínio Quinta', 'expense', '1000.00', 'BRL', '2019-03-15', 'fixed', 'month', 0, 1, 'unpaid', '2018-12-26 18:01:05', '2018-12-26 18:01:05'),
(27, 51, 22, 14, NULL, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2018-11-28', 'enrollment', 'month', 15, 1, 'paid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(28, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2018-12-28', 'enrollment', 'month', 15, 2, 'paid', '2018-12-26 18:01:37', '2019-01-04 16:51:55'),
(29, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-01-28', 'enrollment', 'month', 15, 3, 'paid', '2018-12-26 18:01:37', '2019-02-01 13:07:14'),
(30, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-02-28', 'enrollment', 'month', 15, 4, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(31, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-03-28', 'enrollment', 'month', 15, 5, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(32, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-04-28', 'enrollment', 'month', 15, 6, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(33, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-05-28', 'enrollment', 'month', 15, 7, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(34, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-06-28', 'enrollment', 'month', 15, 8, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(35, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-07-28', 'enrollment', 'month', 15, 9, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(36, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-08-28', 'enrollment', 'month', 15, 10, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(37, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-09-28', 'enrollment', 'month', 15, 11, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(38, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-10-28', 'enrollment', 'month', 15, 12, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(39, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-11-28', 'enrollment', 'month', 15, 13, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(40, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2019-12-28', 'enrollment', 'month', 15, 14, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(41, 51, 22, 14, 27, 'Parcela Carro', 'expense', '3800.00', 'BRL', '2020-01-28', 'enrollment', 'month', 15, 15, 'unpaid', '2018-12-26 18:01:37', '2018-12-26 18:01:37'),
(42, 51, 22, 1, NULL, 'Projeto Academia', 'income', '3800.00', 'BRL', '2018-12-28', 'single', 'month', 0, 1, 'paid', '2018-12-26 18:01:54', '2019-01-04 16:51:53'),
(43, 51, 23, 4, NULL, 'Projeto', 'income', '5000.00', 'BRL', '2019-01-05', 'single', 'month', 0, 1, 'paid', '2019-01-03 14:36:53', '2019-01-07 18:11:52'),
(44, 51, 23, 6, NULL, 'Aluguel', 'fixed_expense', '4200.00', 'BRL', '2018-12-03', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 14:37:26', '2019-01-03 14:37:26'),
(45, 51, 23, 6, 44, 'Aluguel', 'expense', '4200.00', 'BRL', '2018-12-03', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 14:37:26', '2019-01-03 14:37:26'),
(46, 51, 23, 6, 44, 'Aluguel', 'expense', '4200.00', 'BRL', '2019-01-03', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 14:37:26', '2019-01-03 14:37:26'),
(47, 51, 23, 6, 44, 'Aluguel', 'expense', '4200.00', 'BRL', '2019-02-03', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 14:37:26', '2019-02-07 14:12:15'),
(48, 51, 23, 6, 44, 'Aluguel', 'expense', '4200.00', 'BRL', '2019-03-03', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-03 14:37:26', '2019-01-03 14:37:26'),
(49, 51, 23, 6, 44, 'Aluguel', 'expense', '4200.00', 'BRL', '2019-04-03', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-03 14:37:26', '2019-01-03 14:37:26'),
(54, 51, 23, 1, NULL, 'Lucros', 'fixed_income', '10000.00', 'BRL', '2018-12-05', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:13', '2019-01-03 16:27:13'),
(55, 51, 23, 1, 54, 'Lucros', 'income', '10000.00', 'BRL', '2018-12-05', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:14', '2019-01-03 16:27:14'),
(56, 51, 23, 1, 54, 'Lucros', 'income', '10000.00', 'BRL', '2019-01-05', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:14', '2019-01-07 18:11:52'),
(57, 51, 23, 1, 54, 'Lucros', 'income', '10000.00', 'BRL', '2019-02-05', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:14', '2019-02-07 14:12:16'),
(58, 51, 23, 1, 54, 'Lucros', 'income', '10000.00', 'BRL', '2019-03-05', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-03 16:27:14', '2019-01-03 16:27:14'),
(59, 51, 23, 12, NULL, 'Anúncios', 'fixed_expense', '8000.00', 'BRL', '2018-12-10', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:46', '2019-01-03 16:27:46'),
(60, 51, 23, 12, 59, 'Anúncios', 'expense', '8000.00', 'BRL', '2018-12-10', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:47', '2019-01-03 16:27:47'),
(61, 51, 23, 12, 59, 'Anúncios', 'expense', '8000.00', 'BRL', '2019-01-10', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:47', '2019-01-25 16:38:43'),
(62, 51, 23, 12, 59, 'Anúncios', 'expense', '8000.00', 'BRL', '2019-02-10', 'fixed', 'month', 0, 1, 'paid', '2019-01-03 16:27:47', '2019-02-14 16:37:53'),
(63, 51, 23, 12, 59, 'Anúncios', 'expense', '8000.00', 'BRL', '2019-03-10', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-03 16:27:47', '2019-01-03 16:27:47'),
(64, 51, 22, 1, NULL, 'Teste FREE', 'income', '500.00', 'BRL', '2019-01-10', 'single', 'month', 1, 1, 'paid', '2019-01-03 21:09:39', '2019-01-15 16:09:42'),
(65, 51, 23, 1, NULL, 'PRO teste', 'income', '500.00', 'BRL', '2019-01-04', 'single', 'month', 1, 1, 'paid', '2019-01-03 21:10:20', '2019-01-04 16:51:54'),
(66, 51, 23, 1, 54, 'Lucros', 'income', '10000.00', 'BRL', '2019-04-05', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-05 12:52:55', '2019-01-05 12:52:55'),
(67, 51, 23, 2, NULL, 'Teste', 'income', '3434.44', 'BRL', '2019-01-07', 'single', 'month', 1, 1, 'paid', '2019-01-07 18:11:46', '2019-01-07 18:11:46'),
(68, 51, 22, 2, 8, 'Investimentos', 'income', '1220.00', 'BRL', '2019-04-10', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-10 14:11:18', '2019-01-10 14:11:18'),
(69, 51, 23, 12, 59, 'Anúncios', 'expense', '8000.00', 'BRL', '2019-04-10', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-10 14:11:18', '2019-01-10 14:11:18'),
(70, 51, 22, 1, 1, 'Salário UpInside', 'income', '10000.00', 'BRL', '2019-04-15', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-15 14:37:36', '2019-01-15 14:37:36'),
(71, 51, 22, 6, 13, 'Aluguel Quinta', 'expense', '5000.00', 'BRL', '2019-04-15', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-15 14:37:36', '2019-01-15 14:37:36'),
(72, 51, 22, 6, 20, 'Condomínio Quinta', 'expense', '1000.00', 'BRL', '2019-04-15', 'fixed', 'month', 0, 1, 'unpaid', '2019-01-15 14:37:36', '2019-01-15 14:37:36'),
(73, 51, 23, 6, 44, 'Aluguel', 'expense', '4200.00', 'BRL', '2019-05-03', 'fixed', 'month', 0, 1, 'unpaid', '2019-02-03 17:36:58', '2019-02-03 17:36:58'),
(74, 51, 23, 1, 54, 'Lucros', 'income', '10000.00', 'BRL', '2019-05-05', 'fixed', 'month', 0, 1, 'unpaid', '2019-02-06 11:25:54', '2019-02-06 11:25:54'),
(75, 51, 22, 2, 8, 'Investimentos', 'income', '1220.00', 'BRL', '2019-05-10', 'fixed', 'month', 0, 1, 'unpaid', '2019-02-14 16:37:35', '2019-02-14 16:37:35'),
(76, 51, 23, 12, 59, 'Anúncios', 'expense', '8000.00', 'BRL', '2019-05-10', 'fixed', 'month', 0, 1, 'unpaid', '2019-02-14 16:37:35', '2019-02-14 16:37:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_orders`
--

CREATE TABLE `app_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `card_id` int(11) UNSIGNED DEFAULT NULL,
  `subscription_id` int(11) UNSIGNED DEFAULT NULL,
  `transaction` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_orders`
--

INSERT INTO `app_orders` (`id`, `user_id`, `card_id`, `subscription_id`, `transaction`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(5, 51, 4, 4, '4736404', '50.00', 'paid', '2019-01-03 20:38:19', '2019-01-03 20:38:19'),
(6, 51, 5, 4, '4736461', '50.00', 'paid', '2019-01-03 20:52:31', '2019-01-03 20:52:31'),
(7, 51, 6, 4, '4738811', '50.00', 'paid', '2019-01-04 14:12:17', '2019-01-04 14:12:17'),
(8, 51, 6, 4, '4738816', '50.00', 'paid', '2019-01-04 14:13:11', '2019-01-04 14:13:11'),
(9, 51, 6, 4, '4738824', '50.00', 'paid', '2019-01-04 14:14:49', '2019-01-04 14:14:49'),
(10, 51, 6, 4, '4738839', '50.00', 'resused', '2019-01-04 14:19:54', '2019-01-04 14:20:55'),
(11, 51, 6, 4, '4738892', '50.00', 'paid', '2019-01-04 14:32:31', '2019-01-04 14:32:31'),
(12, 51, 6, 4, '4738898', '50.00', 'paid', '2019-01-04 14:34:01', '2019-01-04 14:34:01'),
(13, 51, 6, 4, '4738905', '50.00', 'paid', '2019-01-04 14:35:38', '2019-01-04 14:35:38'),
(14, 51, 6, 4, '4738916', '50.00', 'paid', '2019-01-04 14:36:43', '2019-01-04 14:36:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_plans`
--

CREATE TABLE `app_plans` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `period` varchar(11) NOT NULL DEFAULT '',
  `period_str` varchar(11) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_plans`
--

INSERT INTO `app_plans` (`id`, `name`, `period`, `period_str`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PRO', '1month', 'mês', '5.00', 'active', '2018-12-21 10:02:22', '2019-01-03 19:45:18'),
(2, 'PRO', '1year', 'ano', '50.00', 'active', '2018-12-21 10:02:57', '2019-02-06 08:57:49'),
(3, 'EXPERT', '1month', 'mês', '75.00', 'inactive', '2018-12-21 10:04:02', '2018-12-23 22:56:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_subscriptions`
--

CREATE TABLE `app_subscriptions` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `plan_id` int(11) UNSIGNED DEFAULT NULL,
  `card_id` int(11) UNSIGNED DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active' COMMENT 'active,inactive,past_due,canceled',
  `pay_status` varchar(10) NOT NULL DEFAULT 'active' COMMENT 'active,inactive,past_due,canceled',
  `started` date NOT NULL,
  `due_day` int(2) NOT NULL,
  `next_due` date NOT NULL,
  `last_charge` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_subscriptions`
--

INSERT INTO `app_subscriptions` (`id`, `user_id`, `plan_id`, `card_id`, `status`, `pay_status`, `started`, `due_day`, `next_due`, `last_charge`, `created_at`, `updated_at`) VALUES
(4, 51, 2, 6, 'active', 'active', '2019-01-03', 28, '2019-10-22', '2018-10-22', '2019-01-03 20:38:19', '2019-02-06 17:51:49'),
(5, 2, 1, 2, 'active', 'active', '2019-02-03', 0, '2020-03-03', '2020-03-03', '2019-02-03 16:38:24', '2019-02-06 09:14:48'),
(6, 1, 2, 1, 'active', 'active', '2019-02-03', 0, '2020-03-03', '2020-03-03', '2019-02-03 16:42:57', '2019-02-06 09:14:47'),
(7, 3, 2, 3, 'active', 'canceled', '2019-02-03', 0, '2020-03-03', '2020-03-03', '2019-02-06 09:06:52', '2019-02-06 09:14:49'),
(8, 4, 1, 4, 'active', 'active', '2019-02-03', 0, '2020-03-03', '2020-03-03', '2019-02-06 09:13:29', '2019-02-06 09:14:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_wallets`
--

CREATE TABLE `app_wallets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `wallet` varchar(255) NOT NULL DEFAULT '',
  `free` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `app_wallets`
--

INSERT INTO `app_wallets` (`id`, `user_id`, `wallet`, `free`, `created_at`, `updated_at`) VALUES
(22, 51, 'Home', 1, '2018-12-26 13:08:43', '2019-01-03 16:51:52'),
(23, 51, 'UpInside', 0, '2019-01-03 14:03:35', '2019-01-03 16:51:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE `banners` (
  `id` int(11) UNSIGNED NOT NULL,
  `product` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `position` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ar` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`id`, `product`, `image`, `position`, `created_at`, `updated_ar`) VALUES
(1, 1, '/2022/04/banner.jpg', 1, '2022-04-23 11:35:31', '2022-04-23 11:42:37'),
(2, 2, '/2022/04/banner.jpg', 2, '2022-04-23 11:35:31', '2022-04-23 11:42:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'post' COMMENT 'post, page, etc',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `uri`, `description`, `cover`, `type`, `created_at`, `updated_at`) VALUES
(1, 'cartões de visita', NULL, 'cartoes-de-visita', 'cartões de visita', NULL, 'product', '2022-04-18 18:22:55', '2022-04-18 18:22:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq_channels`
--

CREATE TABLE `faq_channels` (
  `id` int(11) UNSIGNED NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faq_channels`
--

INSERT INTO `faq_channels` (`id`, `channel`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sobre o CaféControl', 'Saiba mais sobre o CaféControl', '2018-10-21 12:24:51', '2018-10-21 12:27:21'),
(10, 'Sobre CMS CaféAdmin', 'Canal criado apenas para gerar paginação na implementação da tela de FAQs', '2019-02-07 11:05:31', '2019-02-07 11:33:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` int(11) UNSIGNED NOT NULL,
  `channel_id` int(11) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `order_by` int(11) UNSIGNED DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faq_questions`
--

INSERT INTO `faq_questions` (`id`, `channel_id`, `question`, `response`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'O CaféControl é gratuito?', '<p>Sim, o CaféControl é gratuito e com ele você pode usar os recursos de controle e automação sem qualquer custo ou cobrança.</p><p>No futuro pretendemos ter planos com recursos premium onde você terá ainda mais controle, este será um plano pago, mas você poderá optar por usa-lo ou continuar no plano gratuito.</p>', 1, '2018-10-21 12:28:11', '2018-10-21 12:48:41'),
(2, 1, 'O que fazer com o CaféControl?', '<p>Com o CaféControl você pode lançar suas contas a receber ou a pagar, além disso pode lançar recorrências e usufruir de poderosas automações de controle, tudo de forma muito simples.</p><p>Com as contas organizadas em seu painel, você passa a ter acesso a relatórios e gráficos incríveis, além de ser notificado sempre que uma ação for necessária, como validar ou pagar uma conta.</p>', 2, '2018-10-21 12:30:04', '2018-10-21 12:49:17'),
(4, 1, 'Como usar o CaféControl?', '<p>Para usar o CaféControl é simples, basta se cadastrar em nossa plataforma e começar a cadastrar suas contas.</p><p>Detalhando contas rotineiras e recorentes, todas com valor, categorias e informações de controle. A partir disso nosso APP vai gerar automações e relatórios para te ajudar a controlar.</p><p>Simples, fácil e gratuito!</p>', 3, '2018-10-22 11:04:00', '2018-10-22 11:06:41'),
(5, 1, 'De onde surgiu o CaféControl?', '<p>O CaféControl é um projeto desenvolvido na formação Full Stack PHP Developer da UpInside Treinamentos, onde o aluno tem acesso do zero ao expert em uma formação completa sobre ferramentas, HTML, CSS e jQuery.</p><p>Uma formação aprofundada com foco em PHP onde desenvolvemos esse e vários outros projetos a partir do zero.</p><p>Quer saber mais? <a target=\'_blank\' href=\'https://www.upinside.com.br/fsphp\' title=\'Full Stack PHP Developer\'>Acesse aqui</a> e conheça a formação!</p>', 4, '2018-10-22 11:07:01', '2018-10-22 11:09:46'),
(6, 1, 'Sobre a UpInside Treinamentos', '<p>A UpInside Treinamentos é uma escola de formação profissional em desenvolvimento web e programação. Hoje eleita a melhor do Brasil no segmento, tendo reconhecimento em mais de 17 países da AL.</p>', 5, '2018-10-22 11:10:32', '2018-10-22 11:11:35'),
(8, 1, 'Ainda com dúvidas?', '<p>Caso ainda tenha qualquer dúvida, fique a vontade para entrar em contato consoco em nossos canais de atendimento. Estamos aqui para te ajudar a controlar suas contas enquanto toma um ótimo café :)</p>', 6, '2018-10-22 11:11:58', '2018-10-22 11:12:42'),
(9, 10, 'Tudo já está implementado e testado?', 'Todo o MVP do painel foi implementado e testado. Óbvio que cabe a cada um melhorar e gerar mais valor nessa que pode ser uma incrível ferramenta.', 1, '2019-02-07 11:34:10', '2019-02-07 14:57:57'),
(10, 10, 'Teremos mais implementações no curso?', 'No curso não, mas teremos HandOns (lives) de implementação para que possamos nos aprofundar cada vez mais na ferramenta.', 1, '2019-02-07 11:35:06', '2019-02-07 14:57:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mail_queue`
--

CREATE TABLE `mail_queue` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `from_email` varchar(255) NOT NULL DEFAULT '',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `recipient_email` varchar(255) NOT NULL DEFAULT '',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mail_queue`
--

INSERT INTO `mail_queue` (`id`, `subject`, `body`, `from_email`, `from_name`, `recipient_email`, `recipient_name`, `sent_at`, `created_at`, `updated_at`) VALUES
(1, '[PAGAMENTO CONFIRMADO] Obrigado por assinar o CaféApp', '<!doctype html>\n<html>\n<head>\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <title>[PAGAMENTO CONFIRMADO] Obrigado por assinar o CaféApp</title>\n    <style>\n        body {\n            -webkit-box-sizing: border-box;\n            -moz-box-sizing: border-box;\n            box-sizing: border-box;\n            font-family: Helvetica, sans-serif;\n        }\n\n        table {\n            max-width: 500px;\n            padding: 0 10px;\n            background: #ffffff;\n        }\n\n        .content {\n            font-size: 16px;\n            margin-bottom: 25px;\n            padding-bottom: 5px;\n            border-bottom: 1px solid #EEEEEE;\n        }\n\n        .content p {\n            margin: 25px 0;\n        }\n\n        .footer {\n            font-size: 14px;\n            color: #888888;\n            font-style: italic;\n        }\n\n        .footer p {\n            margin: 0 0 2px 0;\n        }\n    </style>\n</head>\n<body>\n<table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <div class=\"content\">\n                \n<h3>Obrigado Robson!</h3><p>Estamos passando apenas para agradecer por você ser um assinante CaféApp PRO.</p><p>Sua fatura deste mês venceu hoje e já está paga de acordo com seu plano. Qualquer dúvida estamos a disposição.</p>                <p>Atenciosamente, equipe CaféControl.</p>\n            </div>\n            <div class=\"footer\">\n                <p>CaféControl - Gerencie suas contas com o melhor café</p>\n                <p>SC 406 - Rod. Drº Antônio Luiz Moura Gonzaga                    , 3339, Bloco A, Sala 208</p>\n                <p>Florianópolis/SC - 88048-301</p>\n            </div>\n        </td>\n    </tr>\n</table>\n</body>\n</html>\n', 'cursos@upinside.com.br', 'Robson V. Leite', 'robsonvleite@gmail.com', 'Robson Leite', '2019-01-31 17:23:54', '2019-01-04 14:13:11', '2019-02-07 14:57:26'),
(2, '[PAGAMENTO RECUSADO] Sua conta CaféApp precisa de atenção', '<!doctype html>\n<html>\n<head>\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <title>[PAGAMENTO RECUSADO] Sua conta CaféApp precisa de atenção</title>\n    <style>\n        body {\n            -webkit-box-sizing: border-box;\n            -moz-box-sizing: border-box;\n            box-sizing: border-box;\n            font-family: Helvetica, sans-serif;\n        }\n\n        table {\n            max-width: 500px;\n            padding: 0 10px;\n            background: #ffffff;\n        }\n\n        .content {\n            font-size: 16px;\n            margin-bottom: 25px;\n            padding-bottom: 5px;\n            border-bottom: 1px solid #EEEEEE;\n        }\n\n        .content p {\n            margin: 25px 0;\n        }\n\n        .footer {\n            font-size: 14px;\n            color: #888888;\n            font-style: italic;\n        }\n\n        .footer p {\n            margin: 0 0 2px 0;\n        }\n    </style>\n</head>\n<body>\n<table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <div class=\"content\">\n                \n<h3>Presado Robson!</h3><p>Não conseguimos cobrar seu cartão referênte a fatura deste mês para sua assinatura CaféApp. Precisamos que você veja isso.</p><p>Acesse sua conta para atualizar seus dados de pagamento, você pode cadastrar outro cartão.</p><p>Se não fizer nada agora uma nova tentativa de cobrança será feita em 3 dias. Se não der certo, sua assinatura será cancelada :/</p><p>Qualquer dúvida estamos a disposição.</p>                <p>Atenciosamente, equipe CaféControl.</p>\n            </div>\n            <div class=\"footer\">\n                <p>CaféControl - Gerencie suas contas com o melhor café</p>\n                <p>SC 406 - Rod. Drº Antônio Luiz Moura Gonzaga                    , 3339, Bloco A, Sala 208</p>\n                <p>Florianópolis/SC - 88048-301</p>\n            </div>\n        </td>\n    </tr>\n</table>\n</body>\n</html>\n', 'cursos@upinside.com.br', 'Robson V. Leite', 'robsonvleite@gmail.com', 'Robson Leite', '2019-01-11 15:43:45', '2019-01-04 14:19:54', '2019-02-07 14:57:27'),
(3, '[ASSINATURA CANCELADA] Sua conta CaféApp agora é FREE', '<!doctype html>\n<html>\n<head>\n    <meta name=\"viewport\" content=\"width=device-width\"/>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n    <title>[ASSINATURA CANCELADA] Sua conta CaféApp agora é FREE</title>\n    <style>\n        body {\n            -webkit-box-sizing: border-box;\n            -moz-box-sizing: border-box;\n            box-sizing: border-box;\n            font-family: Helvetica, sans-serif;\n        }\n\n        table {\n            max-width: 500px;\n            padding: 0 10px;\n            background: #ffffff;\n        }\n\n        .content {\n            font-size: 16px;\n            margin-bottom: 25px;\n            padding-bottom: 5px;\n            border-bottom: 1px solid #EEEEEE;\n        }\n\n        .content p {\n            margin: 25px 0;\n        }\n\n        .footer {\n            font-size: 14px;\n            color: #888888;\n            font-style: italic;\n        }\n\n        .footer p {\n            margin: 0 0 2px 0;\n        }\n    </style>\n</head>\n<body>\n<table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <div class=\"content\">\n                \n<h3>Que pena Robson :/</h3><p>Tentamos efetuar mais uma cobrança para sua assinatura PRO hoje, mas sem sucesso.</p><p>Como essa já é uma segunda tentativa, infelismente sua assinatura foi cancelada. Mas calma, você pode assinar novamente a qualquer momento.</p><p>Continue controlando com os recursos FREE, e assim que quiser basta assinar novamente e voltar de onde parou :)</p>                <p>Atenciosamente, equipe CaféControl.</p>\n            </div>\n            <div class=\"footer\">\n                <p>CaféControl - Gerencie suas contas com o melhor café</p>\n                <p>SC 406 - Rod. Drº Antônio Luiz Moura Gonzaga                    , 3339, Bloco A, Sala 208</p>\n                <p>Florianópolis/SC - 88048-301</p>\n            </div>\n        </td>\n    </tr>\n</table>\n</body>\n</html>\n', 'cursos@upinside.com.br', 'Robson V. Leite', 'robsonvleite@gmail.com', 'Robson Leite', '2019-01-11 15:43:49', '2019-01-04 14:34:01', '2019-02-07 14:57:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notifications`
--

INSERT INTO `notifications` (`id`, `image`, `title`, `link`, `view`, `created_at`, `updated_at`) VALUES
(1, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Robson V. Leite assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/4', 0, '2019-02-11 11:53:35', '2019-02-12 11:53:15'),
(2, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Eleno Santos assinou o plano PRO de R$ 50,00/ano', 'https://www.localhost/fsphp/admin/control/subscription/5', 0, '2019-02-11 11:53:49', '2019-02-12 11:53:15'),
(3, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Alexandre Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/6', 0, '2019-02-11 12:44:59', '2019-02-12 11:53:15'),
(4, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Willian Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/7', 0, '2019-02-11 12:44:59', '2019-02-12 11:53:15'),
(5, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Eduardo Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/8', 0, '2019-02-11 11:53:35', '2019-02-12 11:53:16'),
(6, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Mateus Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/4', 0, '2019-02-11 12:44:59', '2019-02-12 11:53:16'),
(7, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Felipe Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/5', 0, '2019-02-11 11:53:35', '2019-02-12 11:53:16'),
(8, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Elton Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/6', 0, '2019-02-11 12:44:59', '2019-02-12 11:53:16'),
(9, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Roddrigo Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/7', 0, '2019-02-11 12:44:59', '2019-02-12 11:53:16'),
(10, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Fernanda Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/8', 0, '2019-02-11 12:44:59', '2019-02-12 11:53:17'),
(11, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Bia Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/4', 0, '2019-02-11 11:53:35', '2019-02-12 11:53:17'),
(12, 'https://www.localhost/phptest/fsphplib/themes/cafeadm/assets/images/notify.jpg', 'Maria Santos assinou o plano PRO de R$ 5,00/mês', 'https://www.localhost/fsphp/admin/control/subscription/5', 0, '2019-02-11 11:53:35', '2019-02-12 11:53:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` int(11) UNSIGNED DEFAULT NULL,
  `category` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL,
  `subtitle` text NOT NULL,
  `content` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'draft' COMMENT 'post, draft, trash ',
  `post_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `author`, `category`, `title`, `uri`, `subtitle`, `content`, `cover`, `video`, `views`, `status`, `post_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Subindo Ambiente WEB na Amazon AWS EC2 com Recursos Gratuitos', 'subindo-ambiente-web-na-amazon-aws-ec2-com-recursos-gratuitos', 'Crie uma máquina que seja capaz de abrigar o wordpress com os serviços necessários como Apache, PHP7.2 e MariaDB com a infra gratis da AWS', '<p>Salve salve moquerido! No play de hoje vamos deixar um pouco o code em standby e vamos ver como que funciona a infraestrutura da Amazon.</p>\r\n<p>É sabido que a Amazon é uma das melhores estruturas que você pode contar, mas como com grandes poderes vem grandes responsabilidades!</p>\r\n<p>Embora você tenha grandes recursos dentro da Amazon, ela acaba sendo muito cara e um processo bastante burocratico caso você opte por gerenciar todos os serviços manualmente.</p>\r\n<p>Durante essa aula vamos criar o nosso ambiente, subir os principais serviços para que tenhamos um sistema hospedado e disponível com acesso público.</p>\r\n<p>Se você está querendo subir o seu ambiente manualmente, eu vou ter por base que você já tenha uma certa afinidade com infra-estrutura. Não precisa ser avançado não... Mas você sabe o que é um Sistema Operacional, quais são as opções, os serviços que precisamos e vai compreender o fluxo.</p>\r\n<h3>Criação de Ambiente</h3>\r\n<p>Para que a gente consiga trabalhar com a AWS, primeiramente precisamos criar a nossa instância! Basicamente é a configuração da máquina que você vai trabalhar.</p>\r\n<p>Vamos definir, sistema operacional, CPU, memória, disco, interface de rede... Os parâmetros básicos para ter uma máquina rodando.</p>\r\n<p>Você vai notar que a t2.micro é o ambiente disponibilizado pela Amazon com uma carga de 750h por mês. Portanto, se você tiver somente uma instância como essa rodando, você não vai ultrapassar o limite e não será cobrado nada no seu cartão de crédito.</p>\r\n<p>Antes de finalizar o processo ainda, é gerado a key pair, que é o mecanismo que você vai trabalhar para efetuar o seu login via SSH.</p>\r\n<p>Se você é usuário do Windows, provavelmente seja legal você trabalhar com o <a href=\"http://cmder.net/\" target=\"_blank\">Cmder</a>. É um aplicativo que vai conseguir rodar os mesmo comandos que fiz na aula. Se você tentar executar o <em>chmod 400 chave.pem</em> por exemplo no Windows, você vai ter um erro dizendo que esse comando não é reconhecido.</p>\r\n<h3>Subindo Serviços</h3>\r\n<p>Tudo o que a gente precisa fazer vai funcionar por comando. Isso quer dizer que nesse ponto não há interface gráfica para nos auxiliar, então vamos ter todas as ações sem mesmo utilizar o mouse.</p>\r\n<p>Para quem não tem nenhuma familiaridade com Linux, pode pensar que isso é um bixo de 7 cabeças. Depois que você começa a se familiarizar, o dia que você não tiver acesso a isso pode ter certeza que vai sentir falta.</p>\r\n<p>Isso fica bem claro quando eu vou descompactar o wordpress do zip, tento fazer o uso de um programa chamado unzip que não vem nativamente no Ubuntu, mas com uma linha de comando e menos de 3 segundos, ele já está disponível para uso.</p>\r\n<p>Vamos fazer algumas ações para ter os nossos serviços OK!</p>\r\n<ul>\r\n<li>Atualização dos pacotes do Sistema Operacional</li>\r\n<li>Adicionar uma nova chave ao repositório</li>\r\n<li>Instalação do PHP7.2 (junto com todos os pacotes necessários)</li>\r\n<li>Instalação do MariaDB v10</li>\r\n<li>Parametrização do banco de dados para acesso externo</li>\r\n<li>Parametrização do php.ini (timezone, tamanho do upload, tamanho do post, PDO do MySQL)</li>\r\n<li>Reiniciar os serviços</li>\r\n<li>Instalação do Wordpress</li>\r\n<li>Testes</li>\r\n</ul>\r\n<h3>Instalação de um CMS</h3>\r\n<p>Com os serviços rodando, eu faço o download via wget do WordPress. Como o intuito aqui da aula não é parametrizar todos os serviços, eu não fiz a instalação do servidor FTP... Mas fique a vontade se quiser colocar na sua aplicação.</p>\r\n<p>Fiz a instalação do WordPress porque é gratuito e a instalação é bem leve, então se você seguir o mesmo passo a passo comigo vai conseguir chegar no final tendo acesso ao WP igualzinho ao meu.</p>\r\n<p>Isso sem contar que o instalador dele vai verificar se todas as extensões necessárias estão ativas, se as configurações estão válidas, vai se conectar com o banco de dados para saber se há uma conexão correta... Basicamente é um check-up de instalação.</p>\r\n<p>No entato que você vê que em determinado momento que eu tento acessar o wordpress pela primeira vez, é retornado um erro dizendo que falta componente para o banco de dados.</p>\r\n<h3>Ambiente OK</h3>\r\n<p>Com tudo tendo sucesso, vamos ter uma máquina com um IP público disponibilizado e com acesso liberado na WEB para que possam acessar o seu novo Blog :)</p>\r\n<p>Eu deixo bem claro em determinados momentos na aula que pode ser mais vantajoso você trabalhar com o cPanel! A instalação além de ser menos burocrativa, você conta com praticamente todos esses recursos sendo disponibilizados podendo escolher versões e ter controle sobre tudo o que acontece dentro do seu servidor.</p>\r\n<p>Dependendo do tempo que você vai investir numa infra da AWS, compensa você adquirir um Cloud ou um VPS lá na <a href=\"https://www.rapidcloud.com.br/\" target=\"_blank\">Rapid Cloud</a> e solicitar o cPanel para seu servidor, e não se esqueça, aluno tem desconto na Rapid... Só conversar com a equipe deles :)</p>\r\n<h3>Feedback</h3>\r\n<p>Me fala aqui abaixo nos comentários o que você achou dessa aula e se você seguiu o passo a passo comigo! Vou estar disponível aqui respondendo todos os comentários e possíveis dúvidas que possam ter :)</p>\r\n<p>Forte abraço.</p>', 'images/2018/10/subindo-ambiente-web-na-amazon-aws-ec2-com-recursos-gratuitos-1533905294.png', NULL, 27, 'trash', '2018-08-10 13:00:00', '2018-10-23 13:41:58', '2019-02-06 11:23:54', NULL),
(2, 51, 2, 'Crie um instalador de estrutura do banco de dados para o seu CMS utilizando PHP e AJAX', 'crie-um-instalador-de-estrutura-do-banco-de-dados-para-o-seu-cms-utilizando-php-e-ajax', 'Se você tem um CMS próprio onde disponibiliza a instalação para seus clientes, você tem que assistir essa aula onde te mostro como criar um form wizard de instalação', '&#60;p&#62;Salve salve moquerido! Tudo certo? Bora ver como desenvolver um installer para nosso CMS?&#60;/p&#62;&#10;&#60;p&#62;Esse recurso já existe a muito tempo no wordpress, que é um dos CMS mais utilizado no mundo... E provavelmente, durante a sua carreira de desenvolvedor você já deve ter instalado ao menos uma vez o WP em um host.&#60;/p&#62;&#10;&#60;p&#62;O que vamos criar nessa aula do Play é basicamente ele formulário inicial de conexão com o banco de dados e criação do usuário administrador.&#60;/p&#62;&#10;&#60;p&#62;É claro que para a aula ficar mais enxuta, eu fiz somente esses dois passos, mas você pode colocar quantas informações forem necessárias. Você pode seguir esse step by step solicitando diversas informações como:&#60;/p&#62;&#10;&#60;ul&#62;&#10;&#60;li&#62;Timezona que a aplicação deve responder&#60;/li&#62;&#10;&#60;li&#62;Servidor de e-mail&#60;/li&#62;&#10;&#60;li&#62;Geração de logs&#60;/li&#62;&#10;&#60;li&#62;Parametrização de ferramentas externas (autenticação do active campaing, e-mail do pagseguro...)&#60;/li&#62;&#10;&#60;li&#62;Google Analytics&#60;/li&#62;&#10;&#60;li&#62;Pixel do Facebook&#60;/li&#62;&#10;&#60;/ul&#62;&#10;&#60;p&#62;As possibilidades são inumeras :)&#60;/p&#62;&#10;&#60;h3&#62;Aplicação Install&#60;/h3&#62;&#10;&#60;p&#62;Basicamente a aplicação consiste em um diretório com o nome install dentro da aplicação. É claro que você pode dar qualquer outro nome para sistema, o importante é não deixar isso público!&#60;/p&#62;&#10;&#60;p&#62;No decorrer das aulas, você vai ver que dentro dele temos um arquivo chamado dump.sql, e ele tem toda a estrutura do banco de dados! Não é legal alguém por a mão nesse arquivo e entender a sua modelagem.&#60;/p&#62;&#10;&#60;p&#62;Sem muitas firulas, basicamente temos um css para estilizar os nossos componentes e dar uma inteface mais amigável para quem está fazendo a instalação.&#60;/p&#62;&#10;&#60;p&#62;Há também um javascript responsável por monitorar o nosso html e capturar o evento de submit dos forms e disparar a ação para o controlador. É claro que essa ação não seria necessária! Mas dessa forma, em nenhum momento temos o reload da página! Fica bem legal a interação, tratamento de erros e a dinamica das divs.&#60;/p&#62;&#10;&#60;p&#62;O controller por sua vez, está monitorando duas ações! Uma de conexão com o banco de dados e outra para a criação do usuário na base... Se você for implementar mais recursos, obviamente que você vai adicionar novos case&#39;s :)&#60;/p&#62;&#10;&#60;p&#62;O index tem a marcação do HTML como de praxe! Sem segredo.&#60;/p&#62;&#10;&#60;h3&#62;Material de Apoio&#60;/h3&#62;&#10;&#60;p&#62;Como sempre o link para o nosso repositório vai estar aqui abaixo.&#60;/p&#62;&#10;&#60;p&#62;No diretório _initial, tem o que é preciso para você seguir durante as aulas comigo! Basicamente temos esse material inicial só por conta da marcação do html e o css.&#60;/p&#62;&#10;&#60;p&#62;&#60;a href=&#34;https://github.com/UpInside/play_installer&#34; target=&#34;_blank&#34;&#62;Para acessar nosso repo, é só clicar aqui e te levo pra lá agora :)&#60;/a&#62;&#60;/p&#62;&#10;&#60;h3&#62;Criação da estrutura do banco de dados&#60;/h3&#62;&#10;&#60;p&#62;Informação importante aqui... O banco de dados já deve estar previamente criado! Isso quer dizer que seja no seu localhost ou no servidor, você deve acessar o seu aplicativo de SGDB ou o phpMyAdmin e fazer a criação do banco. Isso é necessário para que as permissões sejam concedidas.&#60;/p&#62;&#10;&#60;p&#62;Até poderiamos criar o banco de dados via código, mas o ideal é fazer isso a partir do cpanel, ou de dentro do próprio banco para evitar conflitos de permissões.&#60;/p&#62;&#10;&#60;p&#62;No nosso caso temos dois bancos de dados:&#60;/p&#62;&#10;&#60;h4&#62;play_installer_base&#60;/h4&#62;&#10;&#60;p&#62;Vai servir como origem da nossa estrutura! Então é aqui que temos que ter a modelagem da nossa aplicação, todas as tabelas, campos, chaves extrangeiras, views, triggers, functions... Tudo.&#60;/p&#62;&#10;&#60;h4&#62;play_installer&#60;/h4&#62;&#10;&#60;p&#62;É o banco que estamos simulando a instalação do nosso sistema. Por sua vez, deverá ter exatamente a mesma estrutura do _base!&#60;/p&#62;&#10;&#60;h3&#62;AJAX&#60;/h3&#62;&#10;&#60;p&#62;Você pode imaginar que o tempo de execução desses scripts pode demorar um tempo que não seja hábil para ter o retorno. Mas utilizamos algumas técnicas bem legais para fazer todas as requisições com o file_get_contents e file_put_contents.&#60;/p&#62;&#10;&#60;p&#62;Quando chamamos o dump.sql com o file_get_contents, temos todo o conteúdo que deve ser executado no banco de dados. Portanto você manda todos os comandos de uma vez só e não precisa ficar fazendo diversas requisições.&#60;/p&#62;&#10;&#60;p&#62;Isso sem contar que estamos usando o try/catch, portanto, qualquer excessão que seja lançada a gente consegue tratar :)&#60;/p&#62;&#10;&#60;p&#62;O file_put_contents usamos para criar o arquivo de conexão com o banco.&#60;/p&#62;&#10;&#60;p&#62;Como toda essa execução é feita bem rápida, não precisamos nos preocupar com o tempo. O nosso ajax dá conta!&#60;/p&#62;&#10;&#60;h3&#62;Feedback&#60;/h3&#62;&#10;&#60;p&#62;Se você curtiu esse conteúdo e vai desenvolver o seu instalador, comenta aqui abaixo para eu saber que você está usando esse recurso no seu CMS.&#60;/p&#62;', 'images/2018/10/crie-um-instalador-de-estrutura-do-banco-de-dados-para-o-seu-cms-utilizando-php-e-ajax-1533220470.png', '', 5, 'post', '2019-02-06 20:31:00', '2018-10-23 13:41:58', '2019-02-06 20:31:39', NULL),
(3, 1, 3, 'Criando relatórios em gráficos com PHP utilizando a biblioteca ChartJS e Banco de Dados', 'criando-relatorios-em-graficos-com-php-utilizando-a-biblioteca-chartjs-e-banco-de-dados', 'Embora a biblioteca seja em javascript, conseguimos fazer a chamada de todas as propriedades com o PHP usando uma técnica para informar os dados via data-attributes', '<p>Salve salve moquerido, seja muito bem vindo a mais uma aula do play!</p>\r\n<p>Agora vamos ver como trabalhar com gráficos para que você possa informar as métricas para o seu cliente de uma maneira descomplicada e que seja mais fácil de fazer a leitura.</p>\r\n<p>Para que a gente possa desenvolver essa atividade, vamos precisar fazer o uso de uma biblioteca! Assim a gente foca em de fato gerar as informações e a renderização do plano cartesiano você não precisa esquentar a cabeça.</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Para lhe auxiliar nos estudos, vou deixar aqui o link do repositório do github dessa aula para que você possa fazer uma leitura do meu código e se necessário até comprarar com o que você está desenvolvendo.</p>\r\n<p>Basicamente precisamos de uma classe que nos permita fazer uma pesquisa no banco de dados, então por esse motivo, eu já deixei as classes anexas ao repositório e pra poupar tempo também já coloquei o reset.css e o arquivo index.php fazendo a requisição do jquery.</p>\r\n<p>Tudo o que vem depois disso, eu mostro para você na aula como funciona! Desde o processo de instalação da lib, até a criação da classe em PHP para nos servir como helper.</p>\r\n<p><a href=\"https://github.com/UpInside/play_chartjs\" target=\"_blank\">O link para acessar o repositório é este!</a></p>\r\n<h3>Lib javascript</h3>\r\n<p>Realmente a biblioteca que baixamos é em javascript! Você até poderia ter um caminho mais curto para desenvolver essa estrutura, se você colocasse código PHP dentro da tag script.</p>\r\n<p>Não há uma lei que proiba isso, no entanto que é até possível... Mas é claro que não é uma boa prática essa situação, pois caso isso aconteça, você não consegue modularizar o seu código, vai ter problemas com reuso e não vai poder minificar o arquivo para publicar na internet.</p>\r\n<p>Então vamos trabalhar com uma outra técnica para que possamos informar todos os parâmetros via atributo do elemento, e posteriormente a gente pega esses dados com o javascript e adapta da forma que for necessário. <strong>Já vamos falar sobre essa técnica mais adiante!</strong></p>\r\n<p>Por consequência disso, vamos ter um arquivo totalmente em javascript e que você pode modularizar ele de acordo com cada tipo de gráfico! Aqui já entra um processo um pouco mais amplo de refatoração de código, de efetuar essa carga somente se tiver um elemento que irá fazer o uso...</p>\r\n<p>Mais uma vez podemos nos aprofundar em outro tópico que daria outra aula, mas como o nosso foco aqui é criar um gráfico para colocar na nossa aplicação, vamos seguir em frente por hora.</p>\r\n<h3>Passagem de valores por data-attributes</h3>\r\n<p>Essa técnica é bastante simples e consiste em montar o nó do componente HTML já com os dados alimentados.</p>\r\n<p>Não entendeu? Pensa assim:</p>\r\n<pre class=\"brush: php;\">&lt;canvas class=\"myChart\"&gt;&lt;/canvas&gt;</pre>\r\n<p>Com isso, você não sabe quais informações vão para dentro dele, qual será a cor do seu gráfico, se o título será exibido ou se estará oculto, quantas posições serão informadas e nem mesmo o valor de cada um dos eixos!</p>\r\n<p>Agora a gente pode trabalhar com o data-* para informar algumas propriedades:</p>\r\n<pre class=\"brush: php;\">&lt;canvas class=\"myChart\" <br />      data-chart-background-color=\"blue\"<br />      data-chart-border-color=\"blue\"&gt;&lt;/canvas&gt;</pre>\r\n<p>Assim você já consegue informar alguns dados que podem ser resgatados de forma bastante simples pelo javascript, e forçar determinados parâmetros. Para recuperar essas informações, ficaria assim:</p>\r\n<pre class=\"brush: php;\">&lt;script&gt;<br />$(function(){<br />   var myChart = $(\'.myChart\');<br />   console.log(myChart.data(\'chart-background-color\'));<br />});<br />&lt;/script&gt;</pre>\r\n<p>Note que para fazer isso, estamos dentro da tag script, e inicializamos o jquery!</p>\r\n<p>Feito isso, basta criar uma variável para armazenar o objeto que foi resgatado com o seletor e usar essa variável como base para pegar o atributo desejado.</p>\r\n<p>Veja que é informado o <strong>.data(\'nome-atributo\')</strong> e não há o data- no início conforme é demarcado no HTML. Fica tranquilo que é exatamente assim que funciona.</p>\r\n<p>Uma vez feito isso, basta você replicar essa mesma técnica para outras posições que você queira!</p>\r\n<p>Quanto tiver um vetor, você pode concatenar cada uma das posições e adicionar um caracter delimitador entre elas. No caso dessa aula, eu usei o <strong>pipe (|)</strong> porque eu sei que isso não vai aparecer em nenhuma ocorrência das minhas posições.</p>\r\n<p>Então quando eu tenho que resgatar vários <strong>labels</strong> por exemplo, eu concateno todos eles e depois executo um split com o javascript e roda tudo lindo :)</p>\r\n<h3>Adicionando o PHP</h3>\r\n<p>Se você for analisar, até agora não falamos sobre o PHP! Mas além dele estar presente na consulta ao banco de dados das informações, você pode criar uma classe para funcionar como um helper para padronizar esse comportamento.</p>\r\n<p>Então você pode determinar uma certa estrutura que seja capaz de definir as cores com ou sem opacidade, obter o nome das colunas que são utilizados para definir as posições dentro do seu gráfico e ainda o valor de cada uma delas respectivamente.</p>\r\n<p>A principal função do PHP nesse momento, vai ser nos prover reuso do código e padronização das chamadas de cada atributo que precisamos informar!</p>\r\n<h3>Precisa de mais cores?</h3>\r\n<p>Se você seguir a aula, você vai notar que a nossa classe PHP possui 3 cores pré-definidas, mas que elas se repetem quando o meu gráfico possui mais indicadores...</p>\r\n<p>Então você pode querer adicionar mais cores ao seu gráfico ou ainda pegar outras tonalidades para ficar mais coerente com a sua aplicação.</p>\r\n<p><strong>Eu consegui essas cores usando um código de dentro do codepen :)</strong></p>\r\n<p>Repliquei ele para minha conta e você consegue <a href=\"https://codepen.io/guhweb/pen/XBgGRd\" target=\"_blank\">acessar clicando nesse link aqui</a>!</p>\r\n<p>Basicamente o que você precisa fazer é usar o seletor de cor até encontrar a desejada e pegar o código dela em RGB. Como você também deve saber, você deve adicionar uma propriedade a mais para informar a opacidade :)</p>\r\n<p><img title=\"Criando relatórios em gráficos com PHP utilizando a biblioteca ChartJS e Banco de Dados\" src=\"https://www.upinside.com.br/uploads/images/2018/07/354-1532616332.png\" alt=\"Criando relatórios em gráficos com PHP utilizando a biblioteca ChartJS e Banco de Dados\" /></p>\r\n<h3>Feedbacks</h3>\r\n<p>Se você curtiu essa aula e conseguiu reproduzir aí no seu ambiente, me deixe saber! E também se colocar pra rodar em algum cliente com essa mesma técnica que vimos aqui :)</p>\r\n<p>Forte abraço, e a gente se vê na próxima aula!</p>', 'images/2018/10/criando-relatorios-em-graficos-com-php-utilizando-a-biblioteca-chartjs-e-banco-de-dados-1532694577.png', NULL, 8, 'draft', '2018-07-27 12:57:00', '2018-10-23 13:41:58', '2019-02-06 11:10:59', NULL),
(4, 1, 3, 'Desenvolvendo Login Step by Step com Ajax e PHP', 'desenvolvendo-login-step-by-step-com-ajax-e-php', 'Apresente boas vindas ao usuário antes mesmo de solicitar a senha sem precisar recarregar a página', '<p>Bora desenvolver uma tela de login que assim como o Gmail ou Hotmail dão boas vindas ao usuário sem mesmo digitar a senha, e ainda fazer esse processo sem recarregar a página?</p>\r\n<p>O processo é bastante simples e é o que vamos ver nessa aula :)</p>\r\n<p>Saudações moquerido, seja muito bem vindo a mais uma aula do UpInside Play e o desenvolvimento dessa semana é bastante simples e vamos ver como disparar ações para um controlador e de acordo com a resposta, vamos manipular os elementos da página.</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Nem preciso dizer que o link está logo abaixo para o nosso repositório! Nele você vai encontrar os seguintes diretórios:</p>\r\n<h4>_initial:</h4>\r\n<p>O projeto inicial para que você possa começar junto comigo! Basicamente nesse diretório tem ums estrutura bem básica do nosso projeto e o HTML com o CSS já desenvolvido.</p>\r\n<p>O nosso trabalho será trabalhar com os componentes da tela, ocultar a div, adicionar conteúdo HTML dentro de uma div... Assim a gente realmente foca em entender o processo, e não como marcar html e estilzar o CSS.</p>\r\n<h4>_aula01:</h4>\r\n<p>Conteúdo que finalizamos na primeira aula, então se você precisar saber como meu código ficou antes de iniciar o nosso segundo conteúdo você pode baixar e vasculhar essa pasta para comparar ou entender o que eu fiz ?</p>\r\n<h4>_aula02:</h4>\r\n<p>Projeto finalizado com tudo o que precisamos! Já com consulta no banco de dados, tratamento de erros, validação da imagem... Tudo pronto!</p>\r\n<p><a href=\"https://github.com/UpInside/login_stepbystep\" target=\"_blank\">Clique aqui para acessar o repositório agora!</a></p>\r\n<h3>Efeito</h3>\r\n<p>Para desenvolver esse prótótipo a gente vai trabalhar com o <strong>slideToggle()</strong>. Se você não conhece, recomendo que você faça o curso que temos aqui na Up, o <a href=\"https://www.upinside.com.br/cursos/jquery-essentials\" target=\"_blank\">jQuery Essentials</a>.</p>\r\n<p>No curso é abordado o assunto de forma bem mais aprofundada!</p>\r\n<p>Basicamente o comportamento é o seguinte: Se está sendo exibido, ele vai esconder fazendo um slide; se está escondido, ele vai exibir fazendo um slide.</p>\r\n<p>Se você ainda preferir, você pode usar o <strong>slideUp()</strong> ou o <strong>slideDown()</strong>.</p>\r\n<p>Se quiser saber mais sobre a documentação, é só <a href=\"https://api.jquery.com/category/effects/sliding/\" target=\"_blank\">clicar aqui</a> e eu te levo pra lá agora.</p>\r\n<p>Você pode querer trabalhar com outros efeitos além do que eu mencionei. Nesse caso, dá uma vasculhada no <a href=\"https://daneden.github.io/animate.css/\" target=\"_blank\">animate</a>! Pode ser que você encontre um efeito legal e queira usar na sua aplicação.</p>\r\n<p>Só seguir a documentação no readme do github que eu tenho certeza que você vai conseguir colocar outro efeito :)</p>\r\n<h3>Lição de Casa</h3>\r\n<p>Fizemos praticamente que todos os gatilhos, mas como tarefa, e para que você possa aplicar os conceitos e desenvolver suas próprias técnicas, você pode fazer o seguinte:</p>\r\n<p>- Desenvolva a box referente ao \"<strong>Esqueceu a senha senha?</strong>\"</p>\r\n<p>Você vai precisar trabalhar com os efeitos, fazer requisição para o controller... Enfim! Ótimo exemplo para que você possa desenvolver e usar o que trabalhamos na aula como base.</p>\r\n<h3>Feedback</h3>\r\n<p>Me diga aqui abaixo nos comentários o que você achou dessa aula, se você aplicou em algum projeto ou até mesmo se pretente incrementar o que foi feito! Quero ver esse conteúdo em produção :)</p>', 'images/2018/10/desenvolvendo-login-step-by-step-com-ajax-e-php-1532027880.jpg', NULL, 15, 'post', '2018-07-20 12:59:00', '2018-10-23 13:41:58', '2019-02-04 22:16:16', NULL),
(5, 1, 2, 'Crie um formulário step by step com notificação via SMS', 'criando-um-formulario-step-by-step-com-notificacao-via-sms', 'Veja nessa aula como que você pode criar um formulário de cadastro para autenticar a conta e os dados informados', '<p>Salve salve moqueridos, sejam muito bem vindos a mais uma aula do Play e agora a gente vai estudar como criar um formulário praticamente que step by step para poder validar o cadastro fazendo o uso de um código que é mandado via SMS o usuário.</p>\r\n<p>Antes de começarmos a botar a mão na massa, eu fiz alguns estudos sobre as principais empresas que temos no mercado para atender esse tipo de necessidade e a competitividade é bem grande nesse nicho.</p>\r\n<p>A maioria das empresas disputam os centavos para fazer o disparo de SMS.</p>\r\n<p>Aqui abaixo eu vou colocar algumas empresas e os valores que eu consegui encontrar! Mas saiba que isso quase se torna irrelevante, porque depende do pacote que você vai adquirir...</p>\r\n<p>Pode ser que uma empresa seja mais caro no pacote mais básico, mas que nos planos maiores ela acabe ficando mais barato do que a empresa que tem um valor fixo por envio.</p>\r\n<p>Tendo isso em mente, fica a seu critério escolher com qual empresa você quer trabalhar.</p>\r\n<h3>Pesquisa de Mercado</h3>\r\n<p><a href=\"https://www.nexmo.com/products/sms\" target=\"_blank\">Nexmo</a>: <strong>R$ 0,22</strong> centavos por envio de SMS (<strong>0,04 €</strong>)</p>\r\n<p><a href=\"https://www.twilio.com/sms/pricing/br\" target=\"_blank\">Twilio</a>: <strong>R$ 0,20</strong> centavos por envio de SMS (<strong>0,05 US$</strong>)</p>\r\n<p><a href=\"https://www.zenvia.com/produtos/messaging/sms\" target=\"_blank\">Zenvia</a>: <strong>R$ 0,11</strong> centavos por envio de SMS</p>\r\n<p><a href=\"http://www.facilitamovel.com.br/index.html\" target=\"_blank\">FacilitaMóvel</a>: <strong>R$ 0,10</strong> centavos por envio de SMS</p>\r\n<p><a href=\"http://www.totalvoice.com.br/precos/\" target=\"_blank\">TotalVoice</a>: <strong>R$ 0,09</strong> centavos por envio de SMS</p>\r\n<p><a href=\"https://www.directcallsoft.com/ecommerce/cadastro.php?id_servico=54\" target=\"_blank\">DirectCall</a>: <strong>R$ 0,12</strong> centavos por envio de SMS</p>\r\n<p>Lembrando que nesse caso, está constando o valor da empresa no plano mais básico!</p>\r\n<p>No entanto, que a empresa escolhida para gravar essa aula foi a <strong>DirectCall</strong> e embora o menor plano tenha uma tarifa mais cara que outra empresa, o suporte deles no meu ponto de vista foi muito pró-ativo, entrar em contato por telefone, expliquei a situação que eu tinha e eles me concederam alguns SMS\'s a mais para continuar com os testes e gravar a aula.</p>\r\n<p>Outras empresas até entraram em contato, mas não tinham muitas propostas ou então trabalham com o envio dos SMS por arquivos... Enfim, vamos de DirectCall nesse momento.</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Ao acessar o repositório, assim como em outras aulas, você vai encontrar o diretório <strong>_initial</strong> que contém os arquivos iniciais para que você consiga dar o mesmo ponta pé inicial comigo.</p>\r\n<p>Na primeira aula, desenvolvemos todo o nosso javascript para que o html fique dinâmico fazendo as chamadas para o controller.php.</p>\r\n<p>Na segunda aula, a gente cria a classe para cadastrar o usuário e autenticar o código que será enviado pelo SMS. Com isso a gente melhora a implementação do nosso controller para que ele não devolva os dados fixos, e sim de acordo com o que estiver no banco de dados.</p>\r\n<p>E por fim, na terceira aula para mandar o SMS. Você vai ver como navegar pela aplicação da DirectCall, compreender a ferramenta, montar toda a estrutura <strong>REST</strong> para que você possa reutilizar em qualquer lugar da sua aplicação.</p>\r\n<p>Depois de concluído os testes, só migrar a chamada para dentro do método que adiciona o usuário dentro do banco de dados.</p>\r\n<p><a href=\"https://github.com/UpInside/notifysms\" target=\"_blank\">Acessar o repositório da Up para acessar o material!</a></p>\r\n<p>Não esquece de seguir a Up, o sensei Robson e eu lá no github :) Deixa uma estrelinha lá no repo também!</p>\r\n<h3>Dica</h3>\r\n<p>Sempre que for trabalhar com esse tipo de serviço, e principalmente com a DirectCall em específico, lembre-se que o número deve ser completo!</p>\r\n<p>Portanto, deve-se informar o <strong>DDI</strong> - <em>código do país</em> - que no nosso caso é 55 (Brasil), o <strong>DDD</strong> - <em>código do estado/região</em> - no meu caso de Floripa/SC é o 48 e o número completo (<strong>não se esqueça do nono dígito</strong>).</p>\r\n<p>Nos formulários, não fizemos nenhum teste para saber se o que foi enviado está de acordo ou não, se há posíções nulas... O objetivo da aula não é esse em específico! Mas é claro que na sua aplicação você vai adatar isso de acordo com a sua necessidade.</p>\r\n<p>A notificação não precisa necessariamente para informar um código para desbloquear a conta, pode ser para avisar que há um novo pedido no site, que o pagamento do cliente foi aprovado, que a mercadoria foi despachada... Fica a seu critério!</p>\r\n<p><strong>É vantagem trabalhar com SMS por conta da alta taxa de abertura!</strong> Enquanto muitos sofrem com a baixa abertura de e-mail, envios para SPAM... No SMS isso não acontece, então vale a pena investir nessa questão :)</p>\r\n<h3>Feedback</h3>\r\n<p>Se você implementar esse serviço no seu site, me conte aqui abaixo nos comentários! Ficaria feliz em saber que você tirou essa aula também do papel e aplicou no projeto do seu cliente.</p>\r\n<p>E caso tenha o conhecimento de outras empresas que também prestam esse tipo de serviço, comenta aqui abaixo! Assim a galera fica sempre por dentro do que está acontecendo :)</p>\r\n<p> </p>', 'images/2018/10/criando-um-formulario-step-by-step-com-notificacao-via-sms-1531422721.jpg', NULL, 6, 'post', '2018-07-12 18:12:00', '2018-10-23 13:41:58', '2019-02-06 11:20:28', NULL),
(6, 1, 1, 'Trabalhe com Drag and Drop para ordernar elementos da sua página', 'trabalhe-com-drag-and-drop-para-ordernar-elementos-da-sua-pagina', 'Veja uma maneira descomplicada de trabalhar com o drag and drop para ordenar os elementos utilizando o mouse e salve as informações no seu banco de dados', '<p>Saudações moquerido, bora ver como funciona o efeito drag and drop?</p>\r\n<p>O procedimento é bastante simples e para criar isso vamos trabalhar com o jquery. Precisamos de uma biblioteca javascript para ficar mais fácil de manipular e monitorar os componentes da tela.</p>\r\n<p>Basicamente vamos trabalhar com 4 eventos, e você vai ver que é bastante simples o procedimento.</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Antes de ir para o repositório, você pode querer dar uma lida <a href=\"https://developer.mozilla.org/pt-BR/docs/DragDrop/Drag_and_Drop\" target=\"_blank\">nessa página</a> para saber quais são os tais eventos e qual a funcionalidade de cada um deles. Como você pode notar existem outros eventos podem ser trabalhados também, mas no nosso caso vamos trabalhar apenas com 4.</p>\r\n<p>Eu confeccionei uma página muuuito simples para que pudessemos por em prática o principal objetivo. Essa página tem a inclusão dos arquivos de CSS para fazer a estilização, o jquery e o script que vamos desenvolver em aula.</p>\r\n<p>Fora isso já tem também na pasta do projeto, as classes PHP que vamos utilizar para desenvolver nosso protótipo, afinal, depois do evento funcionando como precisa, devemos salvar os dados no banco para manter a ordenação.</p>\r\n<p>Aqui abaixo vai estar o link para acessar o repositório. Veja que são 3 diretórios diferentes: _initial com o escopo inicial para que você possa seguir durante a aula comigo, _aula1 com o término da primeira aula e obviamente que o _aula2.</p>\r\n<p><a href=\"https://github.com/UpInside/play_draganddrop\" target=\"_blank\">Acessar repositório no GitHub da Up :)</a></p>\r\n<h3>Uma Palinha do Exercício</h3>\r\n<p>A aplicação é bastante simples e quando você baixa o conteúdo do repositório, vai notar que já tem um dump de um banco de dados com algumas informações preenchidas. No nosso caso, vamos ordenar alguns cursos da up :)</p>\r\n<p>A princípio ficou da seguinte forma:</p>\r\n<p><img title=\"Trabalhe com Drag and Drop para ordernar elementos da sua página\" src=\"https://www.upinside.com.br/uploads/images/2018/07/351-1530892301.png\" alt=\"Trabalhe com Drag and Drop para ordernar elementos da sua página\" /></p>\r\n<p>Depois de colocar o efeito, controlar o botão, adicionar borda no evento... Temos o seguinte resultado:</p>\r\n<p><img title=\"Trabalhe com Drag and Drop para ordernar elementos da sua página\" src=\"https://www.upinside.com.br/uploads/images/2018/07/351-1530892338.png\" alt=\"Trabalhe com Drag and Drop para ordernar elementos da sua página\" /></p>\r\n<p>Se você notar, vai ver uma borda bem discreta no WorkControl, o botão foi alterado e o elemento todo está sendo arrastado!</p>\r\n<h3>Atributo</h3>\r\n<p>A principal ação para que isso ocorra, é habilitar o draggable nos elementos que você deseja que possuam esse tipo de recurso. É por isso que temos um botão para \"ativar/desativar\" a funcionalidade. Você pode notar que simplesmente ao adicionar o atributo no elemento (lembrando que tem que ser no nó pai) você já tem a funcionalidade de mover.</p>\r\n<p>É claro que isso não serve para muita coisa se você não reposicionar os elementos ou até mesmo se não conseguir pegar essas informações e mandar para o controller do php. É aí que o javascript entra em cena!</p>\r\n<h3>Premissas</h3>\r\n<p>É importante saber que para trabalhar com esse tipo de função você não pode estar trabalhando com paginação por exemplo, pois caso faça isso, você irá sobrescrever as informações sempre que salvar os dados.</p>\r\n<p>Outro ponto é que o seu banco de dados precisa estar esperando esse tipo de informação. Por isso temos uma coluna na tabela para armazenar a posição que queremos o elemento e depois basta ordenar na consulta.</p>\r\n<p>O botão para ativar o recuso e finalizar o uso não é por acaso, já testamos isso e é muito mais usual! Assim você não tem problema de reordenar os elementos da página por conta de um clique descuidado.</p>\r\n<p>Esse tipo de situação deve ser bastante claro quando você vai desenvolver o efeito. E uma dica é mostrar para o usuário o que está sendo feito! Para isso a gente trabalha com uma borda beeeeem discreta somente para que ele entenda o que vai acontecer :)</p>\r\n<h3>Aplicação e feedback</h3>\r\n<p>Se você conseguir reproduzir esse efeito na sua máquina, não deixe de me contar :) E principalmente, se colocar para rodar em algum projeto seu, nos conte aqui abaixo nos comentários. Quero ver esse código saindo do seu localhost e rodando num projeto.</p>', 'images/2018/10/trabalhe-com-drag-and-drop-para-ordernar-elementos-da-sua-pagina-1530893032.jpg', NULL, 2, 'post', '2018-07-06 15:28:00', '2018-10-23 13:41:58', '2018-11-01 19:36:26', NULL),
(7, 1, 2, 'Integração com Cielo utilizando a API para receber pagamentos de forma transparente', 'integracao-com-cielo-utilizando-a-api-para-receber-pagamentos-de-forma-transparente', 'Com a API da Cielo você pode efetuar transação de cartão de crédito, débito totalmente transparente além transferência eletrônica e boleto', '<p>Bora fazer requisições de pagamento com a Cielo de forma transparente sem sair da sua página e garantir uma boa conversão com transações via cartão de crédito?</p>\r\n<p>Salve salve WebMasters, Gustavo Web aqui com mais uma aula para o nosso <strong>UpInsidePlay</strong> e com mais um meio de pagamento para enriquecer nossas aplicações e ter mais uma opção de requisição de pagamento!</p>\r\n<p>Antes de começar, fique tranquilo e saiba que a integração com a Cielo é muuuuito simples! E o pessoal que desenvolve as API\'s tiveram uma boa sacada que facilita muito a nossa vida... Mas vamos por partes!</p>\r\n<h3>Ambientes</h3>\r\n<p>Assim como em outros meios de pagamento, temos o sandbox para testes e integrações e também o de produção. O que difere os ambientes são as <strong>url\'s de serviço</strong> (que no caso da Cielo são duas url\'s), o <strong>merchantId</strong> e o <strong>merchantKey</strong>.</p>\r\n<p>Ponto positivo pra Cielo por não exigir que seja já filiado a eles para desenvolver a integração. As url\'s são fixas, portanto sem problemas... Mas já os outros dois parâmetros (<strong>merchantId</strong> e <strong>merchantKey</strong>) são gerados através de um formulário simples com a requisição de 3 inputs. Só te pedem um nome (pode ser o seu ou da aplicação), um telefone (não vi uso) e e-mail (até o momento nenhum informativo ou spam :) rs).</p>\r\n<p>Esse form para resgatar essas informações, <a href=\"https://cadastrosandbox.cieloecommerce.cielo.com.br/\" target=\"_blank\">está disponível nesse link!</a> Só efetuar o cadastro e você já sai com tudo o que precisa para autenticar dentro do sistema deles.</p>\r\n<p>Quando você faz o seu cadastro junto a Cielo, obviamente que será gerado os dados do ambiente de produção.</p>\r\n<p>Até aqui sem novidades.</p>\r\n<h3>Postman</h3>\r\n<p>Para quem acompanha nossas aulas do UpInsidePlay já deve ter visto diversas vezes eu e o Robson fazendo o uso desse programa. Basicamente ele auxilia você debugar requisições feitas para outras URL\'s, uma vez que consegue converter a requisição e a resposta para praticamente todos os padrões que temos hoje... XML, JSON, RAW... Enfim!</p>\r\n<p>O programa é bem leve, tem uma interface muito amigável e no meu caso aqui está disponível somente em Inglês até o momento. E embora a pronuncia seja nula, isso não faz muita diferença na leitura e escrita :)</p>\r\n<p>A principal questão aqui, é que a Cielo disponibiliza um mini tutorial de como você <strong>configura um Enviroment</strong> (ambiente) para que você não precise ficar digitando diversas vezes os parâmetros como token, id, url...</p>\r\n<p>De forma geral, vamos ter 4 parâmetros dentro desse nosso ambiente que pode obviamente ser replicado para os dados de produção com poucos cliques.</p>\r\n<p>E como sequência desse assunto, eles disponibilizam uma <strong>Collection</strong> do Postman com todas as requisições já prontas e com dados alimentados para que você possa ver quais são as informações de entrada e saída da integração.</p>\r\n<p>Dá uma olhada no print abaixo como que fica simples e tranquilo de fazer as requisições para a Cielo.</p>\r\n<p><img title=\"\" src=\"https://www.upinside.com.br/uploads/images/2018/06/350-1529346398.png\" alt=\"\" /></p>\r\n<p>Já deu para ver que a url está marcada como <strong>{{apiUrl}}</strong> porque é uma <strong>variável do nosso ambiente</strong>, temos o <strong>endPoint</strong> como <strong>/1/card</strong>, a requisição foi feita via <strong>POST</strong> utilizando o <strong>JSON</strong>, há <strong>3 parâmetros no header</strong> da requisição e a <strong>resposta</strong> também foi em <strong>JSON</strong> com uma posição chamada <strong>CardToken</strong>.</p>\r\n<p>Que mais precisa para desenvolver não? Tudo na mão! Mal precisa ler a documentação para conseguir criar um token de cartão de crédito.</p>\r\n<p>Isso sem contar ainda que o Postman tem um <strong>\"Gerador de Código\"</strong> de acordo com a sua linguagem! Tem um botãozinho ali beeem discreto que quando você clica, abre uma modal onde te solicita a linguagem de programação que você quer, e voilá! Seu código está na tela :)</p>\r\n<p><img title=\"\" src=\"https://www.upinside.com.br/uploads/images/2018/06/350-1529346735.png\" alt=\"\" /></p>\r\n<p>Agora tudo o que você precisa fazer é organizar o código!</p>\r\n<h3>Sua responsabilidade...</h3>\r\n<p>Organizar o projeto para que você possa reutilizar o código! É claro que já temos o bloco de código pronto acima, mas precisamos criar um mecanismo para que o <strong>POST</strong> e o <strong>GET</strong> possam ser reutilizados. Não só isso! É preciso também que você modele essa arquitetura de acordo com as diretrizes do seu sistema.</p>\r\n<p>Lembre-se sempre que é necessário baixar o acoplamento de suas classes para que você possa ter métodos com responsabilidades específicas.</p>\r\n<p>Dos males, o menos menor! Somente interpretando o Postman conseguimos chegar no resultado da classe e dos métodos que precisamos para cumprir com o nosso objetivo. Isso não torna obsoleto a documentação como um todo, afinal a gente é guiado pelo feeling e o achismo... Mas tenha sempre a documentação em mente para que possa se nortear por onde a integração te leva.</p>\r\n<p>Há diversos recursos na requisição que podem parecer \"a mesma coisa\", ou então \"sem sentido\" como por exemplo o Capture, Authenticate, Recurrent e outros. Nesse caso, deve se recorrer a documentação para ver a argumentação de cada um e as devidas responsabilidades.</p>\r\n<p>Isso sem contar que com a documentação você descobre itens interessante, como a pesquisa BIN! Informe os 6 primeiros dígitos do cartão e ele te devolve qual é a bandeira o tipo (crédito ou débito), internacional ou não...</p>\r\n<h3>Postback</h3>\r\n<p>No caso da Cielo não há a necessidade de se trabalhar com o Postback, porque uma vez que a transação por cartão de crédito é feita e aprovada ou não no ato, não é necessário você ter que ficar aguardando resposta por outra URL.</p>\r\n<p>Portanto, o seu controlador deve conter a regra do que fazer com a resposta, ou até mesmo resgatar toda a resposta e enviar para outro método da sua classe que fique responsável por dar baixa no pagamento, remover os itens do seu estoque, enviar um e-mail e pagamento aprovado ou qualquer outra alteração que seja necessária.</p>\r\n<h3>Boletos</h3>\r\n<p>A Cielo está fazendo a emissão de boletos somente através do <strong>Banco do Brasil</strong> e <strong>Bradesco</strong> até o momento! Mas note que ela simplesmente faz a emissão do boleto para sua conta. Ela não tem responsabilidade quanto as baixas.</p>\r\n<p>E como o boleto é emitido diretamente para sua conta (no caso do titular da conta Cielo), é necessário que ele tenha conta aberta em um desses bancos, contrato assinado da devida carteira para fazer a emissão e faça as baixas via CNAB ou WebService do banco... <em>No meu ponto de vista, muito trabalho para pouco resultado!</em></p>\r\n<h3>Material de Apoio</h3>\r\n<p>Já passamos por alguns links durante esse artigo, mas vamos sintetizar tudo isso para ficar mais organizado!</p>\r\n<p><a href=\"https://www.getpostman.com/\" target=\"_blank\">Postman</a>: Caso não tenha instalado, é praticamente que indispensável para trabalhar com a Cielo</p>\r\n<p><a href=\"https://developercielo.github.io/\" target=\"_blank\">Documentação Cielo API</a>: Esse link vai te levar para a raiz de toda a documentação que a Cielo possui. Salva nos favoritos aí... CTRL + D :)</p>\r\n<p><a href=\"https://developercielo.github.io/manual/cielo-ecommerce\" target=\"_blank\">Manual de Integrações</a>: O link da documentação que utilizamos durante a aula</p>\r\n<p><a href=\"https://cadastrosandbox.cieloecommerce.cielo.com.br/\" target=\"_blank\">Sandbox Register</a>: App para criar as credenciais de autenticação de sandbox da Cielo</p>\r\n<p>Como material de apoio ainda, eu digo para que você assista as aulas onde abordamos a estrutura REST! Basicamente estamos trabalhando sempre com a mesma estrutura para todos os meios de pagamento, tem uma aula MONSTRA do tio Robson sobre o ActiveCampaing onde também aborda o assunto...</p>\r\n<p>Assim você não vai ficar perdido quando chegarmos na parte de criação dos métodos post, get, composição, atributos privados da classe... Enfim! Aqui a orientação a objetos rola solto :)</p>\r\n<h3>Repositório</h3>\r\n<p>Para consultar como a classe ficou no final, <a href=\"https://github.com/UpInside/play_cielo\" target=\"_blank\">só clicar aqui</a> e eu te levo lá para nosso <strong>GitHub</strong>, onde você vai ver que com uma classe bastante simples, estamos fazendo tudo o que é necessário para tokenizar o cartão e receber um pagamento com sucesso.</p>\r\n<p>Nesse exemplo, não trabalhamos nem com composer para gerar os autoload\'s! Simplesmente demos um require no arquivo :)</p>\r\n<h3>Feedback</h3>\r\n<p>É muito importante para nós sabermos o que você está achando da aula! Como que está o conteúdo, se conseguiu reproduzir aí na sua máquina, se vai colocar para rodar em algum cliente :)</p>\r\n<p>Me conta aqui nos comentários abaixo, e eu quero ver esses códigos rodando!</p>\r\n<p>Forte abraço, e a gente se vê numa próxima aula!</p>', 'images/2018/10/integracao-com-cielo-utilizando-a-api-para-receber-pagamentos-de-forma-transparente-1529433396.jpg', NULL, 12, 'post', '2018-06-18 18:11:00', '2018-10-23 13:41:58', '2019-02-06 11:22:55', NULL);
INSERT INTO `posts` (`id`, `author`, `category`, `title`, `uri`, `subtitle`, `content`, `cover`, `video`, `views`, `status`, `post_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 1, 3, 'Sincronizando banco de dados offline com online utilizando API REST no modelo de Ordem de Serviço', 'sincronizando-banco-de-dados-offline-com-online-utilizando-api-rest-no-modelo-de-ordem-de-servico', 'Veja neste exemplo como técnicos in loco podem atualizar ordens de serviço de forma offline e sincronizar com a matriz mantendo a integridade dos dados', '<p>Salve salve moqueridos, nessa aula vamos ver como fazer a abstração de determinado problema e como que podemos fazer para desenvolver uma solução.</p>\r\n<p>O problema que vamos colocar aqui, foi uma solicitação do nosso aluno com um pedido no UpInside Play. É um assunto bem interessante e por mais que possa parecer bem complexo a resolução, você vai notar que com organição fica bem tranquilo o desenvolvimento.</p>\r\n<p>Sem mais delongas...</p>\r\n<h3>Situação Problema</h3>\r\n<p>A necessidade aqui é que há o seguinte cenário:</p>\r\n<p>Ele possui uma central de atendimento (online) e irá disponibilizar um notebook para determinados técnicos para que possam ser abertas Orderns de Serviço. Esse ambiente dos tecnicos terá uma instalação do XAMPP por exemplo (pacote PHP, MySQL, Apache...) e não possuirá comunicação com a internet a todo momento.</p>\r\n<p>Portanto, é necessário que esse sistema local posteriormente possa/deva ser sincronizado com a central de atendimento.</p>\r\n<p>Isso é o que foi reportado na solicição, mas se pegarmos para ver como funciona a lógica chegamos a conclusão de que não é bem assim que funciona.</p>\r\n<h3>Abstração</h3>\r\n<p>Se você pegar uma outra empresa que tem esse mesmo tipo de serviço, o fluxo não é bem assim!</p>\r\n<p>Olha a NET (Empresa que fornece TV a cabo, internet, telefonia...) por exemplo, o fluxo basicamente é o seguinte:</p>\r\n<p>Você vai entrar em contato com a central de atendimento ao cliente (e ficar alguns minutos na linha escutando diversas opções) e quando conseguir falar com um atendente, ela vai coletar alguns dados sobre você e o seu problema.</p>\r\n<p>Posteriormente, o técnico da NET vai abrir o sistema e pegar as Orderns de Serviço que ele tem para cumprir naquele dia.</p>\r\n<p>Então veja que na real não é o técnico que faz a abertura, é a central que alimenta o sistema e o técnico simplesmente consome e pode ter algumas alterações... Requisição de Materiais, Notas, Laudos, Fechamento da OS... Enfim, determinadas ações, mas não a criação.</p>\r\n<p>Com isso a gente chega a conclusão de que precisamos criar alguns caminhos de ida e volta dos dados, e para resolver esse problema <strong>podemos criar endPoint\'s</strong> específicos para fazer a comunicação entre os dois sistemas.</p>\r\n<p>Não vou entrar no mérito de como as aplicações foram criadas aqui no artigo... A gente faz um overview na aula de cada um dos sistemas e eu mostro como ficou a arquitetura dos projetos, as tecnologias utilizadas, mas tudo é bem simples!</p>\r\n<p>O mais importante dessa aula é compreender a organização do fluxo dos dados! Para isso, criei um <strong>PDF</strong> contendo a abstração que fiz disponibilizados de duas maneiras diferentes... Aí ficar a seu critério identificar qual a que mais faz sentido para você :)</p>\r\n<p>Esse material vai estar dentro do nosso repositório no GitHub! O link vai estar aqui abaixo.</p>\r\n<h3>Comunicação</h3>\r\n<p>Como ja informei, podemos resolver o problema usando <strong>API</strong>! Para isso, eu vou ter que te convidar a assistir a nossa aula de criação de endPoint que está disponível no UpInsidePlay (somente para membros do Club).</p>\r\n<p>Nessa aula sobre a criação do primeiro endPoint, eu te mostro algumas funções básicas, criamos a classe da <strong>API</strong>, padronização de erros, autenticação de usuário e o consumo com o Postman.</p>\r\n<p>A <strong>API</strong> que desenvolvi nessa aula, pode obviamente ser consumida pelo <a href=\"https://www.getpostman.com/\" target=\"_blank\">Postman</a> também! Saca só como fica o consumo :)</p>\r\n<p><img title=\"\" src=\"https://www.upinside.com.br/uploads/images/2018/06/349-1528982814.png\" alt=\"\" /></p>\r\n<p>Se você nunca trabalhou com o Postman, é um aplicativo que você usa para fazer requisições para outros endereços utilizando vários verbos (GET, POST, PUT, DELETE....)</p>\r\n<p>Então a ferrmenta nos auxilia durante o debug das informações.</p>\r\n<p>Se você ver pegar para entender o <strong>PDF</strong> que citei, vai ver que a comunicação entre o <strong>MASTER</strong> e o <strong>SLAVE</strong> são exatamente 3 caminhos, e temos os mesmo 3 endPoints.</p>\r\n<p><strong>MASTER</strong> é o nome carinhoso que eu sei para o sistema que a central de atendimento trabalha. É onde concentra todas as informações.</p>\r\n<p>O <strong>SLAVE</strong> é o sistema local que vai estar instalado na máquina do técnico.</p>\r\n<h3>Segurança e Isolamento</h3>\r\n<p>Em nenhum momento, um banco tem acesso ao outro, ou as senhas são expostas na aplicação. Óbviamente que o sistema local tem o seu acesso com o banco de dados, mas ele não terá acesso direto a base <strong>MASTER</strong>.</p>\r\n<p>Portanto, a parte de senhas você pode ficar tranquilo. A autenticação da <strong>API</strong> pode ser usado o e-mail do tecnico junto com um token, senha, código de sessão... Fica a seu critério.</p>\r\n<p>Como a autenticação da <strong>API</strong> é baseada por usuário, isso cria uma certa camada de isolamento. O que quero dizer com isso é que o técnico vai ter acesso somente as Orderns de Serviço que forem designadas para ele.</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Aqui não tivemos nenhuma documentação para usar como base, mas você pode querer assistir a aula sobre como criar o seu primeiro endPoint. Para isso é <a href=\"https://www.upinside.com.br/blog/como-construir-o-seu-primeiro-endpoint-para-que-outras-aplicacoes-possam-consumir-seus-dados\" target=\"_blank\">só você clicar aqui</a> e eu te levo pra lá :)</p>\r\n<p>Aqui abaixo eu vou deixar o link para o repositório lá no nosso github. Vamos para algumas informações:</p>\r\n<p>Há dois diretórios... Um <strong>_master</strong> e outro<strong> _slave</strong> que eu não preciso te falar o que contém cada um deles né? :P</p>\r\n<p>A <strong>API</strong> está dentro do <strong>_master</strong>. Afinal é o central que vai ter os pontos de entrada e saída de informação... Mais fácil colocar tudo isso num único lugar do que ter dezenas, centenas, milhares de API\'s em cada <strong>_slave</strong>.</p>\r\n<p>O código desenvolvido não foge nada do que já trabalhamos no dia a dia. Temos um banco de dados MariaDB criado com duas tabelas bastante simples, cada um com sua devida estrutura. O DUMP do banco está na raiz de cada sistema! Se precisar alterar qualquer parâmetro de conexão com o banco, é só abrir o config.php de cada aplicação e colocar de acordo com a sua necessidade.</p>\r\n<p>Nem fiz o uso do composer para ficar mais simples.</p>\r\n<p>As requisições estão sendo tratadas via ajax! Portanto, os gatilhos estão dentro do script.js :)</p>\r\n<p>Há também o <strong>PDF</strong> da abstração que vale a pena ser consultado. Afinal a programação é fácil! Saber o que fazer com ela é que é o difícil, e nesse caso, basta organizar certinho as informações que fica tranquilo desenvolver.</p>\r\n<p><a href=\"https://github.com/UpInside/system_sync\" target=\"_blank\">Link para o repositório lá no GitHub!</a></p>\r\n<h3>Atualizar arquivos do SLAVE</h3>\r\n<p>Aqui a gente não entra muito no mérito porque pode até fugir da programação WEB! A solução mais \"simples\" que vem a cabeça é ter um .bat ou um .sh na máquina <strong>SLAVE</strong> e esse processo ficar responsável por se conectar a um repositório GIT, FTP, SFTP, Mapeamento de Rede (ou qualquer outro meio que você tenha a disposição) e fazer o \"download\" dos arquivos e atualizar na pasta base do sistema...</p>\r\n<p>Não é um processo muito tranquilo de se fazer, tem toda a questão de permissão, sobrescrever os arquivos corretos, gerar um backup do sistema previamente, ter um plano de contigência...</p>\r\n<p>Ou ainda, a solução que para mim é a mais correta, o técnico \"encostar\" o notebook a cada X tempo para que possa ser feito a atualização por um programador! Assim você pode rodar rotinas de integridade de banco de dados, efetuar os testes de comunicação e garantir que o sistema _slave está apto para ele trabalhar sem problemas.</p>\r\n<p>Esse X tempo vai depender de acordo com a demanda. Pode ser uma vez por ano, uma vez a cada 6 meses... Se for mais do que isso, talvez a opção seja automatizar mesmo! Nem que seja sob a supervisão de um programador, mas algo que você pode colocar para fazer e não se preocupar. Depois você só volta e testa para garantir o funcionamento :)</p>', 'images/2018/10/sincronizando-informacoes-entre-duas-aplicacoes-via-api-rest-1529000518.jpg', NULL, 10, 'post', '2018-06-14 12:41:00', '2018-10-23 13:41:58', '2019-02-06 10:41:09', NULL),
(9, 1, 1, 'Fazendo requisição de pagamentos de forma transparente com o gateway Pagar.me', 'fazendo-requisicao-de-pagamentos-de-forma-transparente-com-o-gateway-pagar-me', 'Veja como fazer requisições de pagamento utilizando uma API RestFull com retorno em JSON de forma transparente diretamente dentro do seu site', '<p>Salve salve moqueridos, Gustavo Web aqui e nessa aula eu vou te mostrar como fazer a integração com mais um meio de pagamento!</p>\r\n<p>Hoje vamos consumir a API da Pagar.me que no meu ponto de vista é uma das API\'s que eu mais gostei de trabalhar até o momento. Vamos ver suas funcionalidades.</p>\r\n<h3>Particularidades</h3>\r\n<p>Para nós desenvolvedores é um ambiente bastante confortável tendo em vista que toda a documentação é em português, bastante organizado e sem contar as tecnologias que escolheram para trabalhar.</p>\r\n<p>A API foi desenvolvida já utilizando o conceito de RestFull e toda a resposta que você tiver será no formato JSON, portanto o PHP vai suprir todas as necessidades.</p>\r\n<h4>Pagamentos Parcelados</h4>\r\n<p>Antes de tudo vamos deixar claro uma coisa: Não existe pagamento parcelado via boleto! Parcelamento é somente através de cartão de crédito.</p>\r\n<p>Parcelamento com boletos se dá com duplicatas/carnê e nos meios digitais (até o momento) isso não é possível/viável.</p>\r\n<p>Eu coloquei esse ponto aqui simplesmente para informar que a pagar.me trabalha de uma forma diferente dos demais meios de pagamento. Por exemplo:</p>\r\n<p>Se você criar uma conta na hotmart você vai pagar uma porcentagem sobre a venda (10% vamos supor) e quando a pessoa comprar o seu produto, depois de 30 dias você recebe o valor integral. Mesmo se ela tiver pago parcelado...</p>\r\n<p>Então se o cliente comprou um produto de R$ 1.000,00 divido em 10 vezes, daqui 30 dias você receberá R$ 900,00. (Valor integral independente das parcelas já descontada a taxa da hotmart).</p>\r\n<p>No caso da Pagar.me a taxa é beeem menor (vamor citar 3.5%) o que é considerávelmente menor que a hotmart, maaaaaas, se o cliente comprar dividido em 10 vezes, você receberá 10 parcelas, cada uma no seu devido mês.</p>\r\n<h3>Criação da sua Conta</h3>\r\n<p>Como informei na aula, o cadastro na Pagar.me não é simplesmente preencher um formulário. É necessário que eles cumpram alguns requisitos para que seu cadastro fique apto a receber pagamentos.</p>\r\n<p>A vantagem disso é que o pagamento fica com o seu nome na fatura do cartão, na minha opinião é bem legal isso!</p>\r\n<p>Esse tal cadastro é cobrado uma taxa. Se não me falha a memória quando a conta da Up foi criada era coisa de R$ 500,00 mangos! Mas como entramos como parceiro deles, fomos isentos e você como um aluno também pode se isentar dessa taxa.</p>\r\n<p>Para isso é necessário que você mande um e-mail para <a href=\"mailto:parcerias@pagar.me\" target=\"_blank\">parcerias@pagar.me</a> e informa que você é um aluno da UpInside Treinamentos juntamente com os seus dados. Fique tranquilo, não é necessário informar absolutamente tudo... Assim que você faz o contato, uma pessoa da pagar.me provavelmente entrará em contato com você para pegar toda a documentação necessária, vai te dar uma força nos primeiros passos e acertar todos os detalhes.</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Logo aqui abaixo eu vou deixar o link do repositório lá do nosso GitHub para que você possa efetuar o download da classe e acompanhar durante os seus estudos, mas, mais importante do que utilizar a classe que eu desenvolvi na aula, é você saber o porque e como eu criei para que você possa desenvolver com uma outra ferramenta num futuro.</p>\r\n<p>A documentação deles é show de bola! Além de ser em português, já conta com exemplos de códigos em diversas linguagens tanto da requisição quanto da resposta esperada por aquela ação. Isso sem contar qur você consegue \"testar\" cada módulo diretamente dentro da documentação. Embora eu não utilize esse recurso, é algo que pode salvar a pátria enquanto você estiver desenvolvendo e testando.</p>\r\n<p>Temos basicamente dois links para a documentação:</p>\r\n<p><a href=\"https://docs.pagar.me/\" target=\"_blank\">Esse link vai te levar para a sessão específica de desenvolvedores da Pagar.me.</a></p>\r\n<p><a href=\"https://docs.pagar.me/v2017-08-28/reference\" target=\"_blank\">Já esse link vai te mandar para a referência completa da API que utilizamos durante a aula :)</a></p>\r\n<p>Quanto ao link do nosso repositório lá no GitHub, é <a href=\"https://github.com/UpInside/play_pagarme\" target=\"_blank\">só clicar e eu te levo pra lá agora</a>.</p>\r\n<h3>Ambiente de Homologação x Produção</h3>\r\n<p>Para que você possa efetuar suas requisições nos dois ambientes, basta alterar o api_key. A url do serviço é a mesma, e simplesmente o que muda é o parâmetro de autenticação. Portanto esse é um passo que você deve ficar bastante atento para não enviar requisições para o lugar errado.</p>\r\n<p>O processo de autenticação é bastante simples, uma vez que informando o api_key, você não precisa de mais nada... Nem mesmo o e-mail da conta! Simples e funcional.</p>\r\n<p>Guarde suas api_key\'s com bastante segurança. E digo isso no plural porque obviamente que você tem uma para cada ambiente!</p>\r\n<h3>Biblioteca x Código Próprio</h3>\r\n<p>A pagarme já disponibiliza uma biblioteca completa para que você possa consumir dentro da sua aplicação. De certa forma até facilitaria o nosso trabalho, mas tendo em vista que a lib implementa muuuita coisa que não vamos utilizar eu dou preferência para criar o meu próprio mecanismo de consulta ao sistema deles.</p>\r\n<p>Se você quiser estudar mais sobre a lib deles, <a href=\"https://github.com/pagarme/pagarme-php\" target=\"_blank\">você pode consultar esse link aqui</a>, e eu vou te levar diretamente para o repositório deles onde você pode fazer o download para estudar, implementar algum método ou até mesmo utilizar no seu sistema.</p>\r\n<p>Como você viu aula, há diversos recursos que a API da pagar.me implementa como: Transações, Estornos, Cartões, Planos, Assinaturas, Postback, Saldo, Recebíveis, Transferências, Antecipações, Contas Bancárias, Recebedores, Clientes, Anti-Fraude, CEP.....</p>\r\n<p>E é claro que a gente não vai trabalhar com tudo isso de recurso. Pelo menos aqui dentro da Up a gente trabalha com a API somente para fazer as requisições de pagamento (e por consequência os clientes e cartões) e qualquer outra ação a gente utiliza a própria dashboard que eles entregam.</p>\r\n<h3>Postback</h3>\r\n<p>Como já informei em outras aulas sobre o meio de pagamento, não é possível a gente desenvolver isso na aula porque cada um pode organizar a informação de um jeito diferente. Portanto a gente cria um documento que é capaz de receber todos os dados, mas nenhuma ação com eles é tomada.</p>\r\n<p>Importante que o seu arquivo de postback seja bem seguro é na medida do possível \"escondido\". Para evitar que maliciosos fiquem testando requisições para sua página. Então o ideal é que você teste que está fazendo a requisição, se o token informado é o seu, trate todas as informações recebidas com do POST para só então ter qualquer interação com o seu banco de dados.</p>\r\n<h3>Feedback</h3>\r\n<p>Me conta aqui abaixo o que você achou dessa aula! E caso implemente no seu site ou no do seu cliente, conta aqui abaixo para ver seu código rodando a todo vapor no ambiente de produção! :)</p>', 'images/2018/10/fazendo-requisicao-de-pagamentos-de-forma-transparente-com-o-gateway-pagar-me-1528402558.jpg', NULL, 0, 'post', '2018-06-06 12:32:00', '2018-10-23 13:41:58', '2018-10-24 14:53:27', NULL),
(12, 1, 2, 'Crie variáveis dentro da sua função e execute um loop no PostgreSQL', 'crie-variaveis-dentro-da-sua-funcao-e-execute-um-loop-no-postgresql', 'Veja com que você deve fazer a declaração de variável da sua função e como você pode aplicar na sua regra de negócio. Execute um laço de repetição baseado numa variável do tipo record', '<p>Você sabe como criar uma variável dentro da sua função e ainda percorrer um loop alimentando um recordset e utilizar as variáveis para auxiliar na criação de campos calculados e entregar a informação pronta para sua aplicação?</p>\r\n<p>Salve salve moqueridos, Gustavo Web aqui e bora pra mais uma aula pra ver como funciona mais um recurso do PostgreSQL.</p>\r\n<p>Esse é um dos processos que você pode utilizar para manter sua aplicação extremamente leve e com baixo load entregando uma boa experiência de navegação para quem esteja acessando seu conteúdo.</p>\r\n<p>Quando você transfere parte da responsabilidade da execução para o banco de dados, ele executa de maneira muito mais rápida a sua aplicação fica somente com a renderização do conteúdo.</p>\r\n<p><strong>DECLARE</strong></p>\r\n<p>Podemos fazer isso de maneira bastante simples, basta utilizar o comando <strong>DECLARE</strong> logo acima do \"<strong>BEGIN</strong>\" da sua função e colocar o nome da variável e o tipo dela.</p>\r\n<p>Lembrando que o tipo deve ser um aceito pelo <strong>PostgreSQL</strong>, então temos integer, bigint, text, character varying(X) ou qualquer outro de acordo com a sua necessidade.</p>\r\n<p>Na aula vamos abordar também o tipo <strong>RECORD</strong>! Esse cara aqui começa a abrigar algumas tecnicas bem bacanas especialmente do <strong>PostgreSQL</strong>... Conseguimos criar um recordset baseado nas informações de uma query!</p>\r\n<p>Eu mostro duas forma para que você possa ver como funciona... Tanto utilizando o <strong>INTO</strong> para uma sintaxe mais simples, como usando o <strong>FOR</strong> para ter um laço de repetição.</p>\r\n<p>A sintaxe é um pouco particular, mas você consegue compreender exatamente para que serve cada uma das palavras reservadas que temos.</p>\r\n<p>Os nossos exemplos aqui são fictícios obviamente e não precisamos ter uma grande regra para aplicar... Mas só para exercício a gente calcula o somatório de todos os ID\'s dos usuários que temos na tabela.</p>\r\n<p>Quer saber como funciona tudo isso? Só dar o play na aula ai em cima! <a href=\"https://www.youtube.com/upinside?sub_confirmation=1\" target=\"_blank\">Não se esquece de se inscrever no nosso canal</a> e ativar o sininho de notificação para receber as nossas informações :)</p>', 'images/2018/10/crie-variaveis-dentro-da-sua-funcao-e-execute-um-loop-no-postgresql-1527712218.jpg', NULL, 3, 'post', '2018-05-30 14:28:00', '2018-10-23 13:41:58', '2019-02-02 12:54:20', NULL),
(13, 1, 3, 'Sistema de pesquisa com prévia de resultados em tempo real com ajax e php', 'sistema-de-pesquisa-com-previa-de-resultados-em-tempo-real-com-ajax-e-php', 'Com esse componente você pode colocar a descrição, foto, preço, parcelamento, categoria ou qualquer outra informação que seja relevante na listagem de itens.', '<p>Salve salve moqueridos! Bora criar totalmente do zero um sistema de pesquisa com prévia de resultados em tempo real com ajax e php?</p>\r\n<p>Esse componente consiste em monitorar tudo o que é digitado dentro de um input, fazer uma pesquisa no seu banco de dados (que pode ser um produto, serviço, artigo...) e exibir uma prévia dos registros encontrados e exibir de uma maneira que seja mais agradável com foto, descrição, categoria, preço...</p>\r\n<p>Enfim! Você quem determina o que vai para a listagem e formata como preferir :)</p>\r\n<h3>Repositório</h3>\r\n<p>Como sempre aqui nas aulas do play, eu disponibilizei lá no GitHub todas as implementações da aula... Os arquivos necessários no início, como ficou o projeto no final da primeira aula e também o nosso protótipo completo.</p>\r\n<p>Para acessar, <a href=\"https://github.com/UpInside/play_searchrealtime\" target=\"_blank\">é só clicar nesse link</a> e acessar a pasta de acordo com o seu andamento.</p>\r\n<p><strong>Lembrando que:</strong></p>\r\n<ul>\r\n<li><strong>_initial</strong>: São os arquivos necessários para começar a desenvolver! Pacote de ícones, classe de leitura do banco de dados e as imagens de ilustração.<br /><br /></li>\r\n<li><strong>_aula01:</strong> Os arquivos assim que finalizamos a nossa primeira aula. Coloquei esse diretório também para que você possa comparar com o seu código caso tenha algum tipo de problema.<br /><br /></li>\r\n<li><strong>_aula02:</strong> O protótipo final já desenvolvido :)</li>\r\n</ul>\r\n<h3>Passo a Passo</h3>\r\n<p>Para chegar no resultado, precisamos passar por algumas etapas e assim compreender como funciona a comunicação de todas as linguagens e também fica mais organizado quando você segue um rito.</p>\r\n<p>Iniciamos com HTML5 e CSS3 para marcar nossos elementos e estilizar tudo o que precisamos. Como já era de se esperar não temos uma tag no html para nos auxiliar nisso, portanto a técnica aqui consiste em criar um div abaixo do formulário (para isso trabalharemos com position) e formatar de acordo com a nossa necessidade.</p>\r\n<p>A principal vantagem aqui é que você é totalmente livre para estilizar da forma que for mais usual para você! Pode por borda, arredondar as bordas, fundo, fonte, tamanho da imagem, destaque do link, um item por linha, dois itens lado a lado.... Enfim! Fica a seu critério o que e como fazer.</p>\r\n<p>Depois de marcado e estilizado, precisamos capturar o evento de digitação no input do form, para que a cada caracter que seja buscado no banco de dados seja disparado as ações necessárias, e por sua vez precisamos do código php para fazer essa consulta pra gente e retornar para o javascript.</p>\r\n<p>Aqui pode ser que você comece a imaginar que a comunicação fique um pouco bagunçada e não compreenda o caminho completo. De forma simples, vai ficar assim:</p>\r\n<p style=\"text-align: center;\"><strong>DOM -&gt; jQuery -&gt; Controller -&gt; jQuery -&gt; DOM</strong></p>\r\n<p>Toda a mágica do negócio acontece dentro do nosso javascript, é ele quem vai ficar monitorando o input e disparar a ação pro php, fazer a leitura da resposta e alimentará as divs como necessário.</p>\r\n<p>No nosso caso a gente segue um exemplo beeem básico, bastante semelhante a busca do NetShoes. Saca só como ficar o resultado:</p>\r\n<h4>Nosso projeto finalizado:</h4>\r\n<p><img title=\"Sistema de pesquisa com prévia de resultados em tempo real com ajax e php\" src=\"https://www.upinside.com.br/uploads/images/2018/05/344-1527171123.png\" alt=\"Sistema de pesquisa com prévia de resultados em tempo real com ajax e php\" /></p>\r\n<h4>NetShoes:</h4>\r\n<p><img title=\"Sistema de pesquisa com prévia de resultados em tempo real com ajax e php\" src=\"https://www.upinside.com.br/uploads/images/2018/05/344-1527171234.png\" alt=\"Sistema de pesquisa com prévia de resultados em tempo real com ajax e php\" /></p>\r\n<p>De fato esse é um recurso que auxilia muuuito a pessoa no momento da busca, principalmente se você tem algum produto com o nome complicado de se escrever, ou que contenham produtos com letras como Y, H, W, K... Que são pouco usadas no nosso idioma.</p>\r\n<h3>Implementação da Busca</h3>\r\n<p>No caso a gente vai trabalhar aqui simplesmente com o operador LIKE na string comparando com o nome do produto! Caso você queira, você pode colocar para que a pesquisa seja feita também através da categoria, dos itens mais vendidos, somente das unidades que você tem em estoque... Fica a seu critério o que deve ser usado e quais os registros que devem ser retornados.</p>\r\n<p>Para fazer essa alteração basta alterar a consulta que é feita dentro do banco de dados lá no controller.php. Somente a implementação dessa query fará com que você tenha uma busca mais refinada dos itens a serem listado.</p>\r\n<p>Outro ponto importante é que você deve fazer um tratamento na variável $postData[\'term_search\'], afinal a gente não trabalhou com a Parse String da nossa classe (senão, não conseguiriamos trabalhar com o LIKE).</p>\r\n<p>Então minha dica, é que você faça um filtro e elimine palavras reservadas do SQL da sua string, trate pontuações (pois num caso de pesquisa, ninguém vai utilizar ponto final, dois pontos...).</p>\r\n<h3>Feedback</h3>\r\n<p>Me conta aqui abaixo nos comentários o que você achou dessa aula e se você implementar em algum projeto, comenta aqui abaixo para que possamos ver como ficou o resultado :)</p>\r\n<p>Caso tenha alguma outra dúvida, só avisar por aqui e eu vou responder cada um pessoalmente.</p>', 'images/2018/10/sistema-de-pesquisa-com-previa-de-resultados-em-tempo-real-com-ajax-e-php-1527169056.jpg', NULL, 2, 'post', '2018-05-24 13:10:00', '2018-10-23 13:41:58', '2019-02-04 22:16:39', NULL),
(14, 1, 3, 'Conhecendo o recurso de Tabela Temporária no PostgreSQL', 'conhecendo-o-recurso-de-tabela-temporaria-no-postgresql', 'Veja como você pode aplicar essa funcionalidade dentro da função do seu SGDB e aumentar a performance da sua consulta', '<p>Salve salve moqueridos, Gustavo Web aqui e o assunto da nossa aula de hoje é <strong>TEMPORARY TABLE</strong>.</p>\r\n<p>Tenho quase certeza que a grande maioria já viu o termo antes (nem que seja na documentação) mas nunca utilizou e nem mesmo encontrou um bom motivo para trabalhar...</p>\r\n<p>Se esse é o seu caso, assiste essa aula que está disponível gratuitamente no nosso canal do YouTube e confere as aulas onde estamos abordando o <strong>PostgreSQL</strong>.</p>\r\n<p>Cada vez mais vamos entrando em recursos \"mais avançados\" do <strong>SGDB</strong>, e por mais que os exemplos que façamos agora sejam desconexos, lá na frente você vai ver que tudo isso faz sentido :)</p>\r\n<h3>Uso Prático</h3>\r\n<p>Basicamente, o uso desse tipo de recurso será feito dentro de uma função e principalmente quando essa rotina precisar de uma otimização de performance ou até mesmo reestruturação dos dados.</p>\r\n<p>O principal ponto aqui é que você tem certeza que assim que a conexão do cliente for finalizada, essa tabela que fora criada será dropada automaticamente pelo <strong>SGDB</strong> sem a necessidade de uma intervenção do programador.</p>\r\n<p>A vantagem de tudo isso é que como ela é uma tabela volátil (está armazenada em uma memória, e não gravada no disco) o acesso a ela é extremamente rápido. É claro que a memória do seu servidor tem um limite para o consumo da tabela temporária, e quando esse valor é extrapolado, automaticamente o banco começa a despejar isso para o disco.</p>\r\n<p>Mas levando em consideração que você tem um servidor rodando o seu banco, estimo que a quantidade de memória nele seja o suficiente para que execute uma query e não chegue a esse ponto. Para alcançar 1GB de consumo de memória numa única querym é necessário que seja um processamento pesado... Imagina para consumir 2GB, 4GB, 8GB de RAM que seja!</p>\r\n<h3>Funcionalidades a disposição</h3>\r\n<p>Embora até o momento não tenhamos abordado <strong>VACCUM</strong>, <strong>ANALYZE</strong> e nenhum procedimento de rotina para manutenção do servidor, saiba que essas funcionalidades estão disponíveis para ser utilizadas também na sua tabela temp...</p>\r\n<p>A única questão é que não serão executados os processos automaticamente (como numa tabela física por exemplo) mas até mesmo os índices podem ser utilizados.</p>\r\n<p>Embora os parâmetros <strong>GLOBAL</strong> e <strong>LOCAL</strong> podem ser utilizados ainda na chamada da criação, isso está sendo feito somente por questão de compatibilidade e não apresentam nenhuma alteração no comportamento. Simplesmente são ignorados, portanto se você tinha o hábito de utilizar, já não é mais necessário.</p>\r\n<h3>Feedback</h3>\r\n<p>Você já está seguindo o nosso canal no YouTube? Essa aula e várias outras onde estamos abordando o PostgreSQL está numa playlist totalmente gratuita :)</p>\r\n<p>Para seguir o canal da Up, <a href=\"https://www.youtube.com/upinside?sub_confirmation=1\" target=\"_blank\">é só clicar aqui e eu te levo pra lá agora!</a> Só clicar em Inscrever-se e ativar o sininho para receber as notificações :)</p>\r\n<p>Eu vou responder cada comentário lá do YouTube pessoalmente e aqui abaixo também!</p>\r\n<p>Forte abraço, a gente se vê numa próxima aula</p>', 'images/2018/10/conhecendo-o-recurso-de-tabela-temporaria-no-postgresql-1527001070.jpg', NULL, 3, 'post', '2018-05-22 12:12:00', '2018-10-23 13:41:58', '2019-02-04 22:14:55', NULL),
(15, 1, 1, 'Utilize transação no PostgreSQL com apenas 3 palavras reservadas', 'utilize-transacao-no-postgresql-com-apenas-3-palavras-reservadas', 'Veja como apenas 3 palavras reservadas podem lhe auxiliar a não executar uma query por engano e acabar gerando um grande transtorno.', '<p>Salve salve meus queridos, Gustavo Web aqui e bora conversar mais um pouco sobre PostgreSQL?</p>\r\n<p>O assunto de hoje é sobre transação! Sabe o que é? Pra que serve? O que é necessário para que a transação ocorra com sucesso?</p>\r\n<h3>ACID</h3>\r\n<p>Bom, logo no início da aula eu já começo explicando um pouco dos fundamentos da transação e para isso é necessário que você conheça as 4 principais propriedades que são necessárias para que você possa trabalhar com esse recurso dentro do banco de dados. </p>\r\n<p>Esses parâmetros são os seguintes: Atomicidade, Consistência, Isolamento e Durabilidade! Para entrar em maior detalhe sobre cada um deles, eu vou sugerir que assista o vídeo, afinal eu consigo te dar maiores exemplos e acredito que fica mais claro cada um deles.</p>\r\n<p>Só um resumo breve caso precise relembrar:</p>\r\n<h4>Atomicidade</h4>\r\n<p>Toda transação precisa obrigatóriamente ter um fim! Seja um sucesso, ou um erro, mas é obrigatório que existe um ponto que fique claro para o banco de dados.</p>\r\n<h4>Consistência</h4>\r\n<p>As regras aplicadas a modelagem devem ser seguidas a risca, e para que tenha sucesso, todas as imposições devem ser satisfeitas.</p>\r\n<h4>Isolamento</h4>\r\n<p>A sua consulta não pode ter o comportamento alterado por outra consulta. Por mais que sejam concorrentes umas das outras, elas são executadas de maneira isolada.</p>\r\n<h4>Durabilidade</h4>\r\n<p>Depois de salvo as informações no seu banco de dados, somente uma nova transação pode alterar ou remover os dados.</p>\r\n<h3>Palavras reservadas</h3>\r\n<p>Como informado na aula, o ideal é que o seu banco de dados gerencie as transações para você! Somente em casos muito específicos, quando estiver trabalhando com recursos mais avançado do SGDB que você irá colocar em prática isso. Motivo dessa antecipação, é prover para você desenvolvedor, uma forma simples de poder ter a certeza de que o que foi executado está correto e pode de fato ser feita as alterações.</p>\r\n<p>Guade bem essas palavras: BEGIN, COMMIT e ROLLBACK! Isso pode salvar você daquele UPDATE ou DELETE sem a cláusula WHERE.</p>\r\n<h3>Feedback</h3>\r\n<p>Se você quer saber mais sobre esse assunto, só seguir os passos que eu lhe informar abaixo... Não se esqueça de que você pode também fazer sua solicitação de aula que seja referente ao mesmo assunto e quem sabe eu consigo lhe ajudar :)</p>\r\n<p>Eu conto tudo em dando maiores detalhes nessa aula que eu gravei para a nossa playlist #BoraProgramar para o nosso canal do YouTube! Essa, e outras aulas abordando esse mesmo tipo de assunto, você encontra diretamente no nosso canal. <a href=\"https://www.youtube.com/upinside?sub_confirmation=1\" target=\"_blank\">Então corre lá e se inscreve, é só clicar aqui :)</a></p>\r\n<p>O</p>', 'images/2018/10/utilize-transacao-no-postgresql-com-apenas-3-palavras-reservadas-1526392851.jpg', NULL, 0, 'post', '2018-05-15 12:19:00', '2018-10-23 13:41:58', '2018-10-24 14:53:27', NULL),
(16, 1, 1, 'Aprenda a criar um Componente de Notificação para seu Site', 'aprenda-a-criar-um-componente-de-notificacao-para-seu-site', 'Nessa aula eu vou te mostrar como que você marca o HTML, estiliza com CSS e adiciona os eventos necessários para trafegar com as informações via ajax ter um sistema de notificação completo para sua aplicação', '<p>Salve salve moquerido, Gustavo Web aqui e vou te mostrar como criar um componente <strong>CSS</strong> bastante utilizado nos sites para notificar os usuários e visitantes.</p>\r\n<p>Atendendo o pedido de mais um aluno, dessa vez vamos ver como montar toda a estrutura para colocar de forma discreta e eficaz uma área específica para notificações sem que atrapalhe a navegação e que cumpra com o seu objetivo.</p>\r\n<p>Embora criar esse tipo de componente seja bastante fácil com <strong>HTML</strong> e <strong>CSS</strong>, quando entramos na parte de que precisamos colocar alguns efeitos e eventos, você pode acabar imaginando que isso é mais difícil, ou então não compreende como conciliar todas as linguagens...</p>\r\n<p>Fique tranquilo, porque vamos ver como resolver tudo isso.</p>\r\n<h3>Repositório</h3>\r\n<p>Você pode acessar o repositório dessa aula através desse link aqui:</p>\r\n<p><a href=\"https://github.com/UpInside/play_system_notify\" target=\"_blank\">Link para o repositório do sistema de notificação</a></p>\r\n<p>Notou que dentro dele há dois diretórios? Um initial, contendo obviamente os arquivos iniciais do nosso projeto e o outro é todo o conteúdo já pronto para que você possa testar, usar como base de estudo ou até mesmo comparar com o seu exercício.</p>\r\n<p>No repositório initial, temos pouquíssima coisa! Basicamente que o index.php contendo a estrutura básica do <strong>HTML</strong>, e um diretório com o nome de _cdn contendo um pacote de ícones. Caso não queira trabalhar com ícones, fique tranquilo! Você nem vai precisar baixar nada do repositório.</p>\r\n<p>No repositório com o nome somente notify, temos os arquivos que foram escritos até o término da primeira aula, há alguns arquivos a mais e tudo já programado com os eventos e efeitos.</p>\r\n<p>No repositório full temos o protótipo pronto de acordo com a última aula, assim você consegue consultar os arquivos modificados e fazer a comparação caso seja necessário.</p>\r\n<h3>Processos</h3>\r\n<p>Para começar, a primeira coisa que vamos fazer é montar uma estrutura básica de <strong>HTML</strong> servindo todos os recursos necessários. No nosso caso, eu coloquei somente um texto e o ícone. Você pode optar por ter um título e um texto de descrição, uma área mais discreta reservada para o código de um erro, você pode também formatar um link para que em casos extremos mande um e-mail para o administrador do sistema (e nesse caso faz o uso do link)... Tudo aqui fica a seu critério!</p>\r\n<p>Próximo passo é estilizar essa estrutura! Primeiramente a nossa área reservada, então para isso vamos colocar uma área no topo da página a direita, com um certo espaçamento e na frente de todos os outros elementos... Aqui vamos trabalhar um pouco com position para criar.</p>\r\n<p>Depois, vamos estilizar o <strong>trigger_notify</strong> de fato... Colocar cor, bordas, fonte, espaçamento e tudo o que você julgar necessário, e por fim vamos para o javascript!</p>\r\n<p>Aqui a aula começa a ficar um pouco \"bagunçada\", mas fique tranquilo que tudo ficará legal no final! O processo aqui é descontruir o que fizemos diretamente no código e colocar tudo isso baseado num evento, num efeito de forma que fique exatamente como planejamos no início.</p>\r\n<p>E é claro, não vamos esquecer daquela barrinha de timer no final.</p>\r\n<p>Como resultado final, você terá quase que a mesma notificação que temos no BETA, nossa área específica onde os alunos oficiais da Up assistem os cursos.</p>\r\n<h3>Comunicação</h3>\r\n<p>Para fazer todo o tramite entre a aplicação e o componente, vamos trabalhar com ajax para fazer as requisições. Aqui está um passo importante para que você compreenda por onde e como as informações são trabalhadas.</p>\r\n<p>Num primeiro momento, caso você não tenha muita familiariadade com o jQuery, ou então com o ajax, isso pode parecer um pouco bagunçado, fora de ordem... Mas se parar para analisar com calma, vai ver que toda a informação segue por um caminho lógico. Explico:</p>\r\n<p><strong>A primeira coisa que vamos fazer na aula é capturar o evento de submeter o formulário:</strong> Com isso a gente para a atualização da página cada vez que o form é submetido, e nesse meio tempo a gente faz os tratamentos necessários.</p>\r\n<p><strong>O ajax é quem manda as informações para o PHP:</strong> Uma vez que o javascript pegou os dados do formulário, ele não tem o que fazer! Portanto, de uma forma \"transparente\", enviamos os dados para o php (que no nosso caso é o controller.php) para que ele dê sentido a essas informações.</p>\r\n<p><strong>Sua regra de negócio está no controlador:</strong> Aqui as informações deixam de estar dentro do javascript e passam novamente para o PHP, onde será analisado minuciosamente o que deve ser feito. Seja cadastrar um artigo, editar um usuário ou qualquer outra atividade do seu sistema. Aplicado sua regra de negócio basicamente você tem 3 possíveis resultados [sucesso, erro, alerta] e basta que você alimente as informações necessárias para disparar a notificação.</p>\r\n<p><strong>Somente a resposta volta para o javascript:</strong> Você receberá somente os parâmetros que foram setados dentro do controlador como resposta. Agora basta que você identifique essa resposta, e dê sentido a essas informações. No nosso caso, como retornamos um vetor com uma posição \"notify\" e este continha todas as propriedades necessárias é só fazer a mágica acontecer.</p>\r\n<p>Invoque a função que você criou na aula anterior: Se todos os passos forem executados com sucesso, você chegará até aqui e terá a notificação sendo exibida na sua página.</p>\r\n<h3>Conclusão</h3>\r\n<p>Nessa a gente conseguiu montar um componente quase que por completo! Se você assistiu a aula, notou que eu informei que temos um certo gargalo aqui... O ideal é que tenhamos uma classe no PHP que seja capaz de gerenciar e invocar essas notificações quando necessário. Colocar esse conteúdo na aula, iria levar mais um bom tempo e a aula ficaria muito extensa, e como essa foi a dúvida inicial do solicitante... Missão dada, é missão cumprida!</p>\r\n<p>Caso você tenha dificuldades em criar essa classe para gerenciar suas triggers, é só fazer um pedido aqui no play que eu faço a gravação dela também :)</p>\r\n<p>Me conta aqui abaixo o que você achou dessa aula, se conseguiu reproduzir junto comigo o mesmo efeito e se era tão complexo/simples quanto você imaginava!</p>\r\n<p>Aquele forte abraço, e a gente se vê numa próxima aula.</p>', 'images/2018/10/aprenda-a-criar-um-componente-de-notificacao-para-seu-site-1527515035.jpg', NULL, 2, 'post', '2018-05-09 12:00:00', '2018-10-23 13:41:58', '2018-11-13 12:29:11', NULL),
(17, 1, 2, 'Debugando Função no PostgreSQL', 'debugando-funcao-no-postgresql', 'Veja como dois comandos básicos você consegue fazer uma leitura de parâmetros ou então parar a execução da sua função', '<p>Salve salve galera, Gustavo Web aqui e hoje a gente vai estudar uma possibilidade de fazer o debug de uma função no banco de dados utilizando o <strong>PostgreSQL</strong> como SGDB padrão!</p>\r\n<p>Como você deve ter visto na aula anterior que criamos um função no nosso banco, você não tem muita alternativa para saber se o comportamento da sua função está correto ou não... No geral, se ela funcionar vai te mostrar o resultado ou vai dar um erro de <strong>SQL</strong>!</p>\r\n<p>Mas e para saber se no meio do caminho os processos estão ocorrendo normalmente? Se a porcentagem que você está calculando está correta ou não? Se determinado <strong>SELECT</strong> que você executa e deveria retornar apenas uma linha está na verdade retornando vários...</p>\r\n<p>Para printar esse tipo de parâmetro, você pode usar o <strong>RAISE NOTICE</strong>! Opte por informar uma mensagem e concatenar parâmetros dentro dela ou simplesmente pontos estratégicos para saber onde está o ponteiro de execução.</p>\r\n<h3>Exemplo Prático</h3>\r\n<p>Pensa comigo assim:</p>\r\n<p>Sua função faz um tratamento numa base de endereços, segmenta as informações por estado e cidade, depois vincula cada município com o devido endereço, depois faz um tratamento de <strong>singularidade</strong> (<em>algoritmo de similaridade do postgres é top! me cobrem sobre isso...</em>) e por fim limpa as tabelas temporárias que foram utilizadas durante o percurso!</p>\r\n<p>Se essa base de endereços, tiver mais de 1 milhão de registros essa função pode ficar sendo executada por vários minutos, talvez horas...</p>\r\n<p>E para saber qual é a etapa que ela está fazendo nesse exato momento? Quantos registros há no total? Qual está sendo processado agora?</p>\r\n<p>Para desmistificar tudo isso, você pode colocar simplesmente o seguinte:</p>\r\n<pre class=\"brush: php;\">RAISE NOTICE \'Limpeza de Tabelas Temporárias :)\';<br />RAISE NOTICE \'Fique tranquilo! O Processo já está acabando.\';</pre>\r\n<p>E pronto! Você vai saber exatamente que está sendo feito a limpeza das tabelas temporárias :)</p>\r\n<h3>Parando a execução do código</h3>\r\n<p>Essa ação é útil quando você faz determinado tratamento, e caso você não tenha nenhuma resposta para aquele \"ELSE\", você para o processo e informa o usuário que algo inesperado aconteceu. De fato, gera uma excessão!</p>\r\n<p>Assim o banco sabe que não pode continuar dali em diante, e sua aplicação terá que ser capaz de lidar com esse tipo de ação.</p>\r\n<p>Você poderia criar uma excessão como:</p>\r\n<pre class=\"brush: php;\">RAISE EXCEPTION \'Ooops, ocorreu uma excessão na validação das informações! Entre em contato com o administrador do sistema\';</pre>\r\n<p>O comportamento do banco de dados será basicamente se você tivesse tentando efetuar uma divisão por zero. Eeeee é claro que isso é impossível de se fazer, lógico!</p>\r\n<p>Agora me conta aqui nos comentários, o que você achou dessa aula! Já conhecia essas sintaxes? O processo para fazer isso no PostgreSQL é bem mais tranquilo que no MySQL/MariaDB né :/</p>\r\n<p>Para fazer essa mesma ação no MariaDB por exemplo, você pode querer estudar DECLARE HANDLER.</p>\r\n<p>Se tiver dúvidas ou sugestões para as próximas aulas dessa nossa playlist, só me dizer aqui na parte de comentários... Vou responder cada um deles :)</p>', 'images/2018/10/debugando-funcao-no-postgresql-1525725373.jpg', NULL, 0, 'post', '2018-05-08 12:00:00', '2018-10-23 13:41:58', '2018-11-01 19:33:56', NULL);
INSERT INTO `posts` (`id`, `author`, `category`, `title`, `uri`, `subtitle`, `content`, `cover`, `video`, `views`, `status`, `post_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 1, 2, 'Aprenda a criar arquivo PDF utilizando PHP de forma descomplicada', 'aprenda-a-criar-arquivo-pdf-utilizando-php-de-forma-descomplicada', 'Gere relatórios, demonstrativos de pagamento, contratos ou qualquer conteúdo que necessite que seja exportado em PDF', '<p>Salve salve moqueridos, Gustavo Web aqui com mais uma aula do UpInside Play e agora a gente vai ver como gerar arquivos PDF com uma biblioteca muuuito tranquila de se trabalhar.</p>\r\n<h3>Instalação</h3>\r\n<p>Sem segredo nenhum, vamos fazer a instalação via composer. Não vou ficar entrando em detalhes aqui de como funciona o processo de instalação do composer, instalação global ou como se cria um projeto.</p>\r\n<p>Eu vou executando na minha máquina e acredito que você consiga fazer sem nenhum tipo de problema desse lado aí. Se quiser aprender mais sobre composer, você pode consultar o nosso curso:</p>\r\n<p><a href=\"https://www.upinside.com.br/cursos/composer-na-pratica\" target=\"_blank\">Quero conhecer o curso de Composer da UpInside</a></p>\r\n<h3>Repositório</h3>\r\n<p>Como essa aula é bem tranquila de se fazer, eu não disponibilizei nenhum repositório dessa vez com o conteúdo da aula.</p>\r\n<p>A biblioteca é bastante tranquila de se trabalhar, e o nosso único trabalho aqui dentro é simplesmente consumí-la gerando um html e informando o conteúdo para dentro do método responsável pela geração do PDF</p>\r\n<h3>Dica</h3>\r\n<p>Nesse caso, o ideal é que a estilização (a formatação com o CSS) esteja feita de forma inline. Por exemplo, ao criar determinado elemento, você ataca diretamente as propriedades dele, como:</p>\r\n<pre class=\"brush: php;\">&lt;table style=\'width: 100%, background-color: #CCC, ...\'&gt;</pre>\r\n<p>Assim, quando converter esse HTML em PDF, toda a formatação será levada em consideração e você terá o seu arquivo exatamente como foi programado.</p>\r\n<p>Outro ponto importante ainda, é a questão das fontes, originalmente a biblioteca vem com a: sans, serif e sans-serif. Você até consegue criar o PDF com a Times New Roman por exemplo, mas isso porque essa é uma fonte comum em praticamente todos os sistemas operacionais.</p>\r\n<p>Caso queria adicionar outra fonte, só consultar a documentação e ver o passo a passo!</p>\r\n<h3>Documentação</h3>\r\n<p>A documentação da biblioteca pode ser encontrada no link abaixo:</p>\r\n<p><a href=\"https://mpdf.github.io/\" target=\"_blank\">Link para a documentação da biblioteca mPDF</a></p>\r\n<p>É bem tranquilo de interpretar o conteúdo e possui uma documentação bastante rica. Na grande maioria dos casos há exemplos da aplicação do código.</p>\r\n<h3>Topo do Documento vs Cabeçalho</h3>\r\n<p>A diferença básica entre eles, é que o Topo do Documento terá somente uma frase ou uma descrição do que se destina esse documento e terá uma formatação básica... Como por exemplo:</p>\r\n<p style=\"text-align: center;\">CONTRATO DE PRESTAÇÃO DE SERVIÇO</p>\r\n<p>Isso é um topo de documento... Geralmente será em letras maiúsculas, centralizado com a fonte um pouco maior...</p>\r\n<p>Já o Cabeçalho, é o que se repete em todas as páginas... Pode ser um marcador, um contador de página ou simplesmente o nome da empresa escrito de maneira mais discreta.</p>\r\n<h3>Cabeçalhos e Rodapés</h3>\r\n<p>Provavelmente o seu relatório terá que ter cabeçalho e rodapé, e saiba que você pode personalizar com HTML e CSS embora os recursos dentro da biblioteca são um pouco limitadas...</p>\r\n<p>Uma das principais questões levantadas, é a necessidade de ter o topo da primeira página com uma formato (contendo logo da empresa, nome, um certo alinhamento...) e nas demais páginas você colocar simplesmente um contador de páginas por exemplo ou então algo mais discreto para não ocupar espaço na página.</p>\r\n<p>Isso pode ser resolvido de uma maneira bastante simples, fazendo uma pequena alteração no corpo do nosso documento!</p>\r\n<p>Se você já tem a variável $html e $table alimentadas, você pode fazer o seguinte:</p>\r\n<pre class=\"brush: php;\">$htmlContent = \'<br />   &lt;html&gt;<br />      &lt;body&gt;<br />         &lt;htmlpageheader name=\"mainHeader\" style=\"display:none\"&gt;<br />            &lt;div style=\"text-align: right; border-bottom: 1px solid #000000; font-weight: bold; font-size: 10pt;\"&gt;<br />               Topo Principal<br />            &lt;/div&gt;<br />         &lt;/htmlpageheader&gt;<br /> <br />         &lt;htmlpageheader name=\"otherHeader\" style=\"display:none\"&gt;<br />            &lt;div style=\"border-bottom: 1px solid #000000; font-weight: bold; font-size: 10pt;\"&gt;<br />               Topo Secundário {PAGENO}/{nbpg}<br />            &lt;/div&gt;<br />         &lt;/htmlpageheader&gt;<br /> <br />         &lt;sethtmlpageheader name=\"mainHeader\" value=\"on\" show-this-page=\"1\" /&gt;<br />         &lt;sethtmlpageheader name=\"otherHeader\" value=\"on\" /&gt;<br /> <br />         \' . $html . $table . \'<br /><br />      &lt;/body&gt;<br />&lt;/html&gt;\';</pre>\r\n<p>Se você for analisar o conteúdo dessa string, temos a variável <strong>$htmlContent</strong> criada, com uma estrutura prévia de html passando duas tags específicas da biblioteca, que no caso é a <strong>&lt;htmlpageheader&gt;</strong>. Você pode notar que para cada uma tags há um nome, <strong>mainHeader</strong> e <strong>otherHeader</strong> respectivamente...</p>\r\n<p>Logo abaixo, você tem um set de parâmetros, informando que a primeira página deve conter o topo <strong>mainHeader</strong>, e as demais, o <strong>otherHeader</strong>.</p>\r\n<p>O seu resultado final, será basicamente o seguinte:</p>\r\n<p>Página 1</p>\r\n<p><img title=\"Aprenda a criar arquivo PDF utilizando PHP de forma descomplicada\" src=\"https://www.upinside.com.br/uploads/images/2018/05/338-1525273021.png\" alt=\"Aprenda a criar arquivo PDF utilizando PHP de forma descomplicada\" /></p>\r\n<p>Página 2</p>\r\n<p><img title=\"Aprenda a criar arquivo PDF utilizando PHP de forma descomplicada\" src=\"https://www.upinside.com.br/uploads/images/2018/05/338-1525273040.png\" alt=\"Aprenda a criar arquivo PDF utilizando PHP de forma descomplicada\" /></p>\r\n<p>É claro que a personalização de cada uma das sessões, fica a seu critério definir!</p>\r\n<p>Caso você queira, você pode criar uma classe para composer a mpdf e organizar melhor o seu código... Assim fica mais fácil e você pode colocar o conteúdo específico de acordo com a sua necessidade.</p>\r\n<h3>Feedback</h3>\r\n<p>Me conta o que você achou dessa aula! Agora você já está pronto para gerar seus PDF\'s com o PHP de forma bem descomplicada e produtiva.</p>\r\n<p>Forte abraço, e a gente se vê numa próxima aula do UpInside Play</p>', 'images/2018/10/aprenda-a-criar-arquivo-pdf-utilizando-php-de-forma-descomplicada-1526479202.jpg', NULL, 0, 'post', '2018-05-02 12:00:00', '2018-10-23 13:41:58', '2018-11-01 19:33:59', NULL),
(19, 1, 1, 'Criando sua primeira função no Banco de Dados', 'criando-sua-primeira-funcao-no-banco-de-dados', 'Desmistifique função no banco de dados e utilize a favor da sua aplicação', '<p>Salve salve WebMasters, Gustavo Web aqui iniciando agora um dos assuntos mais polêmicos no banco de dados!</p>\r\n<p>Bora começar abordar alguns assuntos que são indispensáveis para trabalhar com função no banco de dados nessa série?</p>\r\n<h3>O que esperar dessa aula</h3>\r\n<p>Sem mais delongas, nessa aula a gente vai ver o conteúdo mais básico de uma função... E assim como na sua aplicação com a linguagem de programação, <strong>aqui não é diferente</strong>! Vamos ter nome da função, parâmetros, tipo de retorno, o corpo da função e de fato o retorno sendo entregue para a aplicação.</p>\r\n<p>Aqui vamos montar um <strong>esqueleto</strong> que servirá como base para praticamente todas as funções que você venha a desenvolver com o banco de dados <strong>postgresql</strong>.</p>\r\n<p>Dica importatíssima: Se você quer saber mais sobre funções diretamente no seu SGDB, <a href=\"https://www.youtube.com/upinside?sub_confirmation=1\" target=\"_blank\">se inscreve no nosso canal do youtube</a>, porque eu estou preparando vários conteúdos para você trabalhar! Perguntinha básica: Como que se debuga função no banco de dados? Fica de olho na nossa PlayList <a href=\"https://www.youtube.com/watch?v=3e43i-GTCkE&amp;list=PLi_gvjv-JgXpl8w8mzdBH9R00d6RVv2XC\" target=\"_blank\">#BoraProgramar - PostgreSQL</a></p>\r\n<h3>O que vem por aí</h3>\r\n<p>Se você ficou sem resposta para essa questão, fique tranquilo, porque é o que eu vou te mostrar na nossa próxima aula. Eeeee, para você ficar sabendo quando ela será postada, você tem que se inscrever no canal e ativar o sininho para receber as notificações...</p>\r\n<p>E ainda tem muuuita coisa para vermos: Transação dentro de uma função do banco de dados, Como Percorrer um loop de um RecordSet, Como se conectar com outra base de dados, Quando invocar função antes/depois do FROM...</p>\r\n<p>E se você gostou dessa aula, tem algum tipo de dúvida, me conta aqui abaixo nos comentários para que eu possa ficar sabendo e se possível eu gravo uma aula respondendo a sua dúvida :)</p>\r\n<p>Forte abraço!</p>', 'images/2018/10/criando-sua-primeira-funcao-no-banco-de-dados-1525127948.jpg', NULL, 0, 'post', '2018-05-01 12:00:00', '2018-10-23 13:41:58', '2018-10-24 14:53:27', NULL),
(20, 1, 2, 'Como construir o seu primeiro EndPoint para que outras aplicações possam consumir seus dados', 'como-construir-o-seu-primeiro-endpoint-para-que-outras-aplicacoes-possam-consumir-seus-dados', 'Para a criação de uma API, alguns pontos devem ser levados em consideração como segurança, tratamento, padronização e baixo acoplamento.', '<p>Salve salve moquerido, Gustavo Web aqui!</p>\r\n<p>Atendendo mais um pedido do play, essa semana vamos ver o passo a passo para criar nosso primeiro endpoint para que possamos internacionalizar nossas informações.</p>\r\n<p>Quando você tem um endpoint funcionando, você pode disponibilizar as informações do seu banco de dados passando pela regra de negócio da sua aplicação, filtrar o que pode ou não ser entregue... Você ganha uma grande mobilidade com suas informações e tem a possibilidade de se integrar com outros sistemas ou até mesmo aplicativos mobile.</p>\r\n<h3>Repositório</h3>\r\n<p>Para acessar o repositório do nosso projeto, é só <a href=\"https://github.com/UpInside/play_first_api\" target=\"_blank\">clicar aqui</a>!</p>\r\n<p>Antes que você se assuste, eu estou usando o composer sim... Mas não faço o uso de nenhum dependência, simplesmente trabalho com o autoload :)</p>\r\n<p>Caso você não queira trabalhar com o composer, não há problema nenhum! Basta efetuar o require do arquivo manualmente sem problemas!</p>\r\n<p>Você vai notar que temos duas pastinhas dentro do github, uma _initial e outra _full. A initial contém os arquivos do início da nossa aula com todos os arquivos necessários, e o Full contém o protótipo pronto com tudo já desenvolvido caso você precise consultar.</p>\r\n<p>E já que você vai estar no GitHub, dá um Follow no perfil da Up, no meu, no do Rob e marca com estrelinha esse repo :)</p>\r\n<h3>Primeira API</h3>\r\n<p>Como esse foi o nosso primeiro protótipo, ele é bem primitivo! Não temos interação com o banco de dados, mas caso você queira, basta instanciar os objetos que queira trabalhar e fazer o uso normalmente... Inclusive se você tiver uma classe de Modelo da sua entidade você pode usar sem problema nenhum.</p>\r\n<p>Durante a aula a gente força alguns vetores lá somente para demonstração!</p>\r\n<h3>Debug</h3>\r\n<p>Para facilitar nossa vida também, eu sugiro que você faça a instalação do Postman... O Robson já abordou ele em outras aulas de como consumir API (na aula do Active Campaing você consegue ver mais) e ele ajuda bastante!</p>\r\n<p>Já corrige o problema de acentuação, tem uma interface bastante intuitiva e diversas opções para trabalhar com esse tipo de requisição.</p>\r\n<p>Isso sem contar que guarda o histórico das requisições já feitas, você consegue montar uma \"biblioteca\" de requisições já feitas... Bem bacana o App!</p>\r\n<h3>Adicionais</h3>\r\n<p>Você viu aqui, que acabamos criando um arquivo para cada finalidade! Na minha opinião isso facilita um pouco o trabalho tendo em vista que você sabe exatamente o que está acontecendo dentro daquele endpoint...</p>\r\n<p>Mas você pode preferir criar um front-controller para isso e manter tudo dentro de um único arquivo simplesmente verificando o caminho informado!</p>\r\n<p>Fica seu critério escolher! Não há o certo ou errado... Você deve analisar isso de acordo com a necessidade do seu projeto :)</p>\r\n<p>Outro ponto também é que você consegue notar que as primeiras linhas de cada um dos endpoint\'s são repetidas... Você pode desacoplar ainda mais, se sentir necessidade! </p>\r\n<h3>Feedbacks</h3>\r\n<p>Como sempre, se tiver alguma dúvida, você pode usar os comentários aqui abaixo e eu vou responder cada um deles... Me conta o que você achou dessa aula :)</p>', 'images/2018/10/como-construir-o-seu-primeiro-endpoint-para-que-outras-aplicacoes-possam-consumir-seus-dados-1527512447.jpg', NULL, 0, 'post', '2018-04-24 12:37:00', '2018-10-23 13:41:58', '2018-11-01 19:34:00', NULL),
(21, 1, 3, 'Refine ainda mais o processo de integridade das suas informações no PostgreSQL', 'refine-ainda-mais-o-processo-de-integridade-das-suas-informacoes-no-postgresql', 'Depois dos relacionamentos você pode se deparar com outro tipo de dificuldade, mas a solução para esse problema é mais simples do que você pode imaginar', '<p>Salve salve webmaster! Gustavo Web aqui mais uma vez.</p>\r\n<p>Se lembra que na semana passada falamos sobre relacionamentos no <strong>PostgreSQL</strong>? Vimos de forma bem simples que com apenas um passo você consegue adicionar um <strong>gatilho</strong> para auxiliar na <strong>integridade</strong> das suas informações!</p>\r\n<p>Caso você você não tenha assistido o conteúdo, <a href=\"https://www.upinside.com.br/blog/aprenda-a-fazer-relacionamento-e-mantenha-a-integridade-do-seu-banco-de-dados\" target=\"_blank\">prende o dedo aqui no link que eu te levo pra lá agora</a> para você conferir o conteúdo. É bem importante que você assista essa primeira aula para que tudo faça um maior sentido para você!</p>\r\n<p>Isso sem contar também, que se você seguir o passo a passo junto comigo na aula anterior, vai ficar mais fácil de fazer os exercícios dessa aula, fechado?</p>\r\n<p>Bom, o conteúdo dessa aula eu mostro quais são as possibilidades para utilizar junto com o comando <strong>ON DELETE</strong>, que como você consegue conferir no vídeo são 5! Maaas, como sou bonzinho, vou colocar um resumo em texto aqui para auxiliar nos estudos :)</p>\r\n<h3>5 opções para usar no ON DELETE</h3>\r\n<p>Confere aqui quais são as opções que você tem disponível para trabalhar e um breve resumo de cada uma delas.</p>\r\n<h4>NO ACTION</h4>\r\n<p>Esse é o valor padrão! Se você não especificar o<strong> ON DELETE</strong> na criação da sua tabela, esse será o comportamento padrão que será adotado.</p>\r\n<p>Como o próprio nome diz ele não tem ação nenhuma, simplesmente é ignorado o comando (para a tabela filha) e por consequência o registro (da tabela filha) continua existindo... Com isso, a restrição não será satisfeita e você terá como resultado uma mensagem de erro lhe informando que esse tipo de ação não é permitido porque há relacionamentos pendentes.</p>\r\n<h4>RESTRICT</h4>\r\n<p>Basicamente tem o mesmo comportamento do <strong>NO ACTION</strong>, a diferença é que ele não adia a verificação das restrições. Aí a gente começa a entrar num assunto beeeem mais avançado que isso só faria diferença se você estivesse dentro de uma transação. Então por hora, vamos pular esse comportamento.</p>\r\n<p style=\"width: calc(96% - 80px); padding: 40px; background-color: #f4f4f4; margin: 10px auto;\">Só um adendo: Pode ser que você esteja vendo essa página justamente para saber a diferença entre eles. Se for isso, li num fórum certa vez que um motivo plausível para usar esse tipo de recurso seria basicamente se você estivesse dentro de uma transação (numa function, procedure, trigger...) e você precisasse deletar o registro que é a base de tudo (no nosso exemplo da aula seria o usuário) e logo depois criar um registro com o mesmo valor na chave (com o mesmo id) e vincular todos os registros filhos a esse novo que foi criado.<br /><br />Sei lá, não poderia simplesmente ser um <strong>UPDATE</strong> em todas as colunas? :P</p>\r\n<h4>SET DEFAULT</h4>\r\n<p>Com essa instrução, quando ocorrer um <strong>DELETE</strong> na tabela principal (no caso a tabela de usuários) o campo da sua tabela filha ficará com o valor que foi definido por padrão. Nesse caso, você pode informar um valor padrão para o campo e é esse mesmo valor que será colocado no lugar!</p>\r\n<p>Importante: A verificação de restrição continuará acontecendo! Logo, não adianta você tentar colocar qualquer valor, ou um valor exorbitante... Se ele não existir na tabela de referência você terá o erro da mesma forma.</p>\r\n<h4>SET NULL</h4>\r\n<p>Bem óbvio também né! Uma particularidade aqui desse caso é que você pode setar o valor do campo como nulo e não terá mensagem de erro (mesmo a restrição não sendo satisfeita). Nesse caso, você pode estudar o<strong> MATH FULL</strong>, que é uma outra sintaxe que vai tratar esses casos.</p>\r\n<h4>CASCADE</h4>\r\n<p>Na minha visão, a melhor alternativa que temos até o momento para de fato limpar tudo o que estiver relacionado com o registro principal. Assim como falei na aula, o ideal é que você tenha todos os tratamentos sendo feitos dentro da sua aplicação e esse gatilho é para garantir a integridade. Deve-se tomar muito cuidado esse tipo de recurso e inclusive ponderar onde e como deve ser adicionado dentro da sua modelagem... Na aula eu até mostro um exemplo do que aconteceria se você tiver todos os relacionamentos possíveis dentro do sistema!</p>\r\n<h3>Como tratar os UPDATES</h3>\r\n<p>Assim como existe o <strong>ON DELETE</strong> há também o <strong>ON UPDATE</strong>, inclusive as mesmas opções que você tem para um, você tem para o outro. No geral uma forma de se trabalhar é usar o <strong>NO ACTION</strong> para o <strong>UPDATE</strong> e o <strong>CASCADE</strong> para <strong>DELETE</strong>. Com isso você tem uma configuração legal para rodar o seu sistema e trabalhar bem a sua modelagem :)</p>\r\n<h3>Seu dever agora...</h3>\r\n<p>É claro que é fortalecer nossa forma de comunicação! Vou te passar o passo a passo :)</p>\r\n<p>Já está na nossa lista VIP? Se não, está esperando o que? <a href=\"https://www.upinside.com.br/vip\" target=\"_blank\">Clica aqui agora e se cadastra!</a></p>\r\n<p>Já assinou nosso canal do YouTube? <a href=\"https://www.youtube.com/upinside?sub_confirmation=1\" target=\"_blank\">Clica aqui</a> e eu já vou abrir a popupzinha para você se inscrever!</p>\r\n<p>Já deixou o seu \"Gostei/Não Gostei\" no vídeo? Acessa a aula lá no YouTube e clica lá pra gente saber o que você está achando do conteúdo!</p>\r\n<p>E já sabe, se quiser conversar comigo, você pode usar os comentários aqui abaixo ou lá no próprio YouTube.</p>\r\n<p>Forte abraço.</p>', 'images/2018/10/refine-ainda-mais-o-processo-de-integridade-das-suas-informacoes-no-postgresql-1524575939.png', NULL, 0, 'post', '2018-04-18 18:05:00', '2018-10-23 13:41:58', '2018-11-01 19:34:01', NULL),
(22, 1, 2, 'Aprenda a fazer relacionamento e mantenha a integridade do seu banco de dados', 'aprenda-a-fazer-relacionamento-e-mantenha-a-integridade-do-seu-banco-de-dados', 'Com apenas um passo bastante simples, você consegue criar um gatilho para que você não tenha mais furo de informações', '<p>Fala a verdade, você já tentou fazer um <strong>JOIN</strong> (obviamente que entre duas tabelas) e não funcionou porque os registros não estavam na tabela \"mais baixa\", não é?</p>\r\n<p>Aquele exemplo clássico, você tem a tabela de usuários e tickets... Daí você vai juntar os registros e vê que não funciona e quando vai investigar, se dá conta de que o usuário que seria dono de determinados tickets não existe mais!</p>\r\n<p>Daí para não ficar com registro sobrando na base, você vai lá e deleta esses tickets sem relacionamento e com isso acaba perdendo uma fatia da base de estudo que você <strong>levou anos para acumular</strong>.</p>\r\n<p>E porque você não resolve esse problema de forma bastante simples? <strong>Apenas um passo!</strong> Apenas uma palavra reservada! E pronto! Você já não irá mais sofrer com isso :)</p>\r\n<p>Salve salve moqueridos, bora estudar sobre relacionamentos?</p>\r\n<p>Nessa aula eu vou mostrar para você como é bastante simples você não sofrer mais com esse tipo de problema e garantir a integridade das suas informações.</p>\r\n<p>Uma informação bem importante, quando você for fazer os testes provavelmente vai funcionar e terá o mesmo comportamento que tive aqui no meu localhost... Mas quando for aplicar isso no seu banco de dados, você pode ter problemas ao aplicar.</p>\r\n<p>Caso você tenha registros que não se relacionam, <strong>você não vai conseguir criar essa restrição!</strong> Portanto, para que você possa criar isso com sucesso, previamente você deve fazer uma verificação no seu banco e ver se não há nenhuma violação dessa restrição que você está planejando criar.</p>\r\n<p>Além disso, travar o seu banco de dados dessa forma, o ideal é que você tenha o devido tratamento acontecendo dentro do seu sistema também. Isso é para auxiliar na integridade das suas informações, mas cada camada da sua aplicação deve estar coerente com tais regras.</p>\r\n<p>No final da aula você vai ver que a gente vai tropeçar num outro problema! Depois do banco com as restrições, você também vai notar que não dá certo tentar deletar um registro da tabela mais baixa, e na próxima aula eu vou mostrar para você como automatizar esse processo também.</p>\r\n<p>O procedimento é simples tanto quanto o que fizemos nessa aula, mas temos algumas opções que podemos optar pela melhor escolha...</p>\r\n<p>Então se você quiser saber como funciona esse processo, quais são as tais opções, se increve na nossa <strong>lista VIP</strong> para receber o conteúdo pelo e-mail. Para se inscrever é só <a href=\"https://www.upinside.com.br/vip\" target=\"_blank\">acessar esse link</a>!</p>\r\n<p>Não se esqueça também de se inscrever no nosso canal do YouTube e ative as notificações!</p>\r\n<p>Forte abraço :)</p>', 'images/2018/10/aprenda-a-fazer-relacionamento-e-mantenha-a-integridade-do-seu-banco-de-dados-1524488193.jpg', NULL, 1, 'post', '2018-04-17 13:11:00', '2018-10-23 13:41:58', '2018-11-19 18:34:07', NULL),
(23, 1, 1, 'Trackeamento de Link com Google Analytics', 'trackeamento-de-link-com-google-analytics', 'Aumente a efetividade de suas campanhas de marketing e automações de e-mail monitorando todos os links que são enviados para sua audiência.', '<p>Por um acaso você já desenvolveu uma automação de e-mail, e esse e-mail tem uma boa taxa de abertura mas você sente que tem poucos cliques no CTA? Já experimentou adicionar mais uma chamada pra ação no corpo do seu e-mail?</p>\r\n<p>Mas se você têm 2 ou mais links nesse e-mail com uma boa taxa de clique, como saber qual está sendo melhor? O seu público está clicando num link de texto ou em uma imagem? Simples, monitore todos os links e veja qual de fato está lhe entregando o melhor resultado!</p>\r\n<p>Salve salve galera, Gustavo Web aqui com mais uma aula do UpInside Play e hoje a gente vai ver como trabalhar com as tags UTM\'s do Google Analytics.</p>\r\n<p>Com esse trackeamento, você consegue saber qual está sendo a origem do tráfego, de qual conjunto de anúncios patrocinado, onde a pessoa efetuou o clique e a qual campanha pertence aquele acesso.</p>\r\n<p>A vantagem disso é que você consegue saber exatamente o que está funcionando e o que não está. Munido de informações, basta você tomar as ações necessárias... Seja melhorar os resultados existente ou mudar a estratégia onde não está funcionando legal.</p>\r\n<h3>Requisitos:</h3>\r\n<p>Tirando um instalação do Google Analytics na sua página, não precisa de mais nada! Quando você analisa a documentação do Google você poderá notar que é solicitado que seja adicionado um script dentro da tag head do seu documento.</p>\r\n<p>No entanto, eu particularmente, não gosto de usar essa prática! Eu quero que primeiramente seja entregue todo o meu conteúdo ao visitante da minha página e posteriormente (\"se possível\") seja carregado scripts de análise, carregamento de público, pixel, marcação de cookie e afins!</p>\r\n<h3>Forma de uso:</h3>\r\n<p>Para fazer tudo isso funcionar, basta informar os parâmetros na URL na chamada do link! Obviamente que você não precisa monitorar os parâmetros com o seu CMS... O próprio script do GA se encarrega de fazer tudo o que é necessário.</p>\r\n<h3>Parâmetros e Documentação:</h3>\r\n<p>Se você acompanhou a aula, você viu que utilizamos os parâmetros pré-definidos e tem que obrigatóriamente ser informado exatamente estes. Caso contrário, não será contabilizado na dashboard do seu GA. Os links que usamos de referência do link é do próprio Google, inclusive o gerador de links:</p>\r\n<p><a href=\"https://support.google.com/analytics/answer/1033863\" target=\"_blank\">A Descrição de cada Parâmetro você pode encontrar aqui.</a></p>\r\n<p><a href=\"https://support.google.com/analytics/answer/1033867?visit_id=1-636578654727380147-852385639&amp;rd=2\" target=\"_blank\">A documentação para geração de links, você encontra aqui.</a></p>\r\n<p><a href=\"https://ga-dev-tools.appspot.com/campaign-url-builder/\" target=\"_blank\">Ferramenta para geração de links, é só clicar aqui.</a></p>\r\n<h3>Source:</h3>\r\n<p>Dessa vez não criamos nenhum repositório! O processo é tão simples, que simplesmente capturamos os parâmetros passados por get e printamos na tela. Se você quiser fazer o mesmo, você pode resgatar todas as informações com a seguinte instrução:</p>\r\n<pre class=\"brush: php;\">$get = filter_input_array(INPUT_GET, FILTER_DEFAULT);</pre>\r\n<p>E depois, no corpo do seu documento, exibir o objeto:</p>\r\n<pre class=\"brush: php;\">if(!empty($get)){<br />    var_dump($get);<br />}</pre>\r\n<p>O resultado que você vai ter com isso, é basicamente o seguinte quando você informar os parâmetros:</p>\r\n<p><img title=\"Trackeamento de Link com Google Analytics\" src=\"https://www.upinside.com.br/uploads/images/2018/04/333-1522675930.png\" alt=\"Trackeamento de Link com Google Analytics\" /></p>\r\n<p>É bem tranquilo né!</p>\r\n<h3>Importante:</h3>\r\n<p>Quando você faz o uso das utm\'s, você consegue visualizar na dashboard na parte de Tempo Real. Ali é batata! Acessou o link, já aparece na hora no painel...</p>\r\n<p>Maaas, quando você vai estudar o público e ver com está sendo o resultado da última semana por exemplo (ou seja, fora da dash do Tempo Real) as informações podem não aparecer ali no ato. O Google tem um tempo X para sincronizar essas informações... Eu até mostro isso na aula, nos meus testes aqui teve acesso de demorar poucos segundos e outro levarem algumas horas para aparecer!</p>\r\n<p>Portanto, se não aparecer o acesso ai de imediato fique tranquilo! Provavelmente não tem nada errado com a integração ou passagem de parâmetros... É somente o tempo do google contabilizar :)</p>\r\n<p>Vou até deixar um print aqui abaixo para que você possa conferir.</p>\r\n<p><img title=\"Trackeamento de Link com Google Analytics\" src=\"https://www.upinside.com.br/uploads/images/2018/04/333-1522675817.png\" alt=\"Trackeamento de Link com Google Analytics\" /></p>\r\n<p>No print abaixo a gente consegue ver os resultados do parâmetro utm_campaing.</p>\r\n<p><img title=\"Trackeamento de Link com Google Analytics\" src=\"https://www.upinside.com.br/uploads/images/2018/04/333-1522676082.png\" alt=\"Trackeamento de Link com Google Analytics\" /></p>\r\n<p>Da mesma forma que podemos filtrar por utm_source.</p>\r\n<p><img title=\"Trackeamento de Link com Google Analytics\" src=\"https://www.upinside.com.br/uploads/images/2018/04/333-1522676101.png\" alt=\"Trackeamento de Link com Google Analytics\" /></p>\r\n<p>E também os resutlados da utm_medium.</p>\r\n<p><img title=\"Trackeamento de Link com Google Analytics\" src=\"https://www.upinside.com.br/uploads/images/2018/04/333-1522676118.png\" alt=\"Trackeamento de Link com Google Analytics\" /></p>\r\n<p>Espero que você tenha curtido o conteúdo dessa aula, e que a partir de agora você passe a monitorar os links de sua campanha, automações de e-mail, tráfego de afiliados... Enfim! Qualquer informação que pode ser relevante para melhorar os seus resultados ou de seus clientes :)</p>\r\n<p>Até uma próxima aula!</p>', 'images/2018/10/trackeamento-de-link-com-google-analytics-1523889078.jpg', NULL, 0, 'post', '2018-04-02 12:49:00', '2018-10-23 13:41:58', '2018-10-24 14:53:27', NULL),
(24, 1, 1, 'SEQUENCE vs AUTO_INCREMENT - Criação e Comportamento', 'sequence-vs-auto-increment-criacao-e-comportamento', 'Veja o que o PostgreSQL tem de recurso para gerar campos que sejam incrementáveis. Diferentemente de outros SGDB\'s, aqui trabalhamos com sequence para evitar duplicidade de chaves primárias', '<p>Salve salve galera, Gustavo Web aqui com mais uma aula e agora a gente vai abordar o assunto <strong>SEQUENCE</strong>.</p>\r\n<p>Se você ainda não sabe do que se trata, é uma propriedade do <strong>PostgreSQL</strong> para ter o mesmo resultado do auto_increment de outros SGDB\'s de mercado como mysql e mariadb.</p>\r\n<p>Como trabalhamos com banco de dados relacional, uma das premissas que temos no nosso banco é que não podemos ter um registro com chave primária duplicada. Para manter a coesão e a integridade das informações, cada <strong>SGDB</strong> tem um tipo de comportamento.</p>\r\n<p>Você vai notar nessa aula, que embora estamos trabalhando com outra plataforma de banco, conseguimos ter o mesmo resultado com pouquíssimo trabalho. Confira essa aula, pois ela é essencial para você modelar sua estrutura no <strong>PGSQL</strong> :)</p>\r\n<p>Nessa aula eu também uso dois links da documentação oficial do PostgreSQL, para acessar a página de como criar a <strong>SEQUENCE </strong> <a href=\"https://www.postgresql.org/docs/current/static/sql-createsequence.html\" target=\"_blank\">você pode clicar aqui</a>, e para acessar sobre a propriedade <strong>DEFAULT/NEXTVAL</strong> <a href=\"https://www.postgresql.org/docs/current/static/ddl-default.html\" target=\"_blank\">clique aqui</a>.</p>\r\n<p><a href=\"https://www.youtube.com/watch?v=j4Zx6qcLPbE&amp;list=PLi_gvjv-JgXpl8w8mzdBH9R00d6RVv2XC\" target=\"_blank\">Clique aqui</a>, e eu te levo para a playlist <strong>#BORAPROGRAMAR | PostgreSQL</strong> do nosso canal do YouTube e não se esqueça... Deixe o seu Gostei ?? e se inscreva no nosso canal. Não esquece de clicar no sininho ? para ativar as notificações :)</p>', 'images/2018/10/sequence-vs-auto-increment-criacao-e-comportamento-1524488117.jpg', NULL, 0, 'post', '2018-03-27 21:02:00', '2018-10-23 13:41:58', '2018-10-24 14:53:27', NULL),
(25, 1, 3, 'Porque você deveria usar PostgreSQL? Overview e Fundamentos!', 'porque-voce-deveria-usar-postgres-overview-e-fundamentos', 'Recentemente foi lançado a nova versão do PostgreSQL com algumas modificações, melhorias em determinados recursos que vale a pena conferir', '<p>Salve salve galera, bora começar uma nova sessão de conteúdo sobre um outro SGDB? Vamos trabalhar um pouco com o <strong>PostgreSQL</strong> e ver como que ele pode ser útil na nossa aplicação e quais são as possibilidades de te atender :)</p>\r\n<p>Já tive uma experiência muuuuuito bacana com <strong>PostgreSQL</strong>, e boa parte do meu conhecimento em banco vem hedado dessa plataforma que para mim é sensacional.</p>\r\n<p>Alguns recursos exclusivos dessa plataforma me chamam muito a atenção e o <strong>PGPLSQL</strong> é algo que você definitivamente precisa conhecer :)</p>\r\n<p>Para saber mais do que estou falando, nessa aula a gente faz um breve overview e um processo de instalação que você pode fazer na sua máquina para acompanhar os próximos conteúdos. Por hora, não vamos nem entrar no mérito de instalação no servidor... Vamos primeiro explorar a ferramenta antes de sair instalando...</p>\r\n<p><a href=\"https://www.youtube.com/watch?v=j4Zx6qcLPbE&amp;list=PLi_gvjv-JgXpl8w8mzdBH9R00d6RVv2XC\" target=\"_blank\">Link para a playlist completa com as aulas onde abordaremos o PostgreSQL você pode consultar aqui :)</a></p>\r\n<p>Deixem seu feedback aqui no artigo, lá no vídeo do YouTube que eu vou responder cada um deles pessoalmente.</p>', 'images/2018/10/porque-voce-deveria-usar-postgres-overview-e-fundamentos-1524486724.jpg', NULL, 0, 'post', '2018-03-22 14:00:00', '2018-10-23 13:41:58', '2018-11-01 19:34:06', NULL),
(26, 1, 3, 'Efetue pesquisa dinâmica com duas entradas de informações e filtre os registros utilizando o operador LIKE', 'efetue-pesquisa-dinamica-com-duas-entradas-de-informacoes-e-filtre-os-registros-por-comparacao', 'Desenvolva o filtro what-where e aplique em seu sistema fazendo pesquisa por ocorrência (operador LIKE) e mantenha a integridade das suas informações', '<p>Bora criar um filtro onde a pessoa possa escrever o que ela quer encontrar em determinada cidade? Tipo, você acessa um guia da sua região e eu quer saber sobre os restaurantes em determinada cidade...</p>\r\n<p>Daí você vai no filtro e digita o que você quer (restaurante, bar, sorveteria, casa de show...) e a cidade que você está, ou estará indo viajar em breve e tem uma listagem completa? Show né?</p>\r\n<p>Salve salve, Gustavo Web aqui e a aula do UpInside Play de hoje pede para criarmos um filtro what-where!</p>\r\n<p>Como sempre, pra agilizar o desenvolvimento o já deixei um protótipo pronto para que possamos simplesmente codificar e assim não precisamos ficar investindo tempo para montar a interface :)</p>\r\n<h3>Repositórios</h3>\r\n<p>O repositório inicial do projeto, é o que você vai usar como base para seguir na aula comigo. Já está no github e se você <a href=\"https://github.com/UpInside/play_pesquisa_dinamica\" target=\"_blank\">clicar aqui</a>, eu te levo pra lá agora :)</p>\r\n<p>O dump do banco de dados está na raiz do repositório.</p>\r\n<p>O projeto final, pode ser <a href=\"https://github.com/guhweb/play_pesquisa_dinamica_full\" target=\"_blank\">consultado aqui</a>.</p>\r\n<h3>Processos</h3>\r\n<p>Não que seja segredo, mas há algumas particularidades que devem ser levadas em consideração para que quem esteja pesquisando, possa encontrar os registros de maneira mais coesa.</p>\r\n<p>Exemplo simples, se você permitir que no cadastro dos estabelecimentos a pessoa digite a cidade, provavelmente você terá um grande furo de informações... Explico:</p>\r\n<p>Pense que as empresas de Florianópolis podem cadastrar a cidade como: Floripa, Florianópolis, Florianopolis, Fpolis, Filanópolis (por causa do trânsito hehe). Esses são alguns nomes comuns que vemos por aqui!</p>\r\n<p>Portanto, o ideal é que você tenha uma base de cidades cadastradas no seu sistema, e quando for incluir um novo estabelecimento, seja selecionado uma nova cidade dentre as que já estão previamente parametrizadas.</p>\r\n<p>Assim você consegue evitar furo de informações e manter seus dados integros.</p>\r\n<p>Como \"what\", utilizamos um campo multivalorado somente para exemplificar como pode funcionar o recurso no sistema, mas o ideal também é que você tenha todas as tags já parametrizadas no seu sistema e no momento do cadastro, seja permitido o cadastro de várias tags para um único estabelecimento!</p>\r\n<p>Nesse caso, também seria legal separar numa outra tabela os relacionamentos, tendo em vista que campo multivalorado não é uma boa prática na normalização do banco de dados.</p>\r\n<h3>Feedback</h3>\r\n<p>Quero saber o que você achou dessa aula e se você tem a intenção de adaptar para seu projeto :) Me conta aqui abaixo nos comentários!</p>', 'images/2018/10/efetue-pesquisa-dinamica-com-duas-entradas-de-informacoes-e-filtre-os-registros-por-comparacao-1520705381.png', NULL, 0, 'post', '2018-03-10 22:15:00', '2018-10-23 13:41:58', '2018-11-01 19:34:06', NULL),
(27, 1, 1, 'Overview de arquitetura SaaS e estudo de 3 aplicativos com suas possíveis estruturas', 'overview-de-arquitetura-saas-e-estudo-de-3-aplicativos-com-suas-possiveis-estruturas', 'Além de conhecer mais sobre o funcionamento do SaaS, veja um estudo rápido de como pode ser a estrutura de 3 grandes aplicativos do mercado que utilizam essa metodologia em seus negócios.', '<p>Que tal aprender mais sobre a Arquitetura SaaS, Vantagens, Desvantagens, Modelos de Cobrança e ainda fazer um Overview de 3 aplicativos gigantes do mercado?</p>\r\n<p>Salve salve moqueridos, Gustavo Web aqui atendendo a mais um pedido e o assunto agora é SaaS.</p>\r\n<p>Muito se confunde <strong>SaaS (Software as a Service)</strong> com <strong>SASS (Syntactically Awesome Style Sheets)</strong>, mas veja que são coisas completamente distintas e que não possuem vínculo nenhum umas com as outras!</p>\r\n<p>Como há uma complexidade maior no desenvolvimento desse tipo de recurso, infelizmente não conseguimos criar uma aplicação para ilustrar :(</p>\r\n<p>Em questões de programação, nada muda! As sintaxes continuam sendo as mesmas e com o PHP você consegue criar praticamente tudo... O que muda, e deixa o trabalho mais árduo é de fato a arquitetura! Modelar, organizar, disponibilizar e consumir as informações que estão em 2, 3, 5, ou mil bancos de dados diferentes exige bastante integridade.</p>\r\n<h3>Arquitetura</h3>\r\n<p>Não há uma quantidade exata de quantas arquiteturas existem, tendo em vista que podem ser mescladas umas com as outras, mas há pontos que podem ser destacados quando observado esse modelo de negócio.</p>\r\n<p>Se você estiver iniciando agora sua aplicação, estude de maneira muito aprofundada os 2 itens abaixo de destaque:</p>\r\n<h4>CODEBASE</h4>\r\n<p>É o código fonte da sua aplicação, que deve ficar num local seguro e nem mesmo o seu cliente deve ter acesso a esse caminho. Somente pessoas da sua equipe e de confiança.</p>\r\n<p>É aqui que mora o coração da sua aplicação, e embora o banco de dados seja essencial e reflita bastante nos códigos que estarão aqui dentro, o maior trabalho e a maior dedicação devem ser investidos aqui. Você perceberá que por mais que você queira adicionar recursos formidáveis ou atropelar a plataforma do concorrente, seu trabalho mais pesado será a criação da comunicação de toda a sua estrutura...</p>\r\n<p>Como tudo depende da aplicação, você deve projetá-la para que seja mutável, editável, transportável e executável com a maior gama de possibilidades possíveis tendo o mínimo de impacto.</p>\r\n<p>Uma dica que eu posso deixar para você é criar endpoints dentro da sua aplicação, para que ela possa ser consumida por qualquer linguagem. Você abre um leque maior de possibilidades, como por exemplo para adicionar um aplicativo mobile no repertório, ficaria muito mais tranquilo se a sua aplicação já fosse trabalhada com endpoints simplesmente para que seja feito o consumo em outra linguagem de programação :)</p>\r\n<h4>BANCO DE DADOS</h4>\r\n<p>Uma vez definido como será o comportamento da sua aplicação, é hora de modelar o seu banco de dados! Aqui você deve se preocupar com o volume que as informações podem ter/ocupar.</p>\r\n<p>Se o seu SaaS for basicamente o comércio de um login de acesso (como por exemplo <strong>serviços de streaming</strong>) você poderá armazenar as informações em um único banco de dados, sendo necessário particionar o banco somente devido ao volume ou geoposição.</p>\r\n<p>Já se o SaaS for o caso de ter mais de uma regra de negócio (como serviço de <strong>controle financeiro</strong> entre pessoal e corporativo) você poderá dividir as informações em bancos de dados onde cada um tem os dados de acordo com a sua modelagem. E aqui você entrará no conceito de <strong>multi tenant</strong> (vários inquilinos) abrigados dentro do mesmo banco.</p>\r\n<p>Ou ainda se o SaaS requer um nível maior de customização ou ainda diversos ajustes no comportamento (como em <strong>plataformas de e-commerce</strong>) você deve planejar para que seu banco seja respectivo a um único cliente. Com isso você montará uma <strong>farm</strong> (fazenda) com possibilidade de abrigar milhares de bancos.</p>\r\n<h3>OVERVIEW</h3>\r\n<p>Pra ficar mais fácil de compreender como funciona, eu categorizei 3 aplicativos (só quem assistir a aula vai saber!) de como pode ser a arquitetura de cada um deles. Assim fica mais claro o exemplo de utilizar um ou mais <strong>CODEBASE</strong> ou <strong>BANCO DE DADOS</strong>.</p>\r\n<h3>FEEDBACK</h3>\r\n<p>Como sempre, me diga aqui abaixo o que você achou dessa aula e se ainda ficou algum tipo de dúvida... Eu pessoalmente vou responder os comentários :)</p>', 'images/2018/10/overview-de-arquitetura-saas-e-estudo-de-3-aplicativos-com-suas-possiveis-estruturas-1520431107.png', NULL, 0, 'post', '2018-03-05 12:15:00', '2018-10-23 13:41:58', '2018-10-24 14:53:27', NULL),
(28, 1, 2, 'Integração do Paypal com pagamentos recorrente e postback das informações', 'integracao-do-paypal-com-pagamentos-recorrente-e-postback-das-informacoes', 'Veja como funciona o processo de integração e como as informações são retornadas para sua aplicação', '<p>Salve salve moqueridos, Gustavo Web aqui com mais uma aula do UpInside Play e hoje vamos ver como fazer solicitação de pagamento recorrente utilizando o <strong>PayPal</strong> como gateway.</p>\r\n<p>Para fazer essa integração vamos trabalhar com o ambiente de sandbox, ou seja, um ambiente que simula o ambiente real mas as informações são fictícias simplesmente para que possamos testar as possibilidades e fazer a nossa integração.</p>\r\n<p>Como no caso do paypal o pagamento é feito dentro do site deles, fica bastante simples a integração e basicamente o que precisamos é fazer uma parametrização na conta do vendedor e gerar um bloco de código para adicionar na página.</p>\r\n<p>A parte de programação fica somente com o postback, e mesmo assim temos algumas ferramentas para que possa nos auxiliar :)</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Nessa aula a gente não utiliza código nenhum pronto e não precisamos de nenhum arquivo externo. Portanto, tudo será feito na mão e o repositório que eu estou disponibilizando aqui é somente para consulta dos estudos.</p>\r\n<p>É claro que eu removi os meus tokens e parâmetros de autenticação. Então segue a aula comigo que você vai ver como é bem tranquilo de se trabalhar.</p>\r\n<p><a href=\"https://github.com/UpInside/play_paypal_recurrency\" target=\"_blank\">Para consultar o repositório dessa aula é só clicar aqui :)</a></p>\r\n<h3>Ambientes</h3>\r\n<p>O Paypal disponibiliza um sistema de sandbox completo para que possamos fazer as simulações necessárias e todos os devidos testes.</p>\r\n<p>Eu vou te mostrar na aula como criar todas as credenciais necessárias para conseguir dar procedimento em todo o conteúdo até chegar na nossa classe que vai retornar todos os dados da transação para organizar no nosso banco de dados e ter um sistema de recorrência.</p>\r\n<p>Para colocar no ambiente de produção, basta replicar o mesmo processo de parametrização na conta principal do vendedor.</p>\r\n<h3>Postback</h3>\r\n<p>Na nossa aula, vamos até o ponto que as informações do meio de pagamento são retornadas para dentro da nossa aplicação. Desse ponto em diante, necessário que você analise a sua estrutura e organize as informações da melhor forma que lhe for conveniente.</p>\r\n<h3>Feedback</h3>\r\n<p>Se você gostou dessa aula, me conta aqui abaixo para que possamos estar sempre gerando conteúdo de valor para o nosso UpInside Play :)</p>\r\n<p>Mais um método de Pagamento DONE.</p>\r\n<p> </p>', 'images/2018/10/integracao-do-paypal-com-pagamentos-recorrente-e-postback-das-informacoes-1527880721.jpg', NULL, 1, 'post', '2018-06-01 19:00:00', '2018-10-23 13:41:58', '2019-02-02 12:54:27', NULL);
INSERT INTO `posts` (`id`, `author`, `category`, `title`, `uri`, `subtitle`, `content`, `cover`, `video`, `views`, `status`, `post_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(29, 1, 2, 'Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo', 'os-principios-do-design-responsivo-para-criar-sites-que-se-ajustam-a-qualquer-dispositivo', 'Disponibilizar o seu conteúdo de forma legível e navegável, em qualquer dispositivo, não é mais um opcional e sim uma obrigação! E você resolve isso com Design Responsivo.', '<p>Salve salveeeee, Gustavo Web aqui!</p>\r\n<p>Bora falar sobre Design Responsivo hoje? Provavelmente se você está acessando essa página você já sabe o que é, e como tudo funciona, mas eu estive lendo um artigo (gringo) com alguns princípios que devem ser levados em consideração, quando você está desenvolvendo sua página para ter seu conteúdo disponível de uma forma bacana, das menores até as maiores resoluções e dispositivos.</p>\r\n<p>A partir do momento que você tem uma página bem estruturada e bem estilizada, seu design responsivo passa a ser resumido em apenas \"meia dúzia\" de breakpoints e cada um desses, tem uma sintaxe gigante conforme mostrado abaixo:</p>\r\n<pre class=\"brush: php;\">@media(max-width: 48em){<br />  /* FORMATAÇÃO */<br />}</pre>\r\n<p>Ficou bem simples né :)</p>\r\n<p>Boa parte do processo para tornar o site responsivo está antes dessa etapa de breakpoints, e nesse artigo eu venho colocando as minhas considerações do artigo original [<a href=\"http://blog.froont.com/9-basic-principles-of-responsive-web-design/\" target=\"_blank\">9 Basics Principles of Responsive Web Design</a>]</p>\r\n<p>Sem mais delongas então, vamos para os 9 princípios :)</p>\r\n<h3>Responsivo x Adaptivo</h3>\r\n<p>Pela imagem de ilustração fica mais claro a diferença de um para o outro. De fato, não há um certo ou errado! De acordo com o elemento ou com a resolução você pode acabar fazendo o uso de ambas as técnicas, sem prejudicar a <strong>navegabilidade</strong> do usuário e manter uma <strong>boa experiência</strong> com sua página.</p>\r\n<p style=\"text-align: center;\"><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518635221.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /> </p>\r\n<h3>Fluxo</h3>\r\n<p>Quando se trabalha com unidades fixas de medida como o pixel, era comum acontecer o problema da página não seguir o fluxo do conteúdo. Hoje em dia, como a gente vem trabalhando com o <strong>display flex</strong> não temos mais esse tipo de problema, afinal agora os conteúdos são flexíveis e temos uma boa mobilidade para dispor os elementos e alinhar de acordo com a nossa necessidade.</p>\r\n<p>Um problema clássico que tinhamos, era em um menu por exemplo! Para preencher a altura completa, era necessário ficar testando pixel a pixel, os paddings para encaixar delicadamente cada item de lista. E quando redimencionava a tela, tinha que ficar batendo ponto a ponto! Era bastante trabalhoso e raramente ficava certo :(</p>\r\n<p>Pra ajudar ainda, ficava top no Chrome por exemplo, e quando abria no Firefox acabava sobrando ou faltando um pixel!</p>\r\n<p><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518635511.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /></p>\r\n<h3>Unidade de Medidas Relativas x Fixas</h3>\r\n<p>Um dos vícios herdados da mídia gráfica é a medida em pixel! Maaas, como estamos na Web, tudo aqui deve ser <strong>fluído</strong>, e o ideal é usar medidas que sejam relativas ao dispositivo. No geral, faremos o uso de porcentagens ou \"em\".</p>\r\n<p>Não preciso entrar no mérito de porcentagem, né? Temos 100% para trabalhar e tudo o que você for colocar dentro não pode ultrapassar o limite.</p>\r\n<p>Já a medida \"em\" é relativa ao dispositivo, que no geral configura a mesma coisa que 16px. Portanto 1em == 16px, 1.2em == 19,2px...</p>\r\n<p>Para saber quantos \"em\" são 30px, basta fazer 30 / 16 = 1.875em.</p>\r\n<p>Para largura dos seus componentes, eu recomendo que você trabalhe com as larguras em porcentagem :)</p>\r\n<p><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518635538.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /></p>\r\n<h3>Breakpoints</h3>\r\n<p>Os pontos de interrupções são simples de implementar e auxiliam muito! O que mais se vê é a criação de breakpoints de acordo com os dispositivos. Então se você precisa de uma disposição diferente para tablet em portrait ou landscape, ou num android com a menor tela ou ainda num iMac com tela retina de 27 polegadas. O ideal é você definir essas propriedades dentro do seu css e atacar cada resolução.</p>\r\n<p>Não que isso seja regra, afinal você pode ter quantos breakpoints julgar necessário, mas quanto menos você tiver, mais fácil será a manutenção.</p>\r\n<p> <img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518635565.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /></p>\r\n<h3>Valores Máximos e Mínimos</h3>\r\n<p>Para quem tem acompanhado o curso de <a href=\"https://www.upinside.com.br/cursos/html5-e-css3-essentials\" target=\"_blank\">HTML5 e CSS3 Essentials</a> já sabem como funciona! Aqui a grande sacada é passar o <strong>max-width</strong>, ao invés do width diretamente.</p>\r\n<p>Com isso temos uma medida máxima que o conteúdo pode ocupar dentro do palco, mas nas medidas menores ele se posicionará de acordo com a resolução. Portanto, eu posso colocar como max-width um valor alto como 1300px, mas numa resolução de 768px (no caso de tablet e ipad) o conteúdo se ajustará ocupando 100% já que não foi definido anteriormente...</p>\r\n<p>... E como setamos um valor máximo, quando chegar nesse valor o site para de esticar e os backgrounds dão uma sensação de continuidade :)</p>\r\n<p><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518635585.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /></p>\r\n<h3>Objetos Aninhados</h3>\r\n<p>Nesse caso o artigo gringo diz sobre posição relativa. Nesse caso faz um maior sentido você usar unidades de medidas em pixels, tendo em vista que geralmente são elementos que você não quer que sejam redimencionados ou ainda que leve em consideração um contexto.</p>\r\n<p>Falando de maneira genérica, hoje em dia é raro os casos que você precisa trabalhar com posição relativa e o agrupamento de elementos se dá somente em casos específicos! No meu ponto de vista esse é o princípio menos relevante de todo esse artigo...</p>\r\n<p>... mas podemos interpretar que o artigo foi infeliz ao escolher o exemplo! Se você for analisar como controlamos os nossos container\'s, você verá que temos um <strong>agrupamento de componentes</strong>, e cada um com um comportamento exclusivo e ao mesmo tempo relativo ao seu agrupador.</p>\r\n<p><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518638713.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /></p>\r\n<h3>Mobile ou Desktop First</h3>\r\n<p>São duas técnicas de desenvolvimento! Você pode escolher começar pela menor resolução possível e ir aumentando e redimencionando o conteúdo ou ainda fazer o caminho contrário. Não há uma resposta assertiva para qual é a melhor.</p>\r\n<p>Essa questão pode variar de projeto para projeto, de desenvolvedor para desenvolvedor ou ainda de ambos. O ideal é criar um projeto com uma técnica e outro projeto utilizando outra e ver qual você se adapta melhor!</p>\r\n<p>O resultado de ambas as técnicas podem/devem ser os mesmos.</p>\r\n<p><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518638725.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /></p>\r\n<h3>Fontes da Web ou do Sistema</h3>\r\n<p>Isso já foi um assunto muito discutido no passado. Quando a internet era mais lenta e os recursos mais precários! Hoje em dia quase todos já trabalham com uma internet bacana e possuem um 4G no celular... É claro, sabemos que dependendo da região você pode ter uma <strong>limitação</strong>, mas nada que seja relevante para esse termo.</p>\r\n<p>Se você ainda não se localizou nesse termo, basicamente é você fazer o uso da fonte Arial (que vem instalado em quase todos os dispositivos) ou trabalhar com a fonte Ubuntu que você tem que fazer referência do <strong>Google Fonts</strong> por exemplo.</p>\r\n<p>O load para carregar uma fonte hoje é mísero, e como vários sistemas utilizam essas fontes o dispositivo acaba até armazenando isso no cache... Portanto, pode usar sem medo! <strong>Mas não abuse :)</strong></p>\r\n<p><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518638736.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /></p>\r\n<h3>Imagens Bitmap x Vetores</h3>\r\n<p>É claro que as imagens de seus artigos não precisam/devem ser vetores, mas o que for essencial para o seu layout como ícones, logos, figuras geométricas você pode trabalhar com vetor para evitar que quando seja redimencionado você perca qualidade e sua página fique pixelada.</p>\r\n<p>Portanto, sempre que possível utilize o vetor para ilustrar a página e o seu conteúdo você alimenta com imagens... Basicamente é o seguinte:</p>\r\n<p>Vetor você vai usar para o ícone de Home para ir até a página inicial, no ícone de refresh da página para recarregar, no ícone que ilustra os serviços que você presta, e use o SVG para isso...</p>\r\n<p>Imagem bitmap opte por trabalhar com PNG ou JPG para colocar a foto em um artigo ou a miniatura de um usuário do seu sistema.</p>\r\n<p><img style=\"padding: 40px 0; background-color: #fff;\" title=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" src=\"https://www.upinside.com.br/uploads/images/2018/02/328-1518638746.gif\" alt=\"Os Princípios do Design Responsivo para criar sites que se ajustam a qualquer dispositivo\" /> </p>\r\n<p>Os pontos abordados aqui são importantes e essenciais quando você está codando sua página. E lembre-se que quanto mais você aprimora seus conhecimentos e aplica isso no campo de batalha, mais fácil vai ficando o desenvolvimento! É um processo evolutivo muito bacana :)</p>\r\n<p>Comenta aqui abaixo o que você achou desse artigo e se ficou alguma dúvida ou um ponto a acrescentar :) Vamos conversar mais sobre isso e eu vou responder cada comentário!</p>', 'images/2018/10/os-principios-do-design-responsivo-para-criar-sites-que-se-ajustam-a-qualquer-dispositivo-1518701351.png', NULL, 0, 'post', '2018-02-15 14:30:00', '2018-10-23 13:41:58', '2018-11-01 19:34:08', NULL),
(30, 1, 1, 'A JORNADA DO ALUNO e como garantir o sucesso do seu infoproduto | mentor #13', 'a-jornada-do-aluno-e-como-garantir-o-sucesso-do-seu-infoproduto', 'Os 3 passos para planejar a jornada do aluno e garantir um infoproduto de sucesso que atende as necessidades e desejos do seu cliente ideal', '<p>Você já se perguntou se seu infoproduto tem o conteúdo correto para entregar o que os clientes querem e precisam? Já parou pra analisar o quão importante é focar na entrega?</p>\r\n<p>No mercado de infoprodutos de hoje temos um cenário que chega a ser preocupante uma vez que os processos de venda são muito bem trabalhados. Do lado de fora tudo é lindo, altar produções, copys altamente persuasivas e bônus e garantias de tirar o fôlego…</p>\r\n<p>...mas quantas vezes você já comprou um produto digital e ao ter acesso não se identificou com a promessa e sentiu ter comprado algo muito diferente?</p>\r\n<p>Basicamente este é um dos erros que muitos empreendedores neste mercado cometem, e um erro grave que tira muitos produtos do mercado.</p>\r\n<h3>A Jornada do aluno:</h3>\r\n<p>Por isso planejar a jornada do aluno é tão importante quanto planejar sua oferta, mais importante ainda do que vender seu produto.</p>\r\n<p>Você precisa criar uma jornada que seu cliente ideal entenda como entrega superior, algo que realmente mostre a ele um passo a passo e que ao final do curso ele sinta que você entregou muito mais do que prometeu!</p>\r\n<p>Esse é o motivo pelo qual VOCÊ escolhe suas marcas, restaurantes, e qualquer produto e serviço. Qualidade, entrega e transformação fazem com que você indique, compre novamente, e muitas vezes levante a bandeira positivamente com relação aquele produto/serviço/marca.</p>\r\n<h3>OS 3 passos da Jornada do Aluno:</h3>\r\n<p>E o interessante aqui é que quando se trata de um infoproduto, você pode revisitar seu passado (expert) e entender o que precisa colocar nessa jornada para entregar tudo aquilo que o cliente ideal quer e precisa para obter a transformação.</p>\r\n<p>E com apenas 3 passos você conseguirá ter uma jornada milimetricamente projetada para se posicionar e ser reconhecido como um agente de mudança na vida de seus alunos. E é assim que o jogo vira!</p>\r\n<h4>Transformação:</h4>\r\n<p>O primeiro ponto é entender em seu produto qual é a transformação que ele promete entregar. É emagrecer? Se relacionar melhor? Ganhar mais dinheiro? O que você está prometendo como transformação é a base da jornada.</p>\r\n<p>Como isso em seu radar você precisa planejar o plano passo a passo sem dores que seu cliente ideal deve seguir para obter a transformação.</p>\r\n<p>Com isso temos:</p>\r\n<h4>Etapas do produto:</h4>\r\n<p>São as habilidades que o aluno deve aprender durante a jornada para obter a transformação.</p>\r\n<h4>Etapas de valor:</h4>\r\n<p>São  etapas do produto e da jornada que representam retorno de investimento. É onde seu aluno vai obter e perceber a maior transformação.</p>\r\n<p>Coloque essas etapas em uma jornada passo a passo seguindo o conceito de bandeira verde e garanta que seus alunos vão obter a transformação ao final desta jornada.</p>\r\n<p>Com esse planejamento pronto, você ter uma visão aprimorada sobre tudo que deve colocar no seu infoproduto para garantir o sucesso de vendas, assim como garantir o sucesso do aluno. Inclusive terá insights precisos sobre conteúdos de valor (gratuitos) que você pode criar para atrair mais clientes para seu negócio.</p>', 'images/2018/10/a-jornada-do-aluno-e-como-garantir-o-sucesso-do-seu-infoproduto-1517918955.jpg', NULL, 0, 'post', '2018-02-06 13:08:00', '2018-10-23 13:41:58', '2018-10-24 14:53:27', NULL),
(31, 1, 3, 'Executando Tarefas automáticas com o recurso CRON', 'executando-tarefas-automaticas-com-o-recurso-cron', 'Agende a periodicidade e o comando que deve ser executado e deixa responsabilidade de execução com o servidor', '<p>Salve salve WebMaster!</p>\r\n<p>Atendendo mais um pedido e o assunto da vez é CRON. Se você ainda não sabe do que se trata, basicamente CRON (cronjob, crontab, crontask... é tudo a mesma coisa) é um recurso que vem praticamente que nativo no sistema operacional Unix.</p>\r\n<p>Para o funcionamento, basta você informar a periodicidade que deseja que a rotina seja invocada e também o comando que deve ser feito.</p>\r\n<p>Para criar um exercício para essa aula e também para fortalecer ainda mais o nosso elo com os nossos alunos, decidir colocar o recurso de e-mail automático de aniversário. Sem mais delongas, vamos ao tópicos!</p>\r\n<h3>Material de Apoio:</h3>\r\n<p>Esse tópico vai ficar vazio hoje! Sem link para documentação ou ainda para repositórios do github.</p>\r\n<p>Isso porque não precisamos de absolutamente nada, os únicos recursos que utilizamos nesse caso é a linguagem de programação e o recurso de CRON que o cPanel nos entrega uma interface gráfica bastante simples para gerenciar esse tipo de atividade.</p>\r\n<p>Além do painel te ajudar, o assistente ainda lhe auxilia na criação do agendamento! Melhor que isso, só dois disso.</p>\r\n<h3>Premissas:</h3>\r\n<p>Basicamente para que você tenha uma CRON de sucesso rodando, você não pode ter nenhuma interação \"humana\", e com isso quero dizer que, não pode ser informado nenhum parâmetro, não pode ser parametrizado nada, não pode depender de um clique num botão... Enfim! Tem que ser tudo automatico de fato.</p>\r\n<p>Outro ponto é que você não pode/deve depender de uma saída HTML para saber se a CRON foi executada com sucesso. Portanto, depois que o script for executado você deve ter simplesmente um documento em branco sendo exebido sem nenhum tipo de mensagem. (Seja um echo teste ou até mesmo um var_dump ou warning do php).</p>\r\n<p>Caso você tenha algum tipo de saída, você será notificado por e-mail! Isso se não me falha memória, isso é um recurso relativamente novo que o cPanel deve ter liberado nas últimas versões... Porque na minha época (aqui é raiz) a gente só ia descobrir que a cron estava com problema um mês depois!</p>\r\n<p>E por fim a periodicidade que não para nunca. Então depois de parametrizado os minutos, horas, dias... Ela será executada sempre até que você remova a atividade.</p>\r\n<h3>Fique esperto:</h3>\r\n<p>Há um ponto que você deve estar sempre de olho!</p>\r\n<p>O primeiro e mais importante é o caminho dessa atividade. Se esse caminho for de conhecimento de outras pessoas, podem usar para bagunçar seu banco, gerar transtorno ou ainda incomodar sua audiência. Por exemplo, na aula você viu que basta chamar o arquivo e a tarefa é executada.</p>\r\n<p>Imagina que algum malicioso pega esse caminho e decide atualizar a página várias vezes? Os alunos acabariam recebendo diversos e-mails repetidos.</p>\r\n<p>O ideal é que você tenha uma camada de segurança protegendo essas CRONS! Seja a mudança de diretórios frequentemente, ou um registro no banco de dados para evitar reprocessamento da atividade ou o melhor de tudo, os dois juntos!</p>\r\n<h3>Feedback:</h3>\r\n<p>Como sempre, seu comentário será muito bem vindo logo aqui abaixo! Me conta o que você achou dessa aula! O que está achando do UpInside Play? O conteúdo da aula foi legal?</p>', 'images/2018/10/executando-tarefas-automaticas-com-o-recurso-cron-1517876194.png', NULL, 3, 'post', '2018-02-06 01:13:00', '2018-10-23 13:41:58', '2019-02-02 13:02:27', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `details` text NOT NULL,
  `description` text NOT NULL,
  `size` varchar(255) NOT NULL,
  `old_price` float DEFAULT NULL,
  `price` float UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `title`, `uri`, `image`, `category`, `details`, `description`, `size`, `old_price`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '100 ADESIVO REDONDO 3X3', '100-adesivo-redondo-3x3', '/2022/04/produto01.jpg', 1, 'ADESIVO REDONDO 100 unidades - 30x30mm em Adesivo Couché Brilho 80g - 4x0 Produção 3 dias úteis', '', '4x0', NULL, 42.99, 100, '2022-04-18 15:44:15', '2022-04-22 21:08:54'),
(2, '300 ADESIVO REDONDO 3X3', '300-adesivo-redondo-3x3', '/2022/04/produto01.jpg', 1, 'ADESIVO REDONDO 100 unidades - 30x30mm em Adesivo Couché Brilho 80g - 4x0 Produção 3 dias úteis', '', '4x0', NULL, 20, 100, '2022-04-18 15:44:15', '2022-04-19 11:16:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products_images`
--

CREATE TABLE `products_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `title`, `image`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'Principal', '/', 1, '2022-04-19 10:50:07', '2022-04-19 10:50:07'),
(2, 1, 'Principal', '/', 2, '2022-04-19 10:50:07', '2022-04-19 10:50:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_access`
--

CREATE TABLE `report_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `users` int(11) NOT NULL DEFAULT 1,
  `views` int(11) NOT NULL DEFAULT 1,
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `report_access`
--

INSERT INTO `report_access` (`id`, `users`, `views`, `pages`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 193, '2019-02-11 18:12:15', '2019-02-11 20:57:55'),
(2, 1, 1, 32, '2019-02-14 16:37:35', '2019-02-14 16:39:23'),
(3, 1, 1, 499, '2022-04-16 01:09:41', '2022-04-16 02:54:50'),
(4, 4, 5, 1620, '2022-04-16 03:04:30', '2022-04-17 02:59:20'),
(5, 1, 1, 246, '2022-04-18 17:21:20', '2022-04-18 18:55:24'),
(6, 1, 21, 1008, '2022-04-19 13:46:40', '2022-04-19 18:38:45'),
(7, 2, 8, 235, '2022-04-21 21:41:58', '2022-04-21 22:23:46'),
(8, 1, 21, 1836, '2022-04-22 13:28:09', '2022-04-23 01:53:29'),
(9, 1, 7, 1590, '2022-04-23 12:33:19', '2022-04-23 16:31:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_online`
--

CREATE TABLE `report_online` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `report_online`
--

INSERT INTO `report_online` (`id`, `user`, `ip`, `url`, `agent`, `pages`, `created_at`, `updated_at`) VALUES
(75, NULL, '::1', '/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 353, '2022-04-23 15:51:24', '2022-04-23 16:31:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT 1,
  `forget` varchar(255) DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `datebirth` date DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'registered' COMMENT 'registered, confirmed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `level`, `forget`, `genre`, `datebirth`, `document`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Robson', 'Leite', 'robsonvleite@email.com.br', '$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm', 1, NULL, NULL, NULL, NULL, 'images/2018/10/robsonvleite.jpg', 'confirmed', '2018-09-03 19:39:07', '2018-11-13 18:11:45'),
(2, 'Alexandre', 'Santos', 'alexandre27@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(3, 'Willian', 'Santos', 'willian28@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(4, 'Eleno', 'Santos', 'eleno29@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(5, 'Lucas', 'Santos', 'lucas30@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(6, 'Mateus', 'Santos', 'mateus31@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(7, 'João', 'Santos', 'joão32@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(8, 'Felipe', 'Santos', 'felipe33@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(9, 'Anderson', 'Santos', 'anderson34@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(10, 'Elton', 'Santos', 'elton35@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(11, 'Leonardo', 'Santos', 'leonardo36@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(12, 'Regilton', 'Santos', 'regilton37@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(13, 'Sidney', 'Santos', 'sidney38@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(14, 'Lourival', 'Santos', 'lourival39@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(15, 'Henrique', 'Santos', 'henrique40@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(16, 'Daniel', 'Santos', 'daniel41@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(17, 'Pedro', 'Santos', 'pedro42@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(18, 'Andre Roberto', 'Santos', 'andre roberto43@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(19, 'Ozeias', 'Santos', 'ozeias44@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(20, 'Arnobio', 'Santos', 'arnobio45@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(21, 'Roniel', 'Santos', 'roniel46@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(22, 'Caíque', 'Santos', 'caíque47@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(23, 'Lucas', 'Santos', 'lucas48@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(24, 'Francisco', 'Santos', 'francisco49@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(25, 'Cristian', 'Santos', 'cristian50@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(26, 'Eduardo', 'Santos', 'eduardo51@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(27, 'Rodrigo', 'Santos', 'rodrigo52@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(28, 'Raphael', 'Santos', 'raphael53@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(29, 'Jose', 'Santos', 'jose54@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(30, 'Rodrigo', 'Santos', 'rodrigo55@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(31, 'Diego', 'Santos', 'diego56@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(32, 'Alexandre', 'Santos', 'alexandre57@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(33, 'Edimar', 'Santos', 'edimar58@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(34, 'Jackell', 'Santos', 'jackell59@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(35, 'Luis', 'Santos', 'luis60@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(36, 'Lucas', 'Santos', 'lucas61@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(37, 'Wander', 'Santos', 'wander62@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(38, 'Tairo', 'Santos', 'tairo63@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(39, 'Rubens', 'Santos', 'rubens64@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(40, 'Hugo', 'Santos', 'hugo65@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(41, 'Gustavo', 'Santos', 'gustavo66@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(42, 'Paulo', 'Santos', 'paulo67@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(43, 'Rodrigo', 'Santos', 'rodrigo68@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(44, 'Denio', 'Santos', 'denio69@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(45, 'Idalmir', 'Santos', 'idalmir70@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(46, 'Ataide', 'Santos', 'ataide71@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(47, 'Luiz', 'Santos', 'luiz72@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(48, 'Luciano', 'Santos', 'luciano73@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(49, 'Adir', 'Santos', 'adir74@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(50, 'Tainan', 'Santos', 'tainan75@email.com.br', '', 1, NULL, NULL, NULL, NULL, NULL, 'registered', '2018-09-03 19:39:07', '2018-10-24 14:26:46'),
(51, 'Robson', 'Leite', 'robsonvleite@gmail.com', '$2y$10$JLLVjIopZa/bGWMaspZoVe.KohHW8WViZtV02F2FWQiTa4GeV3Gra', 5, NULL, 'male', '1986-07-01', '00953074943', 'images/2019/02/robson-leite.jpg', 'confirmed', '2018-12-05 15:42:10', '2019-02-14 16:39:21');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addr_user` (`user_id`);

--
-- Índices para tabela `app_categories`
--
ALTER TABLE `app_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_of` (`sub_of`);

--
-- Índices para tabela `app_credit_cards`
--
ALTER TABLE `app_credit_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_cards_user` (`user_id`);

--
-- Índices para tabela `app_invoices`
--
ALTER TABLE `app_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_user` (`user_id`),
  ADD KEY `app_wallet` (`wallet_id`),
  ADD KEY `app_category` (`category_id`),
  ADD KEY `app_invoice` (`invoice_of`);

--
-- Índices para tabela `app_orders`
--
ALTER TABLE `app_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user` (`user_id`),
  ADD KEY `orders_credit_card` (`card_id`),
  ADD KEY `orders_subscription` (`subscription_id`);

--
-- Índices para tabela `app_plans`
--
ALTER TABLE `app_plans`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `app_subscriptions`
--
ALTER TABLE `app_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_user` (`user_id`),
  ADD KEY `subscription_card` (`card_id`),
  ADD KEY `subscription_plan` (`plan_id`);

--
-- Índices para tabela `app_wallets`
--
ALTER TABLE `app_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_user` (`user_id`);

--
-- Índices para tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faq_channels`
--
ALTER TABLE `faq_channels`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Índices para tabela `mail_queue`
--
ALTER TABLE `mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category`),
  ADD KEY `user_id` (`author`);
ALTER TABLE `posts` ADD FULLTEXT KEY `full_text` (`title`,`subtitle`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`uri`),
  ADD KEY `category` (`category`);

--
-- Índices para tabela `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product_id`);

--
-- Índices para tabela `report_access`
--
ALTER TABLE `report_access`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `report_online`
--
ALTER TABLE `report_online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `users` ADD FULLTEXT KEY `full_text` (`first_name`,`last_name`,`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `app_categories`
--
ALTER TABLE `app_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `app_credit_cards`
--
ALTER TABLE `app_credit_cards`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `app_invoices`
--
ALTER TABLE `app_invoices`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `app_orders`
--
ALTER TABLE `app_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `app_plans`
--
ALTER TABLE `app_plans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `app_subscriptions`
--
ALTER TABLE `app_subscriptions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `app_wallets`
--
ALTER TABLE `app_wallets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `faq_channels`
--
ALTER TABLE `faq_channels`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mail_queue`
--
ALTER TABLE `mail_queue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `report_access`
--
ALTER TABLE `report_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `report_online`
--
ALTER TABLE `report_online`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `app_categories`
--
ALTER TABLE `app_categories`
  ADD CONSTRAINT `sub_of` FOREIGN KEY (`sub_of`) REFERENCES `app_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `app_credit_cards`
--
ALTER TABLE `app_credit_cards`
  ADD CONSTRAINT `credit_cards_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `app_invoices`
--
ALTER TABLE `app_invoices`
  ADD CONSTRAINT `app_category` FOREIGN KEY (`category_id`) REFERENCES `app_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `app_invoice` FOREIGN KEY (`invoice_of`) REFERENCES `app_invoices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `app_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `app_wallet` FOREIGN KEY (`wallet_id`) REFERENCES `app_wallets` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `app_orders`
--
ALTER TABLE `app_orders`
  ADD CONSTRAINT `orders_credit_card` FOREIGN KEY (`card_id`) REFERENCES `app_credit_cards` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_subscription` FOREIGN KEY (`subscription_id`) REFERENCES `app_subscriptions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `app_subscriptions`
--
ALTER TABLE `app_subscriptions`
  ADD CONSTRAINT `subscription_card` FOREIGN KEY (`card_id`) REFERENCES `app_credit_cards` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscription_plan` FOREIGN KEY (`plan_id`) REFERENCES `app_plans` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `subscription_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `app_wallets`
--
ALTER TABLE `app_wallets`
  ADD CONSTRAINT `wallet_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD CONSTRAINT `channel_id` FOREIGN KEY (`channel_id`) REFERENCES `faq_channels` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `products_images`
--
ALTER TABLE `products_images`
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
