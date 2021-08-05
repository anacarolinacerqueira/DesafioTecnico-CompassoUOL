# Desafio Técnico - Analista de Testes/QA 
### **(1) Mapa Mental dos Cenários + Gherkin**

O [Mapa Mental](https://github.com/anacarolinacerqueira/DesafioTecnico-CompassoUOL/blob/main/planejamento/Mapa%20Mental%20-%20Fluxo%20de%20Compra%20(Funcionalidades).png) criado para o planejamento dos cenários relacionados a um fluxo de compra, é a imagem que está na pasta `/planejamento`. O mapa também pode ser visualizado [aqui](https://whimsical.com/fluxo-de-compra-funcionalidades-MRo67aSL9hYFqJgsWsgPtb), com mais detalhes.

As regras e comportamentos do fluxo utilizados no Mapa Mental e Gherkin foram baseados na [Loja Online da Natura](https://www.natura.com.br/), uma das clientes do portfólio da Compasso UOL.

Os arquivos das funcionalidades descritas em Gherkin estão na pasta `/planejamento/features`. Não foram criadas todas as funcionalidades e cenários sinalizados no Mapa Mental, por limitação de tempo. Em alguns cenários, tentei deixar os dados como variáveis genéricas, o que facilitaria o reuso de código, em caso de automação futura.

***
### **(2) Teste Prático: Trello REST API**

A API pública selecionada para o desafio foi do [Trello](https://developer.atlassian.com/cloud/trello/rest/api-group-actions/), que expoe os métodos para acessar o conjunto das funcionalidades disponíveis na aplicação. 
Neste contexto, o endpoint selecionado para ser exercitado nos testes foi o **BOARDS**.

### Instruções para Acessar e Executar a API

A API do Trello não precisa ser executada localmente, então não é necessária nenhuma configuração relacionada ao ambiente. Entretanto, para manipular a API é importante ter o [Curl](https://curl.se/) ou ferramentas como [Postman](https://www.postman.com/) instaladas.
Para ter acesso à API do Trello é necessário obter um *token* e *api key*, que são identificadores únicos associados à conta do usuário. Para obter, basta acessar [este link](https://trello.com/app-key).
Com as credenciais geradas, para verificar a conexão, basta digitar a requisição abaixo no Terminal/Prompt de Comando (substituindo `suaAPIKey` e `SeuToken` pelas suas credenciais únicas):

```bash
curl 'https://api.trello.com/1/members/me/boards?key={suaAPIKey}&token={SeuToken}'
```
Essa requisição deve retornar um JSON com todos os Boards (Quadros) cadastrados na conta do usuário proprietário do token e key foram informados.
Para os demais cenários de teste, foi utilizado o Postman na manipulação da API.

Servidor da API: https://api.trello.com

### Cenários Testados   

Dentro das funcionalidades disponíveis para o endpoint **boards**, e na tentativa de compreender os cenários de Cadastro, Validação de Responses e Listagem de itens, foram testados os cenários abaixo:


| id | Cenário / Funcionalidade | Endpoint | Verbo/Método | Status Code Recebido |
| --- | ------ | ------ | -------| -------|
| 1 | Criar Novo Quadro sem passar o parâmetro *Name* na Requisição | /1/boards/ | POST | 400 BAD REQUEST|
| 2 | Criar Novo Quadro sem passar o parâmetro *key* na Requisição | /1/boards/ | POST | 401 UNAUTHORIZED |
| 3 | Criar Novo Quadro sem passar o parâmetro *Token* na Requisição | /1/boards/ |  POST | 401 UNAUTHORIZED |
| 4 | Criar Novo Quadro passando todos os Parâmtros Obrigatórios corretamente | /1/boards/ | POST | 200 OK |
| 5 | Listar o único Quadro cadastrado sem passar o parâmetro *key*| /1/boards/ | GET | 401 UNAUTHORIZED |
| 6 | Listar o único Quadro cadastrado sem passar o parâmetro *Token*| /1/boards/ | GET | 401 UNAUTHORIZED |
| 7 | Listar o único Quadro cadastrado passando todos os Parâmetros Obrigatórios corretamente| /1/boards/ | GET | 200 OK |
| 8 | Criar Novo Quadro passando todos os Parâmtros Obrigatórios corretamente + campo não obrigatório *desc* | /1/boards/ | POST | 200 OK |
| 9 | Listar o segundo Quadro cadastrado| /1/boards/ | GET | 200 OK |
| 10 | Listar um Quadro com *id* não cadastrado (inexistente)| /1/boards/ | GET | 404 NOT FOUND |
| 11 | Alterar o nome de um Quadro | /1/boards/{id} | PUT | 200 OK |
| 12 | Excluir um Quadro sem passar o Parâmetro *key* | /1/boards/{id} | DELETE | 401 UNAUTHORIZED |
| 13 | Excluir um Quadro sem passar o Parâmetro *id* | /1/boards/{id} | DELETE | 404 NOT FOUND |
| 14 | Excluir um Quadro | /1/boards/{id} | DELETE | 200 OK |


> **OBS**: No contexto da API do trello, no endpoint selecionado, todas as *requests* são feitas por passagem de parâmetros utilizando *PATH* ou *QUERY*, dessa forma não houve nenhum cenário no qual fosse possível enviar um *JSON*. 
***
#### Para visualizar as requisições de Teste

A requests de cada cenário descrito acima pode ser acessadas utilizando o postman. Basta importar os arquivos `trello.postman_collection.json` e `trello.postman_environment.json`, que estão na pasta `/api/testes/`. Lembrando que **os parâmetros token e api-key precisam ser adicionados às requisições**.

![Importação de Collection e Envoronment no Postman](https://cdn.discordapp.com/attachments/845388670390370344/872721216115466240/import-postman.png)

Alguns arquivos JSON de exemplo, obtidos via requisição podem ser encontrados na mesma pasta.

### **(3 a 5) Estratégia de Testes + Priorização + KPIs**

O documento com a descrição da Estratégia, Priorização e KPIs de teste, é o arquivo em formato PDF que está na pasta `/planejamento`.

***
**Autora**: [Ana Carolina Cerqueira](https://www.linkedin.com/in/anacarolinacerqueira/)