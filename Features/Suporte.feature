Feature: Suporte
        Como um usuário ou administrador
        Eu quero cadastrar ou obter informações e poder realizar reclamações, sugestões ou tirar dúvidas 

GUI:Cenário :envio de feedback com sucesso
Given o usuário "carlos" está na página de “feedbacks”
And o usuário não pode ver  um feedback que resolva sua necessidade na tabela de “feedbacks respondidos”
And o usuário não pode ver  um feedback que resolva sua necessidade na tabela de “feedbacks pendentes”
When o usuário "carlos" seleciona “cria um feedback”
And o usuário escolhe “reclamações” como categoria do feedback
And o usuário escolhe o título do feedback 
And o usuário preenche na tabela de mensagem  “Notifico que a segunda catraca está com problemas e por isso a fila se estendeu a uma área sem proteção solar ”
And o usuário envia a mensagem
Then o usuário “carlos” pode ver uma mensagem relatando que o feedback foi enviado com sucesso
And o usuário pode ver o seu feedback criado na tabela de “feedbacks pendentes”

GUI:Cenário :cadastrar informações sobre o restaurante universitário
Given o administrador "joão" está na página de “informações sobre o restaurante”
And o administrador não pode ver a tabela com os ônibus que param perto do restaurante universitário  
And o administrador não pode ver a tabela com os horários de funcionamento do restaurante universitário
When o administrador “joão” cadastra os ônibus “Rio doce/CDU”,”Casa Amarela” e ”San Martin” na tabela de ônibus com paradas próximas ao restaurante universitário 
And o administrador cadastra “desjejum 7:00-8:00” ,”almoço 10:30-14:30”
 e “jantar 17:00-19:00” na tabela de horários de funcionamento do restaurante universitário 
Then o administrador “joão” pode ver a mensagem “ônibus próximos ao restaurante universitário e os horários de funcionamento foram  cadastrados com sucesso”
And o administrador pode ver Rio doce/CDU”,”Casa Amarela” e “San Martin”
na tabela de ônibus com paradas próximas ao restaurante universitário 
And o administrador  pode visualizar  “desjejum 7:00-8:00” ,”almoço 10:30-14:30” e ”jantar 17:00-19:00” na tabela com os horários de funcionamento do restaurante universitário


GUI:Cenário :cadastrar uma informação para perguntas frequentes  
Given o administrador "joão" está na página de “perguntas frequentes”
And o administrador não pode ver “Intolerância a lactose” na tabela de “perguntas frequentes”
When o administrador "joão" cria  a pergunta com título “Intolerância a lactose”
And o administrador adiciona a resposta “No restaurante universitário todas as comidas que possuem lactose na sua composição à especificam ao lado do nome na bandeja do alimento” para a pergunta “Intolerância a lactose”
Then o administrador  "joão" pode ver a mensagem “pergunta frequente e resposta correspondente cadastradas com sucesso”
And  o administrador  pode ver a pergunta “Intolerância a lactose” na tabela de “perguntas frequentes”
And o administrador  pode ver “No restaurante universitário todas as comidas que possuem lactose na sua composição a especificam ao lado do nome na bandeja do alimento” abaixo da pergunta “Intolerância a lactose”


GUI:Cenário :cadastrar uma informações de contato
Given o administrador "joão" está na página de “contatos”
And o administrador não pode ver  “Gerente geral”,“Julia queiroz”,“81998763456”,“julia@gmail.com” na  colunas  da tabela que são “cargo”,”nome”,”número de telefone” e “email” respectivamente  
When o administrador “joão” cadastra “Gerente geral”,“Julia queiroz”,“81998763456”,“julia@gmail.com” nas colunas da tabela que são “cargo”,”nome”,”número de telefone” e “email” respectivamente 
Then o administrador “joão pode ver  a mensagem “contato adicionado com sucesso”
And o administrador pode ver  “Gerente geral”,“Julia queiroz”,“81998763456”,“julia@gmail.com” nas colunas da tabela que são “cargo”,”nome”,”número de telefone” e “email” respectivamente  













