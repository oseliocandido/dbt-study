# Finalizado
- Dbt Fundamentals
- Jinja, Macros, Packages
- Analysis and Seeds



# DBT Fundamentals

## Study
- `Revisar DBT Cloud`
- Selectors
  -- dbt tests with all selectors type
  -- Lineage Graph and dbt commands like  select, exclude, yaml selectors
  -- dbt build and main args and --fail-fast with exact works 
  -- Union and Intersect
- States and defer
- Main Artifcats [Artifacts](https://docs.getdbt.com/docs/deploy/artifacts)
- Commands
- dbt Cloud, workflow, enviroments, best practices
 -- Enviroments
  -- Dev vs Production
  -- Branches Workflow
  -- Jobs, Enviroments, Env Variables 
  -- Env Variables Precedence Order
 -- QA, CI CD
- Threads
- Study [Grants](https://docs.getdbt.com/reference/resource-configs/grants)
- Study on-run-start and on-run-end
- Hooks and hooks with on-run-end combination
- Estudar toda docs do site de novo, tudo!!!!!


## Models
- Staging models
  - One to one from source with simple transformation logic to be reused downstream
- Naming Conventions
  - Raw Models (Sources)
  - Staging (Renaming column, cast type)
  - Intermetdiate (Between Staging and final table )
  - Fact and dim tables inside marts directory


## Sources
- Study [Source Freshnness](https://docs.getdbt.com/docs/deploy/source-freshness)


## Tests
- Pode ser usado em models, seeds, sources, snapshots, analysis
- Estudar indirect selection, graph operatoors with it, eager, etc
- Estudar out-of-box generic test relationships, accepted_values
- Testar diferentes config error_if, fail_calc principalmente e ver como eh comportamento
 - Where tb, limit, etc

## Documentation
- Which resources can i add docs? 
  - I think its models, seeds, snapshots, analysis


## Deployment
- Study dbt Cloud UI and git workflow with CI CD pipeline
- Entender como eh fluxo de producao do dbt novamente com dbt Cloud and COre
 -- Best Practices, branches, etc
- Brtanch QAA

# Analyses and Seeds

## Analyses

- Version Controlled
- .sql files  
- Analyses Folder
- Support Jinja
- dbt compile

## Seeds

- Csvs version controlled
- Unchanged frequent data
- Materialized as table
- Small data (Static Data)


# Jinja, Macro, Packages
- Jinja (Templating Language)
 -- Advance Use (do run_query)
    --- https://courses.getdbt.com/courses/take/jinja-macros-packages/lessons/32342801-clean-stale-models-macro

- Packages (https://docs.getdbt.com/docs/build/packages)
  -- dbt deps para instalar os pacotes
  -- Sempre usar DBT_ENV_SECRET para tokens de acesso ao repo 
    -- DBT_ENV_SECRET_ faz com que
      -- Nao seja visivel em logs
      -- Apenas possivel parse deles em profiles.ymls and packages.yml
  -- Sempre pegar lastes patch of minor version 
  -- Check checksum of the repo



# Webooks