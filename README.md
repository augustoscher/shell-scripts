# shell-scripts

#### Basics Commands

Exibe qual shell está sendo usado:  
> echo $0 OU echo $SHELL  

Exibe shell disponíveis:  
> cat /etc/shells  

Setar shell padrão:  
> chsh -s $(which zsh) 

Permissão de executável para .sh:  
> chmod +x /path/to/yourscript.sh   
  
an interface to the on-line reference manuals:  
> man chmod  
> man cat    
  
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
  
  
##### MORE/LESS
Usado para paginação de arquivos  
  
> more arquivolongo.txt  
> less arquivolongo.txt  
> cat -A arquivolongo.txt | less   


##### FIND  
Usado para procurar arquivos  
find - search for files in a directory hierarchy  

details:  
> man find  
  
> find ./ -name examples.txt  
> find /home -name test.txt  
> find /home -name *test*  

Executar comando no retorno do find:  
> find ./ -name *test* -exec ls -l {} \;  

##### DATE  
date - print or set the system date and time  

data:
> date  

data formatada mm/dd/yy  
> date +%D  


##### SEQ  
print de sequencia de numeros:  
  
1 a 20:  
> seq 20  
  
5 a 20:  
> seq 5 20  
  
definindo intervalo. começa em 5 e incrementa 2. 
> seq 5 2 30  
  
  
##### EXPR  
evalua expressões matemáticas  
  
> expr 5 + 2  
> expr 4 % 2  
> expr 5 - 1  
> expr 2 \* 3  
> expr 8 / 2  
> expr 10 \* 5 + 2  
> echo 3 + 2 | bc  
  
  
##### Executar comandos de maneira sequencial  
    
> date ; echo Linux ; ls  
> ls && echo Linux && date  //só executa o próximo commando se não ocorreu erro  
> ls || echo Linux  //só executa o segundo se deu erro no primeiro  
> cd.. ; ls -l  //executa ls -l e no diretório anterior e posiciona no diretorio anterior  
> ( cd .. ; ls -l )  //executa ls -l no diretório anterior e permanece no dir atual  
  
  
##### STDIN/STDOUT/STDERR  
  
Redirecionar saida padrão para um arquivo:  
> cat alunos3.txt > alunos-temp.txt  
> date > alunos-temp.txt  
  
Concatenar no final do arquivo:  
> date >> alunos-temp.txt  

Jogar log para limbo do shell:  
> ls -l alunos.txt2 2> /dev/null  
  
Redirecionamento de entrada:  
> tr 'a' 'Z' < alunos.txt  
  
É igual a:  
> cat alunos.txt | tr a Z  
  
  
#### VARIAVEIS DE AMBIENTE  
  
Variaveis de ambiente. Env só conhece variáveis exportadas:  
> env |less  
> set |less

Imprimir determinada variavel:
> echo $HOME  
  
Declarar variável:  
> VARIAVEL1=variavel
> VARIAVEL2="variavel 2 teste"  
> echo $VARIAVEL1  
> echo $VARIAVEL2  

Exportar variável:  
> VAR1="eita"  
> export VAR1  
  
Pid do bash:  
> echo $$  
> ps axu | grep bash  
  
Comando em variável:  
> LIST=`ls -la`  
> echo $LIST  
ou:  
> MINHADATA=$(date)  
> echo $MINHADATA  


Uso de aspas em Shell:  

Listagem de todos os arquivos do diretório atual:  
> echo *   

Protege o commando * com aspas:  
> echo "*"  
> echo '*'
> echo /*  
  
  
#### REGEX  

egrep: extended regex - grep with regular expressions  
  
Procurar a palavra Linux com egrep:  
> egrep Linux texto.txt  
  
Procura algo começando com b + [aei] + g:  
> egrep "b[aei]g" texto.txt  
  
Procura algo começando com b + [a-o] + g:  
> egrep "b[a-o]g" texto.txt  

Procura texto onde a primeira palavra seja Linux:    
> egrep "^Linux" texto.txt  

Procura texto com b + [a-i] + g* onde g pode ou nao existir:    
> egrep "b[a-i]g*" texto.txt  

Procura texto com b + [a-i] + g+ onde g deve aparecer pelo menos 1x:  
> egrep "b[a-i]g+" texto.txt  

Procura texto com "O" + qqer coisa + "Linux":  
> egrep "O.Linux" texto.txt  

Procura o caracter ponto (não utiliza como parte do regex):  
> egrep "[Ll]inux\." texto.txt  


  













 






