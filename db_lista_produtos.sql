-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2020 às 02:36
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
-- Banco de dados: `db_lista_produtos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_produto`
--

CREATE TABLE `categoria_produto` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria_produto`
--

INSERT INTO `categoria_produto` (`id`, `descricao`) VALUES
(1, 'Bolsas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `produtos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cores`
--

INSERT INTO `cores` (`id`, `nome`, `cor`, `produtos_id`) VALUES
(1, 'Azul', '##448af3', 1),
(2, 'Amarelo', '#ffd032', 1),
(3, 'Vermelho', '#ff3232', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores2`
--

CREATE TABLE `cores2` (
  `id` int(11) NOT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cores2`
--

INSERT INTO `cores2` (`id`, `cor`, `checked`) VALUES
(139, 'Verde', 1),
(153, 'Azul', 1),
(166, 'Cinza', 1),
(215, 'Verde', 1),
(216, 'Cinza', 1),
(217, 'Azul', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `preco` varchar(50) DEFAULT NULL,
  `preco_promocao` varchar(50) DEFAULT NULL,
  `forma_pagamento` varchar(45) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `foto` varchar(45) DEFAULT NULL,
  `web` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `histagram` varchar(45) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `controle_produto` varchar(45) DEFAULT NULL,
  `categoria_produto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `nome`, `preco`, `preco_promocao`, `forma_pagamento`, `tamanho`, `data`, `foto`, `web`, `facebook`, `histagram`, `qtd`, `status`, `controle_produto`, `categoria_produto_id`) VALUES
(1, NULL, 'Bolsa de Couro Amarela', '345,89', '300,00', 'pagamento na Entrega', 'P', '2020-04-29 15:50:55', 'f1.jpg', 'xxxxx', 'xx', 'xx', NULL, NULL, NULL, 1),
(2, NULL, 'Bolsa de Couro Azul', '145,89', '130,00', 'pagamento na Entrega', 'P', '2020-04-29 15:50:55', 'f1.jpg', 'xxxxx', 'xx', 'xx', NULL, NULL, NULL, 1),
(3, NULL, 'Bolsa de Couro Vermeha', '1.233,89', '1.200,00', 'pagamento na Entrega', 'P', '2020-04-29 15:50:55', 'f1.jpg', 'xxxxx', 'xx', 'xx', NULL, NULL, NULL, 1),
(4, NULL, 'Bolsa de Couro Verde', '1.223,89', '1.120,00', 'pagamento na Entrega', 'P', '2020-04-29 15:50:55', 'f1.jpg', 'xxxxx', 'xx', 'xx', NULL, NULL, NULL, 1),
(5, NULL, 'Bolsa de Couro Preta', '1.293,89', '1.213,89', 'pagamento na Entrega', 'P', '2020-04-29 15:50:55', 'f1.jpg', 'xxxxx', 'xx', 'xx', NULL, NULL, NULL, 1),
(6, NULL, 'Bolsa de Couro Cinza', '345,89', '300,00', 'pagamento na Entrega', 'P', '2020-04-29 15:50:55', 'f1.jpg', 'xxxxx', 'xx', 'xx', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao`
--

CREATE TABLE `questao` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `questao`
--

INSERT INTO `questao` (`id`, `pergunta`) VALUES
(1, 'Quem descobriu o brasil ?'),
(2, 'Você está bem ?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

CREATE TABLE `respostas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `questao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `respostas`
--

INSERT INTO `respostas` (`id`, `descricao`, `status`, `questao_id`) VALUES
(1, 'Elizabethe Rai', 0, 1),
(2, 'Pedro Alvarez Cabral', 1, 1),
(3, 'Amaral ilva', 0, 1),
(4, 'sim', 1, 2),
(5, 'não', 0, 2),
(6, 'talvez', 0, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria_produto`
--
ALTER TABLE `categoria_produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cores_produtos1_idx` (`produtos_id`);

--
-- Índices para tabela `cores2`
--
ALTER TABLE `cores2`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produtos_categoria_produto_idx` (`categoria_produto_id`);

--
-- Índices para tabela `questao`
--
ALTER TABLE `questao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_respostas_questao1_idx` (`questao_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_produto`
--
ALTER TABLE `categoria_produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cores`
--
ALTER TABLE `cores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cores2`
--
ALTER TABLE `cores2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `questao`
--
ALTER TABLE `questao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `respostas`
--
ALTER TABLE `respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cores`
--
ALTER TABLE `cores`
  ADD CONSTRAINT `fk_cores_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_produtos_categoria_produto` FOREIGN KEY (`categoria_produto_id`) REFERENCES `categoria_produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `fk_respostas_questao1` FOREIGN KEY (`questao_id`) REFERENCES `questao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
