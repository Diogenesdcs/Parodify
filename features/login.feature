#language: pt

Funcionalidade: Login
    Sendo um úsuario previamente cadastrado
    Quero acessa o sistema com meu email  e senha
    Para que eu possa ter acesso as playlists do Parodify
    @login
    Cenário: Login
        Dado que acesso a pagina Login
        Quando submento minhas credenciais com: "diogenes@uol.com.br" e "123456"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Login

        Dado que acesso a pagina Login
        Quando submento minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Oops! Email e/ou senha incorretos."

        Exemplos:
            | email                  | senha |
            | diogenescs@hotmail.com | 123   |





