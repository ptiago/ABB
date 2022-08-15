MODULE Process_Conditions
!===========================================
!     Process_Conditions Module Program           
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
! Funcoes que verificao todas as condicoes para
! que o processo seja executado
!===========================================

    !*** Pick Saboroso in conveyor in with vacuum
    FUNC bool fProc_Cond_1131()
        
        IF 
            fPer_1131() AND
            cPart_Cur = cPart{1}  AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 1 AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 0
            )
            )
            
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Pick Delicioso in conveyor in with vacuum
    FUNC bool fProc_Cond_1231()
        
        IF  fPer_1231() AND
            cPart_Cur = cPart{2}AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 2 AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Pick Fantastico in conveyor in with vacuum
    FUNC bool fProc_Cond_1331()
        
        IF  fPer_1331() AND
            cPart_Cur = cPart{3} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 3 AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Pick Bolachudo in conveyor in with vacuum
    FUNC bool fProc_Cond_1431()
        
        IF  fPer_1431() AND
            cPart_Cur = cPart{4} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 4 AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_007_PRES_BOX_1 = 1 AND
            DI_008_PRES_BOX_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Saboroso in pallet right with vacuum
    FUNC bool fProc_Cond_2111()
        
        IF fPer_2111() AND
            cPart_Cur = cPart{1} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 1 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Saboroso in pallet left with vacuum
    FUNC bool fProc_Cond_2121()
        
        IF  fPer_2121() AND
            cPart_Cur = cPart{1} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 1 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Delicioso in pallet right with vacuum
    FUNC bool fProc_Cond_2211()
        
        IF  fPer_2211() AND
            cPart_Cur = cPart{2} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 2 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Delicioso in pallet left with vacuum
    FUNC bool fProc_Cond_2221()
        
        IF  fPer_2221() AND
            cPart_Cur = cPart{2} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 2 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Fantastico in pallet right with vacuum
    FUNC bool fProc_Cond_2311()
        
        IF  fPer_2311() AND
            cPart_Cur = cPart{3} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 3 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Fantastico in pallet left with vacuum
    FUNC bool fProc_Cond_2321()
        
        IF  fPer_2321() AND
            cPart_Cur = cPart{3} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 3 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Bolachudo in pallet right with vacuum
    FUNC bool fProc_Cond_2411()
        
        IF  fPer_2411() AND
            cPart_Cur = cPart{4} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 4 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
    !*** Drop Bolachudo in pallet left with vacuum
    FUNC bool fProc_Cond_2421()
        
        IF  fPer_2421() AND
            cPart_Cur = cPart{4} AND
            cPallet_Status{nCur_Pallet}.Pallet_Complete = FALSE AND
            cPallet_Status{nCur_Pallet}.Part_In_Pallet = 4 AND
            bProcess_OK{1} = TRUE AND
            (
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 1
            ) OR
            (
            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND
            DI_009_PRES_BOX_TOOL_1 = 1 AND
            DI_010_PRES_BOX_TOOL_2 = 0
            )
            )
        THEN
            RETURN TRUE;
            
        ELSE
            RETURN FALSE;
            
        ENDIF
        
    ENDFUNC
    
ENDMODULE