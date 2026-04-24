# language: pt
Funcionalidade: Tela de cadastro - checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro  
  Para finalizar minha compra

  Contexto:
    Dado que o usuário está na página de cadastro de checkout

  Cenário: Cadastro com os campos obrigatórios preenchidos
    Quando o usuário preencher todos os campos obrigatórios
    E clicar no botão "Finalizar Compra"
    Então a compra deve ser finalizada com sucesso

  Cenário: Cadastro com e-mail em formato inválido
    Quando o usuário inserir um e-mail em formato inválido
    E clicar no botão "Finalizar Compra"
    Então deve ser exibida a mensagem "Email inválido"
    E o usuário deve permanecer na tela de cadastro

  Cenário: Tentativa de cadastro com campos obrigatórios vazios
    Quando o usuário clicar no botão "Finalizar Compra" sem preencher os campos obrigatórios
    Então deve ser exibida a mensagem "Preencha os campos obrigatórios"
    E o usuário deve permanecer na tela de cadastro

  Esquema do Cenário: Validação do campo e-mail no cadastro
    Quando o usuário preencher os campos obrigatórios com o e-mail "<email>"
    E clicar no botão "Finalizar Compra"
    Então o sistema deve retornar "<resultado>"

    Exemplos:
      | email               | resultado                     |
      | usuario@valido.com  | compra finalizada com sucesso |
      | usuarioinvalido.com | Email inválido                |
      | usuario@.com        | Email inválido                |
      | @dominio.com        | Email inválido                |
