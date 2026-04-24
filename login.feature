# language: pt
Funcionalidade: Login na plataforma

  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma  
  Para visualizar meus pedidos

  Contexto:
    Dado que o usuário está na página de login

  Cenário: Login com dados válidos
    Quando o usuário inserir um usuário e senha válidos
    E clicar no botão "Login"
    Então o usuário deve ser direcionado para a tela de checkout

  Cenário: Tentativa de login com dados inválidos
    Quando o usuário inserir um usuário ou senha inválidos
    E clicar no botão "Login"
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"
    E o usuário deve permanecer na tela de login

  Esquema do Cenário: Validação de login com diferentes credenciais
    Quando o usuário inserir o usuário "<usuario>" e a senha "<senha>"
    E clicar no botão "Login"
    Então o sistema deve retornar "<resultado>"

 
    Exemplos:
      | usuario             | senha  | resultado                                     |
      | JamesMatt@gmail.com |   2023 | acesso permitido e redirecionamento realizado |
      | AlexSenna@gmail.com | 989976 | Usuário ou senha inválidos                    |
      | KauaDes@gmail.com   |  91324 | Usuário ou senha inválidos                    |
     
