#language: pt

Funcionalidade: Reproduzir Paródia
    Sendo um usuário cadastrado
    Quero reproduzir no player do Parodify
    Para que eu possa ouvir  as paródias das minhas bandas favoritas

    Contexto: Login
        * Login com "diogenes@uol.com.br" e "123456"

    Cenário: Ouvir Paródia

        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa parodia deve ficar em reprodução

