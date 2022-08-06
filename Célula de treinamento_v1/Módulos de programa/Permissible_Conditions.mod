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
    
    !*** 112	Pega Quadrado Inspe��o
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
    
    !*** 122	Pega Circulo Inspe��o
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
    
    !*** 132	Pega Triangulo Inspe��o		
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
    
    !*** 212	Dep�sito Quadrado Inspe��o		
    FUNC bool fPer_212()
        IF 
            bInsp_Caixa_Cheia{1} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 213	Dep�sito Quadrado Esteira de sa�da		
    FUNC bool fPer_213()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 222	Dep�sito Circulo Inspe��o		
    FUNC bool fPer_222()
        IF 
            bInsp_Caixa_Cheia{2} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 223	Dep�sito Circulo Esteira de sa�da		
    FUNC bool fPer_223()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 232	Dep�sito Triangulo Inspe��o		
    FUNC bool fPer_232()
        IF 
            bInsp_Caixa_Cheia{3} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 233	Dep�sito Triangulo Esteira de sa�da		
    FUNC bool fPer_233()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 312	Inspe��o Quadrado na Inspe��o		
    FUNC bool fPer_312()
        RETURN TRUE;
    ENDFUNC
    
    !*** 322	Inspe��o Circulo na Inspe��o		
    FUNC bool fPer_322()
       RETURN TRUE;
    ENDFUNC
    
    !*** 332	Inspe��o Triangulo na Inspe��o
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