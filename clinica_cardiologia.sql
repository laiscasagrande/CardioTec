-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2023 às 14:20
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica_cardiologia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administracao`
--

CREATE TABLE `administracao` (
  `id_admedic` int(11) NOT NULL,
  `nome_medic` varchar(100) DEFAULT NULL,
  `nome_pac` varchar(100) DEFAULT NULL,
  `confirm_data` enum('dia_disponivel','dia_nao_disponivel') DEFAULT NULL,
  `confirm_horario` enum('hora_disponivel','hora_nao_disponivel') DEFAULT NULL,
  `procediemnto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administracao`
--

INSERT INTO `administracao` (`id_admedic`, `nome_medic`, `nome_pac`, `confirm_data`, `confirm_horario`, `procediemnto`) VALUES
(1, 'Laís Kaminski Casagrande', 'Luana Kaminski Casag', 'dia_nao_disponivel', 'hora_disponivel', 'dffe'),
(2, 'Laís Kaminski Casagrande', 'Walder Frey', 'dia_disponivel', 'hora_nao_disponivel', 'aaaaaaaa'),
(3, 'Laís Kaminski Casagrande', 'Walder Frey', 'dia_disponivel', 'hora_disponivel', 'sem observaçãO'),
(4, 'Laís Kaminski Casagrande', 'Lais Kaminski', 'dia_disponivel', 'hora_disponivel', 'hdhhe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `administracao_duv`
--

CREATE TABLE `administracao_duv` (
  `id_admduv` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `duvida` varchar(50) DEFAULT NULL,
  `resposta` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administracao_duv`
--

INSERT INTO `administracao_duv` (`id_admduv`, `nome`, `email`, `duvida`, `resposta`) VALUES
(1, 'Laís Kaminski Casagrande', 'laisluanaka@outlook.com', 'fsffsff', 'aaa'),
(2, 'Maria', 'laiskaminski750@gmail.com', 'Forma de pagamento', 'Dinheiro ou cartão'),
(3, 'Maria Clara', 'laiskaminski750@gmail.com', 'Forma de pagamento', 'Dinheiro ou cartão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `administracao_pac`
--

CREATE TABLE `administracao_pac` (
  `id_admpac` int(11) NOT NULL,
  `nome_medico` varchar(100) DEFAULT NULL,
  `nome_pac` varchar(100) DEFAULT NULL,
  `confirm_data` enum('dia_disponivel','dia_nao_disponivel') DEFAULT NULL,
  `confirm_horario` enum('hora_disponivel','hora_nao_disponivel') DEFAULT NULL,
  `aviso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administracao_pac`
--

INSERT INTO `administracao_pac` (`id_admpac`, `nome_medico`, `nome_pac`, `confirm_data`, `confirm_horario`, `aviso`) VALUES
(1, 'Laís', 'Luana', 'dia_disponivel', 'hora_disponivel', 'hgy'),
(2, 'Laís', 'hdhjej', 'dia_nao_disponivel', 'hora_nao_disponivel', 'bbbbbbbbbbbbbbb');

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento_pac`
--

CREATE TABLE `agendamento_pac` (
  `id_agendamento` int(11) NOT NULL,
  `nome_pac` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_preferencial` date DEFAULT NULL,
  `horario_preferencial` time DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `forma_pag` varchar(20) DEFAULT NULL,
  `nome_medico` varchar(50) DEFAULT NULL,
  `seguro_saude` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendamento_pac`
--

INSERT INTO `agendamento_pac` (`id_agendamento`, `nome_pac`, `telefone`, `data_preferencial`, `horario_preferencial`, `motivo`, `forma_pag`, `nome_medico`, `seguro_saude`) VALUES
(11, 'hdhjej', '45162566', '5333-02-14', '17:00:00', 'lalala', 'ekrkkvk', 'Laís', 'Não'),
(12, 'hucjd', '45162566', '5896-02-14', '14:00:00', 'rrrrr', 'ekrkkvk', 'Denise', 'Não'),
(15, 'paula', '155685', '2023-02-14', '17:00:00', 'djdjjs', 'djjj', 'Laís', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_adm`
--

CREATE TABLE `cad_adm` (
  `id_adm` int(11) NOT NULL,
  `nome_adm` varchar(50) DEFAULT NULL,
  `data_adm` date DEFAULT NULL,
  `genero_adm` enum('Feminino','Masculino') DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco_adm` varchar(50) DEFAULT NULL,
  `cpf_adm` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cad_adm`
--

INSERT INTO `cad_adm` (`id_adm`, `nome_adm`, `data_adm`, `genero_adm`, `email`, `endereco_adm`, `cpf_adm`, `senha`, `usuario`) VALUES
(1, 'Daemon Targaryen', '2005-09-27', 'Masculino', 'laiskaminski750@gmail.com', 'Rua São Cristovão', '10200739930', '159', 'dae');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_medico`
--

CREATE TABLE `cad_medico` (
  `id_medic` int(11) NOT NULL,
  `nome_medic` varchar(50) DEFAULT NULL,
  `data_med` date DEFAULT NULL,
  `genero_medic` enum('Masculino','Feminino','Outro') DEFAULT NULL,
  `crm_medic` varchar(10) DEFAULT NULL,
  `especialidade` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `endereco_medic` varchar(50) DEFAULT NULL,
  `cpf_medic` varchar(20) DEFAULT NULL,
  `formacao_academica` varchar(70) DEFAULT NULL,
  `experiencia_profissional` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cad_medico`
--

INSERT INTO `cad_medico` (`id_medic`, `nome_medic`, `data_med`, `genero_medic`, `crm_medic`, `especialidade`, `email`, `endereco_medic`, `cpf_medic`, `formacao_academica`, `experiencia_profissional`, `usuario`, `senha`) VALUES
(1, 'Laís Kaminski Casagrande', '2005-09-27', 'Feminino', '1212', 'cardiologia', 'laisluanaka@outlook.', 'Rua São Cristovão, bairro Vila Selinger', '10200739930', 'Cardiologia', '3 anos de reridência médica em cardiologia', 'lala', '123'),
(2, 'Vinícius de Araujo Goulart', '2006-04-18', 'Masculino', '45698', 'cardiologia', 'laisluanaka@outlook.', 'Morro da Fumaça', '52468495', 'UNESC', 'Sim', 'vini', '123'),
(3, 'Luana', '2015-09-02', 'Feminino', '8888', 'cardiologia', 'kaminskicasagrande@g', 'Rua São Cristovão, bairro Vila Selinger', '565819', 'UNESC', 'Sim', 'lulu', '147'),
(4, 'Celaena Sardothien', '1978-09-15', 'Feminino', '7854', 'cardiologia', 'laiskaminski750@gmai', 'Rua São Cristovão, bairro Vila Selinger', '47135986', 'UNESC', 'Sim', 'cel', '159'),
(5, 'Tyrion Lennister', '1954-05-14', 'Masculino', '45698', 'cardiologia', 'kaminskicasagrande@g', 'Rua São Cristovão, bairro Vila Selinger', '10200739930', 'UNESC', '3 anos de reridência médica em cardiologia', 'ty', '123'),
(6, 'Laís Stark', '1236-02-14', 'Feminino', '254698', 'medicina', 'LAISLUANAKA@OUTLOOK.', 'Rua São Cristovão', '10200739930', 'UNESC', 'cardiologia', 'lala', '123'),
(7, 'Laís Kaminski', '2005-09-27', 'Feminino', '1258', 'cardiologia', 'LAISLUANAKA@OUTLOOK.', 'Rua São Cristovão', '10200739930', 'UNESC', 'cardiologia', 'la', '123'),
(8, 'Rhaenyra Targaryen', '2005-09-27', 'Feminino', '45832', 'cardiologia', 'LAISLUANAKA@OUTLOOK.', 'Rua São Cristovão', '10200739930', 'UNESC', 'kdkdk', 'ra', '789');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_paciente`
--

CREATE TABLE `cad_paciente` (
  `id_paciente` int(11) NOT NULL,
  `nome_pac` varchar(20) DEFAULT NULL,
  `data_pac` date DEFAULT NULL,
  `genero_pac` enum('Feminino','Masculino','Outro') DEFAULT NULL,
  `telefone_pac` varchar(20) DEFAULT NULL,
  `email_pac` varchar(50) DEFAULT NULL,
  `cpf_pac` varchar(20) DEFAULT NULL,
  `seguro_saude` varchar(50) DEFAULT NULL,
  `alergia_medicamento` varchar(100) DEFAULT NULL,
  `medicamento_regular` varchar(50) DEFAULT NULL,
  `historico_doenca` varchar(50) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cad_paciente`
--

INSERT INTO `cad_paciente` (`id_paciente`, `nome_pac`, `data_pac`, `genero_pac`, `telefone_pac`, `email_pac`, `cpf_pac`, `seguro_saude`, `alergia_medicamento`, `medicamento_regular`, `historico_doenca`, `senha`, `usuario`) VALUES
(1, 'Luana Kaminski Casag', '2015-09-02', 'Feminino', '4834446013', 'laisluanaka@outlook.com', '123456', 'Não', 'Não', 'Não', 'Bronquite', '123', 'lulu'),
(2, 'lala', '1895-04-02', 'Outro', '1234885', 'LAISLUANAKA@OUTLOOK.COM', '123456', 'Não', 'Não', 'Não', 'Bronquite', '147', 'lala'),
(3, '', '0000-00-00', '', '', '', '', '', '', '', '', 'ty', '123'),
(4, 'Sansa Stark', '1976-08-14', 'Feminino', '48996887620', 'laisluanaka2outlook.com', '10200739930', 'Não', 'Não', 'Não', 'Não', '123', 'san'),
(5, '', '0000-00-00', '', '', '', '', '', '', '', '', '', ''),
(6, '', '0000-00-00', '', '', '', '', '', '', '', '', '', ''),
(7, '', '0000-00-00', '', '', '', '', '', '', '', '', '', ''),
(8, '', '0000-00-00', '', '', '', '', '', '', '', '', '', ''),
(9, 'lais', '2023-03-12', 'Feminino', '48996887620', 'laisluanaka2outlook.com', '10200739930', 'Não', 'Não', 'Não', 'Não', '123', 'la'),
(10, 'Taylor', '2023-05-14', 'Feminino', '4834446013', 'LAISLUANAKA@OUTLOOK.COM', '123456', 'Não', 'Não', 'Não', 'jjfjf', '456', 'ta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `form_duvida`
--

CREATE TABLE `form_duvida` (
  `id_duvida` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `duvida` varchar(150) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `form_duvida`
--

INSERT INTO `form_duvida` (`id_duvida`, `nome`, `duvida`, `email`) VALUES
(1, 'Laís Kaminski Casagrande', 'fsffsff', 'laisluanaka@outlook.com'),
(17, 'Maria', 'Forma de pagamento', 'laiskaminski750@gmail.com'),
(18, 'Laís Stark', 'Horário de atendimento', 'laiskaminski750@gmail.com'),
(19, 'Laís Kaminski Casagrande', 'Horário de atendimento', 'laiskaminski750@gmail.com'),
(20, 'Maria Clara', 'Forma de pagamento', 'laiskaminski750@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `planilha_medico`
--

CREATE TABLE `planilha_medico` (
  `id_planilha` int(11) NOT NULL,
  `nome_pac` varchar(50) DEFAULT NULL,
  `data_planilha` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `procedimento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `planilha_medico`
--

INSERT INTO `planilha_medico` (`id_planilha`, `nome_pac`, `data_planilha`, `horario`, `procedimento`) VALUES
(14, 'Walder Frey', '2023-09-27', '16:00:00', 'aaaaaaaaaaa'),
(18, 'Jaime Lennister', '1236-02-14', '17:00:00', 'lalal'),
(24, 'Manon', '2024-02-17', '14:00:00', 'asasasasasas');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administracao`
--
ALTER TABLE `administracao`
  ADD PRIMARY KEY (`id_admedic`);

--
-- Índices para tabela `administracao_duv`
--
ALTER TABLE `administracao_duv`
  ADD PRIMARY KEY (`id_admduv`);

--
-- Índices para tabela `administracao_pac`
--
ALTER TABLE `administracao_pac`
  ADD PRIMARY KEY (`id_admpac`);

--
-- Índices para tabela `agendamento_pac`
--
ALTER TABLE `agendamento_pac`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- Índices para tabela `cad_adm`
--
ALTER TABLE `cad_adm`
  ADD PRIMARY KEY (`id_adm`);

--
-- Índices para tabela `cad_medico`
--
ALTER TABLE `cad_medico`
  ADD PRIMARY KEY (`id_medic`);

--
-- Índices para tabela `cad_paciente`
--
ALTER TABLE `cad_paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices para tabela `form_duvida`
--
ALTER TABLE `form_duvida`
  ADD PRIMARY KEY (`id_duvida`);

--
-- Índices para tabela `planilha_medico`
--
ALTER TABLE `planilha_medico`
  ADD PRIMARY KEY (`id_planilha`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administracao`
--
ALTER TABLE `administracao`
  MODIFY `id_admedic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `administracao_duv`
--
ALTER TABLE `administracao_duv`
  MODIFY `id_admduv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `administracao_pac`
--
ALTER TABLE `administracao_pac`
  MODIFY `id_admpac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `agendamento_pac`
--
ALTER TABLE `agendamento_pac`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `cad_adm`
--
ALTER TABLE `cad_adm`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cad_medico`
--
ALTER TABLE `cad_medico`
  MODIFY `id_medic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `cad_paciente`
--
ALTER TABLE `cad_paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `form_duvida`
--
ALTER TABLE `form_duvida`
  MODIFY `id_duvida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `planilha_medico`
--
ALTER TABLE `planilha_medico`
  MODIFY `id_planilha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
