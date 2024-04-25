# Courses

## Finalizado
- Dbt Fundamentals
- Jinja, Macros, Packages
- Analysis and Seeds
- Webhooks
- Advanced Testing

## Watching 
- Advaced Deployemnt with dbt Cloud


# Missings (Ver se falta mais)
- Refactoring for Modularity


## Refazer Simulado
## Ler todo Site
## Revisar error codes in dbt cloud and dbt core e lembrar que se for do checkbox nao resulta 
##  Estudar return codes of dbt core and dbt cloud




## Advacend Deployment
- Enviromments
-- Tem nele dbt version e de onde vai ser a branch source que sera desenvolvida em cima

-- Dois tipos: 
  --- Dev:
   --- Cada user tem somente um dev enviroment
   --- Target schema geralmetne dbt_username
   --- Coloca-se credenciais do user relacionado ao DW
   --- Connection details
      --- target.schema 
      --- target.name
      --- target.threads
      --- Enviroment variables
      --- dbt version


  --- Deployment
     ---- Tem um SA exclusivo para prod com permissoes necessarias
     ---- target.schema


    ---- Jobs
          commands
          generate docs on run
          gerenate docs source fresness
          target.nname
          target.threads

















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


- Target Variables
 -- target.name
 -- target.database
 -- target.schema
 -- target.port


{{ target.name}}


Enviroments
https://docs.getdbt.com/docs/environments-in-dbt