Feature: Suporte
         Como um aluno 
         Eu quero contatar o suporte para dar feedback, tirar dúvidas ou resolver problemas 

GUI:Cenário :envio de feedback com sucesso
Given o aluno "carlos" está na página de suporte 
And o sistema está online
When o aluno "carlos" acessa a tabela de preenchimento de feedback
And o aluno preenche a tabela com o feedback 
And o aluno envia a tabela preenchida 
Then aparece uma mensagem relatando que o feedback foi enviado com sucesso

GUI:Cenário :envio do feedback sem sucesso
Given o aluno "carlos" está na página de suporte 
And o sistema não está online
When o aluno "carlos" acessa a tabela de preenchimento de feedback
And o aluno preenche a tabela com o feedback 
And o aluno envia a tabela preenchida 
Then aparece uma mensagem relatando que o feedback não foi enviado com sucesso

GUI:Cenário :contatar o suporte com sucesso
Given o aluno "carlos" está na página de suporte 
And o suporte está ativo
When o aluno "carlos" acessa o chat online 
Then aparece uma tabela de chat online 
And aparece uma mensagem requisitando a dúvida ou problema  

GUI:Cenário :contatar o suporte sem sucesso
Given o aluno "carlos" está na página de suporte 
And O suporte está inativo
When o aluno "carlos" acessa o chat online 
Then aparece uma tabela de chat online 
And aparece uma mensagem relatando que o nenhum funcionario de suporte está ativo no momento
