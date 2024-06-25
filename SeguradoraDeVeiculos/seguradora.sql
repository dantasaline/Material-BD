-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/06/2024 às 01:58
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
-- Banco de dados: `seguradora`
--
CREATE DATABASE IF NOT EXISTS `seguradora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `seguradora`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codCarro` int(11) NOT NULL,
  `placa` varchar(255) NOT NULL,
  `chassi` varchar(255) DEFAULT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `porte` varchar(255) DEFAULT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codCarro`, `placa`, `chassi`, `marca`, `modelo`, `porte`, `cor`, `codCliente`) VALUES
(13, 'ABC1D23', NULL, 'Toyota', 'Corolla', NULL, NULL, 1),
(14, 'DEF4G56', NULL, 'Honda', 'Civic', NULL, NULL, 2),
(15, 'GHI7J89', NULL, 'Ford', 'Focus', NULL, NULL, 3),
(16, 'JKL0M12', NULL, 'Chevrolet', 'Cruze', NULL, NULL, 4),
(17, 'MNO3P45', NULL, 'Volkswagen', 'Golf', NULL, NULL, 5),
(18, 'QRS6T78', NULL, 'Hyundai', 'Elantra', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nascimento` date NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `compl` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `nome`, `telefone`, `rg`, `cpf`, `email`, `nascimento`, `cidade`, `bairro`, `rua`, `num`, `compl`, `estado`, `cep`) VALUES
(1, 'João Silva', '(11) 91234-5678', '123456789', '123.456.789-00', 'joao.silva@email.com', '1985-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Maria Oliveira', '(21) 92345-6789', '987654321', '987.654.321-00', 'maria.oliveira@email.com', '1990-02-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Carlos Santos', '(31) 93456-7890', '112233445', '112.233.445-00', 'carlos.santos@email.com', '1975-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Ana Costa', '(41) 94567-8901', '223344556', '223.344.556-00', 'ana.costa@email.com', '1980-04-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Lucas Pereira', '(51) 95678-9012', '334455667', '334.455.667-00', 'lucas.pereira@email.com', '1995-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Fernanda Lima', '(61) 96789-0123', '445566778', '445.566.778-00', 'fernanda.lima@email.com', '1988-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `codOcorrencia` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `horas` time DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `codCarro` int(11) DEFAULT NULL,
  `codTipo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`codOcorrencia`, `descricao`, `data`, `horas`, `cidade`, `bairro`, `rua`, `codCarro`, `codTipo`) VALUES
(25, 'Colisão frontal em cruzamento', '2024-01-15', '14:30:00', 'São Paulo', 'Centro', 'Rua das Flores', 13, 'OC001'),
(26, 'Roubo do veículo em estacionamento', '2024-02-20', '18:45:00', 'Rio de Janeiro', 'Copacabana', 'Avenida Atlântica', 14, 'OC002'),
(27, 'Atropelamento em faixa de pedestres', '2024-03-05', '08:15:00', 'Belo Horizonte', 'Savassi', 'Rua Pernambuco', 15, 'OC003'),
(28, 'Danos por granizo em estacionamento', '2024-04-10', '16:50:00', 'Curitiba', 'Centro Cívico', 'Avenida Cândido de Abreu', 18, 'OC004'),
(29, 'Incêndio no motor em rodovia', '2024-05-20', '11:30:00', 'Porto Alegre', 'Menino Deus', 'Avenida Getúlio Vargas', 16, 'OC005'),
(30, 'Batida lateral em avenida movimentada', '2024-06-25', '19:00:00', 'Salvador', 'Barra', 'Avenida Oceânica', 17, 'OC006');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo`
--

CREATE TABLE `tipo` (
  `codTipo` varchar(10) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo`
--

INSERT INTO `tipo` (`codTipo`, `tipo`) VALUES
('OC001', 'Colisão frontal'),
('OC002', 'Roubo do veículo'),
('OC003', 'Atropelamento'),
('OC004', 'Danos por granizo'),
('OC005', 'Incêndio no motor'),
('OC006', 'Batida lateral');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codCarro`),
  ADD KEY `codCliente` (`codCliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`codOcorrencia`),
  ADD KEY `codCarro` (`codCarro`),
  ADD KEY `codTipo` (`codTipo`);

--
-- Índices de tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`codTipo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codCarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `codOcorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`);

--
-- Restrições para tabelas `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`codCarro`) REFERENCES `carro` (`codCarro`),
  ADD CONSTRAINT `ocorrencia_ibfk_2` FOREIGN KEY (`codTipo`) REFERENCES `tipo` (`codTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
