🏥 Sistema de Gestão de Clínica Terapêutica (ABA)
Modelagem e implementação de banco de dados aplicada ao contexto clínico de Psicologia e Análise do Comportamento Aplicada.

📝 Sobre o Projeto
Este projeto faz parte dos meus estudos em Banco de Dados e foi desenvolvido para conectar a teoria acadêmica com a minha realidade profissional como Psicólogo. O objetivo é estruturar um sistema que gerencie de forma eficiente o acompanhamento de pacientes, registros de sessões e a evolução terapêutica.
+2

🛠️ Tecnologias e Ferramentas

Modelagem: brModelo / Lucidchart 


SGBDs: MySQL, PostgreSQL, SQL Server e Oracle 
+3


Linguagens: SQL (DDL/DML) e VBA (Integração com Excel) 
+2

📐 Estrutura do Projeto
1. Modelo de Negócio (Minimundo)
O sistema baseia-se nas seguintes regras de negócio:


Pacientes: Crianças assistidas que possuem responsáveis cadastrados.
+1


Sessões: Atendimentos conduzidos por mim (Psicólogo).
+1


Relatórios: Cada sessão gera um relatório de evolução detalhado para acompanhamento clínico.
+1


Financeiro: Controle de valores por sessão e faturamento.

2. Modelagem Conceitual e Lógica

Entidades: Pacientes, Psicólogos, Sessões e Financeiro.


Relacionamentos: Um paciente realiza muitas sessões (1:N).
+1


Normalização: Aplicação da 1ª Forma Normal (1FN) para garantir que não existam campos repetidos e para manter a atomicidade dos dados.

3. Modelo Físico (Implementação)
Os scripts SQL foram adaptados para os 4 principais consoles do mercado, garantindo a integridade referencial através do uso estratégico de Chaves Primárias (PK) e Chaves Estrangeiras (FK).
+2

SQL
-- Exemplo de Integridade Referencial (Tabela de Sessões)
CREATE TABLE Sessoes (
    id_sessao INT PRIMARY KEY,
    data_sessao DATE,
    resumo_evolucao TEXT,
    id_paciente INT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes (id_paciente)
);

🚀 Como Visualizar
Os diagramas e Scripts estão disponíveis na pasta /2.0 Modelo Conceitual e /3.0 Modelo Lógico

Os scripts de criação das tabelas podem ser encontrados na pasta /4.0 Modelo Físico para o banco de sua preferência.

O formulário de entrada de dados via VBA está na pasta /VBA, demonstrando a conexão entre o Front-end (Excel) e o Back-end.

Desenvolvido por Willian Santos
Psicólogo Especializado e Graduando em Banco de Dados - DBA
