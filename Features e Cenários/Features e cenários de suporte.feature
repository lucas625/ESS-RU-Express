Feature: Suporte
        Como um usuário ou administrador
        Eu quero cadastrar ou obter informações e poder realizar reclamações, sugestões ou tirar dúvidas 

GUI:Cenário :envio de feedback com sucesso
Given o usuário "carlos" está na página de “Suporte”
And o usuário pode ver opção  “feedbacks”
And  não existe um feedback que retrata o assunto desejado pelo usuário na tabela de “feedbacks”
When o usuário “carlos” acessa a tabela “feedbacks” 
And o usuário cria um feedback com título “Catraca quebrada”
And o usuário preenche a mensagem do feedback  com  “Notifico que a segunda catraca está com problemas e por isso a fila se estendeu a uma área sem proteção solar ”
And o usuário envia o feedback 
Then o usuário “carlos” pode ver uma mensagem relatando que o feedback foi enviado com sucesso
And o usuário pode ver o seu feedback criado na tabela de “feedbacks”

GUI:Cenário :visualizar informações sobre o restaurante universitário
Given o usuário "carlos" está na página de “Suporte”
And o usuário pode ver a opção “informações sobre o restaurante”
And existem informações cadastradas  sobre os ônibus que param próximo do restaurante 
And existem informações cadastradas sobre horário de funcionamento do restaurante
When o usuário acessa  a tabela de  “informações sobre o restaurante”
And o usuário seleciona o filtro de informação “ônibus” 
And o usuário seleciona o filtro de informação “horário de funcionamento”
And o usuário confirma a seleção das informações 
Then o usuário pode ver a mensagem “Essas são as informações sobre ônibus e horário de funcionamento  relacionadas ao restaurante” 
And o usuário pode ver “Rio doce/CDU”,”Casa Amarela” e “San Martin”
na tabela  “ônibus ”
And o usuário pode ver “desjejum 7:00-8:00” ,”almoço 10:30-14:30” e ”jantar 17:00-19:00” na tabela  “horário de funcionamento”

GUI:Cenário :visualizar informações de perguntas comuns 
Given o usuário "carlos" está na página de “Suporte”
And o usuário pode ver a opção “perguntas comuns”
And existe uma pergunta cadastrada com título “Intolerância a lactose”  
When o usuário acessa a tabela “perguntas comuns
And o usuário seleciona o tipo de pergunta  “alergias e intolerâncias” 
And o usuário confirma a seleção do tipo de  perguntas 
Then o usuário pode ver a mensagem “Essas são as  perguntas comuns sobre alergias e intolerâncias”
And o usuário pode ver a pergunta “Intolerância a lactose”
And o usuário pode ver a resposta “No restaurante universitário todas as comidas que possuem lactose na sua composição a especificam ao lado do nome na bandeja do alimento” relacionada a pergunta “Intolerância a lactose”

GUI:Cenário :visualizar informações de contato
Given o usuário "carlos" está na página de “Suporte”
And o usuário pode ver a opção “contatos”
And existe uma pessoa cadastrada com dados “Julia queiroz”,“81998763456”,“julia@gmail.com” em “nome”,”número de telefone” e “email” respectivamente 
When o usuário acessa a tabela de “contatos”
And o usuário seleciona “Problemas com a digital” como necessidade do contato
And o usuário confirma a necessidade do contato
Then  o usuário pode ver a mensagem “Contate esses funcionários para resolver sua necessidade”
And o usuário pode ver “Julia queiroz”,“81998763456”,“julia@gmail.com” nas colunas da tabela que são ”nome”,”número de telefone” e “email” respectivamente  











