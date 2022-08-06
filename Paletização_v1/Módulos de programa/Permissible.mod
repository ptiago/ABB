MODULE Permissible
    !*** Pick Saboroso in conveyor in with vacuum
    FUNC bool fPer_1131()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Pick Delicioso in conveyor in with vacuum
    FUNC bool fPer_1231()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** PPick Fantastico in conveyor in with vacuum
    FUNC bool fPer_1331()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Pick Bolachudo in conveyor in with vacuum
    FUNC bool fPer_1431()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Saboroso in pallet right with vacuum
    FUNC bool fPer_2111()
        <SMT>
    ENDFUNC
    
    !*** Drop Saboroso in pallet left with vacuum
    FUNC bool fPer_2121()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Delicioso in pallet right with vacuum
    FUNC bool fPer_2211()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Delicioso in pallet left with vacuum
    FUNC bool fPer_2221()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Fantastico in pallet right with vacuum
    FUNC bool fPer_2311()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Fantastico in pallet left with vacuum
    FUNC bool fPer_2321()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Bolachudo in pallet right with vacuum
    FUNC bool fPer_2411()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Bolachudo in pallet left with vacuum
    FUNC bool fPer_2421()
        
        IF <EXP> 
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
ENDMODULE