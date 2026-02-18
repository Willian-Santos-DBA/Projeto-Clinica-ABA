CREATE DATABASE IF NOT EXISTS Projeto_Clinica_ABA;
USE Projeto_Clinica_ABA;

CREATE TABLE PACIENTE (
    id_paciente INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    diagnostico_cid VARCHAR(20)
) ENGINE=InnoDB;

CREATE TABLE RESPONSAVEL (
    id_responsavel INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    cpf VARCHAR(14)
) ENGINE=InnoDB;

CREATE TABLE PROFISSIONAL (
    id_profissional INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    registro_conselho VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE POSSUI (
    FK_id_paciente INT,
    FK_id_responsavel INT,
    PRIMARY KEY (FK_id_paciente, FK_id_responsavel),
    FOREIGN KEY (FK_id_paciente) REFERENCES PACIENTE(id_paciente),
    FOREIGN KEY (FK_id_responsavel) REFERENCES RESPONSAVEL(id_responsavel)
) ENGINE=InnoDB;

CREATE TABLE PEI (
    id_pei INT PRIMARY KEY,
    data_inicio DATE,
    data_fim DATE,
    FK_id_paciente INT,
    FK_id_profissional INT,
    FOREIGN KEY (FK_id_paciente) REFERENCES PACIENTE(id_paciente),
    FOREIGN KEY (FK_id_profissional) REFERENCES PROFISSIONAL(id_profissional)
) ENGINE=InnoDB;

CREATE TABLE SESSAO (
    id_sessao INT PRIMARY KEY,
    data_hora DATETIME,
    status VARCHAR(50),
    FK_id_paciente INT,
    FK_id_profissional INT,
    FOREIGN KEY (FK_id_paciente) REFERENCES PACIENTE(id_paciente),
    FOREIGN KEY (FK_id_profissional) REFERENCES PROFISSIONAL(id_profissional)
) ENGINE=InnoDB;

CREATE TABLE REGISTRO (
    id_registro INT PRIMARY KEY,
    descricao_atividade VARCHAR(255),
    aproveitamento VARCHAR(100),
    FK_id_sessao INT,
    FOREIGN KEY (FK_id_sessao) REFERENCES SESSAO(id_sessao)
) ENGINE=InnoDB;