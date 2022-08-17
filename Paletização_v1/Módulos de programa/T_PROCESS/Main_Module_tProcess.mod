MODULE Main_Module_tProcess
!===========================================
!    Main_Module_tProcess Module Program           
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
! Main
!===========================================

    PROC main_tProcess()

        !*** Verifica se o palete direito foi retirado
        IF (DI_019_PAL_RIGHT_RESET = 1) rReset_Pal 1;
        
        !*** Verifica se o palete esquerdo foi retirado
        IF (DI_020_PAL_LEFT_RESET = 2) rReset_Pal 2;
        
        !rBox_Fall;
        
    ENDPROC
    
    !*** Reseta o palete (T_ROB1 / T_PROCESS)
    PROC rReset_Pal(num Pallet)
        
        !cPallet_Status{Pallet} := [0,1,1,0,0,FALSE];
        !Incr cProduction_Part{Pallet}.Pallet_Rejected;
        
    ENDPROC
    
    !*** Rastreia queda de caixa
    PROC rBox_Fall()
        
!        IF (
!            cSegment_Cur.Number = 22 OR
!            cSegment_Cur.Number = 26 OR
!            (cSegment_Cur.Number = 3 AND cProcess_Cur = 2)
!            ) 
!            AND
!            (
            
!            (
!            (
!            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 2 AND
!            (DI_007_PRES_BOX_1 = 0 OR DI_008_PRES_BOX_2 = 0)
!            ) 
!            OR  bDry_Run = TRUE
!            ) 
!            OR
!            (
!            (
!            cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box = 1 AND DI_007_PRES_BOX_1 = 0
!            ) OR bDry_Run = TRUE
!            )
            
!            )
!            THEN
!                Incr cProduction_Part{cPallet_Status{nCur_Pallet}.Part_In_Pallet}.Box_Fallen;
!                STOP;
!        ENDIF

    ENDPROC

ENDMODULE