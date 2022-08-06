MODULE Global_Variable
    !######################################
    !
    ! Este modulo contem apenas variaveis globais
    !
    !######################################
    
    !########## NUMERICAS
    !*** Registradores
    PERS num nReg_1 := 0;
    PERS num nReg_2 := 0;
    PERS num nReg_3 := 0;
    PERS num nReg_4 := 0;
    PERS num nReg_5 := 0;
    
    !*** Gerais
    PERS num nEspessura_Peca  := 10;
    PERS num nEstacao   := 1;
    PERS num nFerramenta:= 1;
    PERS num nPath_Seg := 0;
    PERS num nPeca     := 1;
    PERS num nPeca_Na_Garra{2} := [0,0];
    PERS num nPecas_NOK:= 0;
    PERS num nProcDestino := 1;
    PERS num nProcesso := 1;
    PERS num nSub_Path := 0;
    PERS num nTempo_Ciclo{10} := [0,0,0,0,0,0,0,0,0,0];
    
    !########## BOOLEANAS
    !*** Registradores
    PERS bool bReg_1 := FALSE;
    PERS bool bReg_2 := FALSE;
    PERS bool bReg_3 := FALSE;
    PERS bool bReg_4 := FALSE;
    PERS bool bReg_5 := FALSE;
    
    !*** Gerais
    PERS bool bDescarte_Cheio := FALSE;
    PERS bool bEst_Livre_Dep  := FALSE;
    PERS bool bGaveta_Vazia   := FALSE;
    PERS bool bInsp_Caixa_Cheia{3} := [FALSE, FALSE, FALSE];
    VAR  bool bPeca_NOK       := FALSE;
    PERS bool bProcess_OK{15} := [
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE,
                                 FALSE];
    PERS bool bSeg_At_Pos := FALSE;
    
    !########## STRING
    !*** Registradores
    PERS string sReg_1 := "";
    PERS string sReg_2 := "";
    PERS string sReg_3 := "";
    PERS string sReg_4 := "";
    PERS string sReg_5 := "";
    
    PERS string sMensagens{14} :=  [
                                   "",
                                   "Caixa cheia",
                                   "Peca invalida",
                                   "Gaveta aberta",
                                   "Peca NOK",
                                   "Dado invalido!",
                                   "Favor selecionar opcao valida",
                                   "Permissivel",
                                   "Permissivel nao liberado",
                                   "Nao ha condicao favoravel para continuacao do processo",
                                   "Favor verificar se todas as condicoes sao verdadeiras",
                                   "Gaveta vazia",
                                   "Celula resetada",
                                   "Teste de freios concluido"
                                   ];
    PERS string sEstacao{3}     := ["Gaveta","Inspecao","Esteira de saida"];
    PERS string sEstacao_Atual  := "";
    PERS string sPeca{3}        := ["Quadrado","Circulo","Triangulo"];
    PERS string sPeca_Atual     := "";
    PERS string sProcesso{3}    := ["Pega","Deposito","Inspecao"];
    PERS string sProcesso_Atual := "";
    
    !########## ROB TARGET
    !*** Registradores
    PERS robtarget pReg_1:=[[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_2:=[[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_3:=[[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_4:=[[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_5:=[[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
         
    !*** Gerais
    PERS robtarget pDep_Insp{3}        :=  [
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                           ];
                                           
    PERS robtarget pDep_Insp_Atual     := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];          
    PERS robtarget pDep_Est_Saida      := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    PERS robtarget pDep_NOK_Insp       := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    
    PERS robtarget pHome{4}             := [
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                           ];
                                           
    PERS robtarget pHome_Atual          := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    
    PERS robtarget pInsp_Peca{3}        := [
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                           ];
                                           
    PERS robtarget pInsp_Peca_Atual     := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    PERS robtarget pManutencao          := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
          
    PERS robtarget pPega_Inspecao_Atual := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    PERS robtarget pPega_Inspecao_NOK   := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
      
    PERS robtarget pPega_Gaveta{6}      := [
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                           [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                           ];
                                           
    PERS robtarget pPega_Gaveta_Atual   := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
                                           
    PERS robtarget pPounce_Estacao{3}   :=  [
                                            [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                            [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                            [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                            ];
                                           
    PERS robtarget pPounce_Estacao_Atual:= [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
     
    !########## JOINT TARGET
    !*** Registradores
    PERS jointtarget pJoint_Reg_1:=[ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_2:=[ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_3:=[ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_4:=[ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_5:=[ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    !*** Gerais
    PERS jointtarget pCalib      := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pTeste_Freio:= [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    
    !########## TOOL DATA
    PERS tooldata tAtual  := [ TRUE, [[97.4, 0, 223.1], [0.924, 0, 0.383 ,0]], [5, [23, 0, 75], [1, 0, 0, 0], 0, 0, 0]];
    PERS tooldata tTool{2}:= [
                             [ TRUE, [[97.4, 0, 223.1], [0.924, 0, 0.383 ,0]], [5, [23, 0, 75], [1, 0, 0, 0], 0, 0, 0]],
                             [ TRUE, [[97.4, 0, 223.1], [0.924, 0, 0.383 ,0]], [5, [23, 0, 75], [1, 0, 0, 0], 0, 0, 0]]
                             ];
    
    !########## WORK OBJECT / FRAME DATA
    PERS wobjdata wAtual      := [ FALSE, TRUE, "", [ [300, 600, 200], [1, 0, 0 ,0] ], [ [0, 200, 30], [1, 0, 0 ,0] ] ];
    PERS wobjdata wEstacao{3} := [
                                 [ FALSE, TRUE, "", [ [300, 600, 200], [1, 0, 0 ,0] ], [ [0, 200, 30], [1, 0, 0 ,0] ] ],
                                 [ FALSE, TRUE, "", [ [300, 600, 200], [1, 0, 0 ,0] ], [ [0, 200, 30], [1, 0, 0 ,0] ] ],
                                 [ FALSE, TRUE, "", [ [300, 600, 200], [1, 0, 0 ,0] ], [ [0, 200, 30], [1, 0, 0 ,0] ] ]
                                 ];
    
    !########## LOAD DATA
    PERS loaddata lPeca := [ 5, [50, 0, 50], [1, 0, 0, 0], 0, 0, 0];
    
ENDMODULE