# Desafio Técnico - Analista de Testes/QA 
### **(1) Mapa Mental dos Cenários + Gherkin**

O [Mapa Mental](https://github.com/anacarolinacerqueira/DesafioTecnico-CompassoUOL/blob/main/planejamento/Mapa%20Mental%20-%20Fluxo%20de%20Compra%20(Funcionalidades).png) criado para definição dos cenários está na pasta `/planejamento`, em formato de imagem, e pode também ser visualizado [aqui](https://whimsical.com/fluxo-de-compra-funcionalidades-MRo67aSL9hYFqJgsWsgPtb)
O Gherkin para as funcionalidades selecionadas para teste estão na pasta `\features`.
***
### **(2) Teste Prático: Trello REST API**

A API pública selecionada para o desafio foi do [Trello](https://developer.atlassian.com/cloud/trello/rest/api-group-actions/), que expoe os métodos para acessar o conjunto das funcionalidades disponíveis na aplicação. 
Neste contexto, o endpoint selecionado para ser exercitado nos testes foi o **BOARDS**.

### Instruções para Acessar e Executar a API

A API do Trello não precisa ser executada localmente, então não é necessária nenhuma configuração relacionada ao ambiente. Entretanto, para manipular a API é importante ter o [Curl](https://curl.se/) ou ferramentas como [Postman](https://www.postman.com/) instaladas.
Para ter acesso à API do Trello é necessário obter um *token* e *api key*, que são identificadores únicos associados à conta do usuário. Para obter, basta acessar [este link](https://trello.com/app-key).
Com as credenciais geradas, para verificar a conexão, basta digitar a requisição abaixo no Terminal/Prompt de Comando:

```bash
curl 'https://api.trello.com/1/members/me/boards?key={suaAPIKey}&token={SeuToken}'
```
Essa requisição deve retornar um JSON com todos os Boards (Quadros) cadastrados na conta do usuário.
Para os demais cenários de teste, foi utilizado o Postman na manipulação da API.

### Cenários Testados   

Dentro das funcionalidades disponíveis para o endpoint **boards**, de forma a compreender os cenários de Cadastro, Validação de Responses e Listagem de itens, foram testados os cenários abaixo:

| Cenário / Funcionalidade | Endpoint | Verbo/Método | Resultado Esperado |
| ------ | ------ | -------| -------|
| Criar Novo Quadro sem passar o parâmetro *Key* na Requisição | /1/boards/ | POST | []* |
| Criar Novo Quadro sem passar o parâmetro *Token* na Requisição | /1/boards/ | POST | [] |
| Criar Novo Quadro sem passar o parâmetro *Name* na Requisição | /1/boards/ |  POST | [] |
| Criar Novo Quadro passando todos os Parâmtros Obrigatórios corretamente | /1/boards/ | POST | Status Code 200 |
| Listar o único Quadro cadastrado sem passar o parâmetro *key*| /1/boards/ | GET | Status Code 401 |
| Listar o único Quadro cadastrado sem passar o parâmetro *Token*| /1/boards/ | GET | Status Code 401 |
| Listar o único Quadro cadastrado passando todos os Parâmetros Obrigatórios corretamente| /1/boards/ | GET | .JSON com campos |
| Criar Novo Quadro passando todos os Parâmtros Obrigatórios corretamente + campo obrigatório *desc* | /1/boards/ | POST | Status Code 200 |
| Listar o segundo Quadro cadastrado| /1/boards/ | GET | .JSON com campos |
| Listar um Quadro com *id* não cadastrado (inexistente)| /1/boards/ | GET | Status Code 404 |
| Alterar o nome de um Quadro | /1/boards/{id} | PUT | Status Code 200 |
| Excluir um Quadro sem passar o Parâmetro *key* | /1/boards/{id} | DELETE | Status Code 200 |
| Excluir um Quadro sem passar o Parâmetro *id* | /1/boards/{id} | DELETE | Status Code 200 |
| Excluir um Quadro | /1/boards/{id} | DELETE | Status Code 200 |
| Listar um Quadro que foi excluído | /1/boards/ | GET | não definido na documentação |

*[] = retornar um arquivo .JSON vazio. 

**OBS**: Os testes de cada cenário podem ser acessados na pasta `/api/testes/collection.json`, e o resumo dos resutados pode ser visualizado abaixo:
***
### **(3 a 5) Estratégia de Testes + Priorização + KPIs**
