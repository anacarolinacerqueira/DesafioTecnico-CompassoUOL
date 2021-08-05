# language: pt

Funcionalidade: Fazer Login
  Com objetivo acessar minha conta pessoal no site da loja 
  Como um cliente
  Eu desejo fazer Login

  #Executa cenários de login ou senha incorretos e o cenário de sucesso.

  Contexto:
    Dado que o usuário está na tela de Login

  Cenário: Usuário tenta fazer login
    E preenche o campo <email> 
    E preenche o campo <senha> 
    Quando o usuário tenta fazer login
    Então recebe uma mensagem de <tipo_mensagem>

    Exemplos:
    | email     | senha     | tipo_mensagem |
    | correto   | incorreta |   falha       |
    | incorreto | correta   |   falha       |
    | correto   | correta   |  sucesso      |