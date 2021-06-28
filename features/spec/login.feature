# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de realizar login
  Para efetuar compras

Contexto:
    Dado que esteja na página de inicio

  # Completar o cenário abaixo
  @login_valido
  Cenário: Realizar login
    Quando clicar no botão de login
    Então tela de autenticação deve ser exibida
    Quando eu realizar login com 'dados_validos'
    Então tela de minha conta deve ser exibida

  # Completar o cenário abaixo
  @login_invalido
  Cenário: Login com falha
    Quando clicar no botão de login
    Então tela de autenticação deve ser exibida
    Quando eu realizar login com 'dados_invalidos'
    Então devo receber uma mensagem de falha na autenticação