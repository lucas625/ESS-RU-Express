Feature: Solicitação de Quentinhas
   como um usuário da aplicação
   eu desejo solicitar uma quentinha para entrega no centro que eu escolhi

 
Scenario: Solicitação feita com sucesso

   Given Eu estou na página de solicitação de Quentinhas
   When Eu escolho a opção de refeição "Vegetariano"
   And Eu escolho o centro "Cin"
   And eu confirmo a solicitação
   Then Eu recebo uma confirmação que o pedido foi feito com sucesso


Scenario: Centro não está cadastrado

   Given Eu estou na página de solicitação de Quentinhas
   When Eu escolho a opção de refeição "Carne guisada"
   And Eu escolho o centro "CCA"
   And eu confirmo a solicitação
   Then Eu recebo uma confirmação que o centro digitado não existe



Scenario: Opção de refeição não está cadastrada

   Given Eu estou na página de solicitação de Quentinhas
   When Eu escolho a opção de refeição "Frango a chateaubriand"
   And Eu escolho o centro "CCEN"
   And eu confirmo a solicitação
   Then Eu recebo uma confirmação que a refeição solicitada não existe


Scenario: Visualização de pedidos

   Given Eu estou na página de solicitação de Quentinhas
   When Eu escolho a opção de visualizar meus pedidos
   Then Aparece um lista com os meus pedidos na tela



