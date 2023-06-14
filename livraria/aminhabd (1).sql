-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jun-2023 às 20:21
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria`
--
CREATE DATABASE IF NOT EXISTS `livraria` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `livraria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nome_autor` varchar(100) DEFAULT NULL,
  `nacionalidade_autor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`id_autor`, `nome_autor`, `nacionalidade_autor`) VALUES
(1, 'José Saramago', 'Portuguesa'),
(3, 'Eça de Queiroz', 'Portuguesa'),
(4, 'John Steinbeck', 'Americana'),
(5, 'Gabriel Garcia Marquez', 'Chilena'),
(6, 'Fernando Pessoa', 'Portuguesa'),
(7, 'Herman Melville', 'Americana'),
(8, 'Luís Sepulveda', 'Chilena');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `fk_id_livro` int(11) NOT NULL,
  `fk_id_compra` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco_livro_compra` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Romance'),
(2, 'Drama'),
(3, 'Ficção Cientifica'),
(4, 'Banda Desenhada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(150) DEFAULT NULL,
  `email_cliente` varchar(45) DEFAULT NULL,
  `morada_cliente` varchar(200) DEFAULT NULL,
  `telefone_cliente` varchar(13) DEFAULT NULL,
  `cc_cliente` varchar(9) DEFAULT NULL,
  `password_cliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `email_cliente`, `morada_cliente`, `telefone_cliente`, `cc_cliente`, `password_cliente`) VALUES
(9, 'Hugo', 'hugo@mail.com', 'lisboa', '225588', '996633', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `fk_id_cliente` int(11) NOT NULL,
  `data_compra` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

CREATE TABLE `editoras` (
  `id_editora` int(11) NOT NULL,
  `nome_editora` varchar(100) DEFAULT NULL,
  `morada_editora` varchar(200) DEFAULT NULL,
  `telefone_editora` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`id_editora`, `nome_editora`, `morada_editora`, `telefone_editora`) VALUES
(1, 'Porto Editora', 'Av dos aliados 57, Porto', '+351123456789'),
(2, 'Leya', 'Porto', '+351111222333'),
(3, 'Bertrand', 'Lisboa', '+351999888777');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL,
  `fk_id_editora` int(11) NOT NULL,
  `isbn_livro` varchar(13) DEFAULT NULL,
  `titulo_livro` varchar(100) DEFAULT NULL,
  `edicao_livro` varchar(20) DEFAULT NULL,
  `preco_livro` decimal(5,2) DEFAULT NULL,
  `stock_livro` int(11) DEFAULT NULL,
  `capa_livro` varchar(45) DEFAULT NULL,
  `descricao_livro` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `fk_id_editora`, `isbn_livro`, `titulo_livro`, `edicao_livro`, `preco_livro`, `stock_livro`, `capa_livro`, `descricao_livro`) VALUES
(1, 3, 'qwerty123', 'levantado do chão', '2a edição', '12.44', 10, 'levantado.jpg', 'A prática cotidiana prova que o julgamento imparcial das eventualidades faz parte de um processo de gerenciamento das novas proposições.'),
(2, 3, 'qwerty123', 'Asterix e  os gauleses', '1a edição', '11.99', 150, 'asterix.jpg', 'A prática cotidiana prova que o julgamento imparcial das eventualidades faz parte de um processo de gerenciamento das novas proposições.'),
(3, 1, 'qwerty456', 'lmoby dick', '1a edição', '9.00', 12, 'moby.jpg', 'A prática cotidiana prova que o julgamento imparcial das eventualidades faz parte de um processo de gerenciamento das novas proposições.'),
(4, 3, 'qwerty999', 'Por essa estrada fora', '1a edição', '100.00', 0, 'estrada.jpg', 'A prática cotidiana prova que o julgamento imparcial das eventualidades faz parte de um processo de gerenciamento das novas proposições.'),
(5, 2, 'qwerty888', 'Corto Maltese', '1a edição', '20.00', 10, 'corto.jpg', 'A prática cotidiana prova que o julgamento imparcial das eventualidades faz parte de um processo de gerenciamento das novas proposições.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_has_autores`
--

CREATE TABLE `livros_has_autores` (
  `fk_id_livro` int(11) NOT NULL,
  `fk_id_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livros_has_autores`
--

INSERT INTO `livros_has_autores` (`fk_id_livro`, `fk_id_autor`) VALUES
(1, 3),
(3, 7),
(4, 3),
(5, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_has_categorias`
--

CREATE TABLE `livros_has_categorias` (
  `fk_id_livro` int(11) NOT NULL,
  `fk_id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`fk_id_livro`,`fk_id_compra`),
  ADD KEY `fk_livros_has_compras_compras1_idx` (`fk_id_compra`),
  ADD KEY `fk_livros_has_compras_livros1_idx` (`fk_id_livro`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_compras_clientes1_idx` (`fk_id_cliente`);

--
-- Índices para tabela `editoras`
--
ALTER TABLE `editoras`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `fk_livros_editoras_idx` (`fk_id_editora`);

--
-- Índices para tabela `livros_has_autores`
--
ALTER TABLE `livros_has_autores`
  ADD PRIMARY KEY (`fk_id_livro`,`fk_id_autor`),
  ADD KEY `fk_livros_has_autores_autores1_idx` (`fk_id_autor`),
  ADD KEY `fk_livros_has_autores_livros1_idx` (`fk_id_livro`);

--
-- Índices para tabela `livros_has_categorias`
--
ALTER TABLE `livros_has_categorias`
  ADD PRIMARY KEY (`fk_id_livro`,`fk_id_categoria`),
  ADD KEY `fk_livros_has_categorias_categorias1_idx` (`fk_id_categoria`),
  ADD KEY `fk_livros_has_categorias_livros1_idx` (`fk_id_livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `editoras`
--
ALTER TABLE `editoras`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `fk_livros_has_compras_compras1` FOREIGN KEY (`fk_id_compra`) REFERENCES `compras` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livros_has_compras_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_clientes1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `fk_livros_editoras` FOREIGN KEY (`fk_id_editora`) REFERENCES `editoras` (`id_editora`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livros_has_autores`
--
ALTER TABLE `livros_has_autores`
  ADD CONSTRAINT `fk_livros_has_autores_autores1` FOREIGN KEY (`fk_id_autor`) REFERENCES `autores` (`id_autor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livros_has_autores_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livros_has_categorias`
--
ALTER TABLE `livros_has_categorias`
  ADD CONSTRAINT `fk_livros_has_categorias_categorias1` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livros_has_categorias_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
