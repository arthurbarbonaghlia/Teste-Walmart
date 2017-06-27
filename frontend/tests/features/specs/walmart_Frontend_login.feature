#language: pt

Funcionalidade: Login e Logout
    Sendo usuário
    Posso logar no sistema The Internet Herokuapp
    Também posso fazer o Logout

Cenário: Acesso
   * Acesso a página de Login

Cenário: Usuário faz Login
  Dado que eu tenho um usuário
  Quando eu faço Login
  Então vejo a mensagem "You logged into a secure area!"



Cenário: Usuário logado faz Logout
     Estando logado no sistema
     Ao efetuar Logout
     O usuário sai do sistema

  Quando faço Logout
  Então vejo a mensagem "You logged out of the secure area!" na tela de login
    
 @except   
Esquema do Cenário: Tentativa de Login sem sucesso
 
  Dado que eu tenho o usuario <usuario> e <senha>
  Quando eu faço Login
  Então vejo a mesagem <msg>

 Exemplos:
      | usuario            | senha                  | msg                         |
      | "tomsmith"         | "123480fgdf5!"         | "Your password is invalid!" |
      | "usuário_inválido" | "SuperSecretPassword!" | "Your username is invalid!" |


