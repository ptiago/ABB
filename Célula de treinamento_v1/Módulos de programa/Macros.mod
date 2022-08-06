MODULE Macros
    !######################################
    !
    ! Este modulo contem apenas funcoes e/ou
    ! rotinas genericas que podem ser usadas
    ! praticamente em todo o sistema
    !
    !######################################

    !*** Atribui os pontos de processo, como deposito inspecao...
    !de acordo com o produto e o status do processo
    PROC rAtr_Ptp_Process()

        rAtr_Ptp_Gaveta;
        pHome_Atual           := pHome{nEstacao};
        pInsp_Peca_Atual      := pInsp_Peca{nPeca};
        pDep_Insp_Atual       := pDep_Insp{nPeca};
        pPounce_Estacao_Atual := pPounce_Estacao{nEstacao};

    ENDPROC

    !*** Atribui o ponto para o deposito na caixa de
    !pecas nao conforme
    PROC rInc_Pos_Peca_NOK()

        pDep_NOK_Insp.trans.z:=(pDep_NOK_Insp.trans.z*(nPecas_NOK+1));

    ENDPROC

    !*** Atribui para o processo a peca que sera
    !retirada da gaveta de acordo com sua presenca
    PROC rAtr_Ptp_Gaveta()

        !Verifica de ha peca na gaveta
        IF
        DI_002_Quad_Dir_Pres=1 OR
        DI_003_Quad_Esq_Pres=1 OR
        DI_004_Circ_Dir_Pres=1 OR
        DI_005_Circ_Esq_Pres=1 OR
        DI_006_Tri_Dir_Pres=1 OR
        DI_007_Tri_Esq_Pres=1

        THEN
            bGaveta_Vazia:=FALSE;

        ELSE
            bGaveta_Vazia:=TRUE;
            rMensagem 12,1,1,1;
            RETURN ;

        ENDIF

        !Atribui ponto de pega na gaveta
        TEST nPath_Seg
        CASE 111:
            nPeca:=1;
            IF DI_002_Quad_Dir_Pres=1 THEN
                pPega_Gaveta_Atual:=pPega_Gaveta{1};

            ELSEIF DI_003_Quad_Esq_Pres=1 THEN
                pPega_Gaveta_Atual:=pPega_Gaveta{2};
            ENDIF

        CASE 121:
            nPeca:=2;
            IF DI_004_Circ_Dir_Pres=1 THEN
                pPega_Gaveta_Atual:=pPega_Gaveta{3};

            ELSEIF DI_005_Circ_Esq_Pres=1 THEN
                pPega_Gaveta_Atual:=pPega_Gaveta{4};
            ENDIF

        CASE 131:
            nPeca:=3;
            IF DI_006_Tri_Dir_Pres=1 THEN
                pPega_Gaveta_Atual:=pPega_Gaveta{5};

            ELSEIF DI_007_Tri_Esq_Pres=1 THEN
                pPega_Gaveta_Atual:=pPega_Gaveta{6};
            ENDIF

        DEFAULT:
            rMensagem 6,7,1,1;

        ENDTEST

    ENDPROC

    !*** Faz o incremento na contagem de pecas
    !na caixa de pecas NOK
    PROC rInc_Dep_NOK()

        IF
        bPeca_NOK AND 
        nProcesso = 2
        THEN
            Incr nPecas_NOK;
            bDescarte_Cheio := FALSE;

            IF (nPecas_NOK>=3) bDescarte_Cheio := TRUE;

        ENDIF

    ENDPROC
    
    !*** Faz o incremento na contagem de pecas
    !na caixa de pecas NOK
    PROC rDec_Dep_NOK()

            Decr nPecas_NOK;
            
            bDescarte_Cheio := FALSE;

    ENDPROC

    !*** Reseta o processo relacionados a uma peca
    PROC rReset_Part(num Part)

        TEST Part
        CASE 1:
            bProcess_OK{1}:=FALSE;
            bProcess_OK{2}:=FALSE;
            bProcess_OK{7}:=FALSE;
            bProcess_OK{8}:=FALSE;
            bProcess_OK{13}:=FALSE;

        CASE 2:
            bProcess_OK{3}:=FALSE;
            bProcess_OK{4}:=FALSE;
            bProcess_OK{9}:=FALSE;
            bProcess_OK{10}:=FALSE;
            bProcess_OK{14}:=FALSE;

        CASE 3:
            bProcess_OK{5}:=FALSE;
            bProcess_OK{6}:=FALSE;
            bProcess_OK{11}:=FALSE;
            bProcess_OK{12}:=FALSE;
            bProcess_OK{15}:=FALSE;

        DEFAULT:
            rMensagem 3,1,1,1;
            
        ENDTEST

    ENDPROC

    !*** Atribui valores para processo, peca, estacao
    PROC rSet_Segment(num Processo,num Peca,num Estacao,num Sub_Path,bool At_Pos)
        !*** At_Pos = Indica se o robo chegou na posicao
        !TRUE = Significa que o robo esta/chegou na posicao para qual ele ia
        !FALSE = Significa que ele ainda nao alcansou a posicao, e ele deve ainda estar no caminho para ela

        !Main path
        nProcesso:=Processo;
        nPeca:=Peca;
        nEstacao:=Estacao;

        nPath_Seg:=((nProcesso*100)+(nPeca*10)+(nEstacao));

        !Sub path
        nSub_Path:=Sub_Path;

        !To show on IHM
        sProcesso_Atual:=sProcesso{nProcesso};
        sPeca_Atual:=sPeca{nPeca};
        sEstacao_Atual:=sEstacao{nEstacao};

        bSeg_At_Pos:=At_Pos;

    ENDPROC

    !*** Reseta toda a celula
    PROC rReset_Cell()

        !Numericas
        nEstacao:=0;
        nPath_Seg:=0;
        nPeca:=0;
        nPeca_Na_Garra:=[0,0];
        nPecas_NOK:=0;
        nProcesso:=0;
        nSub_Path:=0;

        !Booleanas
        bDescarte_Cheio:=FALSE;
        bEst_Livre_Dep:=FALSE;
        bPeca_NOK:=FALSE;
        bSeg_At_Pos:=FALSE;

        FOR i FROM 1 TO 3 DO
            bInsp_Caixa_Cheia{i}:=FALSE;
        ENDFOR

        FOR i FROM 1 TO 15 DO
            bProcess_OK{i}:=FALSE;
        ENDFOR
        
        rMensagem 13,1,1,1;

    ENDPROC

    !*** Funcao retorna qual o primeiro ima esta livre
    FUNC num fIma_Livre()
        IF
        nPeca_Na_Garra{1}=0 THEN
            RETURN 1;

        ELSEIF
        nPeca_Na_Garra{2}=0 THEN
            RETURN 2;

        ELSE
            !Ambas estao com peca, nao ha ima livre
            RETURN 0;
        ENDIF

    ENDFUNC
    
    !*** Funcao retorna qual o primeiro ima esta ocupado
    FUNC num fIma_Ocupado()
        IF
        nPeca_Na_Garra{1} <> 0 THEN
            RETURN 1;

        ELSEIF
        nPeca_Na_Garra{2} <> 0 THEN
            RETURN 2;

        ELSE
            !Ambas estao sem peca, nao ha ima ocupado
            RETURN 0;
        ENDIF

    ENDFUNC

    !*** Rotina para configurar a ferramenta a ser usada
    PROC rSet_Tool()

        TEST nProcesso
        CASE 1:
            !Verifica qual ima esta livre
            nFerramenta := fIma_Livre();

        CASE 2,3:
            !Verifica qual ima esta ocupado
            nFerramenta := fIma_Ocupado();

        DEFAULT:
            rMensagem 6,7,1,1;
            
        ENDTEST

        !Atribui o ima livre a ferramenta que sera usada
        tAtual := tTool{nFerramenta};

    ENDPROC
    
    !*** Rotina para confirmacao do processo atual
    PROC rConfirma_Process(num Path_Seg)
        TEST Path_Seg
        CASE 111:
        bProcess_OK{1} := TRUE;
        
        CASE 112:
        bProcess_OK{2} := TRUE;
        
        CASE 121:
        bProcess_OK{3} := TRUE;
        
        CASE 122:
        bProcess_OK{4} := TRUE;
        
        CASE 131:
        bProcess_OK{5} := TRUE;
        
        CASE 132:
        bProcess_OK{6} := TRUE;
        
        CASE 212:
        bProcess_OK{7} := TRUE;
        
        CASE 213:
        bProcess_OK{8} := TRUE;
        
        CASE 222:
        bProcess_OK{9} := TRUE;
        
        CASE 223:
        bProcess_OK{10} := TRUE;
        
        CASE 232:
        bProcess_OK{11} := TRUE;
        
        CASE 233:
        bProcess_OK{12} := TRUE;
        
        CASE 312:
        bProcess_OK{13} := TRUE;
        
        CASE 322:
        bProcess_OK{14} := TRUE;
        
        CASE 332:
        bProcess_OK{15} := TRUE;
        
        DEFAULT:
            rMensagem 6,1,1,1;
            
        ENDTEST
        
    ENDPROC

ENDMODULE