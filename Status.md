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
 -- dbt version
 -- git branch default
 -- target.schema


 -- Dev:
  --- Dev Enviroment 
    --- Default Branch
    --- dbt version
    --- Each user with only on dev enviroment related to own credentiais
      --- Env Variables
      --- target.schema 
      --- target.name
      --- target.threads
 
  --- Deployment
     ---- Multiple Deploy Env
     ---- Env Variables
     ---- Tem um SA exclusivo para prod com permissoes necessarias
     ---- target.schema


  -- Jobs
    -- Commands
    -- Source Freshness
    -- Docs on end
    -- Sequence Events
      -- Clone git repo
      -- DW connection
      -- dbt deps
      -- Source Freshness if enabled
      -- Commands
      -- Geneate DOcs if enabled
    -- target.name
    -- target.threads
    -- Env Variables
     
    -- Api, Schedule, Trigger

Precedece Env Variable Order
- Personal Override - Job
- Env Enviroment Variable
- Project Default
- Default Value of {{env_var('DBT_NICE','default')}}

Straegies Deployment
dbt build daily (approximate true)
dbt build --full-refresh every sunday (reliable true!)


Prod Env
- Emails-Notifications if fail 
- Webhooks Usage
- Schema Analytics with SA dedicated to use it

------------------------------------------------------------------------------------
Architectures

Trunk Strategies Workflow
- Dev -> Prod (One Trunk)
 -- Features from git pull from main branch
 -- Switch to new branch
 -- Dev new features
 -- Commit them
 -- Push to remote
 -- Open pull request  
    -- Before opening pull request, its possible to use github actions to when pusshed with
      --- dbt build --select "state:modified+" apenas dbt run e test apenas nos modelos que estao diferentes do ultimo
      sucessfull run usando-se  manifest,sjon
 -- Merge 


- Dev -> QA -> Prod (Many Trunks)
-

------------------------------------------------------------------------------------



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