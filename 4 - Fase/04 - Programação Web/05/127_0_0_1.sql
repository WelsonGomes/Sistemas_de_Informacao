-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Jul-2022 às 21:21
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula`
--
DROP DATABASE IF EXISTS `aula`;
CREATE DATABASE IF NOT EXISTS `aula` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aula`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

DROP TABLE IF EXISTS `filmes`;
CREATE TABLE IF NOT EXISTS `filmes` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `resumo` varchar(1000) NOT NULL,
  `ano` int(4) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `complementos` varchar(300) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`codigo`, `nome`, `resumo`, `ano`, `imagem`, `complementos`) VALUES
(1, 'avatar', 'No exuberante mundo alienígena de Pandora vivem os Na\'vi, seres que parecem ser primitivos, mas são altamente evoluídos. Como o ambiente do planeta é tóxico, foram criados os avatares, corpos biológicos controlados pela mente humana que se movimentam livremente em Pandora. Jake Sully, um ex-fuzileiro naval paralítico, volta a andar através de um avatar e se apaixona por uma Na\'vi. Esta paixão leva Jake a lutar pela sobrevivência de Pandora.', 2009, 'imagens/avatar.jpg', 'Diretor: James Cameron\r\nBilheteria: 2,847 bilhões USD\r\nMúsica: James Horner\r\nOrçamento: US$ 237 milhões'),
(2, 'Vingadores: Ultimato', 'Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco.', 2019, 'imagens/ultimato.jfif', 'Data de lançamento: 25 de abril de 2019 (Brasil)\r\nDiretores: Anthony Russo, Joe Russo\r\nBilheteria: 2,798 bilhões USD\r\nAdaptação de: Vingadores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
CREATE TABLE IF NOT EXISTS `pessoas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`codigo`, `nome`) VALUES
(1, 'Marcondes Maçaneiro'),
(3, 'Leticia Maçaneiro');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
