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
        
!        !Deposito na inspecao
!        MoveJ pDep_Insp{1}, v1500,fine,tTool{1};
!        MoveJ pDep_Insp{2}, v1500,fine,tTool{1};
!        MoveJ pDep_Insp{3}, v1500,fine,tTool{1};
        
!        MoveJ pDep_Est_Saida, v1500,fine,tTool{1};
        
!        MoveJ pDep_NOK_Insp, v1500,fine,tTool{1};
        
!        !Inspecao
!        MoveJ pInsp_Peca{1}, v1500,fine,tTool{1};
!        MoveJ pInsp_Peca{2}, v1500,fine,tTool{1};
!        MoveJ pInsp_Peca{3}, v1500,fine,tTool{1};
        
!        !Pega na gaveta
!        MoveJ pPega_Gaveta{1}, v1500,fine,tTool{1};
!        MoveJ pPega_Gaveta{2}, v1500,fine,tTool{1};
!        MoveJ pPega_Gaveta{3}, v1500,fine,tTool{1};
!        MoveJ pPega_Gaveta{4}, v1500,fine,tTool{1};
!        MoveJ pPega_Gaveta{5}, v1500,fine,tTool{1};
!        MoveJ pPega_Gaveta{6}, v1500,fine,tTool{1};
        
!        !Pounce de cada estacao
!        MoveJ pPounce_Estacao{1}, v1500,fine,tTool{1};
!        MoveJ pPounce_Estacao{2}, v1500,fine,tTool{1};
!        MoveJ pPounce_Estacao{3}, v1500,fine,tTool{1};

    ENDPROC
    
    !*** Move o robo para posicao de manutencao
    PROC rMaintenance()
        
!        !Vai para home
!        rProcess_0;
        
!        MoveJ pManutencao,v1000,fine, tool0 \WObj:=wobj0;
        
    ENDPROC
    
    !*** Move o robo para posicao de manutencao
    PROC rBrake_Test()
        
!        !Vai para home
!        rProcess_0;
        
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        pJoint_Reg_1 := pTeste_Freio;
        
!        !Inicio dos testes
!        !MotionSup \On \TuneValue:= 300;
        
!        !Eixo 1
!        pTeste_Freio.robax.rax_1 := -130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        pTeste_Freio.robax.rax_1 := 130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        !Eixo 2
!        pTeste_Freio.robax.rax_2 := -130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        pTeste_Freio.robax.rax_2 := 130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        !Eixo 3
!        pTeste_Freio.robax.rax_3 := -130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        pTeste_Freio.robax.rax_3 := 130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        !Eixo 4
!        pTeste_Freio.robax.rax_4 := -130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        pTeste_Freio.robax.rax_4 := 130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        !Eixo 5
!        pTeste_Freio.robax.rax_5 := -130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        pTeste_Freio.robax.rax_5 := 130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        !Eixo 6
!        pTeste_Freio.robax.rax_6 := -130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        pTeste_Freio.robax.rax_6 := 130;
!        MoveAbsJ pTeste_Freio, v1500,fine,tool0 \WObj:=wobj0;
        
!        !MotionSup \Off;
        
!        rMensagem 14,1,1,1;
        
    ENDPROC
    
    !*** Move o robo para posicao de calibracao
    PROC rCalibration()
        
!        !Vai para home
!        rProcess_0;
        
!        MoveAbsJ pCalib, v1500,fine,tool0 \WObj:=wobj0;
        
    ENDPROC
    
ENDMODULE