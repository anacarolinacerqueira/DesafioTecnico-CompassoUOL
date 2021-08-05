# language: pt

Funcionalidade: Adicionar Produtos a Sacola
  Com objetivo de reservar os produtos pela página inicial ou pela página do produto, 
  Como um cliente
  Eu desejo adicionar um produto à sacola

  #Executa cenários de adição de um produto à sacola por caminhos diferentes, utilizando o botão Comprar.

  Cenário: Adicionar Produtos à Sacola via Página Inicial
    Dado que o cliente está na Página Inicial
    Quando adiciona um produto a sacola
    Então verifica que o produto adicionado é exibido na sacola

  Cenário: Adicionar Produtos à Sacola via Página do Produto
    Dado que o cliente está na página de um <produto>
    Quando adiciona um produto a sacola
    Então verifica que o produto adicionado é exibido na sacola