-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2020 às 02:35
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
-- Banco de dados: `db_geolocalizao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estatistica`
--

CREATE TABLE `estatistica` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estatistica`
--

INSERT INTO `estatistica` (`id`, `nome`, `sexo`) VALUES
(1, 'Maria', 'FEMININO'),
(2, 'Raimunda', 'FEMININO'),
(3, 'Nonata', 'FEMININO'),
(4, 'Alfredo', 'MASCULINO'),
(5, 'Jão ', 'MASCULINO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizar`
--

CREATE TABLE `localizar` (
  `id` int(11) NOT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lng` varchar(45) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `localizar`
--

INSERT INTO `localizar` (`id`, `cep`, `endereco`, `bairro`, `cidade`, `estado`, `lat`, `lng`, `foto`, `pin`) VALUES
(10, '65054540', 'Rua Quatro', 'Cohatrac III', 'São Luís', 'MA', '-2.5383226', '-44.2007737', '01.jpg', 'pin1.png'),
(11, '65050-640', 'Praça Desembargador Vieira de Sousa', 'COHAB Anil III', 'São Luís', 'MA', '-2.5401324', '-44.2244987', '02.jpg', 'pin2.png'),
(12, '65054-420', 'Rua Dez', 'Cohatrac IV', 'São Luís', 'MA', '-2.5366092', '-44.2067498', '04.png', 'pin3.png'),
(13, '65050-860', 'Rua C', 'Planalto Anil II', 'São Luís', 'MA', '-2.5364607', '-44.2146829', '06.jpg', 'pin4.png'),
(14, '65050-881', 'Rua L', 'Planalto Anil III', 'São Luís', 'MA', '-2.5435853', '-44.2118985', '05.png', 'pin5.png'),
(15, '65054700', 'Rua Treze', 'Cohatrac III', 'São Luís', 'MA', '-2.5375012', '-44.1971416', '07.png', 'pin6.png'),
(16, '65050-891', 'Travessa N', 'Planalto Anil III', 'São Luís', 'MA', '-2.544044', '-44.21267', '08.jpg', 'pin7.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `estatistica`
--
ALTER TABLE `estatistica`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `localizar`
--
ALTER TABLE `localizar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estatistica`
--
ALTER TABLE `estatistica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `localizar`
--
ALTER TABLE `localizar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
