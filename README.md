# IBM Coffee Shop Database Project

Projeto prático desenvolvido durante a formação da IBM para aplicar modelagem, normalização, implementação e migração de dados entre bancos relacionais.

## Objetivo

Projetar e implementar o banco de dados de uma rede de cafeterias, partindo da modelagem dos dados até a criação de views e a transferência de conjuntos de dados entre PostgreSQL e MySQL.

## Tecnologias

- PostgreSQL e pgAdmin 4
- MySQL e phpMyAdmin
- SQL
- Modelagem ERD
- CSV

## Atividades realizadas

1. Análise das entidades e atributos do conjunto de dados.
2. Criação do modelo entidade-relacionamento (ERD).
3. Normalização do modelo até a Segunda Forma Normal (2FN).
4. Definição de chaves primárias e relacionamentos.
5. Geração do script SQL a partir do ERD.
6. Criação e carga das tabelas no PostgreSQL.
7. Criação da view `staff_locations_view`.
8. Criação da materialized view `product_info_m-view`.
9. Exportação dos resultados para CSV.
10. Importação dos conjuntos de dados no MySQL.

## Estrutura do repositório

```text
ibm-coffee-shop-database/
├── README.md
├── sql/
│   ├── GeneratedScript.sql
│   └── views.sql
├── data/
│   ├── product_info_m-view.csv
│   └── staff_locations_view.csv
└── screenshots/
    └── Task8.png
```

## Arquivos disponíveis

- `sql/GeneratedScript.sql`: script de criação do esquema.
- `sql/views.sql`: definições das views usadas no projeto.
- `data/staff_locations_view.csv`: exportação da view de funcionários e locais.
- `data/product_info_m-view.csv`: exportação da materialized view de produtos.
- `screenshots/Task8.png`: evidência disponível da atividade 8.

## Evidências ainda não incluídas

Os arquivos `Task1.png`–`Task7.png`, `Task9.png` e `Task10.png` não estavam disponíveis para inclusão. O arquivo `CoffeeData.sql` também não está presente no repositório porque não foi localizado entre os anexos disponíveis.

## Autor

Pedro Novais
