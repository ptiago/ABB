MODULE Permissible
!===========================================
!        Permissible Module Program           
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
! Apenas permissiveis que conferem os status minimos
! para que uma rotina de processo em si seja executada
!===========================================
 
    !*** Pick Saboroso in conveyor in with vacuum
    FUNC bool fPer_1131()
        
        IF 
            DI_009_PRES_BOX_TOOL_1 = 0  AND
            DI_010_PRES_BOX_TOOL_2 = 0
        THEN
            bPer_1131 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_1131 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Pick Delicioso in conveyor in with vacuum
    FUNC bool fPer_1231()
        
        IF 
            DI_009_PRES_BOX_TOOL_1 = 0  AND
            DI_010_PRES_BOX_TOOL_2 = 0
        THEN
            bPer_1231 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_1231 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** PPick Fantastico in conveyor in with vacuum
    FUNC bool fPer_1331()
        
        IF 
            DI_009_PRES_BOX_TOOL_1 = 0  AND
            DI_010_PRES_BOX_TOOL_2 = 0
        THEN
            bPer_1331 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_1331 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Pick Bolachudo in conveyor in with vacuum
    FUNC bool fPer_1431()
        
        IF 
            DI_009_PRES_BOX_TOOL_1 = 0  AND
            DI_010_PRES_BOX_TOOL_2 = 0
        THEN
            bPer_1431 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_1431 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Saboroso in pallet right with vacuum
    FUNC bool fPer_2111()
        
        IF 
            DI_005_PRES_PAL_RIGHT = 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2111 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2111 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Saboroso in pallet left with vacuum
    FUNC bool fPer_2121()
        
        IF 
            DI_006_PRES_PAL_LEFT= 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2121 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2121 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Delicioso in pallet right with vacuum
    FUNC bool fPer_2211()
        
        IF 
            DI_005_PRES_PAL_RIGHT = 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2211 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2211 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Delicioso in pallet left with vacuum
    FUNC bool fPer_2221()
        
        IF 
            DI_006_PRES_PAL_LEFT= 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2221 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2221 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Fantastico in pallet right with vacuum
    FUNC bool fPer_2311()
        
        IF 
            DI_005_PRES_PAL_RIGHT = 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2311 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2311 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Fantastico in pallet left with vacuum
    FUNC bool fPer_2321()
        
        IF 
            DI_006_PRES_PAL_LEFT= 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2321 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2321 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Bolachudo in pallet right with vacuum
    FUNC bool fPer_2411()
        
        IF 
            DI_005_PRES_PAL_RIGHT = 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2411 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2411 := TRUE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Bolachudo in pallet left with vacuum
    FUNC bool fPer_2421()
        
        IF 
            DI_006_PRES_PAL_LEFT= 1 AND
            bProcess_OK{2} = FALSE
        THEN
            bPer_2421 := TRUE;
            RETURN TRUE;
            
        ELSE
            bPer_2421 := FALSE;
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
ENDMODULE