# Best Practices 
- https://docs.getdbt.com/best-practices
- Geral por cima (Rever dps antes da prova)

## Notes
- Testar se isso aqui  dbt build --select staging.stripe+
 -- Lembrar o que essa syntaxe exatamente faz 
- https://docs.getdbt.com/reference/node-selection/syntax (iMPORTANTE)

## How we strucuture our projects
- Source Conformed and Business Conformed
  - Source: External System
  - Business: Business Needs
---------------------------------------------------------------------------------
Example:
  jaffle_shop
├── README.md
├── analyses
├── seeds
│   └── employees.csv
├── dbt_project.yml
├── macros
│   └── cents_to_dollars.sql
├── models
│   ├── intermediate
│   │   └── finance
│   │       ├── _int_finance__models.yml
│   │       └── int_payments_pivoted_to_orders.sql
│   ├── marts
│   │   ├── finance
│   │   │   ├── _finance__models.yml
│   │   │   ├── orders.sql
│   │   │   └── payments.sql
│   │   └── marketing
│   │       ├── _marketing__models.yml
│   │       └── customers.sql
│   ├── staging
│   │   ├── jaffle_shop
│   │   │   ├── _jaffle_shop__docs.md
│   │   │   ├── _jaffle_shop__models.yml
│   │   │   ├── _jaffle_shop__sources.yml
│   │   │   ├── base
│   │   │   │   ├── base_jaffle_shop__customers.sql
│   │   │   │   └── base_jaffle_shop__deleted_customers.sql
│   │   │   ├── stg_jaffle_shop__customers.sql
│   │   │   └── stg_jaffle_shop__orders.sql
│   │   └── stripe
│   │       ├── _stripe__models.yml
│   │       ├── _stripe__sources.yml
│   │       └── stg_stripe__payments.sql
│   └── utilities
│       └── all_dates.sql
├── packages.yml
├── snapshots
└── tests
    └── assert_positive_value_for_total_amount.sql
---------------------------------------------------------------------------------

### Staging
- Materialized as views (Freshness data)
- 1 to 1 from source system
- Lighweight transformations like renaming, casting, multipliy, etc
- Most simple of possible because it will be used downstream
- No joins and no aggreagations

- Models Folder
  - Staging
    - Folder stripe, _stripe__models.yml, _stripe__sources.yml, _stripe__docs.md
    - stg_stripe__model1.sql, stg_model2.sql


## Intermediate
- Business Centric
- int_finance__models.yml
- int_finance_pivoted_table
- Geralmente como efemeros dai
 -- Doesnt should be exposed to endusers in production schema
- Ou materializado como views com permissoes diferentes

## Marts
- Business Definied ENtities
- Materilizado como table ou incremental
- Por departamento/ area
-----------------------------------------------------------
## Best Practices Materialization
- https://docs.getdbt.com/best-practices/materializations/1-guide-overview
- https://docs.getdbt.com/best-practices/materializations/5-best-practices
- Onde fica o tempo que cada modelo demorou pra build em qual artefato?
 -- Ver em todos artefatos o que tem de importante em cada um com seus usos de caso
 de e suas relacoes com comando mais usados como source_status: etc

## Ler isso 
https://docs.getdbt.com/reference/commands/build

## Se nao me engano, caiu na prova varios outras flags na prova de CLI mesmo
- Estudar eles

# Advanced Testing Course
- Sao assertions
- Sql Statements

- Count(*) != 0 is the default


## Tests
- Generic
- Singular / Specific (Business Logic, Edge Case)
- Custom Generic
- From packages (dbt_utils, expectations)
- Freshness of data with dbt source freshness

## Duvidas
- COmo usar tests de outros pacotes? Testar!
