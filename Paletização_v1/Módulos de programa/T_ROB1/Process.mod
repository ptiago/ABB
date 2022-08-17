MODULE Process
!===========================================
!          Process Module Program           
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
! Funcoes e/ou rotinas genericas que podem ser usadas
! praticamente em todo o sistema
!===========================================

    !*** Atribui valores para o processo atual
    PROC rSet_Process(num Process)
        
            cProcess_Cur := cProcess{Process};
            
    ENDPROC
    
    !*** Atribui valores para a peca atual
    PROC rSet_Part(num Part)
        
            cPart_Cur := cPart{Part};
            
            nCurrent_Layout{1}  := cPart{Part}.Layer_1_Layout;
            nCurrent_Layout{2}  := cPart{Part}.Layer_2_Layout;
            nCurrent_Layout{3}  := cPart{Part}.Layer_3_Layout;
            nCurrent_Layout{4}  := cPart{Part}.Layer_4_Layout;
            nCurrent_Layout{5}  := cPart{Part}.Layer_5_Layout;
            nCurrent_Layout{6}  := cPart{Part}.Layer_6_Layout;
            nCurrent_Layout{7}  := cPart{Part}.Layer_7_Layout;
            nCurrent_Layout{8}  := cPart{Part}.Layer_8_Layout;
            nCurrent_Layout{9}  := cPart{Part}.Layer_9_Layout;
            nCurrent_Layout{10} := cPart{Part}.Layer_10_Layout;
            nCurrent_Layout{11} := cPart{Part}.Layer_11_Layout;
            nCurrent_Layout{12} := cPart{Part}.Layer_12_Layout;
            nCurrent_Layout{13} := cPart{Part}.Layer_13_Layout;
            nCurrent_Layout{14} := cPart{Part}.Layer_14_Layout;
            nCurrent_Layout{15} := cPart{Part}.Layer_15_Layout;
            
    ENDPROC
    
    !*** Atribui valores para a estacao atual
    PROC rSet_Station(num Station)
        
            cStation_Cur := cStation{Station};
            
    ENDPROC
    
    !*** Atribui a ferramenta a ser usada
    PROC rSet_Tool(num Tool)

        cTool_Cur := cTool;

    ENDPROC
    
    !*** Atribui o segmento de processo
    PROC rSet_Segment(num Number)
      
        cSegment_Cur := cSegment{Number};

    ENDPROC

    !*** Reseta toda a celula
    PROC rReset_Cell()

!        !Numericas
!        nEstacao:=0;
!        nPath_Seg:=0;
!        nPeca:=0;
!        nPeca_Na_Garra:=[0,0];
!        nPecas_NOK:=0;
!        nProcesso:=0;
!        nSub_Path:=0;

!        !Booleanas
!        bDescarte_Cheio:=FALSE;
!        bEst_Livre_Dep:=FALSE;
!        bPeca_NOK:=FALSE;
!        bSeg_At_Pos:=FALSE;

!        FOR i FROM 1 TO 3 DO
!            bInsp_Caixa_Cheia{i}:=FALSE;
!        ENDFOR

!        FOR i FROM 1 TO 15 DO
!            bProcess_OK{i}:=FALSE;
!        ENDFOR
        
!        rMensagem 13,1,1,1;

    ENDPROC
    
    !*** Verifica qual produto esta na esteira
    PROC rChk_Part_In_Con()
        
        !PLC informa de qual produto e caixa que esta na esteira
        nReg_1 := GI_001_BOX_PROD_IN;
        
        !Verifica se o produto que esta na esteira condiz com o escolhido pelo usuario
        IF ((cPallet_Status{1}.Part_In_Pallet <> nReg_1) AND (cPallet_Status{2}.Part_In_Pallet <> nReg_1)) rAlarm 2;
        
        !Verifica em qual palete esta sendo feito este produto
        IF (cPallet_Status{1}.Part_In_Pallet = nReg_1) THEN
            nCur_Pallet := 1;
            
        ELSEIF (cPallet_Status{2}.Part_In_Pallet = nReg_1) THEN
            nCur_Pallet := 2;
            
        ENDIF   
        
    ENDPROC
    
    !*** Atribui ponto de pega atual
    PROC rSet_Pick_Cur()
      
        !Numero de caixas para a posicao atual
        nReg_1 := cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box;
        
        TEST nReg_1
        CASE 1:
            pPick_Cur := cPart_Cur.pPick_Conv_1;
        CASE 2:
            pPick_Cur := cPart_Cur.pPick_Conv_2;
            
        DEFAULT:
            !MENSAGEM
        ENDTEST
        
    ENDPROC
    
    !*** Atribui ponto de deposito atual
    PROC rSet_Drop_Cur()
        
        nReg_1 := cPallet_Status{nCur_Pallet}.Pos_Cur;
        nReg_1 := cPallet_Drop{nReg_1}.Rot;
        
        
        IF ((nReg_1 = 0) AND (nCur_Pallet = 1)) THEN
            pDrop_Cur := cPart_Cur.pDrop_Hori_PalRight;
        
        ELSEIF ((nReg_1 = 90) AND (nCur_Pallet = 1)) THEN
            pDrop_Cur := cPart_Cur.pDrop_Vert_PalRight;
            
        ELSEIF ((nReg_1 = 0) AND (nCur_Pallet = 2)) THEN
            pDrop_Cur := cPart_Cur.pDrop_Hori_PalLeft;
        
        ELSEIF ((nReg_1 = 90) AND (nCur_Pallet = 2)) THEN
            pDrop_Cur := cPart_Cur.pDrop_Hori_PalLeft;
           
        ENDIF
        
    ENDPROC
    
    !*** Atribui ponto de Pounce para deposito no palete
    PROC rSet_Pounce_Drop_Cur()
        
        !Atribui todas as coordenadas de pPounce
        pReg_1 := cPart_Cur.pPick_Conv_1;
        pReg_1.trans.z := pReg_1.trans.z + 200;
        cStation_Cur.pPounce := pReg_1;
        
        !Verifica rotacao do ponto atual no palete atual
        IF (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Rot = 90) THEN
            
            !Atribui deslocamento em Y de acorodo com a qtd de caixas e o tamanho
            !* Este deslocamento é para o robo nao colidir no palete, pois no estudo de caso as estacoes do palete e a esteira sao proximos
            cStation_Cur.pPounce.trans.y := cStation_Cur.pPounce.trans.y - (cPart_Cur.X * (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Qtd_Box - 1) );
            
        ENDIF
        
        !Mede a altura atual do nivel do palete
        nReg_1 := ((cPallet_Status{nCur_Pallet}.Layer_Cur) * (cPart_Cur.Z));
        
        !Verifica se o nivel atual e maior que a distancia ate a primeira camada
        IF (nReg_1 >= nDis_Floor2ExitPick) THEN
            
            !Soma a diferenca entre o nivel atual e nivel em que a caixa esta
            nReg_2 := nReg_1 - nDis_Floor2ExitPick;
            cStation_Cur.pPounce.trans.z := nDis_Floor2ExitPick + nReg_2 + 20;
            
        ENDIF
         
    ENDPROC
        
    !*** Pega caixa na esteira geral
    PROC rPick_Con()
        rSet_Process 1;
        
        !Pounce
        rSet_Segment 3;
            MoveJ cStation_Cur.pPounce, v2000, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        !Aproximacao
        rSet_Segment 21;
            MoveJ Offs(pPick_Cur, 0, 0, -200), v1500, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
            MoveJ Offs(pPick_Cur, 0, 0, -100), v1000,  z5, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
            MoveJ Offs(pPick_Cur, 0, 0,  -50),  v500,  z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        !Pega
            MoveJ Offs(pPick_Cur,0,0,0), v200, fine, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        rTON_Vacuum_Gripper;
        
        IF (bDry_Run =FALSE) rChk_Sensor 9,1,10,1,0,0,0,0,0,0;
        
        !Saida da esteira
        rSet_Segment 22;
        
        !*Por expericencia realizar um movimento muito brusco com uma ventosa
        !em um superficie porosa como a do papelao das caixas, pode acabar rasgando
        !a caixa, por isso estou usando mais de um ponto para a saida, para que ela
        !seja suave e nao rasgue a caixa
            MoveJ Offs(pPick_Cur, 0, 0,  50),  v500,  z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
            MoveJ Offs(pPick_Cur, 0, 0, 100), v1000,  z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
            MoveJ Offs(pPick_Cur, 0, 0, 200), v2000, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        !Pounce
        rSet_Segment 3;
            MoveJ Offs(cStation_Cur.pPounce, 0, 0, 0), vmax, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
             
    ENDPROC
    
    !*** Deposita no palete na esteira geral
    PROC rDrop_Pal()
        rSet_Process(2);
       
        !Pounce
        rSet_Segment 3;
            MoveJ cStation_Cur.pPounce, v2000, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        !Aproximacao
        rSet_Segment 26;
            MoveJ Offs(pDrop_Cur,
                        50 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        50 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       200 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v1500, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
                       
            MoveJ Offs(pDrop_Cur,
                        20 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        20 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       100 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v1000, z5, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
                       
            MoveJ Offs(pDrop_Cur,
                        5 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        5 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       50 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v500, z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;           
        
        !Deposito
            MoveJ Offs(pDrop_Cur,
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                        0 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v200, fine, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        rTOF_Vacuum_Gripper;
        
        IF (bDry_Run =FALSE) rChk_Sensor 9,0,10,0,0,0,0,0,0,0;
        
        rUpt_Pal_Pos;
        
        !Saida do palete
        rSet_Segment 27;
            MoveJ Offs(pDrop_Cur,
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                        5 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v500, z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
                       
            MoveJ Offs(pDrop_Cur,
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       10 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v1000, z5, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
                       
            MoveJ Offs(pDrop_Cur,
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       20 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v1500, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;   
                    
        !Pounce
        rSet_Segment 3;
            MoveJ cStation_Cur.pPounce, v2000, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
    ENDPROC
    
    !*** Verifica se ha peca na garra
    PROC rChk_Sensor(num Sensor_1,num Status_1,
                     num Sensor_2,num Status_2,
                     num Sensor_3,num Status_3,
                     num Sensor_4,num Status_4,
                     num Sensor_5,num Status_5)
                     
        !Atribuicao dos argumentos
        nSensor{1,1} := Sensor_1;
        nSensor{1,2} := Sensor_2;
        nSensor{1,3} := Sensor_3;
        nSensor{1,4} := Sensor_4;
        nSensor{1,5} := Sensor_5;
        
        nSensor{2,1} := Status_1;
        nSensor{2,2} := Status_2;
        nSensor{2,3} := Status_3;
        nSensor{2,4} := Status_4;
        nSensor{2,5} := Status_5;
        
        LABEL_0:
        
        !Verifica se a verificacao dos sensores sera repetida
        IF bSensor_NOK rMsg_Sensor_NOK_2;
        IF (nReg_1 = 5) GOTO LABEL_99;
        
        !Reseta valor de verificacao
        bSensor_NOK := FALSE;
    
        FOR i FROM 1 TO 5 DO
            
            !Verifica se o status e valido para ser uma valor de DI
            IF ((nSensor{2,i} <> 0) AND (nSensor{2,i} <> 1)) rAlarm_2 "DI",nSensor{2,i};
            
            !Verifica qual sensor sera checado, e se o valor dele esta igual ao exigido pelo argumento Status_i
            TEST nSensor{1,i}
            CASE 5:
                IF (DI_005_PRES_PAL_RIGHT <> nSensor{2,i}) rMsg_Sensor_NOK_1 1;

            CASE 6:
                IF (DI_006_PRES_PAL_LEFT <> nSensor{2,i}) rMsg_Sensor_NOK_1 2;

            CASE 7:
                IF (DI_007_PRES_BOX_1 <> nSensor{2,i}) rMsg_Sensor_NOK_1 3;

            CASE 8:
                IF (DI_008_PRES_BOX_2 <> nSensor{2,i}) rMsg_Sensor_NOK_1 4;

            CASE 9:
                IF (DI_009_PRES_BOX_TOOL_1 <> nSensor{2,i}) rMsg_Sensor_NOK_1 5;

            CASE 10:
                IF (DI_010_PRES_BOX_TOOL_2 <> nSensor{2,i}) rMsg_Sensor_NOK_1 6;

            CASE 11:
                IF (DI_011_ZONE_1_RIGHT <> nSensor{2,i}) rMsg_Sensor_NOK_1 7;

            CASE 12:
                IF (DI_012_ZONE_2_RIGHT <> nSensor{2,i}) rMsg_Sensor_NOK_1 8;

            CASE 13:
                IF (DI_013_ZONE_1_LEFT <> nSensor{2,i}) rMsg_Sensor_NOK_1 9;
            
            CASE 14:
                IF (DI_014_ZONE_2_LEFT <> nSensor{2,i}) rMsg_Sensor_NOK_1 10;
                
            DEFAULT:
                !MENSAGEM
            ENDTEST
            
        ENDFOR
        
        IF bSensor_NOK GOTO LABEL_0;
        
        LABEL_99:
        
    ENDPROC
    
    !*** Atualiza contagem do palete
    PROC rUpt_Pal_Pos()
        
        IF ((bSensor_NOK = TRUE) AND (bDry_Run = FALSE)) rAlarm 1;
        
        Incr cPallet_Status{nCur_Pallet}.Pos_Cur;
        Incr cProduction_Part{cPallet_Status{nCur_Pallet}.Part_In_Pallet}.Box_Dropped_Total;
        
        !Verifica se atingiu o maximo de caixas em uma camada
        IF (cPallet_Status{nCur_Pallet}.Pos_Cur < cPart_Cur.Box_In_Layer) GOTO LABEL_99;
        
        cPallet_Status{nCur_Pallet}.Pos_Cur := 1;
        Incr cPallet_Status{nCur_Pallet}.Layer_Cur;
        
        !Verifica se atingiu o maximo de camadas em um palete
        IF (cPallet_Status{nCur_Pallet}.Layer_Cur < cPart_Cur.Layers_In_Pallet) GOTO LABEL_99;
        
        cPallet_Status{nCur_Pallet}.Layer_Cur := 1;
        cPallet_Status{nCur_Pallet}.Pallet_Complete := TRUE;
        Incr cProduction_Part{cPallet_Status{nCur_Pallet}.Part_In_Pallet}.Pallet_Completed;
        
        LABEL_99:
    ENDPROC
    
    !*** Reseta o palete (T_ROB1 / T_PROCESS)
    PROC rReset_Pal(num Pallet)
        
        cPallet_Status{Pallet} := [0,1,1,0,0,FALSE];
        
    ENDPROC
    
    !*** Retorna para home de onde estiver
    PROC rRecovery_Home()
        
        !Verifica atraves do segmento aonde o robo esta posicionado
        TEST cSegment_Cur.Number
        CASE 3:
            GOTO LABEL_3;
            
        CASE 21:
            GOTO LABEL_2;
            
        CASE 22:
            GOTO LABEL_2;
            
        CASE 26:
            GOTO LABEL_6;
            
        CASE 27:
            GOTO LABEL_6;
        
        DEFAULT:
            rMessage 1;
        
        ENDTEST
        
        LABEL_1:
        
        !Pega esteira
            MoveJ Offs(pPick_Cur,0,0,0), v200, fine, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
       
        LABEL_2:
        
        !Saida da esteira
            MoveJ Offs(pPick_Cur, 0, 0,  50),  v500,  z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
            MoveJ Offs(pPick_Cur, 0, 0, 100), v1000,  z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
            MoveJ Offs(pPick_Cur, 0, 0, 200), v2000, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        LABEL_3:
        
        !Pounce esteira
            MoveJ Offs(cStation_Cur.pPounce, 0, 0, 0), vmax, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        LABEL_4:
             
        !Home da esteira
            MoveJ cStation_Cur.pHome, v1500, fine, tool0 \WObj:= wobj0;
            
        GOTO LABEL_99;
        
        LABEL_5:
        
        !Deposito no palete
            MoveJ Offs(pDrop_Cur,
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        0 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                        0 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v200, fine, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        LABEL_6:
                       
        !Saida do palete
            MoveJ Offs(pDrop_Cur,
                        50 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        50 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       200 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v1500, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
                       
            MoveJ Offs(pDrop_Cur,
                        20 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        20 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       100 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v1000, z5, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
                       
            MoveJ Offs(pDrop_Cur,
                        5 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.X),
                        5 + (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Y),
                       50 + ( (cPallet_Drop{cPallet_Status{nCur_Pallet}.Pos_Cur}.Z) * (cPallet_Status{nCur_Pallet}.Layer_Cur) )
                       ),
                       v500, z1, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;           
        
        LABEL_7:
        
        !Pounce palete
            MoveJ cStation_Cur.pPounce, v2000, z10, cTool.Tool_Data \WObj:= cStation_Cur.Wobj_Data;
        
        LABEL_8:
        
        !Home do palete
            MoveJ cStation_Cur.pHome, v1500, fine, tool0 \WObj:= wobj0;
        
        LABEL_99:
        
        !Home do robô
            MoveJ pHome, v1500, fine, tool0 \WObj:= wobj0;
            
        bAt_Home := TRUE;
        
    ENDPROC
    
    !*** Parametriza o metodo de como irao chegar na esteira os produtos simulados
    PROC rDryRun_Par()
        
        LABEL_1:
        
        rMsg_DryRun_Part;
        
        TEST nDryRun_Seting_1
        CASE 1:
            nCur_Pallet := 1;
        
        CASE 2:
            nCur_Pallet := 2;
         
        CASE 3:
            nCur_Pallet := 1;
            IF cPallet_Status{1}.Pallet_Complete nCur_Pallet := 2;
            IF cPallet_Status{2}.Pallet_Complete STOP;
        
        CASE 4:
            Incr nCur_Pallet;
            IF (nCur_Pallet > 2) nCur_Pallet := 1;
            
        CASE 5:
            TPErase;
            TPReadFK nReg_1,"Deseja produzir em Dry Run?","SIM",stEmpty,stEmpty,stEmpty,"NAO";
            
            IF (nReg_1 = 1) THEN
                GOTO LABEL_1;
            ELSE
                TPErase;
                TPWrite "O programa sera reiniciado";
                ExitCycle;
            ENDIF
            
        DEFAULT:
        ENDTEST
        
    ENDPROC
    
    !*** Reseta os marcadores de permissiveis, e condicoes de processo
    PROC rReset_Per_Proc_Cond()

        bPer_1131:=FALSE;
        bPer_1231:=FALSE;
        bPer_1331:=FALSE;
        bPer_1431:=FALSE;
        bPer_2111:=FALSE;
        bPer_2121:=FALSE;
        bPer_2211:=FALSE;
        bPer_2221:=FALSE;
        bPer_2311:=FALSE;
        bPer_2321:=FALSE;
        bPer_2411:=FALSE;
        bPer_2421:=FALSE;
        bProc_Cond_1131:=FALSE;
        bProc_Cond_1231:=FALSE;
        bProc_Cond_1331:=FALSE;
        bProc_Cond_1431:=FALSE;
        bProc_Cond_2111:=FALSE;
        bProc_Cond_2121:=FALSE;
        bProc_Cond_2211:=FALSE;
        bProc_Cond_2221:=FALSE;
        bProc_Cond_2311:=FALSE;
        bProc_Cond_2321:=FALSE;
        bProc_Cond_2411:=FALSE;
        bProc_Cond_2421:=FALSE;

    ENDPROC
    
ENDMODULE