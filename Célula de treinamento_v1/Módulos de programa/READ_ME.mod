MODULE READ_ME
    !######################################
    !
    ! Modulo apenas com descritivos da celula 
    ! sem funcionalidade nenhuma.
    !
    !######################################
    
    !######### DESCRITIVO DE OPERACAO GERAL DA CELULA
    !O ciclo se inicia com a pega de alguma das peças na gaveta de entrada, após pegar a peça o robô verifica se a outra garra está sem peça, para poder
    !pegar outra peça. Após a pega o robô irá realizar a inspeção das peças que estiverem na garra, sempre priorizando o imã 1. Após inspecionada o robô 
    !depositará cada peça em seu respectivo slot, caso a peça tenha sido rejeitada na inspeção a mesma será depositada no slot de rejeito.
    !A prioridade principal é esvaziar a gaveta de entrada. Após esvaziada a prioridade é esvaziar os slots colocando as peças na esteira de saída.
    !Quando a gaveta estiver fazia o robô irá pegar uma peça qualquer em algum slot e irá depositar a peça na esteira de saída. Após todas as peças serem 
    !retiradas de seus slots e colocadas na esteira de saída o ciclo se completa.
    !
    !*** 1	Prioridades
    !.	Esvaziar a gaveta de entrada;
    !.	Pegar na gaveta as peças quadradas, circulares, e triangulares, da direita, para a esquerda;
    !.	Pegar, Inspecionar ou depositar a peça que está na garra. Exemplo, se eu tenho duas peças na garra, o robô irá inspecionar as duas para depois sim depositá-las em seus respectivos slots de acordo com o resultado da inspeção, e seu tipo;
    !.	Após a gaveta estar vazia, esvaziar os slots.
   
    !######### PROCEDIMENTOS
    !*** 1 - ENTRADA DO OPERADOR PELA CORTINA DE LUZ
    !O robô irá acionar o canal de emergência AS1 e AS2. Resetar a emergência e pressionar a botoeira de START.
    !
    !*** 2 - ACIONAMENTO DE QUALQUER EMERGENCIA
    !Após resetar a emergência, mandar PP para Main. O robô irá para Home, e após isso irá entrar na condição de maior prioridade através 
    !dos pontos de verificação.
    
    !######### PERMISSIVEIS
    !111	Pega Quadrado Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    
    !112	Pega Quadrado Inspeção
    !- Ao menos um dos imas devem estar sem peca
    
    !121	Pega Circulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    
    !122	Pega Circulo Inspeção
    !- Ao menos um dos imas devem estar sem peca
    
    !131	Pega Triangulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    
    !132	Pega Triangulo Inspeção	
    !- Ao menos um dos imas devem estar sem peca
    
    !212	Depósito Quadrado Inspeção
    !- Nao pode ter peca na caixa do quadrado
    
    !213	Depósito Quadrado Esteira de saída
    !- Não pode ter peca no local de deposito
    
    !222	Depósito Circulo Inspeção
    !- Nao pode ter peca na caixa do circulo
    
    !223	Depósito Circulo Esteira de saída
    !- Não pode ter peca no local de deposito
    
    !232	Depósito Triangulo Inspeção
    !- Nao pode ter peca na caixa do trinagulo
    
    !233	Depósito Triangulo Esteira de saída
    !- Não pode ter peca no local de deposito
    
    !312	Inspeção Quadrado na Inspeção
    !- Nao ha restricoes
    
    !322	Inspeção Circulo na Inspeçã
    !- Nao ha restricoes
    
    !332	Inspeção Triangulo na Inspeção
    !- Nao ha restricoes
    
    !######### CONDICOES DE VERIFICACAO - PROCESSO
    !000    Recovey Home
    !- Nao ha restricoes
    
    !111	Pega Quadrado Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter ao menos umas presenca de peca quadrada
    !- Deve ter um espaco vazio no descarte, ou o slot de inspecao quadrado deve estar vazio
    
    !112	Pega Quadrado Inspeção
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter presenca do quadrado no slot
    
    !121	Pega Circulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter ao menos umas presenca de peca circular
    !- Deve ter um espaco vazio no descarte, ou o slot de inspecao circulo deve estar vazio
    
    !122	Pega Circulo Inspeção
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter presenca do circulo no slot
    
    !131	Pega Triangulo Gaveta
    !- Gaveta deve estar fechada
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter ao menos umas presenca de peca triangular
    !- Deve ter um espaco vazio no descarte, ou o slot de inspecao triangulo deve estar vazio
    
    !132	Pega Triangulo Inspeção	
    !- Ao menos um dos imas devem estar sem peca
    !- Deve ter presenca do triangulo no slot
    
    !212	Depósito Quadrado Inspeção
    !- Nao pode ter peca na caixa do quadrado
    
    !213	Depósito Quadrado Esteira de saída
    !- Não pode ter peca no local de deposito
    
    !222	Depósito Circulo Inspeção
    !- Nao pode ter peca na caixa do circulo
    
    !223	Depósito Circulo Esteira de saída
    !- Não pode ter peca no local de deposito
    
    !232	Depósito Triangulo Inspeção
    !- Nao pode ter peca na caixa do trinagulo
    
    !233	Depósito Triangulo Esteira de saida
    !- Não pode ter peca no local de deposito
    
    !312	Inspeção Quadrado na Inspecao
    !- Peca nao podera ter sido inspecionada anteriormente
    
    !322	Inspeção Circulo na Inspecao
    !- Peca nao podera ter sido inspecionada anteriormente
    
    !332	Inspeção Triangulo na Inspecao
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
    !112	Pega Quadrado Inspeção		
    !121	Pega Circulo Gaveta		
    !122	Pega Circulo Inspeção		
    !131	Pega Triangulo Gaveta		
    !132	Pega Triangulo Inspeção		
    !212	Depósito Quadrado Inspeção		
    !213	Depósito Quadrado Esteira de saída		
    !222	Depósito Circulo Inspeção		
    !223	Depósito Circulo Esteira de saída		
    !232	Depósito Triangulo Inspeção		
    !233	Depósito Triangulo Esteira de saída		
    !312	Inspeção Quadrado na Inspeção		
    !322	Inspeção Circulo na Inspeção		
    !332	Inspeção Triangulo na Inspeção
    
    !######### PATH SEGMENT
    !111.1 - Pega Quadrado Gaveta - At pounce
    !111.2 - Pega Quadrado Gaveta - Vai para peça
    !111.3 - Pega Quadrado Gaveta - Faz aproximação
    !111.4 - Pega Quadrado Gaveta - Pega peça
    !111.5 - Pega Quadrado Gaveta - Retirada da peça do cluster
    !111.6 - Pega Quadrado Gaveta - Desaproximação do local
    !111.7 - Pega Quadrado Gaveta - Retorna para pounce
    !112.1 - Pega Quadrado Inspeção - At pounce
    !112.2 - Pega Quadrado Inspeção - Vai para peça
    !112.3 - Pega Quadrado Inspeção - Faz aproximação
    !112.4 - Pega Quadrado Inspeção - Pega peça
    !112.5 - Pega Quadrado Inspeção - Retirada da peça do cluster
    !112.6 - Pega Quadrado Inspeção - Desaproximação do local
    !112.7 - Pega Quadrado Inspeção - Retorna para pounce
    !121.1 - Pega Circulo Gaveta - At pounce
    !121.2 - Pega Circulo Gaveta - Vai para peça
    !121.3 - Pega Circulo Gaveta - Faz aproximação
    !121.4 - Pega Circulo Gaveta - Pega peça
    !121.5 - Pega Circulo Gaveta - Retirada da peça do cluster
    !121.6 - Pega Circulo Gaveta - Desaproximação do local
    !121.7 - Pega Circulo Gaveta - Retorna para pounce
    !122.1 - Pega Circulo Inspeção - At pounce
    !122.2 - Pega Circulo Inspeção - Vai para peça
    !122.3 - Pega Circulo Inspeção - Faz aproximação
    !122.4 - Pega Circulo Inspeção - Pega peça
    !122.5 - Pega Circulo Inspeção - Retirada da peça do cluster
    !122.6 - Pega Circulo Inspeção - Desaproximação do local
    !122.7 - Pega Circulo Inspeção - Retorna para pounce
    !131.1 - Pega Triangulo Gaveta - At pounce
    !131.2 - Pega Triangulo Gaveta - Vai para peça
    !131.3 - Pega Triangulo Gaveta - Faz aproximação
    !131.4 - Pega Triangulo Gaveta - Pega peça
    !131.5 - Pega Triangulo Gaveta - Retirada da peça do cluster
    !131.6 - Pega Triangulo Gaveta - Desaproximação do local
    !131.7 - Pega Triangulo Gaveta - Retorna para pounce
    !132.1 - Pega Triangulo Inspeção - At pounce
    !132.2 - Pega Triangulo Inspeção - Vai para peça
    !132.3 - Pega Triangulo Inspeção - Faz aproximação
    !132.4 - Pega Triangulo Inspeção - Pega peça
    !132.5 - Pega Triangulo Inspeção - Retirada da peça do cluster
    !132.6 - Pega Triangulo Inspeção - Desaproximação do local
    !132.7 - Pega Triangulo Inspeção - Retorna para pounce
    !212.1 - Depósito Quadrado Inspeção - At pounce
    !212.2 - Depósito Quadrado Inspeção - Vai para peça
    !212.3 - Depósito Quadrado Inspeção - Faz aproximação
    !212.4 - Depósito Quadrado Inspeção - Pega peça
    !212.5 - Depósito Quadrado Inspeção - Retirada da peça do cluster
    !212.6 - Depósito Quadrado Inspeção - Desaproximação do local
    !212.7 - Depósito Quadrado Inspeção - Retorna para pounce
    !213.1 - Depósito Quadrado Esteira de saída - At pounce
    !213.2 - Depósito Quadrado Esteira de saída - Vai para peça
    !213.3 - Depósito Quadrado Esteira de saída - Faz aproximação
    !213.4 - Depósito Quadrado Esteira de saída - Pega peça
    !213.5 - Depósito Quadrado Esteira de saída - Retirada da peça do cluster
    !213.6 - Depósito Quadrado Esteira de saída - Desaproximação do local
    !213.7 - Depósito Quadrado Esteira de saída - Retorna para pounce
    !222.1 - Depósito Circulo Inspeção - At pounce
    !222.2 - Depósito Circulo Inspeção - Vai para peça
    !222.3 - Depósito Circulo Inspeção - Faz aproximação
    !222.4 - Depósito Circulo Inspeção - Pega peça
    !222.5 - Depósito Circulo Inspeção - Retirada da peça do cluster
    !222.6 - Depósito Circulo Inspeção - Desaproximação do local
    !222.7 - Depósito Circulo Inspeção - Retorna para pounce
    !223.1 - Depósito Circulo Esteira de saída - At pounce
    !223.2 - Depósito Circulo Esteira de saída - Vai para peça
    !223.3 - Depósito Circulo Esteira de saída - Faz aproximação
    !223.4 - Depósito Circulo Esteira de saída - Pega peça
    !223.5 - Depósito Circulo Esteira de saída - Retirada da peça do cluster
    !223.6 - Depósito Circulo Esteira de saída - Desaproximação do local
    !223.7 - Depósito Circulo Esteira de saída - Retorna para pounce
    !232.1 - Depósito Triangulo Inspeção - At pounce
    !232.2 - Depósito Triangulo Inspeção - Vai para peça
    !232.3 - Depósito Triangulo Inspeção - Faz aproximação
    !232.4 - Depósito Triangulo Inspeção - Pega peça
    !232.5 - Depósito Triangulo Inspeção - Retirada da peça do cluster
    !232.6 - Depósito Triangulo Inspeção - Desaproximação do local
    !232.7 - Depósito Triangulo Inspeção - Retorna para pounce
    !233.1 - Depósito Triangulo Esteira de saída - At pounce
    !233.2 - Depósito Triangulo Esteira de saída - Vai para peça
    !233.3 - Depósito Triangulo Esteira de saída - Faz aproximação
    !233.4 - Depósito Triangulo Esteira de saída - Pega peça
    !233.5 - Depósito Triangulo Esteira de saída - Retirada da peça do cluster
    !233.6 - Depósito Triangulo Esteira de saída - Desaproximação do local
    !233.7 - Depósito Triangulo Esteira de saída - Retorna para pounce
    !312.1 - Inspeção Quadrado na Inspeção - At pounce
    !312.2 - Inspeção Quadrado na Inspeção - Vai para peça
    !312.3 - Inspeção Quadrado na Inspeção - Faz aproximação
    !312.4 - Inspeção Quadrado na Inspeção - Pega peça
    !312.5 - Inspeção Quadrado na Inspeção - Retirada da peça do cluster
    !312.6 - Inspeção Quadrado na Inspeção - Desaproximação do local
    !312.7 - Inspeção Quadrado na Inspeção - Retorna para pounce
    !322.1 - Inspeção Circulo na Inspeção - At pounce
    !322.2 - Inspeção Circulo na Inspeção - Vai para peça
    !322.3 - Inspeção Circulo na Inspeção - Faz aproximação
    !322.4 - Inspeção Circulo na Inspeção - Pega peça
    !322.5 - Inspeção Circulo na Inspeção - Retirada da peça do cluster
    !322.6 - Inspeção Circulo na Inspeção - Desaproximação do local
    !322.7 - Inspeção Circulo na Inspeção - Retorna para pounce
    !332.1 - Inspeção Triangulo na Inspeção - At pounce
    !332.2 - Inspeção Triangulo na Inspeção - Vai para peça
    !332.3 - Inspeção Triangulo na Inspeção - Faz aproximação
    !332.4 - Inspeção Triangulo na Inspeção - Pega peça
    !332.5 - Inspeção Triangulo na Inspeção - Retirada da peça do cluster
    !332.6 - Inspeção Triangulo na Inspeção - Desaproximação do local
    !332.7 - Inspeção Triangulo na Inspeção - Retorna para pounce

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
    !2	= Pega Quadrado Inspeção
    !3	= Pega Circulo Gaveta
    !4	= Pega Circulo Inspeção
    !5	= Pega Triangulo Gaveta
    !6	= Pega Triangulo Inspeção
    !7	= Depósito Quadrado Inspeção
    !8	= Depósito Quadrado Esteira de saída
    !9	= Depósito Circulo Inspeção
    !10	= Depósito Circulo Esteira de saída
    !11	= Depósito Triangulo Inspeção
    !12	= Depósito Triangulo Esteira de saída
    !13	= Inspeção Quadrado na Inspeção
    !14	= Inspeção Circulo na Inspeção
    !15	= Inspeção Triangulo na Inspeção

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