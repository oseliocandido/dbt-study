# Courses

## Finalizado
- Dbt Fundamentals
- Jinja, Macros, Packages
- Analysis and Seeds
- Webhooks
- Advanced Testing


## Watching 


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
- source fresnness

- Deployment tests, etc
- dbt test to run it  on local dev or in production with dbt build generallty
- Eager, Indirect, etc

Source Fresnhess geralmente obivamente sao em jobs de producao


Tests Precedence in Generic Tests
1.  dbt_project.yml
2.  config of generic test
3.  yaml config



Integration tests

Da pra usar dbt run-operation --args
- Estudar flags

Development Ad-hoc with dbt test
CI CD test before PR creation

- Testar PR Schema com dbt Cloud

Em production se teste falha, manda slack, email ou algo pra dizer que deu ruim algo

PULL requests - Se falhar n da pra dar merge, se der bom da pra dar mege
- dbt build --models state:modified+ (Olha no manifest.json do branch que que fazer merge e do ultimo production sucessfull )


Tests in QA branch
(Reler Branch Strategies)
https://docs.getdbt.com/docs/deploy/continuous-integration


Models, seeds, snapshots e tests tem run_results 
sucess, error, skipped, fail, warn pass

When to test
- When to test
There are 4 major points in time when you should consider testing your code

In development, it is critical to test your changes to modeling logic while you make changes. This can help individual developers find bugs before opening a pull request.

In production, it is important to continue testing your code to catch failures when they happen. This can empower the data team to catch data quality issues well before stakeholders are impacted.

When proposing changes / opening a pull or merge request, we can run automated tests against our proposed changes to catch any issues that may not have been caught in the development cycle mentioned above.

On a middle / qa branch, it can be helpful to test a batch of changes that have been made in an isolated testing environment before then merging the code to the main / production branch.

-----------------------
No bbt build se error tiver com severidade warn ele da warn mas n da skill nos modelos downstgream, continuinaod processo
de build (run e test)

The --resource-type and --exclude-resource-type flags include or exclude resource types (such as unit tests) from the dbt run, dbt build, and dbt clone commands

dbt_test__audit