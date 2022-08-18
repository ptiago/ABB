MODULE IHM
!===========================================
!            IHM Module Program           
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
! Apenas as rotinas relacionadas aos uso de 
! mensagens, alarmes, e outros itens relacionados
! a interacao com o usuario.
!===========================================

    !*** Mostra na Teach Pendant eventos que geram parada no programa
    PROC rAlarm(num Header, num Reason_1, num Reason_2, num Reason_3, num Reason_4)
        
        ErrWrite \W,
                 sMessage{Header},
                 sMessage{Reason_1},
                 \RL2 := sMessage{Reason_2},
                 \RL3 := sMessage{Reason_3},
                 \RL4 := sMessage{Reason_4};   
        Stop;
        
    ENDPROC
    
    !*** Informa o usuario que o valor no argumento nao pode ser usado neste tipo de I/O
    PROC rAlarm_2(string IO_Tipe,num Value)
        
        ErrWrite \W,
                 "VALOR NAO COMPATIVEL",
                 "O valor: "+NumToStr(Value,0)+" usado no argumento nao, e valido para I/O's do tipo "+IO_Tipe+"",
                 \RL2 := "E necessario escolher outro valor";  
        Stop;
        
    ENDPROC

    !*** Mostra na Teach Pendant eventos que que nao geram parada no programa
    PROC rMessage(num Header, num Reason_1, num Reason_2, num Reason_3, num Reason_4)
        
        ErrWrite \I,
                 sMessage{Header},
                 sMessage{Reason_1},
                 \RL2 := sMessage{Reason_2},
                 \RL3 := sMessage{Reason_3},
                 \RL4 := sMessage{Reason_4};    
                 
    ENDPROC

    !*** Pergunta se celula deve ser rejeitada
    PROC rMsg_Reset_Cell()
        
        TPErase;
        TPReadFK nReg_1, "Gostaria de resetar toda a celula?","SIM",stEmpty,stEmpty,stEmpty,"NAO";
        
        IF (nReg_1 = 5) GOTO LABEL_99;
        
        TPReadFK nReg_1, "TEM CERTEZA ???","SIM",stEmpty,stEmpty,stEmpty,"NAO";
        
        IF (nReg_1 = 5) GOTO LABEL_99;
        
        rReset_Cell;
        
        TPErase;
        TPWrite "CELULA RESETA COM SUCESSO";
        WaitTime 3;
        
        LABEL_99:
        
    ENDPROC

    !*** Pergunta o procedimento para o final do ciclo
    PROC rMsg_End_Cicle()
        
        !Verifica se usuario quer encerrar o ciclo
        TPErase;
        TPReadFK nReg_1,"Deseja encerrar ciclo?","SIM",stEmpty,stEmpty,stEmpty,"NAO";
        
        !Verifica resposta do usuario
        IF (nReg_1 = 5) GOTO LABEL_99;
        
        rRecovery_Home;
        
        rReset_Cell;
        
        TPErase;
        TPWrite "PRODUCAO ENCERRADA COM SUCESSO!";
        
        !Estatisticas dos paletes
        FOR i FROM 1 TO 2 DO
           
            TPWrite "Produto: "+cPallet_Status{i}.Part_In_Name+"";
            TPWrite "Paletes produzidos:"\Num:=         cPallet_Status{i}.Pallets_Done;
            TPWrite "Paletes rejeitados:"\Num:=         cPallet_Status{i}.Pallets_Rejected;
            TPWrite "Total de caixas produzidas:"\Num:= cPallet_Status{i}.Box_Dropped;
            TPWrite "Tempo medio de producao:"\Num:=    cPallet_Status{i}.Cicle_Time_Avr;
            
        ENDFOR
        
        !Retorna para primeira linha da main
        ExitCycle;
       
        LABEL_99:
        
    ENDPROC

    !*** Pergunta quais produtos serao produzidos
    PROC rMsg_Set_Part()
        
        LABEL_1:
        
        !Verifica se usuario quer trocar algum dos produtos
        TPErase;
        TPReadFK nReg_1,"Deseja trocar algum produto?","SIM",stEmpty,stEmpty,stEmpty,"NAO";
        
        !Verifica resposta do usuario
        IF (nReg_1 = 5) GOTO LABEL_99;
        
        FOR i FROM 1 TO 2 DO
            !Escolhe para o palete i
            TPErase;
            TPReadFK nReg_1,"Qual produto no palete: "+ NumToStr(i,0)+ "",cPart{1}.Name,cPart{2}.Name,cPart{3}.Name,cPart{4}.Name,"NENHUM";

            !Verifica resposta do usuario
            IF (nReg_1 = 5) THEN
                !Deixa o palete i sem produto
                cPallet_Status{i}.Part_In_Pallet := 0;
                cPallet_Status{i}.Part_In_Name   := "VAZIO";

            ELSE
                cPallet_Status{i}.Part_In_Pallet := nReg_1;
                cPallet_Status{i}.Part_In_Name   := cPart{cPallet_Status{i}.Part_In_Pallet}.Name;
                
            ENDIF
        ENDFOR

        !Confirma selecao de produtos
        TPErase;
        TPWrite "Palete 1 = "+ cPallet_Status{1}.Part_In_Name +"";
        TPWrite "Palete 2 = "+ cPallet_Status{2}.Part_In_Name +"";
        TPReadFK nReg_1,"Confirmar producao?","SIM",stEmpty,stEmpty,stEmpty,"NAO";

        IF (nReg_1 = 5) GOTO LABEL_1; !Escolhe novamente
        
        LABEL_99:
        
    ENDPROC
    
    !*** Mostra na Teach Pendant qual sensor nao esta acionado
    PROC rMsg_Sensor_NOK_1(num Sensor)
        
        bSensor_NOK := TRUE;
        
        ErrWrite \W,"Sinal NOK",
                 "Sinal nao detectado na entrada digital(DI): "+sSensor{Sensor}+"",
                 \RL2:="Verificar o sensor";
    ENDPROC
    
    !*** Pergunta o que deve ser feito no caso de um sensor nao estar no valor que precisa
    PROC rMsg_Sensor_NOK_2()
        
        TPErase;
        TPReadFK nReg_1,"Alguns sinais nao estao acionados, o que deseja fazer?","Tentar novamente",stEmpty,stEmpty,stEmpty,"Continuar";
        
    ENDPROC
    
    !*** Pergunta ao usuario em qual palete o produto sera simulado
    PROC rMsg_DryRun_Part()
        
        TPErase;
        TPReadFK nReg_1,"Qual palete sera simulado?","Direito","Esquerdo","Ambos","Alternado","NENHUM";
        
        nDryRun_Seting_1 := nReg_1;
        
        IF (nDryRun_Seting_1 = 5) STOP;
        
    ENDPROC
    
    !*** Pergunta para o usuario se deseja continuar para a proxima etapa do processo
    PROC rRequest_Continue()
        
        TPErase;
        TPReadFK nReg_1, "Deseja seguir para proxima etapa","SIM",stEmpty,stEmpty,stEmpty,"NAO";
        
        IF (nReg_1 = 5) Stop;
        
    ENDPROC
    
    !*** Informa ao usuario que o numero de tentativas para entrar em
    !uma condicao de processo foi esgotado
    PROC rMsg_Attempts_Over()
        
        TPErase;
        ErrWrite \I, 
                 "Numero de tentativas ESGOTADAS!!!",
                 "Verificar se condicoes de processo", 
                 \RL2:= "Decision Point: "+NumToStr(nDP,0)+"";
        
        nAttempts := 0;
        
        ExitCycle;
        
    ENDPROC

ENDMODULE