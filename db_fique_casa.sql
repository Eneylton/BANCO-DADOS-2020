-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2020 às 02:33
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
-- Banco de dados: `db_fique_casa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `descricao`) VALUES
(1, 'Alimentos'),
(2, 'Acessórios'),
(3, 'Bolsas');

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
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `usuario_id` int(11) NOT NULL,
  `tipo_loja_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`id`, `nome`, `email`, `tel`, `whatsapp`, `facebook`, `hist`, `website`, `endereco`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `foto`, `lat`, `lng`, `data`, `usuario_id`, `tipo_loja_id`) VALUES
(53, 'Karinna Modas', 'eneylton@hotmail.com', '(09) 09990-9999', '(98) 9158-4766', 'eneylton.facebook', '@eneyltonbarros', '', 'Rua Cinco', '14', 'Cohatrac IV', 'São Luís', 'MA', '65054550', 'Imagens/img_foto2020-04-28_22_22_06.jpg', '-2.5353876', '-44.2099725', '2020-04-28 23:20:55', 1, 58),
(54, 'Soul da Moda', 'eliasbarrospai2017@gmail.com', '(98) 99158-1962', '(99) 89915-8196', 'soumoda.facebook', 'l@lojassoulmoda', '', 'Rua Seis', '12', 'Cohatrac IV', 'São Luís', 'MA', '65054-640', 'Imagens/img_foto2020-04-28_22_29_37.jpg', '-2.5335577', '-44.2099563', '2020-04-29 01:29:38', 17, 59),
(55, 'Sul Moda Surf Wear ltda seucesso', 'soul@gmail.com', '(98) 54445-7845', '(89) 89898-9898', 'soul.facefook', '@soulmadas', '', 'Rua Três', '14', 'Cohatrac IV', 'São Luís', 'MA', '65054530', 'Imagens/img_foto2020-04-28_22_33_31.jpg', '-2.5349973', '-44.2109038', '2020-04-29 01:33:31', 17, 59);

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
  `loja_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_empreendimento`
--

CREATE TABLE `tipo_empreendimento` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_empreendimento`
--

INSERT INTO `tipo_empreendimento` (`id`, `descricao`) VALUES
(1, 'Academia'),
(2, 'Açougue'),
(3, 'Auto peça'),
(4, 'Assistência técnica em eletroeletrônicos'),
(5, 'Bazar de roupas usadas'),
(6, 'Bar'),
(7, 'Bolsas artesanais'),
(8, 'Boutique de bolsas femininas'),
(9, 'Buffet de churrasco'),
(10, 'Borracharia'),
(11, 'Brechó'),
(12, 'Barbearia'),
(13, 'Canil'),
(14, 'Casa de salgados'),
(15, 'Chocolateria'),
(16, 'Clinica de estética'),
(17, 'Clinica veterinária'),
(18, 'Clinica medica'),
(19, 'Comercio de jóias'),
(20, 'Comunicação visual'),
(21, 'Consultório odontológico'),
(22, 'Confecção'),
(23, 'Construtora'),
(24, 'Decoração de festa infantil'),
(25, 'Dedetização'),
(26, 'Distribuidora de água mineral'),
(27, 'Distribuidora de bebidas'),
(28, 'Distribuidora de bijuterias'),
(29, 'Disk gás'),
(30, 'Distribuidora de bebidas'),
(31, 'Distribuidora de medicamentos'),
(32, 'Eletricista'),
(33, 'Eletricista'),
(34, 'Encanador'),
(35, 'Escola particular'),
(36, 'Escritório de advocacia'),
(37, 'Escritório de consultoria'),
(38, 'Escritório de consultoria'),
(39, 'Hamburgueria'),
(40, 'Lanchonete'),
(41, 'Pizzaria'),
(42, 'Ofina de automóveis'),
(43, 'Lava rápido a seco'),
(44, 'Loja de armarinhos '),
(45, 'Loja de artigos esportivos'),
(46, 'Loja de artigos para casa'),
(47, 'Loja de artigos para decoração'),
(48, 'Loja de artigos para recém nascidos'),
(49, 'Loja de bicicleta'),
(50, 'Loja de bordados'),
(51, 'Loja de calcados'),
(52, 'Loja de eletroeletrônicos'),
(53, 'Loja de enxovais para bebe'),
(54, 'Loja de ferragens'),
(55, 'Loja de informática'),
(56, 'Loja de materiais de limpeza'),
(57, 'Loja de motos'),
(58, 'Loja de roupa feminina'),
(59, 'Loja de roupas'),
(60, 'Loja de ração');

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
(17, 'Ana  Maria ', 'anamaria@gmail.com', '../../assets/imgs/01.png', 'Loja', 'ana', '202cb962ac59075b964b07152d234b70'),
(18, 'ana', 'ana@gmail.com', '../../assets/imgs/01.png', 'Loja', 'ana', '202cb962ac59075b964b07152d234b70');

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
  ADD KEY `fk_loja_usuario_idx` (`usuario_id`),
  ADD KEY `fk_loja_tipo_loja1_idx` (`tipo_loja_id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produto_loja1_idx` (`loja_id`),
  ADD KEY `fk_produto_categoria1_idx` (`categoria_id`);

--
-- Índices para tabela `tipo_empreendimento`
--
ALTER TABLE `tipo_empreendimento`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `loja`
--
ALTER TABLE `loja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `tipo_empreendimento`
--
ALTER TABLE `tipo_empreendimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `fk_loja_tipo_loja1` FOREIGN KEY (`tipo_loja_id`) REFERENCES `tipo_empreendimento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_loja_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_loja1` FOREIGN KEY (`loja_id`) REFERENCES `loja` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
