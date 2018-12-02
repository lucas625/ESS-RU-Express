Feature: Solicitação de Quentinhas
   como um stakeholder da aplicação 
   eu desejo solicitar uma quentinha escolhendo a refeição,seu tipo e o lugar de entrega ou cadastrar um entregador na lista de entregadores disponíveis.

 
Scenario: Solicitação feita com sucesso

   Given Eu sou um usuário como nome “Sergio Souza”,CPF “7029545847”,telefone”8459754893” e saldo na carteira “R$ 50,00”
   And estou na página de solicitação de Quentinhas
   And eu vejo “Vegetariano” como opção de refeição
   And eu vejo “Cin” na lista de lugares de entrega
   And o tempo de entrega estimado está em 20 minutos
   And o horário está em “17:50”
   And o entregador “Carlos” está cadastrado no sistema com número de  telefone “81986383218”,cpf “58744759877” e cargo “entregador”
   When Eu escolho a opção do tipo "Jantar"
   And eu escolho a opção de refeição “Carne ao molho”
   And Eu digito o centro como lugar de entrega "Cin"
   Then Eu recebo uma mensagem “Pedido feito com sucesso!”
   And e cadastrado um pedido com nome do cliente “Sergio Souza,cpf do cliente “70292029454”,telefone do cliente “8459754893”,Refeição”Carne ao molho”,horário de entrega”18:10”,nome do entregador”Carlos”,telefone do entregador”81986383218” e cpf do entregador “58744759877”
   And Eu posso visualizar os dados do meu pedido na tela mostrando o horário de entrega estimado em “18:10”,o nome do entregador “Carlos” e o número do entregador “81986383218” do entregador.
	And o saldo na carteira está “R$ 47,00”



Scenario: Cadastro de entregador de quentinhas

   Given O administrador “Renata Maria” está na página de solicitação de quentinhas
   And o administrador “Renata Maria” não consegue ver o entregador ”Carlos”,número”81986383218”,cargo”entregador” na lista de entregadores cadastrados
   When Eu escolho a opção de cadastrar entregador
   And eu digito no campo nome “Carlos”
   And eu digito no campo cpf “58744759877”
   And eu digito no campo telefone “81986383218”
   And eu digito no campo cargo “Entregador”
   And eu confirmo o cadastro
   Then Eu recebo uma confirmação que o cadastro do entregador “Carlos “ com cpf “58744759877” foi feito com sucesso
   And Eu consigo visualizar o entregador “Carlos” com cpf “58744759877”,número”81986383218” e cargo “entregador” na lista de entregadores cadastrados.



Scenario: Pedido feito fora do horário de funcionamento
  
 Given Eu sou um usuário como nome “Pedro Marcelo”,CPF “8754685442”,telefone”8459754893” e saldo na carteira “R$ 50,00”
   And estou na página de solicitação de Quentinhas
   And eu vejo “Macarrão com almôndega” como opção de refeição
   And eu vejo “CAC” na lista de lugares de entrega
   And o tempo de entrega estimado está em 30 minutos
   And o horário está em “15:50”
   And o entregador “Mateus” está cadastrado no sistema com número de  telefone “865487514”,cpf “87569214584” e cargo “entregador
   When Eu escolho a opção do tipo "Almoço"
   And eu escolho a opção de refeição “Macarrão com almôndega”
   And Eu digito o centro como lugar de entrega "CAC"
   Then Eu recebo uma confirmação que o pedido não foi realizado com sucesso exibindo a mensagem “Pedido feito em horário inválido,Consulte o horário de funcionamento do RU” 
   And o saldo na carteira está “R$ 50,00”
   


Scenario: Pedido feito com saldo insuficiente para compra
  
 Given Eu sou um usuário como nome “Ariana Lima”,CPF “15498632547”,telefone”985714377” e saldo na carteira “R$ 2,00”
   And estou na página de solicitação de Quentinhas
   And eu vejo “Frango Xadrez” como opção de refeição
   And eu vejo “CTG” na lista de lugares de entrega
   And o tempo de entrega estimado está em 40 minutos
   And o horário está em “12:50”
   And o entregador “Tercio” está cadastrado no sistema com número de  telefone “875963214”,cpf “84695247321” e cargo “entregador
   When Eu escolho a opção do tipo "Almoço"
   And eu escolho a opção de refeição “Macarrão com almôndega”
   And Eu digito o centro como lugar de entrega "CAC"
   Then Eu recebo uma confirmação que o pedido não foi realizado com sucesso exibindo a mensagem “Saldo insuficiente na carteira,consulte seu saldo em carteira” 
   And o saldo na carteira está “R$ 2,00”
   









