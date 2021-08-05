# language: pt

Funcionalidade: Adicionar Produtos à Sacola
  Com a intenção de comprar produtos no site da loja 
  Como um cliente
  Eu desejo Adicionar produtos à Sacola

  #Executa cenários de adição de um ou mais produtos à Sacola, verificando o cálculo da soma do pedido.

    Contexto:
    Dado que o cliente está navegando no site da loja

    Cenário: Adicionar 1 produto à Sacola
    E que o cliente adiciona o <produto1> a sacola
    Quando visualiza o <total> da compra
    Então verifica que é igual ao <valor> dos produtos

    Cenário: Adicionar 2 produtos à Sacola
    E que o cliente adiciona o <produto1> a sacola
    E que o cliente adiciona o <produto2> a sacola
    Quando visualiza o <total> da compra
    Então verifica que é igual ao <valor> da soma dos produtos