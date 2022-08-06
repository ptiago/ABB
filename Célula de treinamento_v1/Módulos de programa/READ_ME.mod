MODULE READ_ME
    !######################################
    !
    ! Modulo apenas com descritivos da celula 
    ! sem funcionalidade nenhuma.
    !
    !######################################
    
    !######### DESCRITIVO DE OPERACAO GERAL DA CELULA
    !O ciclo se inicia com a pega de alguma das pe�as na gaveta de entrada, ap�s pegar a pe�a o rob� verifica se a outra garra est� sem pe�a, para poder
    !pegar outra pe�a. Ap�s a pega o rob� ir� realizar a inspe��o das pe�as que estiverem na garra, sempre priorizando o im� 1. Ap�s inspecionada o rob� 
    !depositar� cada pe�a em seu respectivo slot, caso a pe�a tenha sido rejeitada na inspe��o a mesma ser� depositada no slot de rejeito.
    !A prioridade principal � esvaziar a gaveta de entrada. Ap�s esvaziada a prioridade � esvaziar os slots colocando as pe�as na esteira de sa�da.
    !Quando a gaveta estiver fazia o rob� ir� pegar uma pe�a qualquer em algum slot e ir� depositar a pe�a na esteira de sa�da. Ap�s todas as pe�as serem 
    !retiradas de seus slots e colocadas na esteira de sa�da o ciclo se completa.
    !
    !*** 1	Prioridades
    !.	Esvaziar a gaveta de entrada;
    !.	Pegar na gaveta as pe�as quadradas, circulares, e triangulares, da direita, para a esquerda;
    !.	Pegar, Inspecionar ou depositar a pe�a que est� na garra. Exemplo, se eu tenho duas pe�as na garra, o rob� ir� inspecionar as duas para depois sim deposit�-las em seus respectivos slots de acordo com o resultado da inspe��o, e seu tipo;
    !.	Ap�s a gaveta estar vazia, esvaziar os slots.
   
    !######### PROCEDIMENTOS
    !*** 1 - ENTRADA DO OPERADOR PELA CORTINA DE LUZ
    !O rob� ir� acionar o canal de emerg�ncia AS1 e AS2. Resetar a emerg�ncia e pressionar a botoeira de START.
    !
    !*** 2 - ACIONAMENTO DE QUALQUER EMERGENCIA
    !Ap�s resetar a emerg�ncia, mandar PP para Main. O rob� ir� para Home, e ap�s isso ir� entrar na condi��o de maior prioridade atrav�s 
    !dos pontos de verifica��o.
    
    !######### PERMISSIVEIS
    !111	Pega Quadrado Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    
    !112	Pega Quadrado Inspe��o
    !- Ao menos um dos imas devem estar sem peca
    
    !121	Pega Circulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    
    !122	Pega Circulo Inspe��o
    !- Ao menos um dos imas devem estar sem peca
    
    !131	Pega Triangulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    
    !132	Pega Triangulo Inspe��o	
    !- Ao menos um dos imas devem estar sem peca
    
    !212	Dep�sito Quadrado Inspe��o
    !- Nao pode ter peca na caixa do quadrado
    
    !213	Dep�sito Quadrado Esteira de sa�da
    !- N�o pode ter peca no local de deposito
    
    !222	Dep�sito Circulo Inspe��o
    !- Nao pode ter peca na caixa do circulo
    
    !223	Dep�sito Circulo Esteira de sa�da
    !- N�o pode ter peca no local de deposito
    
    !232	Dep�sito Triangulo Inspe��o
    !- Nao pode ter peca na caixa do trinagulo
    
    !233	Dep�sito Triangulo Esteira de sa�da
    !- N�o pode ter peca no local de deposito
    
    !312	Inspe��o Quadrado na Inspe��o
    !- Nao ha restricoes
    
    !322	Inspe��o Circulo na Inspe��
    !- Nao ha restricoes
    
    !332	Inspe��o Triangulo na Inspe��o
    !- Nao ha restricoes
    
    !######### CONDICOES DE VERIFICACAO - PROCESSO
    !000    Recovey Home
    !- Nao ha restricoes
    
    !111	Pega Quadrado Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter ao menos umas presenca de peca quadrada
    !- Deve ter um espaco vazio no descarte, ou o slot de inspecao quadrado deve estar vazio
    
    !112	Pega Quadrado Inspe��o
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter presenca do quadrado no slot
    
    !121	Pega Circulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter ao menos umas presenca de peca circular
    !- Deve ter um espaco vazio no descarte, ou o slot de inspecao circulo deve estar vazio
    
    !122	Pega Circulo Inspe��o
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter presenca do circulo no slot
    
    !131	Pega Triangulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter ao menos umas presenca de peca triangular
    !- Deve ter um espaco vazio no descarte, ou o slot de inspecao triangulo deve estar vazio
    
    !132	Pega Triangulo Inspe��o	
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter presenca do triangulo no slot
    
    !212	Dep�sito Quadrado Inspe��o
    !- Nao pode ter peca na caixa do quadrado
    
    !213	Dep�sito Quadrado Esteira de sa�da
    !- N�o pode ter peca no local de deposito
    
    !222	Dep�sito Circulo Inspe��o
    !- Nao pode ter peca na caixa do circulo
    
    !223	Dep�sito Circulo Esteira de sa�da
    !- N�o pode ter peca no local de deposito
    
    !232	Dep�sito Triangulo Inspe��o
    !- Nao pode ter peca na caixa do trinagulo
    
    !233	Dep�sito Triangulo Esteira de saida
    !- N�o pode ter peca no local de deposito
    
    !312	Inspe��o Quadrado na Inspecao
    !- Peca nao podera ter sido inspecionada anteriormente
    
    !322	Inspe��o Circulo na Inspecao
    !- Peca nao podera ter sido inspecionada anteriormente
    
    !332	Inspe��o Triangulo na Inspecao
    !- Peca nao podera ter sido inspecionada anteriormente
    
    !######### CONDICOES DE VERIFICACAO - GERAIS
    !* Deposito no descarte
    !- Nao pode ter 3 pecas ou mais no slot
    
    !* Acionamento da esteira de saida
    !- Nao pode ter uma peca no final da esteira
    
    !######### TEMPO DE CICLO ALVO
    !*** Geral = xx Minutos (Pega da primeira peca, ate o deposito da ultTool na esteira)
    
    !######### PROCESSO
    !1 = Pega
    !2 = Deposito
    !3 = Inspecao

    !######### PECAS
    !1 = Quadrado
    !2 = Circulo
    !3 = Triangulo

    !######### ESTACOES
    !1 = Gaveta
    !2 = Inspecao
    !3 = Esteira de saida
    
    !######### FERRAMENTAS
    !1 = Ima_1
    !2 = Ima_2
    
    !######### PROCESS
    !0      Recovery Home
    !111	Pega Quadrado Gaveta		
    !112	Pega Quadrado Inspe��o		
    !121	Pega Circulo Gaveta		
    !122	Pega Circulo Inspe��o		
    !131	Pega Triangulo Gaveta		
    !132	Pega Triangulo Inspe��o		
    !212	Dep�sito Quadrado Inspe��o		
    !213	Dep�sito Quadrado Esteira de sa�da		
    !222	Dep�sito Circulo Inspe��o		
    !223	Dep�sito Circulo Esteira de sa�da		
    !232	Dep�sito Triangulo Inspe��o		
    !233	Dep�sito Triangulo Esteira de sa�da		
    !312	Inspe��o Quadrado na Inspe��o		
    !322	Inspe��o Circulo na Inspe��o		
    !332	Inspe��o Triangulo na Inspe��o
    
    !######### PATH SEGMENT
    !111.1 - Pega Quadrado Gaveta - At pounce
    !111.2 - Pega Quadrado Gaveta - Vai para pe�a
    !111.3 - Pega Quadrado Gaveta - Faz aproxima��o
    !111.4 - Pega Quadrado Gaveta - Pega pe�a
    !111.5 - Pega Quadrado Gaveta - Retirada da pe�a do cluster
    !111.6 - Pega Quadrado Gaveta - Desaproxima��o do local
    !111.7 - Pega Quadrado Gaveta - Retorna para pounce
    !112.1 - Pega Quadrado Inspe��o - At pounce
    !112.2 - Pega Quadrado Inspe��o - Vai para pe�a
    !112.3 - Pega Quadrado Inspe��o - Faz aproxima��o
    !112.4 - Pega Quadrado Inspe��o - Pega pe�a
    !112.5 - Pega Quadrado Inspe��o - Retirada da pe�a do cluster
    !112.6 - Pega Quadrado Inspe��o - Desaproxima��o do local
    !112.7 - Pega Quadrado Inspe��o - Retorna para pounce
    !121.1 - Pega Circulo Gaveta - At pounce
    !121.2 - Pega Circulo Gaveta - Vai para pe�a
    !121.3 - Pega Circulo Gaveta - Faz aproxima��o
    !121.4 - Pega Circulo Gaveta - Pega pe�a
    !121.5 - Pega Circulo Gaveta - Retirada da pe�a do cluster
    !121.6 - Pega Circulo Gaveta - Desaproxima��o do local
    !121.7 - Pega Circulo Gaveta - Retorna para pounce
    !122.1 - Pega Circulo Inspe��o - At pounce
    !122.2 - Pega Circulo Inspe��o - Vai para pe�a
    !122.3 - Pega Circulo Inspe��o - Faz aproxima��o
    !122.4 - Pega Circulo Inspe��o - Pega pe�a
    !122.5 - Pega Circulo Inspe��o - Retirada da pe�a do cluster
    !122.6 - Pega Circulo Inspe��o - Desaproxima��o do local
    !122.7 - Pega Circulo Inspe��o - Retorna para pounce
    !131.1 - Pega Triangulo Gaveta - At pounce
    !131.2 - Pega Triangulo Gaveta - Vai para pe�a
    !131.3 - Pega Triangulo Gaveta - Faz aproxima��o
    !131.4 - Pega Triangulo Gaveta - Pega pe�a
    !131.5 - Pega Triangulo Gaveta - Retirada da pe�a do cluster
    !131.6 - Pega Triangulo Gaveta - Desaproxima��o do local
    !131.7 - Pega Triangulo Gaveta - Retorna para pounce
    !132.1 - Pega Triangulo Inspe��o - At pounce
    !132.2 - Pega Triangulo Inspe��o - Vai para pe�a
    !132.3 - Pega Triangulo Inspe��o - Faz aproxima��o
    !132.4 - Pega Triangulo Inspe��o - Pega pe�a
    !132.5 - Pega Triangulo Inspe��o - Retirada da pe�a do cluster
    !132.6 - Pega Triangulo Inspe��o - Desaproxima��o do local
    !132.7 - Pega Triangulo Inspe��o - Retorna para pounce
    !212.1 - Dep�sito Quadrado Inspe��o - At pounce
    !212.2 - Dep�sito Quadrado Inspe��o - Vai para pe�a
    !212.3 - Dep�sito Quadrado Inspe��o - Faz aproxima��o
    !212.4 - Dep�sito Quadrado Inspe��o - Pega pe�a
    !212.5 - Dep�sito Quadrado Inspe��o - Retirada da pe�a do cluster
    !212.6 - Dep�sito Quadrado Inspe��o - Desaproxima��o do local
    !212.7 - Dep�sito Quadrado Inspe��o - Retorna para pounce
    !213.1 - Dep�sito Quadrado Esteira de sa�da - At pounce
    !213.2 - Dep�sito Quadrado Esteira de sa�da - Vai para pe�a
    !213.3 - Dep�sito Quadrado Esteira de sa�da - Faz aproxima��o
    !213.4 - Dep�sito Quadrado Esteira de sa�da - Pega pe�a
    !213.5 - Dep�sito Quadrado Esteira de sa�da - Retirada da pe�a do cluster
    !213.6 - Dep�sito Quadrado Esteira de sa�da - Desaproxima��o do local
    !213.7 - Dep�sito Quadrado Esteira de sa�da - Retorna para pounce
    !222.1 - Dep�sito Circulo Inspe��o - At pounce
    !222.2 - Dep�sito Circulo Inspe��o - Vai para pe�a
    !222.3 - Dep�sito Circulo Inspe��o - Faz aproxima��o
    !222.4 - Dep�sito Circulo Inspe��o - Pega pe�a
    !222.5 - Dep�sito Circulo Inspe��o - Retirada da pe�a do cluster
    !222.6 - Dep�sito Circulo Inspe��o - Desaproxima��o do local
    !222.7 - Dep�sito Circulo Inspe��o - Retorna para pounce
    !223.1 - Dep�sito Circulo Esteira de sa�da - At pounce
    !223.2 - Dep�sito Circulo Esteira de sa�da - Vai para pe�a
    !223.3 - Dep�sito Circulo Esteira de sa�da - Faz aproxima��o
    !223.4 - Dep�sito Circulo Esteira de sa�da - Pega pe�a
    !223.5 - Dep�sito Circulo Esteira de sa�da - Retirada da pe�a do cluster
    !223.6 - Dep�sito Circulo Esteira de sa�da - Desaproxima��o do local
    !223.7 - Dep�sito Circulo Esteira de sa�da - Retorna para pounce
    !232.1 - Dep�sito Triangulo Inspe��o - At pounce
    !232.2 - Dep�sito Triangulo Inspe��o - Vai para pe�a
    !232.3 - Dep�sito Triangulo Inspe��o - Faz aproxima��o
    !232.4 - Dep�sito Triangulo Inspe��o - Pega pe�a
    !232.5 - Dep�sito Triangulo Inspe��o - Retirada da pe�a do cluster
    !232.6 - Dep�sito Triangulo Inspe��o - Desaproxima��o do local
    !232.7 - Dep�sito Triangulo Inspe��o - Retorna para pounce
    !233.1 - Dep�sito Triangulo Esteira de sa�da - At pounce
    !233.2 - Dep�sito Triangulo Esteira de sa�da - Vai para pe�a
    !233.3 - Dep�sito Triangulo Esteira de sa�da - Faz aproxima��o
    !233.4 - Dep�sito Triangulo Esteira de sa�da - Pega pe�a
    !233.5 - Dep�sito Triangulo Esteira de sa�da - Retirada da pe�a do cluster
    !233.6 - Dep�sito Triangulo Esteira de sa�da - Desaproxima��o do local
    !233.7 - Dep�sito Triangulo Esteira de sa�da - Retorna para pounce
    !312.1 - Inspe��o Quadrado na Inspe��o - At pounce
    !312.2 - Inspe��o Quadrado na Inspe��o - Vai para pe�a
    !312.3 - Inspe��o Quadrado na Inspe��o - Faz aproxima��o
    !312.4 - Inspe��o Quadrado na Inspe��o - Pega pe�a
    !312.5 - Inspe��o Quadrado na Inspe��o - Retirada da pe�a do cluster
    !312.6 - Inspe��o Quadrado na Inspe��o - Desaproxima��o do local
    !312.7 - Inspe��o Quadrado na Inspe��o - Retorna para pounce
    !322.1 - Inspe��o Circulo na Inspe��o - At pounce
    !322.2 - Inspe��o Circulo na Inspe��o - Vai para pe�a
    !322.3 - Inspe��o Circulo na Inspe��o - Faz aproxima��o
    !322.4 - Inspe��o Circulo na Inspe��o - Pega pe�a
    !322.5 - Inspe��o Circulo na Inspe��o - Retirada da pe�a do cluster
    !322.6 - Inspe��o Circulo na Inspe��o - Desaproxima��o do local
    !322.7 - Inspe��o Circulo na Inspe��o - Retorna para pounce
    !332.1 - Inspe��o Triangulo na Inspe��o - At pounce
    !332.2 - Inspe��o Triangulo na Inspe��o - Vai para pe�a
    !332.3 - Inspe��o Triangulo na Inspe��o - Faz aproxima��o
    !332.4 - Inspe��o Triangulo na Inspe��o - Pega pe�a
    !332.5 - Inspe��o Triangulo na Inspe��o - Retirada da pe�a do cluster
    !332.6 - Inspe��o Triangulo na Inspe��o - Desaproxima��o do local
    !332.7 - Inspe��o Triangulo na Inspe��o - Retorna para pounce

    !######### PEGA GAVETA
    !1 = Quadrado direita
    !2 = Quadrado esquerda
    !3 = Circulo direita
    !4 = Circulo esquerda
    !5 = Triangulo direita
    !6 = Triangulo esquerda
    
    !######### DESCRITIVO DE VARIAVEIS
    
    !*** NUMERICAS
    !* nPeca_Na_Garra = Informa quais dos imas estao acionados
    !0 = Nenhum ima acionado. Todos estao desligados.
    !1 = Apenas o ima 1 acionado. Ima 2 nao esta acionado.
    !2 = Apenas o ima 2 acionado. Ima 1 nao esta acionado.
    !3 = Ambos imas estao acionados. Todos os imas estao ligados, nao ha nenhum desligado
    
    !*** BOOLEANAS
    !*bProcess_OK = Informa qual dos processos esta concluido
    !1	= Pega Quadrado Gaveta
    !2	= Pega Quadrado Inspe��o
    !3	= Pega Circulo Gaveta
    !4	= Pega Circulo Inspe��o
    !5	= Pega Triangulo Gaveta
    !6	= Pega Triangulo Inspe��o
    !7	= Dep�sito Quadrado Inspe��o
    !8	= Dep�sito Quadrado Esteira de sa�da
    !9	= Dep�sito Circulo Inspe��o
    !10	= Dep�sito Circulo Esteira de sa�da
    !11	= Dep�sito Triangulo Inspe��o
    !12	= Dep�sito Triangulo Esteira de sa�da
    !13	= Inspe��o Quadrado na Inspe��o
    !14	= Inspe��o Circulo na Inspe��o
    !15	= Inspe��o Triangulo na Inspe��o

    !*** STRING
    
    !*** ROB TARGET
    
    !*** JOINT TARGET
    
    !*** TOOL DATA
    !*As mesmas do item FERRAMENTAS
    
    !*** WORK OBJECT / FRAME DATA
    !*Os mesmas do item ESTACOES
    
    !*** LOAD DATA
    
    !######### OBSERVACOES
    !1 - Todas as pecas tem o mesmo peso

ENDMODULE