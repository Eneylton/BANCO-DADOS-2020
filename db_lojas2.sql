-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2020 às 02:38
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
-- Banco de dados: `db_lojas2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(50) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `hist` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`id`, `nome`, `email`, `tel`, `whatsapp`, `facebook`, `hist`, `website`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `foto`, `data`, `usuario_id`) VALUES
(30, 'ENE LANCHES 🍔 🍔 🍔 ', 'Eneylton@hotmail.com ', '991581962 ', '991581962 ', 'Facebook ', '@eneyltonbarros ', 'Xxxx', 'Rua Três', '13', 'Cohatrac IV', 'São Luís', 'MA', '65054530', 'Imagens/img_foto2020-04-15_21_11_38.jpg', NULL, 1),
(31, 'Lívia Bolsas', 'Lívia@hotmail.com ', '98989998', '8787787', NULL, '@l7viajansen', 'Wwwww', 'Rua Quatro', '78', 'Cohatrac III', 'São Luís', 'MA', '65054540', 'Imagens/img_foto2020-04-15_21_20_56.jpg', NULL, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `money` varchar(50) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `loja_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `website`, `money`, `quantidade`, `descricao`, `foto`, `data`, `loja_id`) VALUES
(32, 'HAMBÚRGUER 🍔 🍔 ⭐ ⭐ ', 'Xxxx', '89', 8, 'Bolsa ⭐⭐⭐⭐', 'Imagens/img_foto2020-04-15_21_18_37.jpg', '2020-04-16 00:00:40', 30),
(33, 'Hambúrguer 🍔 🍔 ⭐ ⭐ ⭐ ', 'Xxxx', '677', 7, 'Teste', 'Imagens/img_foto2020-04-15_21_12_27.jpg', '2020-04-16 00:12:27', 30),
(34, 'Super lanches 🌟🌟🌟🌟', 'Xxx', '56', 7, 'Teste', 'Imagens/img_foto2020-04-15_21_13_35.jpg', '2020-04-16 00:13:35', 30),
(35, 'Hot dog ❤️❤️❤️❤️', 'Xxx', '78', 56, 'Teste', 'Imagens/img_foto2020-04-15_21_14_16.jpg', '2020-04-16 00:14:16', 30),
(36, 'Bolsa vermelha', 'Xxx', '56', 6, 'Teste', 'Imagens/img_foto2020-04-15_21_21_26.jpg', '2020-04-16 00:21:26', 31),
(37, 'Bolsa azul', 'Xxx', '67', 6, 'Teste', 'Imagens/img_foto2020-04-15_21_21_56.jpg', '2020-04-16 00:21:56', 31),
(38, 'Bolsa corre de roda', 'Xxx', '56', 6, 'Teste', 'Imagens/img_foto2020-04-15_21_22_29.jpg', '2020-04-16 00:22:29', 31),
(39, 'Bolsa de alça rosa', 'Xxx', '56', 4, 'Teste', 'Imagens/img_foto2020-04-15_21_22_58.jpg', '2020-04-16 00:22:58', 31),
(40, 'Bolsa bonita', 'Xxx', '56', 6, 'Teste', 'Imagens/img_foto2020-04-15_21_23_25.jpg', '2020-04-16 00:23:25', 31),
(41, 'Gaspar', 'Www.com.br', '56', 5, 'Teste', 'Imagens/img_foto2020-04-15_23_33_25.jpg', '2020-04-16 02:33:25', 31),
(42, 'Isabelly', 'Www.isabele', '1.258,36', 5, 'Teste', 'Imagens/img_foto2020-04-16_20_27_42.jpg', '2020-04-16 02:35:30', 31),
(43, 'Lanches 👍👍👍✌️', 'Wwwwwww', '', 7, 'Teste', 'Imagens/img_foto2020-04-16_19_47_15.jpg', '2020-04-16 02:38:44', 30),
(44, 'Tex', 'Tex', '125', 2, 'Texteg', 'Imagens/img_foto2020-04-16_19_56_17.jpg', '2020-04-16 22:55:10', 30),
(45, 'Socorro', 'Tedte', '1.234,56', 2, 'Teste', 'Imagens/img_foto2020-04-16_20_12_10.jpg', '2020-04-16 23:12:10', 31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `avatar` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `avatar`, `tipo`, `login`, `senha`) VALUES
(1, 'Eneylton Barros', 'eneylton@gmail.com', '../../assets/imgs/02.png', 'Cliente', 'ene', '202cb962ac59075b964b07152d234b70'),
(8, 'Livia Jansen', 'livia@gmail.com', '../../assets/imgs/01.png', 'Cliente', 'Livia', '202cb962ac59075b964b07152d234b70'),
(15, 'Elias', 'eliasbarrospai2017@gmail.com', '../../assets/imgs/05.png', 'Loja', 'Elias', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loja_usuario_idx` (`usuario_id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produto_loja1_idx` (`loja_id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `loja`
--
ALTER TABLE `loja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `fk_loja_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_loja1` FOREIGN KEY (`loja_id`) REFERENCES `loja` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
