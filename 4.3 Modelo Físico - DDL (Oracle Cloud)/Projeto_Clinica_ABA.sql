CREATE TABLE PACIENTE (
    id_paciente NUMBER(10) CONSTRAINT pk_paciente PRIMARY KEY,
    nome VARCHAR2(255) NOT NULL,
    data_nascimento DATE,
    diagnostico_cid VARCHAR2(20)
);

CREATE TABLE RESPONSAVEL (
    id_responsavel NUMBER(10) CONSTRAINT pk_responsavel PRIMARY KEY,
    nome VARCHAR2(255) NOT NULL,
    telefone VARCHAR2(20),
    cpf VARCHAR2(14)
);

CREATE TABLE PROFISSIONAL (
    id_profissional NUMBER(10) CONSTRAINT pk_profissional PRIMARY KEY,
    nome VARCHAR2(255) NOT NULL,
    cargo VARCHAR2(100),
    registro_conselho VARCHAR2(50)
);

CREATE TABLE POSSUI (
    FK_id_paciente NUMBER(10),
    FK_id_responsavel NUMBER(10),
    CONSTRAINT pk_possui PRIMARY KEY (FK_id_paciente, FK_id_responsavel),
    CONSTRAINT fk_possui_paciente FOREIGN KEY (FK_id_paciente) REFERENCES PACIENTE(id_paciente),
    CONSTRAINT fk_possui_responsavel FOREIGN KEY (FK_id_responsavel) REFERENCES RESPONSAVEL(id_responsavel)
);

CREATE TABLE SESSAO (
    id_sessao NUMBER(10) CONSTRAINT pk_sessao PRIMARY KEY,
    data_hora TIMESTAMP WITH TIME ZONE,
    status VARCHAR2(50),
    FK_id_paciente NUMBER(10),
    FK_id_profissional NUMBER(10),
    CONSTRAINT fk_sessao_paciente FOREIGN KEY (FK_id_paciente) REFERENCES PACIENTE(id_paciente),
    CONSTRAINT fk_sessao_profissional FOREIGN KEY (FK_id_profissional) REFERENCES PROFISSIONAL(id_profissional)
);

CREATE TABLE REGISTRO (
    id_registro NUMBER(10) CONSTRAINT pk_registro PRIMARY KEY,
    descricao_atividade VARCHAR2(255),
    aproveitamento VARCHAR2(100),
    FK_id_sessao NUMBER(10),
    CONSTRAINT fk_registro_sessao FOREIGN KEY (FK_id_sessao) REFERENCES SESSAO(id_sessao)
);
