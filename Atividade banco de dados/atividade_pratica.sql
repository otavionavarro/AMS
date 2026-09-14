-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/09/2026 às 21:27
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
-- Banco de dados: `atividade_pratica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_de_clientes`
--

CREATE TABLE `tabela_de_clientes` (
  `codigo_cliente` int(200) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `E-mail` varchar(150) NOT NULL,
  `Telefone` varchar(175) NOT NULL,
  `Data de nascimento` date NOT NULL,
  `Endereço` varchar(100) NOT NULL,
  `Cidade` varchar(75) NOT NULL,
  `Estado` text NOT NULL,
  `Data de cadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_de_estoques`
--

CREATE TABLE `tabela_de_estoques` (
  `codigo_estoques` int(200) NOT NULL,
  `codigo_produto` int(120) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `localização` varchar(150) NOT NULL,
  `ultima_atualização` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_de_produtos`
--

CREATE TABLE `tabela_de_produtos` (
  `codigo_produto` int(200) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `Descrição` text NOT NULL,
  `Preço Unitário` decimal(10,0) NOT NULL,
  `Categoria` varchar(230) NOT NULL,
  `Marca` text NOT NULL,
  `Data Fabricação` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tabela_de_clientes`
--
ALTER TABLE `tabela_de_clientes`
  ADD PRIMARY KEY (`codigo_cliente`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `E-mail` (`E-mail`),
  ADD UNIQUE KEY `Telefone` (`Telefone`,`Data de nascimento`);

--
-- Índices de tabela `tabela_de_estoques`
--
ALTER TABLE `tabela_de_estoques`
  ADD UNIQUE KEY `codigo_estoques` (`codigo_estoques`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
