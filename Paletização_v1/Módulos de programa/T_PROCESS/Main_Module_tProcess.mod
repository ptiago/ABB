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
        
    ENDPROC
    
    !*** Reseta o palete (T_ROB1 / T_PROCESS)
    PROC rReset_Pal(num Pallet)
        
        cPallet_Status{Pallet} := [0,1,1,0,0,FALSE];
        
    ENDPROC

ENDMODULE