
class LoginPage <SitePrism::Page
    set_url '/login'

    element :username, '#username'
    element :password, 'input[type=password]'
    element :login, '.radius'
    element :login_msg, '.flash.success'
    
    def with(user, pwd)
        self.username.set user
        self.password.set pwd
        self.login.click
    end   
end


class HomeLogout <SitePrism::Page
    element :button_logout, '#content a[class="button secondary radius"]'
    element :username, '#username'
    element :password, 'input[type=password]'
    element :login, '.radius'
    element :logout_msg, '#flash-messages [id=flash]'
    element :error_msg, '#flash-messages [class="flash error"]'
    
    def with(user)
    self.username.set user.usuario
    self.password.set user.senha
    self.login.click
end

    def sign_out
     self.button_logout.click
    end
end 
