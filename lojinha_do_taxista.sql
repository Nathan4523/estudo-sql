-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 07-Dez-2017 às 16:48
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lojinha_do_taxista`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(30) DEFAULT NULL,
  `rua` varchar(80) NOT NULL,
  `numero` int(11) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` enum('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO') NOT NULL,
  `ponto_de_referencia` varchar(80) DEFAULT NULL,
  `telefone` int(30) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nome`, `sobrenome`, `rua`, `numero`, `cidade`, `estado`, `ponto_de_referencia`, `telefone`, `email`, `login`, `senha`) VALUES
(1, 'Nicolas Nathan', 'Campos', 'Rua Paraguai', 180, 'São Bernardo do Campo', 'SP', 'Perto dos 3 postos, na rua da churrascaria', 952354537, 'camposnicolas48@gmail.com', 'nicolas1408', 'nathan4523'),
(2, 'Claudio', 'Campos', 'Rua Paraguai', 180, 'São Bernardo do Campo', 'SP', 'Perto dos 3 postos, na rua da churrascaria', 996625101, 'executivetaxi.95@gmail', '123claudio123', 'claudio1408'),
(3, 'Claudia', 'Campos', 'Rua Paraguai', 180, 'São Bernardo do Campo', 'SP', 'Perto dos 3 postos, na rua da churrascaria', 996018635, 'claudinhacampos45@gmail.com', '123claudia123', 'claudia1408'),
(4, 'Guilherme', 'Augusto', 'Rua sétimo guazzelli ', 169, 'São Bernardo do Campo', 'SP', 'perto da UPA de São Pedro', 998010335, 'gui_2512@hotmail.com', 'chapamen', 'chapa'),
(5, 'Iraci', 'Gonçalves Mota', 'Rua tietê', 731, 'São Bernardo do Campo', 'SP', 'Em vila vivalde em frente ao bar e ponto de ônibus', 928973487, 'iraci_job@hotmail.com', '1230iraci', 'avopreferida'),
(6, 'Maria', 'Gonçalves Mota', 'Rua tietê', 7031, 'Santo Andre', 'SP', 'null', 1128975587, 'maria_job@hotmail.com', 'mariasafadao', 'maria1230'),
(7, 'Jose', 'Pereira', 'Rua pareba', 105, 'Rua das caldas', 'AM', 'perto do rio', 2128973422, 'jose45@hotmail.com', 'josesilva', 'josepereirasilva'),
(8, 'Bill', 'Arranço', 'Rua 45 de maio', 45, 'Copacabana', 'RJ', 'em frente a praia', 1182654597, 'billarranco@hotmail.com', 'bill12', 'arranco'),
(9, 'Steve', 'Jobs', 'Rua info', 1010, 'Virginha', 'PR', 'null', 2147483647, 'stevejobs@hotmail.com', 'apple', 'apple1230'),
(10, 'Mark', 'Zuckebarg', 'Rua california', 80, 'Dinossauro', 'AC', 'null', 2147483647, 'mark@hotmail.com', 'mark', 'sourico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `id_produto` int(11) NOT NULL,
  `codigo_produto` int(30) NOT NULL,
  `nome_produto` varchar(30) NOT NULL,
  `quantidade` bigint(20) NOT NULL,
  `valor_loja` float(9,2) NOT NULL,
  `estado_produto` enum('disponivel','indisponivel') DEFAULT NULL,
  `fornecedor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`id_produto`, `codigo_produto`, `nome_produto`, `quantidade`, `valor_loja`, `estado_produto`, `fornecedor`) VALUES
(1, 1025460284, 'Tela de computador', 100, 850.00, 'disponivel', 'LG'),
(2, 2054802146, 'Caixa de som p/pc', 200, 101.00, 'disponivel', 'Comac'),
(3, 1508450664, 'Gabinete azul', 1, 851.90, 'disponivel', 'Sharkon'),
(4, 1208762496, 'Roteador duas antes', 0, 151.00, 'indisponivel', 'TP-LINK'),
(5, 981251015, 'Chinelo', 30, 35.90, 'disponivel', 'Havaianas'),
(6, 454501540, 'Pano com bordo', 500, 4.99, 'disponivel', 'Feirinha'),
(7, 1540748110, 'Pano sem bordo', 900, 2.99, 'disponivel', 'Feirinha'),
(8, 1548018101, 'Pano brilhante', 0, 10.00, 'indisponivel', 'Feirinha'),
(9, 548184111, 'Cheirinho de limao', 2, 23.99, 'disponivel', 'Aroma CIa'),
(10, 1112058209, 'Cheirinho de morango', 2, 24.95, 'disponivel', 'Aroma CIa'),
(11, 8908028, 'Trufas variados', 0, 3.59, 'indisponivel', 'Cozinha e CIa'),
(12, 908028211, 'Coxinhas', 1000, 5.95, 'disponivel', 'Salgados da RÔ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto_vendido`
--

CREATE TABLE `tb_produto_vendido` (
  `id_produto_vendido` int(11) NOT NULL,
  `id_chave_cliente` int(11) NOT NULL,
  `id_chave_produto` int(11) NOT NULL,
  `data_vendido` date NOT NULL,
  `data_entrega` date NOT NULL,
  `quantidade_vendido` int(11) NOT NULL,
  `valor_total` int(11) NOT NULL,
  `frete_vendido` decimal(10,0) NOT NULL,
  `pagamento_meio` enum('boleto','visa','mastercard','elo','paypal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_produto_vendido`
--

INSERT INTO `tb_produto_vendido` (`id_produto_vendido`, `id_chave_cliente`, `id_chave_produto`, `data_vendido`, `data_entrega`, `quantidade_vendido`, `valor_total`, `frete_vendido`, `pagamento_meio`) VALUES
(1, 1, 2, '2017-12-07', '2017-12-14', 1, 101, '13', 'visa'),
(2, 2, 1, '2017-12-06', '2017-12-10', 2, 1706, '0', 'mastercard'),
(3, 3, 5, '2017-12-06', '2017-12-18', 1, 36, '0', 'elo'),
(4, 4, 6, '2017-12-06', '2017-12-25', 5, 25, '10', 'boleto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Indexes for table `tb_produto_vendido`
--
ALTER TABLE `tb_produto_vendido`
  ADD PRIMARY KEY (`id_produto_vendido`),
  ADD KEY `id_chave_cliente` (`id_chave_cliente`),
  ADD KEY `id_chave_produto` (`id_chave_produto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_produto`
--
ALTER TABLE `tb_produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_produto_vendido`
--
ALTER TABLE `tb_produto_vendido`
  MODIFY `id_produto_vendido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_produto_vendido`
--
ALTER TABLE `tb_produto_vendido`
  ADD CONSTRAINT `tb_produto_vendido_ibfk_1` FOREIGN KEY (`id_chave_cliente`) REFERENCES `tb_cliente` (`id_cliente`),
  ADD CONSTRAINT `tb_produto_vendido_ibfk_2` FOREIGN KEY (`id_chave_produto`) REFERENCES `tb_produto` (`id_produto`),
  ADD CONSTRAINT `tb_produto_vendido_ibfk_3` FOREIGN KEY (`id_chave_cliente`) REFERENCES `tb_cliente` (`id_cliente`),
  ADD CONSTRAINT `tb_produto_vendido_ibfk_4` FOREIGN KEY (`id_chave_produto`) REFERENCES `tb_produto` (`id_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
