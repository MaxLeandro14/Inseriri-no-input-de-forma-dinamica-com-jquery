-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2019 às 16:38
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `id_ite` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `id_sub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`id_ite`, `nome`, `id_sub`) VALUES
(1, 'Sao Cristovao', 10),
(2, 'Cidade Operaria', 10),
(3, 'Vinhais', 10),
(4, 'Duque de Caxias bairro 1', 1),
(5, 'Duque de Caxias bairro 2', 1),
(6, 'Duque de Caxias bairro 3', 1),
(7, 'Nova Iguacu bairro 1', 2),
(8, 'Nova Iguacu bairro 2', 2),
(9, 'Niteroi bairro 1', 3),
(10, 'Salvador Bairro 1', 4),
(11, 'Bairro Imperatriz 07', 7),
(12, 'Bairro Imperatriz 05', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `id_cat` int(10) UNSIGNED NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`id_cat`, `nome`) VALUES
(1, 'Maranhao'),
(2, 'Sao Paulo'),
(3, 'Bahia'),
(4, 'Ceara'),
(5, 'Mato Grosso'),
(6, 'Rio de Janeiro'),
(7, 'Tocantins');

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipio`
--

CREATE TABLE `municipio` (
  `id_sub` int(10) UNSIGNED NOT NULL,
  `nome` varchar(200) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `municipio`
--

INSERT INTO `municipio` (`id_sub`, `nome`, `id_cat`) VALUES
(1, 'Duque de Caxias', 6),
(2, 'Nova Iguacu', 6),
(3, 'Niteroi', 6),
(4, 'Salvador', 3),
(5, 'Feira de Santana', 3),
(6, 'Vitoria da Conquista', 3),
(7, 'Imperatriz', 1),
(8, 'Timon', 1),
(9, 'Guarulhos', 2),
(10, 'Sao Luis', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `praca`
--

CREATE TABLE `praca` (
  `id_sit` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `id_ite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `praca`
--

INSERT INTO `praca` (`id_sit`, `nome`, `id_ite`) VALUES
(1, 'Praca 1 Sao Cristovao', 1),
(2, 'Praca 2 Sao Cristovao', 1),
(3, 'Praca 1 Cidade Operaria', 2),
(7, 'Praca Imperatriz 07', 11);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`id_ite`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices para tabela `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_sub`);

--
-- Índices para tabela `praca`
--
ALTER TABLE `praca`
  ADD PRIMARY KEY (`id_sit`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairro`
--
ALTER TABLE `bairro`
  MODIFY `id_ite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `id_cat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_sub` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `praca`
--
ALTER TABLE `praca`
  MODIFY `id_sit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
