MODULE Permissible_Conditions
    !######################################
    !
    ! Este modulo contem apenas as rotinas 
    ! com as condicoes necessarias para que 
    ! alguma outra rotina possa ser executada.
    !
    !######################################
    
    !*** 111	Pega Quadrado Gaveta
    FUNC bool fPer_111()
        IF 
            DI_001_Gaveta_Fechada = 1 AND
            (
            nPeca_Na_Garra{1} = 0 OR
            nPeca_Na_Garra{2} = 0
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 112	Pega Quadrado Inspeção
    FUNC bool fPer_112()
        IF 
            (
            nPeca_Na_Garra{1} = 0 OR
            nPeca_Na_Garra{2} = 0
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 121	Pega Circulo Gaveta
    FUNC bool fPer_121()
        IF 
            DI_001_Gaveta_Fechada = 1 AND
            (
            nPeca_Na_Garra{1} = 0 OR
            nPeca_Na_Garra{2} = 0
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 122	Pega Circulo Inspeção
    FUNC bool fPer_122()
        IF 
            (
            nPeca_Na_Garra{1} = 0 OR
            nPeca_Na_Garra{2} = 0
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 131	Pega Triangulo Gaveta		
    FUNC bool fPer_131()
        IF 
            DI_001_Gaveta_Fechada = 1 AND
            (
            nPeca_Na_Garra{1} = 0 OR
            nPeca_Na_Garra{2} = 0
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 132	Pega Triangulo Inspeção		
    FUNC bool fPer_132()
        IF 
            (
            nPeca_Na_Garra{1} = 0 OR
            nPeca_Na_Garra{2} = 0
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 212	Depósito Quadrado Inspeção		
    FUNC bool fPer_212()
        IF 
            bInsp_Caixa_Cheia{1} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 213	Depósito Quadrado Esteira de saída		
    FUNC bool fPer_213()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 222	Depósito Circulo Inspeção		
    FUNC bool fPer_222()
        IF 
            bInsp_Caixa_Cheia{2} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 223	Depósito Circulo Esteira de saída		
    FUNC bool fPer_223()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 232	Depósito Triangulo Inspeção		
    FUNC bool fPer_232()
        IF 
            bInsp_Caixa_Cheia{3} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 233	Depósito Triangulo Esteira de saída		
    FUNC bool fPer_233()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 312	Inspeção Quadrado na Inspeção		
    FUNC bool fPer_312()
        RETURN TRUE;
    ENDFUNC
    
    !*** 322	Inspeção Circulo na Inspeção		
    FUNC bool fPer_322()
       RETURN TRUE;
    ENDFUNC
    
    !*** 332	Inspeção Triangulo na Inspeção
    FUNC bool fPer_332()
        RETURN TRUE;
    ENDFUNC
    
    !*** Ligar a esteira
    FUNC bool fPer_Ligar_Est()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** Depositar no descarte
    FUNC bool fDeposito_Descarte()
        IF 
            bDescarte_Cheio = FALSE
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    
ENDMODULE