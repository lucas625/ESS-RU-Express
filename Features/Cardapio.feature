Feature: cardapio
    Como administrador da aplicação
    Eu desejo poder alterar os alimentos oferecidos para que eu possa organizar minhas vendas.

    Cenário: Nova comida cadatrada com sucesso
        Given Eu estou na página cardápio.
        And Não existe um alimento chamado "coxa de galinha".
        When Eu tento cadastrar um alimento chamado "coxa de galinha" com tipo "Almoço".
        Then Eu recebo uma mensagem de "Alimento cadastrado com sucesso".
        And Posso ver o alimento "coxa de galinha" na lista de alimentos oferecidos para "Almoço".

    Cenário: Nova comida cadatrada com falha
        Given Eu estou na página cardápio.
        And Existe um alimento chamado "Feijão verde".
        When Eu tento cadastrar um alimento chamado "Feijão verde" com tipo "Almoço".
        Then Eu recebo uma mensagem de "Falha no cadastro do alimento: já existe um alimento com esse nome".
    
    Cenário: Alteração de alimento com sucesso
        Given Eu estou na página cardápio.
        And Existe um alimento chamado "Pão com ovo".
        And Não existe um alimento chamado "Pão com ovo e mortadela".
        When Eu seleciono o alimento "Pão com ovo" com tipo "Desjejum".
        And Eu tento alterar o nome do alimento "Pão com ovo" para "Pão com ovo e mortadela".
        Then Recebo uma mensagem de "Alimento alterado com sucesso".
        And Posso ver o alimento "Pão com ovo e mortadela" na lista de alimentos oferecidos para "Desjejum".
        And Não posso ver o alimento "Pão com ovo" na lista de alimentos oferecidos para "Desjejum".

    Cenário: Remoção de alimento com sucesso
        Given Eu estou na página cardápio.
        And Existe um alimento chamado "Pão com ovo".
        When Eu seleciono o alimento "Pão com ovo" com tipo "Desjejum".
        And Eu tento remover alimento "Pão com ovo" com tipo "Desjejum".
        Then Recebo uma mensagem de "Alimento removido com sucesso".
        And Não posso ver o alimento "Pão com ovo" na lista de alimentos oferecidos para "Desjejum".