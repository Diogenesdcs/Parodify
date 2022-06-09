#language:pt


Funcionalidade: Cadastro de usuario
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    #BDD (Behavior Driven Development)
    #Desenvolvimento guiado por Comportamento

    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | diogenes-carvalho@hotmail.com.br |
            | senha          | a123456                          |
            | confirma_senha | a123456                          |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | confirma_senha | <confirma_senha> |
        Então devo ver a mensagem com: "<mensagem_saida>"
        #criação de placeholders <> para vincular os campos da tabela de acordo com a matriz.

        #matriz esquema de cenário
        Exemplos:
            | email                          | senha | confirma_senha | mensagem_saida                       |
            |                                | 123   | 123            | Oops! Informe seu email.             |
            | diogenes-carvalho@org.com.br   |       |                | Oops! Informe sua senha.             |
            | diogenes-carvalho@yahoo.com.br | 123   | 456            | Oops! Senhas não são iguais.         |
            |                                |       |                | Oops! Informe seu email e sua senha. |




