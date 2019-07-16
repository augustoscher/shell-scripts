# shell-scripts

#### Basics Commands

Exibe qual shell está sendo usado:  
> echo $0 OU echo $SHELL  

Listar todos pacotes instalados:  
> sudo dpkg -l 
> sudo dpkg -l | grep vim

Processos todos apenas na minha sessão:  
> ps  
> ps axu  

Desecrição do comando:  
> whatis tr  

Onde está instalado:  
> whereis docker-compose  


#### File Manipulation

##### CAT  
Print na saída padrão:  
> cat heroku.yml  

Enumerar linhas excetos em brancas:  
> cat -b heroku.yml  

Enumerar todas as linhas:  
> cat -n heroku.yml  

Mostrar caracteres especiais:  
> cat -A heroku.yml  

Cat de tras pra frente:  
> tac heroku.yml  


##### TAIL/HEAD
Mostra as ultimas linhas de um arquivo:  
> tail heroku.yml
> tail -n 2 heroku.yml  

Mostra as primeiras linhas de um arquivo:  
> head arquivo.txt
> head -n 4 test.txt

##### WC
Contar tamanho de linhas/palavras/caracteres:  
> wc test

Contar separadamente linhas/palavras/caracteres/bytes:    
> wc -l test  
> wc -w test  
> wc -m test  
> wc -c test  

Contar vários arquivos(retorna de todos os arquivos e o total):  
> wc alunos*  

Pipe faz a saída de um comando virar entrada de outro:  
> tail -n 5 test | wc -w  

##### SORT  
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


##### TR/CUT  
Traduzir ou deletar caracteres de uma string:  
> cat alunos3.txt |tr a e
> cat alunos3.txt |tr a-z A-Z  
> cat alunos3.txt |tr ' ' '\t'  

Cortar caracteres de uma string:  
> cat alunos2.txt | cut -c1-5  

Cortar caracteres definindo caracteres:  
> cat alunos2.txt | cut -c1,2,3  
> cat alunos2.txt | cut -c1,2,3,7-  

Exibir strings considerando campos:  
> cat alunos2.txt | cut -d " " -f1,3    
> cat alunos2.txt | cut -d " " -f1  
> tail /etc/passwd | cut -d":" -f1,2,3,4,5  


##### DIFF
Diferença entre dois arquivos:  
> diff alunos.txt alunos3.txt  
> diff alunos2.txt alunos3.txt  


##### GREP
Básico:  
> grep Claudia alunos2.txt  

Filtrando uma frase:  
> grep "Meu nome" alunos2.txt  

Filtrando retorno de outro comando:  
> docker ps -a | grep mongo  

Ignore case(deixa mais pesado):  
> docker ps -a | grep -i MONGO  

Conta ocorrências:  
> grep Ana alunos2.txt  

Procurar dentro de diretório determinado texto:  
> grep -r Ana * (entra recursivamente nos diretórios dentro do diretório atual e procura pelo texto)  

Procurar pelo texto e mostrar somente o nome do arquivo:  
> grep -rl Ana *  

Imprime n linhas após o grep dar match no texto:  
> grep -A2 Ana alunos2.txt  

Imprime n linhas antes ao match do grep no texto:  
> grep -B3 Ana alunos2.txt  


##### SED  
Faz filtro e transforma o conteúdo. Parecido com TR.  
  
Remove linhas:  
> sed '1,3 d' alunos2.txt  
> sed '/Carlos/d' alunos2.txt  

Subsitutir palavas:  
> sed alunos2.txt | sed 's/Paulo/Joao/'  





  













 






