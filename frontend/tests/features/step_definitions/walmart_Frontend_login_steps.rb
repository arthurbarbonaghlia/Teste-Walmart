#encoding: utf-8

Dado(/^Acesso a página de Login$/) do
  @login.load
end

Dado(/^que eu tenho um usuário$/) do
  @login.with(ENV['USUARIO'], ENV['SENHA'])
end

Quando(/^eu faço Login$/) do
  @login.login
end

Então(/^vejo a mensagem "([^"]*)"$/) do |message_login|
  expect(@login.login_msg.text).to include message_login
sleep(1)
end
                                                                                                                                                           
Quando(/^faço Logout$/) do                                        
    @logout.sign_out
end                                                                               

Então(/^vejo a mensagem "([^"]*)" na tela de login$/) do |message_logout|
    expect(@logout.logout_msg.text).to include message_logout
end                                                                         


Dado(/^que eu tenho o usuario "([^"]*)" e "([^"]*)"$/) do |usuario, senha|
  @user =  OpenStruct.new(
    :usuario => usuario,
    :senha => senha
  )
  @logout.with(@user)
end

Então(/^vejo a mesagem "([^"]*)"$/) do |except_msg|
   expect(@logout.error_msg.text).to include except_msg
end