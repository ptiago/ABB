MODULE Process
    !######################################
    !
    ! Este modulo contem apenas as rotinas 
    ! relacionadas aos processos que o robo 
    ! ira realizar.
    !
    !######################################
    
    !*** Pega Quadrado na Gaveta
    PROC rProcess_111()
        
        !Setup inicial
        IF NOT fPer_111() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 1,1,1,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,1,1,0,TRUE;
        
        !Process
        rPega_Gaveta;
        
        !Retorna para Home
        rSet_Segment 1,1,1,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,1,1,0,TRUE;
        
    ENDPROC
    
    !*** Pega Quadrado Inspeção
    PROC rProcess_112()
        
        !Setup inicial
        IF NOT fPer_112() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 1,1,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,1,2,0,TRUE;
        
        !Process
        rPega_Inspecao;
        
        !Retorna para Home
        rSet_Segment 1,1,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,1,2,0,TRUE;
        
    ENDPROC
    
    !*** Pega Circulo Gaveta
    PROC rProcess_121()
        
        !Setup inicial
        IF NOT fPer_121() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 1,2,1,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,2,1,0,TRUE;
        
        !Process
        rPega_Gaveta;
        
        !Retorna para Home
        rSet_Segment 1,2,1,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,2,1,0,TRUE;
        
    ENDPROC
    
    !*** Pega Circulo Inspeção
    PROC rProcess_122()
        
        !Setup inicial
        IF NOT fPer_122() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 1,2,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,2,2,0,TRUE;
        
        !Process
        rPega_Inspecao;
        
        !Retorna para Home
        rSet_Segment 1,2,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,2,2,0,TRUE;
        
    ENDPROC
    
    !*** Pega Triangulo Gaveta
    PROC rProcess_131()
       
        !Setup inicial
        IF NOT fPer_131() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 1,3,1,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,3,1,0,TRUE;
        
        !Process
        rPega_Gaveta;
        
        !Retorna para Home
        rSet_Segment 1,3,1,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,3,1,0,TRUE;
        
    ENDPROC
    
    !*** Pega Triangulo Inspecao
    PROC rProcess_132()
        
        !Setup inicial
        IF NOT fPer_132() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 1,3,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,3,2,0,TRUE;
        
        !Process
        rPega_Inspecao;
        
        !Retorna para Home
        rSet_Segment 1,3,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 1,3,2,0,TRUE;
        
    ENDPROC
    
    !*** Deposito Quadrado Inspecao
    PROC rProcess_212()
        
        !Setup inicial
        IF NOT fPer_212() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 2,1,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,1,2,0,TRUE;
        
        !Process
        rDeposito_Inspecao;
        
        !Retorna para Home
        rSet_Segment 2,1,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,1,2,0,TRUE;
        
    ENDPROC
    
    !*** Depósito Quadrado Esteira de saida
    PROC rProcess_213()
        
        !Setup inicial
        IF NOT fPer_213() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 2,1,3,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,1,3,0,TRUE;
        
        !Process
        rDeposita_Est_Saida;
        
        !Retorna para Home
        rSet_Segment 2,1,3,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,1,3,0,TRUE;
        
    ENDPROC
    
    !*** Depósito Circulo Inspeção
    PROC rProcess_222()
        
        !Setup inicial
        IF NOT fPer_222() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 2,2,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,2,2,0,TRUE;
        
        !Process
        rDeposito_Inspecao;
        
        !Retorna para Home
        rSet_Segment 2,2,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,2,2,0,TRUE;
        
    ENDPROC
    
    !*** Depósito Circulo Esteira de saída
    PROC rProcess_223()
       
        !Setup inicial
        IF NOT fPer_223() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 2,2,3,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,2,3,0,TRUE;
        
        !Process
        rDeposita_Est_Saida;
        
        !Retorna para Home
        rSet_Segment 2,2,3,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,2,3,0,TRUE;
        
    ENDPROC
    
    !*** Depósito Triangulo Inspeção
    PROC rProcess_232()
        
        !Setup inicial
        IF NOT fPer_232() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 2,3,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,3,2,0,TRUE;
        
        !Process
        rDeposito_Inspecao;
        
        !Retorna para Home
        rSet_Segment 2,3,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,3,2,0,TRUE;
        
    ENDPROC
    
    !*** Depósito Triangulo Esteira de saída
    PROC rProcess_233()
        
        !Setup inicial
        IF NOT fPer_233() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 2,3,3,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,3,3,0,TRUE;
        
        !Process
        rDeposita_Est_Saida;
        
        !Retorna para Home
        rSet_Segment 2,3,3,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 2,3,3,0,TRUE;
        
    ENDPROC
    
    !*** Inspeção Quadrado na Inspeção
    PROC rProcess_312()
        
        !Setup inicial
        IF NOT fPer_312() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 3,1,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 3,1,2,0,TRUE;
        
        !Process
        rInspeciona;
        
        !Retorna para Home
        rSet_Segment 3,1,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 3,1,2,0,TRUE;
        
    ENDPROC
    
    !*** Inspeção Circulo na Inspeção
    PROC rProcess_322()
        
        !Setup inicial
        IF NOT fPer_322() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 3,2,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 3,2,2,0,TRUE;
        
        !Process
        rInspeciona;
        
        !Retorna para Home
        rSet_Segment 3,2,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 3,2,2,0,TRUE;
        
    ENDPROC
    
    !*** Inspeção Triangulo na Inspeção
    PROC rProcess_332()
        
        !Setup inicial
        IF NOT fPer_332() THEN
            
            rMensagem 9,10,1,1;
            
            STOP;
            
        ENDIF
        
        rSet_Segment 3,3,2,0,FALSE;
        
        rAtr_Ptp_Process;
        
        rSet_Tool;
        
        !Vai para Home
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 3,3,2,0,TRUE;
        
        !Process
        rInspeciona;
        
        !Retorna para Home
        rSet_Segment 3,3,2,0,FALSE;
            MoveJ pHome_Atual,vmax,z50,tool0\WObj:=wobj0;
        rSet_Segment 3,3,2,0,TRUE;
        
    ENDPROC
    
    !*** Rotina generica para pega na gaveta
    PROC rPega_Gaveta()
        
        !Pounce
        rSet_Segment nProcesso,nPeca,nEstacao,1,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual\WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,1,TRUE;
        
        !Aproximacao
        rSet_Segment nProcesso,nPeca,nEstacao,3,FALSE;
            MoveJ Offs(pPega_Gaveta_Atual,-100,0,100), v3000, z50, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Gaveta_Atual,-50,0,50), v2000, z20, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Gaveta_Atual,0,0,20), v1000, z5, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Gaveta_Atual,0,0,10), v500, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,3,TRUE;
        
        !Pega
        rSet_Segment nProcesso,nPeca,nEstacao,4,FALSE;
            MoveJ Offs(pPega_Gaveta_Atual,0,0,0), v100, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,4,TRUE;
        
        !Aciona Ima
        rTON_Tool nFerramenta;
        
        !Saida
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
            MoveJ Offs(pPega_Gaveta_Atual,0,0,50), v1000, z5, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
        
        !Atribui tipo da peca na ferramenta
        nPeca_Na_Garra{nFerramenta} := nPeca;
        
        rConfirma_Process nPath_Seg;
        
        !Retorna para pouce
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual\WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
    ENDPROC
    
    !*** Rotina generica para inspecionar peca
    PROC rInspeciona()
         
        !Pounce
        rSet_Segment nProcesso,nPeca,nEstacao,1,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,1,TRUE;
        
        !Aproximacao
        rSet_Segment nProcesso,nPeca,nEstacao,3,FALSE;
            MoveJ Offs(pInsp_Peca_Atual,0,0,100), v3000, z50, tAtual \WObj:=wAtual;
            MoveJ Offs(pInsp_Peca_Atual,0,0,50), v2000, z20, tAtual \WObj:=wAtual;
            MoveJ Offs(pInsp_Peca_Atual,0,0,20), v1000, z5, tAtual \WObj:=wAtual;
            MoveJ Offs(pInsp_Peca_Atual,0,0,10), v500, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,3,TRUE;
        
        !Pega
        rSet_Segment nProcesso,nPeca,nEstacao,4,FALSE;
            MoveJ Offs(pInsp_Peca_Atual,0,0,0), v100, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,4,TRUE;
        
        !Aguarda leitura
        bPeca_NOK := FALSE;
        WaitDI DI_008_Peca_OK, 1, \MaxTime:=3 \TimeFlag:= bPeca_NOK \Visualize \Header:="Waiting for signal" \MsgArray:=["Wait for inspection"] \Icon:=iconInfo;
        
        !Saida
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
            MoveJ Offs(pInsp_Peca_Atual,0,0,50), v1000, z5, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
        
        rConfirma_Process nPath_Seg;
        
        !Retorna para pouce
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
    ENDPROC
    
    !*** Rotina generica para depositar pecas OK
    PROC rDeposito_Inspecao()
        
        !Pounce
        rSet_Segment nProcesso,nPeca,nEstacao,1,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,1,TRUE;
        
        !Aproximacao
        rSet_Segment nProcesso,nPeca,nEstacao,3,FALSE;
            MoveJ Offs(pDep_Insp_Atual,-50,0,100), v3000, z50, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_Insp_Atual,-10,0,50), v2000, z20, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_Insp_Atual,0,0,20), v1000, z5, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_Insp_Atual,0,0,10), v500, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,3,TRUE;
        
        !Pega
        rSet_Segment nProcesso,nPeca,nEstacao,4,FALSE;
            MoveJ Offs(pDep_Insp_Atual,0,0,0), v100, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,4,TRUE;
        
        !Desliga Ima
        rTOF_Tool nFerramenta;
        
        !Saida
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
            MoveJ Offs(pDep_Insp_Atual,0,0,50), v1000, z5, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
        
        !Atribui tipo da peca na ferramenta
        nPeca_Na_Garra{nFerramenta} := 0;
        
        !Confirma processo
        rConfirma_Process nPath_Seg;
        bInsp_Caixa_Cheia{nPeca} := TRUE;
        
        !Retorna para pouce
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
        
    ENDPROC
    
    !*** Rotina generica para depositar pecas NOK
    PROC rDeposito_Inspecao_NOK()
        
        rInc_Pos_Peca_NOK; 
        
        !Pounce
        rSet_Segment nProcesso,nPeca,nEstacao,1,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,1,TRUE;
        
        !Aproximacao
        rSet_Segment nProcesso,nPeca,nEstacao,3,FALSE;
            MoveJ Offs(pDep_NOK_Insp,-50,0,100 + (nEspessura_Peca*(nPecas_NOK+1)) ), v3000, z50, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_NOK_Insp,-10,0,50 + (nEspessura_Peca*(nPecas_NOK+1)) ), v2000, z20, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_NOK_Insp,0,0,20 + (nEspessura_Peca*(nPecas_NOK+1)) ), v1000, z5, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_NOK_Insp,0,0,10 + (nEspessura_Peca*(nPecas_NOK+1)) ), v500, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,3,TRUE;
        
        !Pega
        rSet_Segment nProcesso,nPeca,nEstacao,4,FALSE;
            MoveJ Offs(pDep_NOK_Insp,0,0,0 + (nEspessura_Peca*(nPecas_NOK+1)) ), v100, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,4,TRUE;
        
        !Desliga Ima
        rTOF_Tool nFerramenta;
        
        !Saida
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
            MoveJ Offs(pDep_NOK_Insp,0,0,100), v1000, z5, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
        
        !Atribui tipo da peca na ferramenta
        nPeca_Na_Garra{nFerramenta} := 0;
        
        rInc_Dep_NOK;
        
        !Retorna para pouce
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
    ENDPROC
    
    !*** Rotina generica para pega na inspecao de pecas OK
    PROC rPega_Inspecao()
        
        pPega_Inspecao_Atual := pDep_Insp_Atual;
        
        !Pounce
        rSet_Segment nProcesso,nPeca,nEstacao,1,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,1,TRUE;
        
        !Aproximacao
        rSet_Segment nProcesso,nPeca,nEstacao,3,FALSE;
            MoveJ Offs(pPega_Inspecao_Atual,-100,0,100), v3000, z50, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Inspecao_Atual,-50,0,50), v2000, z20, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Inspecao_Atual,0,0,20), v1000, z5, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Inspecao_Atual,0,0,10), v500, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,3,TRUE;
        
        !Pega
        rSet_Segment nProcesso,nPeca,nEstacao,4,FALSE;
            MoveJ Offs(pPega_Inspecao_Atual,0,0,0), v100, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,4,TRUE;
        
        !Aciona Ima
        rTON_Tool nFerramenta;
        
        !Saida
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
            MoveJ Offs(pPega_Inspecao_Atual,0,0,50), v1000, z5, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
        
        !Atribui tipo da peca na ferramenta
        nPeca_Na_Garra{nFerramenta} := nPeca;
        
        !Confirma process
        rConfirma_Process nPath_Seg;
        bInsp_Caixa_Cheia{nPeca} := FALSE;
        
        !Retorna para pouce
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
    ENDPROC
    
    !*** Rotina generica para pega na inspecao de pecas NOK
    PROC rPega_Inspecao_NOK()
        
        rInc_Pos_Peca_NOK;
        
        pPega_Inspecao_NOK := pDep_NOK_Insp;
        
        !Pounce
        rSet_Segment nProcesso,nPeca,nEstacao,1,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,1,TRUE;
        
        !Aproximacao
        rSet_Segment nProcesso,nPeca,nEstacao,3,FALSE;
            MoveJ Offs(pPega_Inspecao_NOK,-50,0,100 + (nEspessura_Peca*(nPecas_NOK+1)) ), v3000, z50, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Inspecao_NOK,-10,0,50 + (nEspessura_Peca*(nPecas_NOK+1)) ), v2000, z20, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Inspecao_NOK,0,0,20 + (nEspessura_Peca*(nPecas_NOK+1)) ), v1000, z5, tAtual \WObj:=wAtual;
            MoveJ Offs(pPega_Inspecao_NOK,0,0,10 + (nEspessura_Peca*(nPecas_NOK+1)) ), v500, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,3,TRUE;
        
        !Pega
        rSet_Segment nProcesso,nPeca,nEstacao,4,FALSE;
            MoveJ Offs(pPega_Inspecao_NOK,0,0,0 + (nEspessura_Peca*(nPecas_NOK+1)) ), v100, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,4,TRUE;
        
        !Aciona Ima
        rTON_Tool nFerramenta;
        
        !Saida
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
            MoveJ Offs(pPega_Inspecao_NOK,0,0,100), v1000, z5, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
        
        !Atribui tipo da peca na ferramenta
        nPeca_Na_Garra{nFerramenta} := nPeca;
        
        rDec_Dep_NOK;
        
        !Retorna para pouce
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
        
    ENDPROC
    
    !*** Rotina para depositar peca na esteira de saida
    PROC rDeposita_Est_Saida()
        
        !Pounce
        rSet_Segment nProcesso,nPeca,nEstacao,1,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,1,TRUE;
        
        !Aproximacao
        rSet_Segment nProcesso,nPeca,nEstacao,3,FALSE;
            MoveJ Offs(pDep_Est_Saida,0,0,100), v3000, z50, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_Est_Saida,0,0,50), v2000, z20, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_Est_Saida,0,0,20), v1000, z5, tAtual \WObj:=wAtual;
            MoveJ Offs(pDep_Est_Saida,0,0,10), v500, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,3,TRUE;
        
        !Pega
        rSet_Segment nProcesso,nPeca,nEstacao,4,FALSE;
            MoveJ Offs(pDep_Est_Saida,0,0,0 + (nEspessura_Peca*(nPecas_NOK+1)) ), v100, fine, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,4,TRUE;
        
        !Desliga Ima
        rTOF_Tool nFerramenta;
        
        !Saida
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
            MoveJ Offs(pDep_Est_Saida,0,0,100), v1000, z5, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,5,FALSE;
        
        !Atribui tipo da peca na ferramenta
        nPeca_Na_Garra{nFerramenta} := 0;
        
        !Reseta processos relacionados anteriores da peca que foi depositada
        rReset_Part nPeca;
        
        rConfirma_Process nPath_Seg;
        
        !Retorna para pouce
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
            MoveJ pPounce_Estacao{nEstacao}, vmax, z30, tAtual \WObj:=wAtual;
        rSet_Segment nProcesso,nPeca,nEstacao,7,FALSE;
        
    ENDPROC
    
    !*** Rotina de Recovery_Home
    PROC rProcess_0()

    !Identifica aonde exatamente o robo esta
    nReg_1 := nPath_Seg + (nSub_Path / 10);
        
    TEST nReg_1
    
    CASE 111.2, 111.3, 111.4, 111.5, 111.6,
         121.2, 121.3, 121.4, 121.5, 121.6,
         131.2, 131.3, 131.4, 131.5, 131.6,
         112.2, 112.3, 112.4, 112.5, 112.6,
         122.2, 122.3, 122.4, 122.5, 122.6,
         132.2, 132.3, 132.4, 132.5, 132.6,
         212.2, 212.3, 212.4, 212.5, 212.6,
         222.2, 222.3, 222.4, 222.5, 222.6,
         232.2, 232.3, 232.4, 232.5, 232.6,
         213.2, 213.3, 213.4, 213.5, 213.6,
         223.2, 223.3, 223.4, 223.5, 223.6,
         233.2, 233.3, 233.4, 233.5, 233.6:
         GOTO LABEL_1;
         
    CASE 312.2, 312.3, 312.4, 312.5, 312.6,
         322.2, 322.3, 322.4, 322.5, 322.6,
         332.2, 332.3, 332.4, 332.5, 332.6:
         GOTO LABEL_2;
         
    CASE 111.1, 121.1, 131.1,
         112.1, 122.1, 132.1:
         GOTO LABEL_3;
    
    DEFAULT:
        rMensagem 6,7,1,1;
    ENDTEST
        
    LABEL_1:
        
        !Generaliza a altura do ponto de retorno
        pReg_1 := CRobT(\Tool:=tAtual \WObj:=wAtual);
        pReg_1.trans.z := 1500;
        
        MoveJ CRobT(\Tool:=tAtual \WObj:=wAtual),v2000,fine,tAtual \WObj:= wAtual;
        MoveL pReg_1,v2000,fine,tAtual \WObj:= wAtual;
        
    LABEL_2:
        
        MoveJ pPounce_Estacao_Atual,v2000,fine,tAtual \WObj:= wAtual;
        
    LABEL_3:
    
        MoveJ pHome_Atual,vmax,fine,tAtual \WObj:= wobj0;
    
    ENDPROC
    
ENDMODULE