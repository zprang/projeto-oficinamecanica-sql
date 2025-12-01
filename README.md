# 🛠️ Projeto de Modelagem de Banco de Dados: Oficina Mecânica "LP4x4"

Este repositório contém o projeto SQL completo desenvolvido para a disciplina de Modelagem de Banco de Dados (ADS - Cruzeiro do Sul Virtual). O objetivo foi modelar, implementar e manipular um banco de dados relacional funcional (em 3ª Forma Normal - 3FN) para gerenciar o sistema de ordens de serviço de uma oficina mecânica.

O projeto foi dividido em quatro etapas principais:
* **Modelo Conceitual:** Definição do minimundo e dos conceitos de dados.
* **Modelo Entidade-Relacionamento (DER):** Criação do diagrama DER, identificando entidades, atributos e cardinalidades.
* **Modelo Lógico:** Conversão do DER em um esquema de tabelas normalizado (3FN).
* **Implementação (SQL):** Criação dos scripts SQL (DDL e DML) para construir e testar o banco de dados.

## 1. Documentação do Projeto (Atividades 1, 2 e 3)

Todo o processo de concepção do projeto, desde a análise de requisitos (Minimundo) até o Modelo Conceitual (DER) e o Modelo Lógico (3FN), deve ser documentado nos PDFs desta pasta, conforme a metodologia da disciplina.

* 📄 **[Atividade 1: Projeto Conceitual (Minimundo)](./documentacao/atividade1.pdf)**
* 📄 **[Atividade 2: Modelo Conceitual (DER)](./documentacao/atividade2.pdf)**
* 📄 **[Atividade 3: Projeto Lógico (Formas Normais)](./documentacao/atividade3.pdf)**

## 2. Estrutura do Banco de Dados

O modelo lógico final consiste em 7 tabelas principais, todas normalizadas:

* **`CLIENTE`**: Dados cadastrais dos proprietários dos veículos.
* **`VEICULO`**: Informações dos carros (Placa, Modelo, Quilometragem), com chave estrangeira para o `CLIENTE`.
* **`MECANICO`**: Cadastro dos mecânicos e suas especialidades.
* **`PECA_ESTOQUE`**: Cadastro das peças disponíveis no estoque com quantidade e preço unitário.
* **`ORDEM_SERVICO` (OS)**: A tabela central, que registra a transação de serviço, ligando um `CLIENTE`, um `VEICULO` e um `MECANICO`.
* **`SERVICO`**: Detalhes dos serviços (Ex: Troca de óleo, Revisão) realizados em uma OS.
* **`ITENS_OS`**: Tabela associativa que resolve o relacionamento N:M (muitos-para-muitos) entre `ORDEM_SERVICO` e `PECA_ESTOQUE`, registrando quais peças e quantidades foram utilizadas em cada serviço.

## 3. Conteúdo do Repositório

Este repositório contém os scripts SQL e a documentação completa do projeto:

* **`/documentacao`**: Pasta contendo os PDFs das Atividades 1, 2 e 3 (o processo de concepção).
* **`README.md`**: Este arquivo, com a documentação do projeto.
* **`schema.sql`**: (DDL - Data Definition Language) Script que **cria** a estrutura do banco (`CREATE DATABASE`, `CREATE TABLE`) e define todas as chaves primárias (PK) e estrangeiras (FK).
* **`intert.sql`**: (DML - Data Manipulation Language) Script que **popula** o banco de dados, inserindo os dados de exemplo (clientes, veículos, ordens, peças).
* **`consultas.sql`**: (DQL - Data Query Language) Contém 5 consultas `SELECT` complexas para análise de dados, utilizando `JOIN`, `GROUP BY`, `ORDER BY` e funções de agregação como `AVG()` e `SUM()`.
* **`manipulacao.sql`**: (DML) Contém os comandos `UPDATE` e `DELETE` para demonstrar a manipulação e a integridade dos dados (como `ON DELETE CASCADE`).

## 4. Como Executar

O projeto foi desenvolvido e testado utilizando **MySQL Workbench**.

É crucial que os scripts sejam executados na ordem correta para que as Chaves Estrangeiras (FKs) funcionem.

1. Execute o **`schema.sql`** primeiro. Isso irá criar o banco `oficina_lp4x4` e todas as tabelas vazias.
2. Execute o **`intert.sql`** em seguida. Isso irá popular as tabelas com os dados de exemplo.
3. Execute o **`consultas.sql`** para testar as consultas de leitura e ver os resultados.
4. Execute o **`manipulacao.sql`** por último, para testar as regras de atualização e exclusão.

## 5. Prova de Execução (MySQL Workbench)

Esta seção contém os prints que comprovam a criação e execução bem-sucedida de todos os scripts no MySQL Workbench.

---

### 5.1. Criação da Estrutura (Action Output)

O print abaixo mostra o log de execução (`Action Output`) do script `schema.sql`, indicando que o banco de dados (`oficina_lp4x4`) e todas as tabelas foram criadas com sucesso.


---

### 5.2. Inserção e Atualização de Dados (Action Output)

O print a seguir mostra o log de execução (`Action Output`) do script `intert.sql`, comprovando a inserção dos dados de teste e a atualização do `Valor_Total` nas ordens de serviço 1 e 2.


---

### 5.3. Resultados das Consultas (Result Grid)

Os prints a seguir mostram os resultados (`Result Grid`) das consultas de análise de dados (script `consultas.sql`).

**Resultado da Consulta 3 (Detalhes da Ordem de Serviço 1 com `JOIN`):**
*(Este print mostra a junção de 5 tabelas para exibir um serviço específico: OS, Cliente, Veículo, Mecânico e Serviço)*


**Resultado da Consulta 4 (Ranking de Clientes por Total de Ordens com `COUNT` e `GROUP BY`):**
*(Este print mostra o agrupamento de Ordens de Serviço por cliente)*

<img width="1100" height="389" alt="Imagem Consulta 4" src="" />

**Resultado da Consulta 5 (Peças mais Utilizadas com `SUM`):**
*(Este print mostra o ranking das peças mais usadas em Ordens de Serviço)*

<img width="1100" height="389" alt="Imagem Consulta5" src="" />

---

### 5.4. Execução da Manipulação (Action Output)

Este print mostra o log de execução do script `manipulacao.sql`, comprovando que os comandos `UPDATE` e `DELETE` (que incluíram a atualização de status, preço e a exclusão da OS 2) foram executados com sucesso (Linhas 24-32).

<img width="1100" height="389" alt="Imagem Log execução" src="" />
