MODULE Process
    !*** Atribui valores para processo, peca, estacao
    PROC rSet_Segment(num Processo,num Peca,num Estacao,num Sub_Path,bool At_Pos)
        !*** At_Pos = Indica se o robo chegou na posicao
        !TRUE = Significa que o robo esta/chegou na posicao para qual ele ia
        !FALSE = Significa que ele ainda nao alcansou a posicao, e ele deve ainda estar no caminho para ela

        !Main path
!        nProcesso:=Processo;
!        nPeca:=Peca;
!        nEstacao:=Estacao;

!        nPath_Seg:=((nProcesso*100)+(nPeca*10)+(nEstacao));

!        Sub path
!        nSub_Path:=Sub_Path;

!        To show on IHM
!        sProcesso_Atual:=sProcesso{nProcesso};
!        sPeca_Atual:=sPeca{nPeca};
!        sEstacao_Atual:=sEstacao{nEstacao};

!        bSeg_At_Pos:=At_Pos;

    ENDPROC

    !*** Reseta toda a celula
    PROC rReset_Cell()

!        !Numericas
!        nEstacao:=0;
!        nPath_Seg:=0;
!        nPeca:=0;
!        nPeca_Na_Garra:=[0,0];
!        nPecas_NOK:=0;
!        nProcesso:=0;
!        nSub_Path:=0;

!        !Booleanas
!        bDescarte_Cheio:=FALSE;
!        bEst_Livre_Dep:=FALSE;
!        bPeca_NOK:=FALSE;
!        bSeg_At_Pos:=FALSE;

!        FOR i FROM 1 TO 3 DO
!            bInsp_Caixa_Cheia{i}:=FALSE;
!        ENDFOR

!        FOR i FROM 1 TO 15 DO
!            bProcess_OK{i}:=FALSE;
!        ENDFOR
        
!        rMensagem 13,1,1,1;

    ENDPROC
    
    !*** Rotina para configurar a ferramenta a ser usada
    PROC rSet_Tool()

!        TEST nProcesso
!        CASE 1:
!            !Verifica qual ima esta livre
!            nFerramenta := fIma_Livre();

!        CASE 2,3:
!            !Verifica qual ima esta ocupado
!            nFerramenta := fIma_Ocupado();

!        DEFAULT:
!            rMensagem 6,7,1,1;
            
!        ENDTEST

!        !Atribui o ima livre a ferramenta que sera usada
!        tAtual := tTool{nFerramenta};

    ENDPROC
    
    !*** Ajusta ponto de pega na esteira de entrada
    PROC rAtr_Pick_Con()
        
        !Reseta valor do ponto
        pPick_1_Cur := pPick_Con;
        pPick_2_Cur := pPick_Con;
        
        !Atribui o offset para pega a partir do ponto fixo
        IF (cProduct{cProcess_Seg.Product}.X > nTool_Length) pPick_1_Cur.trans.x := ((cProduct{cProcess_Seg.Product}.X / 2) - (nTool_Length/2));
        pPick_2_Cur.trans.x := cProduct{cProcess_Seg.Product}.X - (nTool_Length/2);
        
    ENDPROC
    
ENDMODULE