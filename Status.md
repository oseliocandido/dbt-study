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
Documentos sao gerados a nivel de job


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
----------------------------------------------------
Comamndos, select nodes, best practice deploy command jobs
- (Testar @, shared parents, nomendclatura de depdendencies and dependents, excludem, select, tags, tests, indirect selection, union, interset)

Da aula agora
- dbt build (run, test in dag sequence)
 -- Include snapshots and seeds
 -- se teste falhar, skip tables downstream
 -- suporta 
   -- full-refresh, select, exclude, resource-type, fail fast
   -- resource type eh source, analysis, model, snapshot, seed, test, exposure (Segundo o video ne)

Standarb job
- dbt build 
- daily


Full Refres Job
- dbt build --full-refresh
- weekly

Time Sensitive
- Some business areas has different refresh schedule
- Applied to some specifc models

Fresh Rebuild 
- dbt build source_status:fresher+
- Compara max_loaded_at from different dbt source freshness

One off jobs

tags related to frequency
exposure approach 
source approach 
folder structure


Imagina que tem parents iguals de modelos downstram iguais e que seriam buuildados mais de 1 vez desncessariamente
- union and intersetction evita isso

Unified Jobs



COmo geralmente se seta slim ci jobs e qual relacao como coloca-se tais comandos
e qual relacao com todo pipeline de dados usando-se essa featuyre?

ver como roda lista de tags no dbt run


Entender melhor como source freshness funciona na pratica com o modified e slim ci cd


Source Fresnhess
- Compara artefacto do source.json do job atual com job antigo ou do ambiente (defferal)
 sendo que esse ultimo job tem que ter sido com sucesso.
 Caso max(date) do json atual comparado com antigo seja maiorq ue zero, sera atualizado com fresher+, 
 caso contrario, nenhum nodo. Logica princiapl eh source atual ta dentro do sla e se tiver que seria o pass
 ai compara as data e faz o fresher


 CI CD Job

(On Pull Resquest)
 dbt build --select "state:modified+" --state ./lets
 PR Schema