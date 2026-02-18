CREATE SCHEMA IF NOT EXISTS Projeto_Clinica_ABA;

CREATE TABLE Projeto_Clinica_ABA.PACIENTE (
    id_paciente INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    diagnostico_cid VARCHAR(20)
);

CREATE TABLE Projeto_Clinica_ABA.RESPONSAVEL (
    id_responsavel INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    cpf VARCHAR(14)
);

CREATE TABLE Projeto_Clinica_ABA.PROFISSIONAL (
    id_profissional INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    registro_conselho VARCHAR(50)
);

CREATE TABLE Projeto_Clinica_ABA.POSSUI (
    FK_id_paciente INT,
    FK_id_responsavel INT,
    PRIMARY KEY (FK_id_paciente, FK_id_responsavel),
    FOREIGN KEY (FK_id_paciente) REFERENCES Projeto_Clinica_ABA.PACIENTE(id_paciente),
    FOREIGN KEY (FK_id_responsavel) REFERENCES Projeto_Clinica_ABA.RESPONSAVEL(id_responsavel)
);

CREATE TABLE Projeto_Clinica_ABA.PEI (
    id_pei INT PRIMARY KEY,
    data_inicio DATE,
    data_fim DATE,
    FK_id_paciente INT,
    FK_id_profissional INT,
    FOREIGN KEY (FK_id_paciente) REFERENCES Projeto_Clinica_ABA.PACIENTE(id_paciente),
    FOREIGN KEY (FK_id_profissional) REFERENCES Projeto_Clinica_ABA.PROFISSIONAL(id_profissional)
);

CREATE TABLE Projeto_Clinica_ABA.SESSAO (
    id_sessao INT PRIMARY KEY,
    data_hora TIMESTAMP,
    status VARCHAR(50),
    FK_id_paciente INT,
    FK_id_profissional INT,
    FOREIGN KEY (FK_id_paciente) REFERENCES Projeto_Clinica_ABA.PACIENTE(id_paciente),
    FOREIGN KEY (FK_id_profissional) REFERENCES Projeto_Clinica_ABA.PROFISSIONAL(id_profissional)
);

CREATE TABLE Projeto_Clinica_ABA.REGISTRO (
    id_registro INT PRIMARY KEY,
    descricao_atividade VARCHAR(255),
    aproveitamento VARCHAR(100),
    FK_id_sessao INT,
    FOREIGN KEY (FK_id_sessao) REFERENCES Projeto_Clinica_ABA.SESSAO(id_sessao)
);