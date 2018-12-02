Feature:Carteira Virtual
       Como usuário
       Eu quero ver meu saldo da minha carteira virtual e a quantidade de refeições eu possuo, além de ser capaz de colocar mais crédito e comprar refeições
       Para que eu possa administrar minhas refeições

Scenario: Compra de crédito bem sucedida
Given estou na página da “carteira virtual”
And possuo “45,00” reais na minha carteira virtual
And possuo “50,00” reais no meu cartão
When eu seleciono para comprar “créditos”
And e eu preencho os dados do cartão do aluno “user”
And a o valor a creditar de “15,00” reais e confirmo
Then eu posso ver 60,00 reais na minha carteira virtual

Scenario: compra de crédito mal sucedida
Given estou na página da “carteira virtual”
And possuo “45,00” reais na minha carteira virtual
And possuo “10,00” reais no meu cartão
When eu seleciono para comprar “créditos”
And e eu preencho os dados do cartão do aluno “user”
And a o valor a creditar de 15,00 reais e confirmo
Then eu vejo uma mensagem de erro
And eu posso ver 45,00 reais na minha carteira virtual

Scenario: compra de refeição bem sucedida
Given estou na página da “carteira virtual”
And possuo “45,00” reais na minha carteira virtual
And possuo “14” “almoço”
And o almoço custa “3,00” reais
When eu seleciono para comprar “refeições”
And seleciono para comprar “almoço”
Then eu vejo uma mensagem de confirmação
And que possuo “15” “almoço”
And possuo “42,00” reais na minha carteira virtual

Scenario: compra de refeição mal sucedida
Given estou na página da “carteira virtual”
And possuo “2,00” reais na minha carteira virtual
And possuo “14” “almoço”
And o almoço custa “3,00” reais
When eu seleciono para comprar “refeições”
And seleciono para comprar “almoço”
Then eu vejo uma mensagem de erro
And que possuo “14” “almoço”
And possuo “2,00” reais na minha carteira virtual

