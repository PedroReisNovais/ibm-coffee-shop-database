# IBM Coffee Shop Database Project

Projeto prático desenvolvido durante a formação da IBM para aplicar modelagem, normalização, implementação e migração de dados entre bancos relacionais.

## Objetivo

Projetar e implementar o banco de dados de uma rede de cafeterias, partindo da modelagem dos dados até a criação de views e transferência de conjuntos de dados entre PostgreSQL e MySQL.

## Tecnologias

- PostgreSQL
- pgAdmin 4
- MySQL
- phpMyAdmin
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
7. Criação da view `staff_locations_view` para dados de funcionários e locais de trabalho.
8. Criação da materialized view `product_info_m-view` para informações de produtos.
9. Exportação dos resultados para CSV.
10. Importação dos dados de funcionários para MySQL (`STAFF_LOCATIONS`).
11. Importação dos dados de produtos para MySQL (`coffee_shop_products`).

## Resultados

O projeto demonstra um fluxo completo de trabalho com bancos de dados relacionais: modelagem, normalização, criação de schema, carga de dados, consultas, views, materialized views, exportação e migração de dados entre PostgreSQL e MySQL.

## Estrutura planejada

```text
ibm-coffee-shop-database/
├── README.md
├── sql/
├── data/
└── screenshots/
```

## Autor

Pedro Novais
