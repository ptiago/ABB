MODULE Pontos_De_Verificacao
    !######################################
    !
    ! Este modulo contem apenas as rotinas 
    ! relacionadas a tomada de decisao de acordo
    ! com condicoes predeterminadas.
    !
    !######################################
    
    PROC rPV_1()

        !Prioridade 1
        IF fPV_Cond_111() THEN
            nProcDestino:=111;

        !Prioridade 2   
        ELSEIF fPV_Cond_121() THEN
            nProcDestino:=121;

        !Prioridade 3
        ELSEIF fPV_Cond_131() THEN
            nProcDestino:=131;

        !Prioridade 4
        ELSEIF fPV_Cond_112() THEN
            nProcDestino := 112;

        !Prioridade 5
        ELSEIF fPV_Cond_122() THEN
            nProcDestino := 122;

        !Prioridade 6
        ELSEIF fPV_Cond_132() THEN
            nProcDestino := 132;
            
        !Prioridade 7
        ELSE
             nProcDestino := 0;
        ENDIF
        
        !Executa a rotina de destino
        CallByVar "rProcess_",nProcDestino;
        
    ENDPROC
    
    PROC rPV_2()

        !Prioridade 1
        IF fPV_Cond_111() THEN
            nProcDestino:=111;

        !Prioridade 2   
        ELSEIF fPV_Cond_121() THEN
            nProcDestino:=121;

        !Prioridade 3
        ELSEIF fPV_Cond_131() THEN
            nProcDestino:=131;

        !Prioridade 4
        ELSEIF fPV_Cond_312() THEN
            nProcDestino := 312;

        !Prioridade 5
        ELSEIF fPV_Cond_322() THEN
            nProcDestino := 322;

        !Prioridade 6
        ELSEIF fPV_Cond_332() THEN
            nProcDestino := 332;
            
        !Prioridade 7
        ELSE
             rMensagem 10,11,1,1;
             
             STOP;
        ENDIF
        
        !Executa a rotina de destino
        CallByVar "rProcess_",nProcDestino;
        
    ENDPROC
    
    PROC rPV_3()

        !Prioridade 1
        IF fPV_Cond_312() THEN
            nProcDestino:=312;

        !Prioridade 2   
        ELSEIF fPV_Cond_322() THEN
            nProcDestino:=322;

        !Prioridade 3
        ELSEIF fPV_Cond_332() THEN
            nProcDestino:=332;

        !Prioridade 4
        ELSEIF fPV_Cond_212() THEN
            nProcDestino := 212;

        !Prioridade 5
        ELSEIF fPV_Cond_222() THEN
            nProcDestino := 222;

        !Prioridade 6
        ELSEIF fPV_Cond_232() THEN
            nProcDestino := 232;
            
        !Prioridade 7
        ELSE
             rMensagem 10,11,1,1;
             
             STOP;
        ENDIF
        
        !Executa a rotina de destino
        CallByVar "rProcess_",nProcDestino;
        
    ENDPROC
    
    PROC rPV_4()

        !Prioridade 1
        IF fPV_Cond_212() THEN
            nProcDestino:=212;

        !Prioridade 2   
        ELSEIF fPV_Cond_222() THEN
            nProcDestino:=222;

        !Prioridade 3
        ELSEIF fPV_Cond_232() THEN
            nProcDestino:=232;

        !Prioridade 4
        ELSEIF fPV_Cond_112() THEN
            nProcDestino := 112;

        !Prioridade 5
        ELSEIF fPV_Cond_122() THEN
            nProcDestino := 122;

        !Prioridade 6
        ELSEIF fPV_Cond_132() THEN
            nProcDestino := 132;
            
        !Prioridade 7
        ELSE
             rMensagem 10,11,1,1;
             
             STOP;
        ENDIF
        
        !Executa a rotina de destino
        CallByVar "rProcess_",nProcDestino;
        
    ENDPROC
    
    PROC rPV_5()

        !Prioridade 1
        IF fPV_Cond_112() THEN
            nProcDestino:=112;

        !Prioridade 2   
        ELSEIF fPV_Cond_122() THEN
            nProcDestino:=122;

        !Prioridade 3
        ELSEIF fPV_Cond_132() THEN
            nProcDestino:=132;

        !Prioridade 4
        ELSEIF fPV_Cond_213() THEN
            nProcDestino := 213;

        !Prioridade 5
        ELSEIF fPV_Cond_223() THEN
            nProcDestino := 223;

        !Prioridade 6
        ELSEIF fPV_Cond_233() THEN
            nProcDestino := 233;
            
        !Prioridade 7
        ELSE
             rMensagem 10,11,1,1;
             
             STOP;
        ENDIF
        
        !Executa a rotina de destino
        CallByVar "rProcess_",nProcDestino;
        
    ENDPROC
    
    PROC rPV_6()

        !Prioridade 1
        IF fPV_Cond_213() THEN
            nProcDestino := 213;

        !Prioridade 2
        ELSEIF fPV_Cond_223() THEN
            nProcDestino := 223;

        !Prioridade 3
        ELSEIF fPV_Cond_233() THEN
            nProcDestino := 233;
            
        !Prioridade 4
        ELSE
              nProcDestino := 0;
        ENDIF
        
        !Executa a rotina de destino
        CallByVar "rProcess_",nProcDestino;
        
    ENDPROC
    
ENDMODULE