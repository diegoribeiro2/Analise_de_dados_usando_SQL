# Dashboard para Tomada de Decisão com SQL

Desenvolvi um dashboard utilizando **SQL** com o objetivo de definir os próximos passos estratégicos de uma **Edtech**. Utilizei as informações disponíveis para estabelecer a estratégia da empresa para o próximo ano, focando no aumento do número de usuários cadastrados.

## Contexto

Como analista de dados em uma Edtech focada em crescimento acelerado, meu objetivo foi analisar vários aspectos da aquisição de clientes para avaliar o status do crescimento de novos usuários. A partir dessas análises, elaborei recomendações e planos de ação que orientarão a estratégia de crescimento da empresa.

## Sobre os Dados

As bases de dados utilizadas contêm informações detalhadas sobre os leads e o processo de interação com eles. Abaixo, um resumo das principais tabelas e colunas:

| Tabela                               | Coluna                                  | Descrição                                               |
|--------------------------------------|-----------------------------------------|---------------------------------------------------------|
| `leads_basic_details`                | `lead_id`                               | ID único do lead [string]                               |
| `leads_basic_details`                | `age`                                   | Idade do lead [int]                                     |
| `leads_basic_details`                | `gender`                                | Sexo do lead [string]                                   |
| `leads_basic_details`                | `current_city`                          | Cidade de residência do lead [string]                   |
| `leads_basic_details`                | `current_education`                     | Detalhes da educação atual do lead [string]             |
| `leads_basic_details`                | `parent_occupation`                     | Ocupação do pai do lead [string]                        |
| `leads_basic_details`                | `lead_gen_source`                       | Fonte de geração do lead [string]                       |
| `sales_managers_assigned_leads_details` | `snr_sm_id`                           | ID do gerente de vendas sênior [string]                 |
| `sales_managers_assigned_leads_details` | `jnr_sm_id`                           | ID do gerente de vendas júnior [string]                 |
| `sales_managers_assigned_leads_details` | `assigned_date`                       | Data em que o lead foi atribuído ao gerente [data]      |
| `leads_interaction_details`          | `lead_stage`                            | Estágio do lead durante a interação [string]            |
| `leads_interaction_details`          | `call_status`                           | Status da chamada feita ao lead [string]                |
| `leads_demo_watched_details`         | `demo_watched_date`                     | Data em que o lead assistiu à sessão de demonstração [data] |
| `leads_demo_watched_details`         | `watched_percentage`                    | Percentual da sessão assistida pelo lead [float]        |
| `leads_reasons_for_no_interest`      | `reasons_for_not_interested_in_demo`    | Motivo da falta de interesse do lead em assistir à demo [string] |

## Etapas de Desenvolvimento

Segui as seguintes etapas para criar o dashboard e auxiliar a equipe de negócios a desenvolver planos de ação:

### 1. Gráficos de Pizza
   - Visualização de dados categorizados, como distribuição de gênero e ocupações dos leads.
   - **Funções usadas:** Operações Matemáticas, Agrupamento.

### 2. Cartões (Cards)
   - Resumo de métricas importantes, como total de leads, média de idade dos leads e taxa de conversão.
   - **Funções usadas:** Operações Matemáticas.

### 3. Gráficos de Barras
   - Visualização das principais fontes de geração de leads e seu impacto.
   - **Funções usadas:** Operações Matemáticas, Agrupamento, Ordenação.

### 4. Tabelas de Média
   - Tabela mostrando a média de visualização de sessões de demo, filtrando apenas as que possuem `watched_percentage` maior que 0.5 e agrupando por `language`.
   - **Funções usadas:** Operações Matemáticas, Agrupamento, Filtros (`WHERE`).

### 5. Gráficos de Linhas
   - Gráfico de linhas mostrando a quantidade de ligações atendidas por plataforma ao longo do tempo.
   - **Funções usadas:** Operações Matemáticas, Agrupamento, União, Filtros (`WHERE`).

### 6. Integração no Dashboard
   - Organizei todas as visualizações e métricas em um único dashboard para facilitar a análise e a tomada de decisão pela equipe de negócios.
