# language: pt

Funcionalidade: Adição de produto ao carrinho no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de colocar um produto no carrinho
  Para deixar reservado

Contexto:
    Dado que esteja na página inicio

  @produto_carrinho
  Cenário: Produto no carrinho
    Quando clicar em aba WOMEN
    Então tela de produtos WOMEN deve ser exibida
    Quando adicionar um produto ao carrinho
    Então banner de produto adicionado com sucesso deve ser exibido