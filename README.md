# shell-scripts

Exibe qual shell está sendo usado:  
> echo $0 OU echo $SHELL  

Listar pacotes instalados:  
Todos:  
> sudo dpkg -l 

Filtro:  
> sudo dpkg -l | grep vim

Listar processos:  
Todos apenas na minha sessão:
> ps  

Mais completo: 
> ps axu  

Print na saída padrão:  
Normal:  
> cat heroku.yml  

Enumerar linhas excetos em brancas:  
> cat -b heroku.yml  

Enumerar todas as linhas:  
> cat -n heroku.yml  

Mostrar caracteres especiais:  
> cat -A heroku.yml  

Cat de tras pra frente:  
> tac heroku.yml  
