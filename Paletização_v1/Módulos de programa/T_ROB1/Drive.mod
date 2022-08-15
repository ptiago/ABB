MODULE Drive
!===========================================
!          Drive Module Program           
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
! Rotinas relacionadas ao acionamentos de esteiras,
! atuadores, pistoes, garras, imas... na celula.
!===========================================

    !*** Liga garra
    PROC rTON_Vacuum_Gripper()
        SetDO DO_003_TON_VACUUM,1;
        Reset DO_004_TOF_VACUUM;
        
        WaitTime .5;
    ENDPROC
    
    !*** Desliga garra
    PROC rTOF_Vacuum_Gripper()
        SetDO DO_004_TOF_VACUUM,1;
        Reset DO_003_TON_VACUUM;
        
        WaitTime .5;
    ENDPROC
    
ENDMODULE