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

Mostra as ultimas linhas de um arquivo:  
> tail heroku.yml

Mostra as últimas linhas de um arquivo passando qtd:  
> tail -n 2 heroku.yml  

Mostra as primeiras linhas de um arquivo:  
> head arquivo.txt

Mostra as primeiras linhas de arquivo passando qtd:
> head -n 4 test.txt

Contar tamanho de linhas/palavras/caracteres:  
> wc test

Contar separadamente linhas/palavras/caracteres/bytes:    
> wc -l test  
> wc -w test  
> wc -m test  
> wc -c test  

Contar vários arquivos(retorna de todos os arquivos e o total):  
> wc alunos*

Contar a qtd de palavras:  
Pipe faz a saída de um comando virar entrada de outro:  
> tail -n5 test |wc -w

Ordenar arquivos:  
> sort alunos.txt  
> sort -r alunos.txt (reverse)  
> sort alunos.txt -k 3 (especifíca coluna)  

Listar valores únicos:  
> sort alunos.txt | uniq  
> sort alunox.txt | uniq -u (mostra só os que apareceram 1x)  
> sort alunos.txt | uniq -c (conta a qtd de vezes que cada repetido aparece)  

Contar valores únicos e ordenar pelo valor que mais vezes aparece:  
> sort alunos.txt | uniq -c | sort  








