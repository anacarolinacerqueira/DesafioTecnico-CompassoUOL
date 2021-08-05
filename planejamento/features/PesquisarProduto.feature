# language: pt

Funcionalidade: Pesquisar por um Produto
  Com objetivo de encontrar um determinado produto no site da loja 
  Como um cliente
  Eu desejo realizar uma busca

  #Executa cenários de busca por um produto que existe e um produto que não existe no site.

  Contexto:
    Dado que o cliente está buscando por um produto no site da loja

  Cenário: Pesquisa por um Produto
    Quando pesquisa por <produto>
    Então verifica que ele foi <status>

   Exemplos: 
    | produto     | status         |
    | existente   | encontrado     | 
    | inexistente | não encontrado |