MODULE Drives
    !######################################
    !
    ! Este modulo contem apenas as rotinas 
    ! relacionadas ao acionamentos de esteiras,
    ! atuadores, pistoes, garras, imas... na celula.
    !
    !######################################
    
    PROC rTON_Ima_1()
        Set DO_001_Liga_Ima_1;
        WaitTime 1;
    ENDPROC
    
    PROC rTOF_Ima_1()
        Reset DO_001_Liga_Ima_1;
        WaitTime 1;
    ENDPROC
    
    PROC rTON_Ima_2()
        Set DO_002_Liga_Ima_2;
        WaitTime 1;
    ENDPROC
    
    PROC rTOF_Ima_2()
        Reset DO_002_Liga_Ima_2;
        WaitTime 1;
    ENDPROC
    
    PROC rTON_Esteria()
        Set DO_003_Liga_Esteira;
        WaitTime 1;
    ENDPROC
    
    PROC rTOF_Esteria()
        Reset DO_003_Liga_Esteira;
        WaitTime 1;
    ENDPROC
    
    !*** Rotina para acionar a ferramenta desejada
    PROC rTON_Tool(num tool)
        TEST tool
        CASE 1:
        rTON_Ima_1;
        
        CASE 2:
        rTON_Ima_2;
        
        DEFAULT:
        
        ENDTEST
    ENDPROC
    
    !*** Rotina para desacionar a ferramenta desejada
    PROC rTOF_Tool(num tool)
        TEST tool
        CASE 1:
        rTOF_Ima_1;
        
        CASE 2:
        rTOF_Ima_2;
        
        DEFAULT:
        
        ENDTEST
    ENDPROC
    
    !*** Rotina para acionar algum componente
    PROC rTON_Componente(num componente)
        TEST componente
        CASE 1:
        rTON_Esteria;
        
        DEFAULT:
        
        ENDTEST
    ENDPROC
    
    !*** Rotina para acionar algum componente
    PROC rTOF_Componente(num componente)
        TEST componente
        CASE 1:
        rTOF_Esteria;
        
        DEFAULT:
        
        ENDTEST
    ENDPROC
    
ENDMODULE