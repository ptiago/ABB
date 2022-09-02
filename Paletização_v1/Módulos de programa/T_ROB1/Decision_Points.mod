MODULE Decision_Points
!===========================================
!      Decision_Points Module Program           
!===========================================
!Company: NA
!Process: Palletizing
!Robot Typ: IRC5 / IRB 660-250_3,15 / Standard
!===========================================
!               Creat By
!===========================================
!Company: NA  
!Programmer: Pedro Tiago Bernabe Lomas  
!Date: 08/2022
!Email: ptiago.lomas@gmail.com
!LinkedIn: https://www.linkedin.com/in/pedro-lomas/
!Mobile:  +55 12 988585806
!WhatsApp: +55 12 988585806 
!Version: 6.13.04.00                   
!=========================================== 
! Module description
!===========================================
! Pontos de verificacao aonde e decidido qual 
! processo o robo ira fazer
!===========================================

    PROC rDP_1()
        
        nDP := 1;
        
        !Verifica qual o modo de operacao de Dry Run
        IF ((bDry_Run = TRUE) AND (nDryRun_Seting_1 = 0)) THEN 
            rDryRun_Par;
            
        ELSEIF ((bDry_Run = TRUE) AND (nDryRun_Seting_1 <> 0)) THEN
            GOTO LABEL_1;
            
        ENDIF
        
        WHILE (GI_001_BOX_PROD_IN = 0) DO
            
        !Aguarda caixa chegar na esteira
        rSet_Segment 81;
            MoveJ cStation{3}.pPounce, vmax,z50, tCurrent \WObj:= wCurrent;
        
        ClkStop clCicle_Running;
         
        ENDWHILE
        
        rChk_Part_In_Con;
        
        LABEL_1:
        
        !Faz a leitura do tempo do ciclo anterior e inicia o tempo de ciclo
        cPallet_Status{nCur_Pallet}.Cicle_Time_Last := ClkRead (clCicle_Running);
        
        !Incrementa o valor atual na media
        Add nSum_clCicle_Running, cPallet_Status{nCur_Pallet}.Cicle_Time_Last;
        
        !Previne calculo quando nao ha ao menos um palete pronto
        IF cPallet_Status{nCur_Pallet}.Pallets_Done = 0 GOTO LABEL_2;
        
        cPallet_Status{nCur_Pallet}.Cicle_Time_Avr := (nSum_clCicle_Running / cPallet_Status{nCur_Pallet}.Pallets_Done);
        
        LABEL_2:
        
        !Reinicia o cronometro
        ClkReset clCicle_Running;
        ClkStart clCicle_Running;
         
        !Informa a proxima etapa de producao
        Incr nDP;
        
    ENDPROC

    PROC rDP_2()
        
        nDP := 2;
       
        !Prioridade 1
        IF fProc_Cond_1131() THEN
            nProcDestino := 1131;

        !Prioridade 2   
        ELSEIF fProc_Cond_1231() THEN
            nProcDestino := 1231;

        !Prioridade 3
        ELSEIF fProc_Cond_1331() THEN
            nProcDestino := 1331;

        !Prioridade 4
        ELSEIF fProc_Cond_1431() THEN
            nProcDestino := 1431;

        !Nenhuma prioridade com valor TRUE
        ELSE
            !Faz com que este ponto de decisao seja executado enquanto nao houver 
            !nenhuma das prioridades com condicoes verdadeira
            
            Incr nAttempts;
            
            GOTO LABEL_99;
        ENDIF

        !Reseta o numero de tentavias para entrar em uma condicao
        nAttempts := 0;
        
        !Executa a rotina de destino
        CallByVar "r",nProcDestino;
    
        !Informa a proxima etapa de producao
        Incr nDP;
        
        LABEL_99:

    ENDPROC

    PROC rDP_3()
        
        nDP := 3;

        !Prioridade 1
        IF fProc_Cond_2111() THEN
            nProcDestino := 2111;

        !Prioridade 2   
        ELSEIF fProc_Cond_2121() THEN
            nProcDestino := 2121;

        !Prioridade 3
        ELSEIF fProc_Cond_2211() THEN
            nProcDestino := 2211;

        !Prioridade 4
        ELSEIF fProc_Cond_2221() THEN
            nProcDestino := 2221;

        !Prioridade 5
        ELSEIF fProc_Cond_2311() THEN
            nProcDestino := 2311;

        !Prioridade 6
        ELSEIF fProc_Cond_2321() THEN
            nProcDestino := 2321;

        !Prioridade 7
        ELSEIF fProc_Cond_2411() THEN
            nProcDestino := 2411;

        !Prioridade 8
        ELSEIF fProc_Cond_2421() THEN
            nProcDestino := 2421;

       !Nenhuma prioridade com valor TRUE
        ELSE
            !Faz com que este ponto de decisao seja executado enquanto nao houver 
            !nenhuma das prioridades com condicoes verdadeira
            
            !rMensagem
            GOTO LABEL_99;
        ENDIF

        !Reseta o numero de tentavias para entrar em uma condicao
        nAttempts := 0;
        
        !Executa a rotina de destino
        CallByVar "r",nProcDestino;
        
        !Informa a proxima etapa de producao
        nDP := 1;
        
        LABEL_99:

    ENDPROC

ENDMODULE