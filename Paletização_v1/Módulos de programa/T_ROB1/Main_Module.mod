MODULE Main_Module
!===========================================
!        Main_Module Module Program           
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
! Rotinas de processos principais que caracterizao
! o objetivo da celula
!===========================================

    PROC main()
        
        rMsg_Reset_Cell;
        
        !Verifica se houve requisicao para encerrar producao
        WHILE ((DI_004_END_CICLE <> 1) AND (nDP <> 1)) DO
            
            rRequest_Continue;
            
            CallByVar "rDP_", nDP;
            
            !Verifica se numero de tentativas para executar um processo foi excedido
            IF (nAttempts > 2) rMsg_Attempts_Over;
            
            rReset_Per_Proc_Cond;
            
        ENDWHILE
        
        rMsg_End_Cicle;
     
    ENDPROC
    
    !*** Pick Saboroso in conveyor in with vacuum
    PROC r1131()
        
        !Setup geral
        rSet_Process 1;
        rSet_Part 1;
        rSet_Station 3;
        rSet_Tool 1;
        
        !Permissivel
        WaitUntil fPer_1131() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 1131"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Pick_Cur;
        rSet_Pounce_Drop_Cur;
        
        !Pega
        rPick_Con;
        
    ENDPROC
    
    !*** Pick Delicioso in conveyor in with vacuum
    PROC r1231()
        
        !Setup geral
        rSet_Process 1;
        rSet_Part 2;
        rSet_Station 3;
        rSet_Tool 1;
        
        !Permissivel
        WaitUntil fPer_1231() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 1231"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Pick_Cur;
        rSet_Pounce_Drop_Cur;
        
        !Pega
        rPick_Con;
        
    ENDPROC
    
    !*** Pick Fantastico in conveyor in with vacuum
    PROC r1331()
        
        !Setup geral
        rSet_Process 1;
        rSet_Part 3;
        rSet_Station 3;
        rSet_Tool 1;
        
        !Permissivel
        WaitUntil fPer_1331() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 1331"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Pick_Cur;
        rSet_Pounce_Drop_Cur;
        
        !Pega
        rPick_Con;
        
    ENDPROC
    
    !*** Pick Bolachudo in conveyor in with vacuum
    PROC r1431()
        
        !Setup geral
        rSet_Process 1;
        rSet_Part 4;
        rSet_Station 3;
        rSet_Tool 1;
        
        !Permissivel
        WaitUntil fPer_1431() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 1431"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Pick_Cur;
        rSet_Pounce_Drop_Cur;
        
        !Pega
        rPick_Con;
        
    ENDPROC
    
    !*** Drop Saboroso in pallet right with vacuum
    PROC r2111()
           
        !Setup geral
        rSet_Process 2;
        rSet_Part 1;
        rSet_Station 1;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2111() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2111"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
    !*** Drop Saboroso in pallet left with vacuum
    PROC r2121()
          
        !Setup geral
        rSet_Process 2;
        rSet_Part 1;
        rSet_Station 2;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2121() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2121"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
    !*** Drop Delicioso in pallet right with vacuum
    PROC r2211()
          
        !Setup geral
        rSet_Process 2;
        rSet_Part 2;
        rSet_Station 1;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2211() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2211"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
    !*** Drop Delicioso in pallet left with vacuum
    PROC r2221()
        
        !Setup geral
        rSet_Process 2;
        rSet_Part 2;
        rSet_Station 2;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2221() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2221"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
    !*** Drop Fantastico in pallet right with vacuum
    PROC r2311()
        
        !Setup geral
        rSet_Process 2;
        rSet_Part 3;
        rSet_Station 1;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2311() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2311"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
    !*** Drop Fantastico in pallet left with vacuum
    PROC r2321()
        
        !Setup geral
        rSet_Process 2;
        rSet_Part 3;
        rSet_Station 2;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2321() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2321"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
    !*** Drop Bolachudo in pallet right with vacuum
    PROC r2411()
        
        !Setup geral
        rSet_Process 2;
        rSet_Part 4;
        rSet_Station 1;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2411() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2411"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
    !*** Drop Bolachudo in pallet left with vacuum
    PROC r2421()
        
        !Setup geral
        rSet_Process 2;
        rSet_Part 4;
        rSet_Station 2;
        rSet_Tool 1;
        
        !Atribui qual desenho de layout sera usado
        CallByVar "rSet_Layout_", nCurrent_Layout{cPallet_Status{nCur_Pallet}.Layer_Cur};
                
        !Permissivel
        WaitUntil fPer_2421() \Visualize \Header:="Permissivel NAO liberado" \MsgArray:=["checar condicoes do permissvel 2421"] \Icon:=iconInfo;
        
        !Atribui pontos do processo
        rSet_Drop_Cur;
        
        !Deposita
        rDrop_Pal;
        
    ENDPROC
    
ENDMODULE