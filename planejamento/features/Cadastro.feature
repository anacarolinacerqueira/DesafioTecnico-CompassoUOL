# language: pt

Funcionalidade: Realizar Cadastro
  Com objetivo de ter uma conta no site da loja 
  Como um cliente
  Eu desejo me cadastrar

  #Executa cenários de e-mail ou cpf já cadastrados e o cenário de sucesso.

  Contexto:
    Dado que o usuário está preenchendo o formulário de Cadastro

  Cenário: Usuário tenta fazer cadastro
    E preenche campo <email> 
    E preenche campo <cpf> 
    Quando o usuário tenta finalizar a operação
    Então recebe uma mensagem de <tipo_mensagem>

   Exemplos: 
    | email     | cpf        | tipo_mensagem |
    | cadastrado| cadastrado |   falha       |
    | cadastrado| novo       |   falha       |
    | novo      | cadastrado |   falha       |
    | novo      | novo       |  sucesso      |