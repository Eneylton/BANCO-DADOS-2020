-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2020 às 02:31
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_delivry`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojista`
--

CREATE TABLE `lojista` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `money` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lojista`
--

INSERT INTO `lojista` (`id`, `nome`, `email`, `telefone`, `categoria`, `money`) VALUES
(23, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', 'Nes', '1.234,56'),
(24, 'Elias Barros', 'eliasbarrospai2017@gmail.com', '98991581962', 'Nes', '1.232,22'),
(25, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', 'Nes', '1.234,55'),
(26, 'Elias Barros', 'eliasbarrospai2017@gmail.com', '98991581962', 'Nintendo64', '2.333,33'),
(27, 'Maria do socorro', 'mariadosocorro@hotmail.com', '98991581962', 'Nintendo64', '3.423,32'),
(28, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', 'Nes', '7.645,67'),
(29, 'Dinamarca', 'eneylton@hotmail.com', '98991581962', 'Nintendo64', '989,88'),
(30, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', 'Nes', '90,99'),
(31, 'Carlos', 'carlos@hotmail.com', '98991581962', 'Nintendo64', '34,44'),
(32, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', 'Nes', ',99'),
(33, 'Bravos', 'eneylton@hotmail.com', '908888888', 'Nes', '33,33'),
(34, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', '', ''),
(35, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', '', ''),
(36, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', '', ''),
(37, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', '', ''),
(38, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', 'Nes', '55,55'),
(39, 'Carol Santos', 'eneyltonservicos@hotmail.com', '98991581962', 'Nes', '989,98'),
(40, 'Eneylton Barros', 'eneylton@hotmail.com', '98991581962', 'Nes', '9.098,88'),
(41, 'Maria do Socoro Campos Barros', 'eneyltonservicos@gmail.com', '98991581962', 'Nes', '34,43'),
(42, 'Evanildo de Jesus Campos Barros ', 'evanildobarros@gmail.com', '98737877787', 'Nintendo64', '878,88'),
(43, 'Mariana', 'eneylton@hotmail.com ', '88979', 'Nintendo64', '9.898,88');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `lojista`
--
ALTER TABLE `lojista`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lojista`
--
ALTER TABLE `lojista`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
