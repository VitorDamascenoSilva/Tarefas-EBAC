# language: pt
Funcionalidade: Configurar produto
  
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que o usuário está na página de compra do produto

  Cenário: Adicionar produto ao carrinho com configurações válidas
    Quando o usuário selecionar um tamanho, uma cor e uma quantidade igual ou inferior a 10
    E clicar no botão "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho

  Cenário: Adicionar produto sem selecionar o tamanho
    Quando o usuário tentar adicionar o produto ao carrinho sem selecionar um tamanho
    Então deve ser exibida a mensagem "Selecione um tamanho"
    E o produto não deve ser adicionado ao carrinho

  Cenário: Adicionar produto sem selecionar a cor
    Quando o usuário tentar adicionar o produto ao carrinho sem selecionar a cor
    Então deve ser exibida a mensagem "Selecione uma cor"
    E o produto não deve ser adicionado ao carrinho

  Esquema do Cenário: Validação da quantidade de produtos
    Quando o usuário selecionar um tamanho, uma cor e a quantidade "<quantidade>"
    E clicar no botão "Adicionar ao carrinho"
    Então o sistema deve retornar "<resultado>"

    Exemplos:
      | quantidade | resultado                      |
      |          1 | produto adicionado ao carrinho |
      |          5 | produto adicionado ao carrinho |
      |         10 | produto adicionado ao carrinho |
      |         11 | quantidade máxima excedida     |
