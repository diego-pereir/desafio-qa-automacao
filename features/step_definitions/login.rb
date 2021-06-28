Dado("que esteja na página de inicio") do
  @home_page.load
  end

Quando("clicar no botão de login") do
    @home_page.btn_go_to_sign_in.click
  end

Então("tela de autenticação deve ser exibida") do
    expect(@login_page.breadcrumb).to have_content "Authentication"
  end
  
Quando("eu realizar login com {string}") do |login|
    @login_page.formulario(login)
    @login_page.btn_sign_in.click    
  end
  
Então("tela de minha conta deve ser exibida") do
    expect(@login_page.breadcrumb).to have_content "My account"
  end

Então("devo receber uma mensagem de falha na autenticação") do
  expect(@login_page.alert_message_authentication_failed).to have_content 'Authentication failed.'
  end