require 'pry'

module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, '#columns'
    element  :input_create_account_email, '#email_create'
    element  :btn_create_an_account, '#SubmitCreate'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, '#login_form'
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, '.alert-danger'
  

    def formulario(login) 
      case login
      when 'dados_validos'
        input_login_email.set "diego-teste@hotmail.com"
        input_login_password.set "compasso123"
      when "dados_invalidos"
        input_login_email.set "diego-teste@hotmail.com"
        input_login_password.set "compassoUol"
      end
    end

  end
end
