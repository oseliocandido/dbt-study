# Courses

## Finalizado
- Dbt Fundamentals
- Jinja, Macros, Packages
- Analysis and Seeds
- Webhooks

## Watching 
- Advanced Testing

# Missings (Ver se falta mais)
- Advaced Deployemnt with dbt Cloud
- Refactoring for Modularity
- Continuar com configuracao ainda de tests, snapshots, etc

## Refazer Simulado

## Ler todo Site

## Revisar error codes in dbt cloud and dbt core e lembrar que se for do checkbox nao resulta 

##  Estudar return codes of dbt core and dbt cloud

## Best Practices
- [Best Practices](https://docs.getdbt.com/best-practices)
- CI CD
- Folder Structure
- Snapshots

## Tests
- Principais Argumentos de testes

## Dbt Cloud
- Testar todo codigo na plataforma e ler novamente documentacao
 -- Enviroments Variable
   --- Precendece Order (Workflow, etc)
 -- Target
 -- Best Practices
 -- Git workflow (Dev vs Production)
 -- Prod vs Dev Schema and branches
 -- PR Template
 -- CI/ CD
 -- Slim CI CD
 -- QA, CI CD

## Seletores
- Tests 
 -- Indirect Selection, Eager
- States 
 -- Artifcats with defer, state, modifield
- Seletores em run, seed
 -- Union, intersect, exclude, package, source, all 
 -- Rever tudo e testar na pratica com lineage
- Dbt build and main args like --fail-fast

## Artifcats
- Sources, run_results, manifest, catalog
- Ver agora onde esta os codigos do run_results
- [Artifacts](https://docs.getdbt.com/docs/deploy/artifacts)
- [Source Freshnness](https://docs.getdbt.com/docs/deploy/source-freshness)
 -- Entender como funciona ele relacionado com defer no cloud e local

## Materialization
- Snapshots
  - Usado em SCD type 2
  - target_schema, target_database, stategy = timestamp, check, check_cols=, update_at, unique_key=
  - Schema da overwrite em cima do target.schema e nao usa generate_schema_name macro as name generation
  - 3 parametros obrigatoriros
    - strategy, unique_key, target_schema
  - Testar na pratica invalidate hard deletes, pois nao entendi mesmo esse optional args


## Threads
- Threas behavior

## On-run-start  and on-run-end
- Ler no site e fazer resumo disso

## Grants 
- Study [Grants](https://docs.getdbt.com/reference/resource-configs/grants)

## Webhooks
- Support outgoing wehooks
  - Jobs starting , erroring and completing


## Custom Schemas
- Sources e snapshots nao tem concatenacao. SObrescrever mesmo!

## Advanced Testing
- CI CD
- Schema Tests (Generic Tests)
- Singular Tests
- Custom Generic Tests


- dbt test to run it  on local dev or in production with dbt build generallty