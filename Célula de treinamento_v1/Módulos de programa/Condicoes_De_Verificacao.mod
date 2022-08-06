MODULE Condicoes_De_Verificacao
    !######################################
    !
    ! Este modulo contem apenas as rotinas 
    ! relacionadas a movimentacao do robo.
    !
    !######################################
  
    !*** 111	Pega Quadrado Gaveta
    FUNC bool fPV_Cond_111()
        IF 
            DI_001_Gaveta_Fechada = 1 AND
            (
            nPeca_Na_Garra{1} = 0 OR
            nPeca_Na_Garra{2} = 0
            ) AND
            (
            DI_002_Quad_Dir_Pres = 1 OR
            DI_003_Quad_Esq_Pres = 1
            ) AND
            (
            bDescarte_Cheio = FALSE OR
            bInsp_Caixa_Cheia{1} = FALSE
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 112	Pega Quadrado Inspeção
    FUNC bool fPV_Cond_112()
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
    FUNC bool fPV_Cond_121()
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
    FUNC bool fPV_Cond_122()
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
    FUNC bool fPV_Cond_131()
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
    FUNC bool fPV_Cond_132()
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
    FUNC bool fPV_Cond_212()
        IF 
            bInsp_Caixa_Cheia{1} = FALSE AND
            (
            nPeca_Na_Garra{1} = 1 OR
            nPeca_Na_Garra{2} = 1
            )
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 213	Depósito Quadrado Esteira de saída		
    FUNC bool fPV_Cond_213()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 222	Depósito Circulo Inspeção		
    FUNC bool fPV_Cond_222()
        IF 
            bInsp_Caixa_Cheia{2} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 223	Depósito Circulo Esteira de saída		
    FUNC bool fPV_Cond_223()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 232	Depósito Triangulo Inspeção		
    FUNC bool fPV_Cond_232()
        IF 
            bInsp_Caixa_Cheia{3} = FALSE
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 233	Depósito Triangulo Esteira de saída		
    FUNC bool fPV_Cond_233()
        IF 
            DI_009_Est_Inicio = 0
        THEN
            RETURN TRUE;
        
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC
    
    !*** 312	Inspeção Quadrado na Inspeção		
    FUNC bool fPV_Cond_312()
        RETURN TRUE;
    ENDFUNC
    
    !*** 322	Inspeção Circulo na Inspeção		
    FUNC bool fPV_Cond_322()
       RETURN TRUE;
    ENDFUNC
    
    !*** 332	Inspeção Triangulo na Inspeção
    FUNC bool fPV_Cond_332()
        RETURN TRUE;
    ENDFUNC
    
ENDMODULE