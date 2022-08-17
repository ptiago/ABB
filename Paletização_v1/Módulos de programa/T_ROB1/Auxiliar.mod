MODULE Auxiliar
!===========================================
!          Auxiliar Module Program           
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
! Apenas as rotinas que nao
! fazem parte do fluxo normal do processo
! auxiliares, como ajuste de pontos, teste de freio...
!===========================================

    !*** Usada para remarcar algum ponto da celula
    PROC rTouchUp_Points()
        
        !########## FOLD SABOROSO
        !Pega de uma caixa Saboroso na esteira
        MoveJ cPart{1}.pPick_Conv_1, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Pega de duas caixa Saboroso na esteira
        MoveJ cPart{1}.pPick_Conv_2, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete direito
        MoveJ cPart{1}.pDrop_Vert_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete direito
        MoveJ cPart{1}.pDrop_Hori_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete esquerdo
        MoveJ cPart{1}.pDrop_Vert_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete esquerdo
        MoveJ cPart{1}.pDrop_Hori_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        !########## ENDFOLD SABOROSO
        
        
        !########## FOLD DELICIOSO
        !Pega de uma caixa Saboroso na esteira
        MoveJ cPart{2}.pPick_Conv_1, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Pega de duas caixa Saboroso na esteira
        MoveJ cPart{2}.pPick_Conv_2, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete direito
        MoveJ cPart{2}.pDrop_Vert_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete direito
        MoveJ cPart{2}.pDrop_Hori_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete esquerdo
        MoveJ cPart{2}.pDrop_Vert_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete esquerdo
        MoveJ cPart{2}.pDrop_Hori_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        !########## ENDFOLD DELICIOSO
        
        
        !########## FOLD FANTASTICO
        !Pega de uma caixa Saboroso na esteira
        MoveJ cPart{3}.pPick_Conv_1, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Pega de duas caixa Saboroso na esteira
        MoveJ cPart{3}.pPick_Conv_2, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete direito
        MoveJ cPart{3}.pDrop_Vert_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete direito
        MoveJ cPart{3}.pDrop_Hori_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete esquerdo
        MoveJ cPart{3}.pDrop_Vert_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete esquerdo
        MoveJ cPart{3}.pDrop_Hori_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        !########## ENDFOLD FANTASTICO
        
        
        !########## FOLD BOLACHUDO
        !Pega de uma caixa Saboroso na esteira
        MoveJ cPart{4}.pPick_Conv_1, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Pega de duas caixa Saboroso na esteira
        MoveJ cPart{4}.pPick_Conv_2, v1500, fine, cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete direito
        MoveJ cPart{4}.pDrop_Vert_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete direito
        MoveJ cPart{4}.pDrop_Hori_PalRight, v1500, fine, cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        
        !Deposito na vertical do Saboroso no palete esquerdo
        MoveJ cPart{4}.pDrop_Vert_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        
        !Deposito na horizontal do Saboroso no palete esquerdo
        MoveJ cPart{4}.pDrop_Hori_PalLeft, v1500, fine, cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        !########## ENDFOLD BOLACHUDO
        
        
        !########## FOLD PALETE DIREITO
        !Home da esteira
        MoveJ cStation{1}.pHome, v1500, fine, tool0 \WObj:= wobj0;
        
        !Pouce da esteira
        MoveJ cStation{1}.pPounce, v1500, fine,  cTool.Tool_Data \WObj:= cStation{1}.Wobj_Data;
        !########## ENDFOLD PALETE DIREITO
        
        
        !########## FOLD PALETE ESQUERDO
        !Home da esteira
        MoveJ cStation{2}.pHome, v1500, fine, tool0 \WObj:= wobj0;
        
        !Pouce da esteira
        MoveJ cStation{2}.pPounce, v1500, fine,  cTool.Tool_Data \WObj:= cStation{2}.Wobj_Data;
        !########## ENDFOLD PALETE ESQUERDO
        
        
        !########## FOLD ESTEIRA DE ENTRADA
           !Home da esteira
        MoveJ cStation{3}.pHome, v1500, fine, tool0 \WObj:= wobj0;
        
        !Pouce da esteira
        MoveJ cStation{3}.pPounce, v1500, fine,  cTool.Tool_Data \WObj:= cStation{3}.Wobj_Data;
        !########## ENDFOLD ESTEIRA DE ENTRADA
        
        !Home do robô
        MoveJ pHome, v1500, fine, tool0 \WObj:= wobj0;
        
    ENDPROC
    
    !*** Move o robo para posicao de manutencao
    PROC rMaintenance()
        
        !Vai para home
        rRecovery_Home;
        
        MoveJ pMaintenance,v1000,fine, tool0 \WObj:=wobj0;
        
    ENDPROC
    
    !*** Move o robo para posicao de manutencao
    PROC rBrake_Test()
        
        !Vai para home
        rRecovery_Home;
        
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        pJoint_Reg_1 := pBrake_Test;
        
        !Inicio dos testes
        MotionSup \On \TuneValue:= 300;
        
        !Eixo 1
        pBrake_Test.robax.rax_1 := -130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        pBrake_Test.robax.rax_1 := 130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        !Eixo 2
        pBrake_Test.robax.rax_2 := -130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        pBrake_Test.robax.rax_2 := 130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        !Eixo 3
        pBrake_Test.robax.rax_3 := -130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        pBrake_Test.robax.rax_3 := 130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        !Eixo 4
        pBrake_Test.robax.rax_4 := -130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        pBrake_Test.robax.rax_4 := 130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        !Eixo 5
        pBrake_Test.robax.rax_5 := -130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        pBrake_Test.robax.rax_5 := 130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        !Eixo 6
        pBrake_Test.robax.rax_6 := -130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        pBrake_Test.robax.rax_6 := 130;
        MoveAbsJ pBrake_Test, v1500,fine,tool0 \WObj:=wobj0;
        
        MotionSup \Off;
        
        rMessage 1;
        
    ENDPROC
    
    !*** Move o robo para posicao de calibracao
    PROC rCalibration()
        
        !Vai para home
        rRecovery_Home;
        
        MoveAbsJ pCalib, v1500,fine,tool0 \WObj:=wobj0;
        
    ENDPROC
    
ENDMODULE