-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/11/2024 às 02:30
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
-- Banco de dados: `biblioteca(thais)`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Id_cliente` int(11) NOT NULL,
  `CPF` bigint(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CEP` int(11) NOT NULL,
  `Data_nasc` date NOT NULL,
  `Num_telefone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`Id_cliente`, `CPF`, `Nome`, `Email`, `CEP`, `Data_nasc`, `Num_telefone`) VALUES
(1, 15298475715, 'Manoel Tavares', 'Manut@gmail.com', 2147483647, '1927-10-10', 81936548217),
(2, 19584992214, ' Cleber de Lima Ferreira', 'CFLIma@gmail.com', 995010190, '2007-03-05', 81964571748),
(3, 87748228611, 'Romeu Nascimento', 'RomeuRSdN@gmail.com', 95430267, '2002-09-17', 81994526172),
(4, 78952143509, 'Ribeiro Hades', 'hades123o@outlook.com', 66666999, '0000-00-00', 81919934782),
(5, 12567852517, 'Arthur Sukuna', 'Asukuna.org@hotmail.com', 12365478, '1957-02-21', 81917184586),
(6, 32459893110, 'Euclides de Alexandria Sobral', 'EuclideSXande@gmail.com', 4651552, '1975-02-28', 81938418325),
(7, 7598436854, 'Rodrigo Arnaldo de Albuquerque', 'Rodrigardobuque@gmail.com', 75634895, '1990-07-24', 81935389404);

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `Id_emprestimo` int(11) NOT NULL,
  `Id_Livro` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Data_Emprestimo` date NOT NULL,
  `data_devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimos`
--

INSERT INTO `emprestimos` (`Id_emprestimo`, `Id_Livro`, `Id_Cliente`, `Data_Emprestimo`, `data_devolucao`) VALUES
(1, 1, 4, '1845-10-22', '1845-12-25'),
(2, 2, 6, '2007-03-17', '2007-06-14'),
(3, 3, 6, '2007-06-17', '2007-10-01'),
(4, 4, 2, '2024-01-25', '2024-05-18'),
(5, 5, 5, '2015-11-19', '2016-02-23'),
(6, 6, 1, '2023-09-22', '2024-11-11'),
(7, 4, 6, '2024-09-22', '2024-10-29'),
(8, 2, 3, '2022-08-03', '2022-10-03'),
(9, 3, 3, '2022-10-04', '2022-12-20'),
(10, 1, 3, '2017-07-13', '2017-08-20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `Id_livro` int(11) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Data_publicacao` date NOT NULL,
  `Sinopse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`Id_livro`, `autor`, `genero`, `Nome`, `Data_publicacao`, `Sinopse`) VALUES
(1, 'Joaquin Manoel de Macedo', 'Romance', 'A Moreninha', '1884-01-01', 'Um grupo de amigos faz faculdade de medicina resolvem passar um feriado na casa de uma pessoa chamada Fabrício, entre eles está Augusto, um homem emocionado. Eles fazem uma aposta aonde quem se apaixonar deve escrever um livro'),
(2, 'George R. R. Martin', 'Fantasia', 'A guerra dos tronos: As crônicas de Gelo e fogo vol.1', '1996-08-06', 'A guerra dos tronos é o primeiro livro da série best-seller internacional As Crônicas de Gelo e Fogo, que deu origem à adaptação de sucesso da HBO, Game of Thrones.\r\nO verão pode durar décadas. O inverno, toda uma vida. E a guerra dos tronos começou. Como'),
(3, 'George R. R. Martin', 'Fantasia', 'A fúria dos reis: As crônicas de Gelo e Fogo vol.2', '1998-11-16', 'Um cometa da cor de fogo e sangue corta os céus. E, da antiga cidadela de Pedra do Dragão às costas áridas de Winterfell, reina o caos.\r\nEm A fúria dos reis , seis facções disputam o controle de uma terra dividida e o direito de ocupar o Trono de Ferro de'),
(4, 'Patrick Rothfuss', 'Aventura', 'O nome do vento: A crônica do matador de reis vol.1', '2009-07-16', 'Ninguém sabe ao certo quem é o herói ou o vilão desse fascinante universo criado por Patrick Rothfuss. Na realidade, essas duas figuras se concentram em Kote, um homem enigmático que se esconde sob a identidade de proprietário da hospedaria Marco do Percu'),
(5, 'William P. Young', 'Religioso', 'A cabana', '2008-07-08', 'Durante uma viagem de fim de semana, a filha mais nova de Mack Allen Phillips é raptada e evidências de que ela foi brutalmente assassinada são encontradas numa velha cabana.\r\nApós quatro anos vivendo numa tristeza profunda causada pela culpa e pela sauda'),
(6, 'John Green', 'Drama', 'A culpa é das estrelas', '2012-10-01', '“A culpa é das estrelas” narra o romance de dois adolescentes que se conhecem (e se apaixonam) em um Grupo de Apoio para Crianças com Câncer: Hazel, uma jovem de dezesseis anos que sobrevive graças a uma droga revolucionária que detém a metástase em seus '),
(7, 'George R. R. Martin', 'Fantasia', 'A tormenta de espadas: As crônicas de Gelo e fogo vol.3', '2000-08-08', 'O futuro de Westeros está em jogo, e ninguém descansará até que os Sete Reinos tenham explodido em uma verdadeira tormenta de espadas. Dos cinco pretendentes ao trono, um está morto e outro caiu em desgraça, e ainda assim a guerra continua em toda sua fúr');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Índices de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`Id_emprestimo`),
  ADD KEY `Id_Livro` (`Id_Livro`),
  ADD KEY `Id_Cliente` (`Id_Cliente`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`Id_livro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `Id_emprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `Id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
