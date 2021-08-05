# language: pt

Funcionalidade: Realizar pagamento e finalizar compra
  Com a intenção de finalizar uma compra no site da loja 
  Como um cliente
  Eu desejo Adicionar realizar o pagamento

  #Executa cenários de pagamento com cartão de crédito e boleto.

    Contexto:
    Dado que o cliente está logado no site da loja
    E adicionou os dados de entrega
    E está na tela de pagamento
    

    Cenário: Pagamento com Cartão válido
    Quando seleciona a opção cartão de crédito
    E preenche os dados do cartão corretamente
    E finaliza compra
    Então recebe mensagem de sucesso

    Cenário: Pagamento com Cartão inválido
    Quando seleciona a opção cartão de crédito
    E preenche os dados do cartão com dados inválidos
    E finaliza a compra
    Então recebe mensagem de falha

    Cenário: Pagamento com boleto
    Dado que o cliente seleciona a opção Boleto
    Quando finaliza a compra
    Então recebe mensagem de sucesso