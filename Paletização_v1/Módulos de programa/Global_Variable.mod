MODULE Global_Variable
    !########## DECLARACAO DE CLASSES

    !*** Caracteristicas/parametros inerentes a cada produto
    RECORD cProcess_Par

        num Number;
        string Name;

    ENDRECORD

    !*** Caracteristicas/parametros inerentes a cada produto
    RECORD cPart_Par

        num Number;
        string Name;

        num X;
        num Y;
        num Z;

        num Layers;
        num Gap_1;
        num Gap_2;
        num Gap_3;
        num Gap_4;

        num Layer_1_Layout;
        num Layer_2_Layout;
        num Layer_3_Layout;
        num Layer_4_Layout;
        num Layer_5_Layout;
        num Layer_6_Layout;
        num Layer_7_Layout;
        num Layer_8_Layout;
        num Layer_9_Layout;
        num Layer_10_Layout;
        num Layer_11_Layout;
        num Layer_12_Layout;
        num Layer_13_Layout;
        num Layer_14_Layout;
        num Layer_15_Layout;

        loaddata Weight;

        robtarget pDrop_Pal_Hori;
        robtarget pDrop_Pal_Vert;

    ENDRECORD

    !*** Caracteristicas/parametros inerentes a cada estacao
    RECORD cStation_Par

        num Number;
        string Name;

        wobjdata Wobj_Data;

    ENDRECORD

    !*** Caracteristicas/parametros inerentes a cada ferramenta
    RECORD cTool_Par

        num Number;
        string Name;

        tooldata Tool_Data;

    ENDRECORD

    !*** Caracteristicas/parametros inerentes a cada segmento
    RECORD cSegment_Par

        num Number;
        string Name;

        bool At_Seg;

    ENDRECORD
    
    !*** Caracteristicas/parametros inerentes a cada palete
    RECORD cProduction_Par

        num Pallet_Completed;
        num Pallet_Rejected;
        num Box_Dropped_Total;
        num Box_Fallen_Total;
        num Cicle_Time_Last;
        num Cicle_Time_Avr;
        num Cicle_Time_Stoped;
        
    ENDRECORD
    
    !*** Caracteristicas/parametros inerentes a cada palete
    RECORD cPallet_Par

        num Part_In_Pallet;
        num Pos_Cur;
        num Layer_Cur;
        num Box_Dropped;
        num Box_Fallen;
        bool Pallet_Complete;

    ENDRECORD

    !*** Ponto/posicao de deposito no palete
    RECORD cPallet_Point_Par

        num X;
        num Y;
        num Z;
        num Rot;
        num Qtd_Box;
        !numero de caixas para deposito

    ENDRECORD

    !########## CLASSES
    PERS cProcess_Par cProcess{2}:=[
                                    [1,"Pick"],
                                    [2,"Drop"]
                                   ];

    PERS cPart_Par cPart{4}:=[
                                [
                                1,"Saboroso",
                                0,0,0,
                                0,0,0,0,0,
                                0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                [5,[50,0,50],[1,0,0,0],0,0,0],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]]
                                ],

                                [
                                2,"Delicioso",
                                0,0,0,
                                0,0,0,0,0,
                                0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                [5,[50,0,50],[1,0,0,0],0,0,0],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]]
                                ],

                                [
                                3,"Fantastico",
                                0,0,0,
                                0,0,0,0,0,
                                0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                [5,[50,0,50],[1,0,0,0],0,0,0],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]]
                                ],

                                [
                                4,"Bolachudo",
                                0,0,0,
                                0,0,0,0,0,
                                0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                [5,[50,0,50],[1,0,0,0],0,0,0],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]],
                                [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]]
                                ],

                               ];

    PERS cStation_Par cStation{3}:=[
                                      [
                                      1,"Pallet right",
                                      [FALSE,TRUE,"",[[300,600,200],[1,0,0,0]],[[0,200,30],[1,0,0,0]]]
                                      ],

                                      [
                                      2,"Pallet left",
                                      [FALSE,TRUE,"",[[300,600,200],[1,0,0,0]],[[0,200,30],[1,0,0,0]]]
                                      ],

                                      [
                                      3,"Conveyor",
                                      [FALSE,TRUE,"",[[300,600,200],[1,0,0,0]],[[0,200,30],[1,0,0,0]]]
                                      ]

                                     ];

    PERS cTool_Par cTool:=[
                           1,"Vacuum",
                           [TRUE,[[97.4,0,223.1],[0.924,0,0.383,0]],[5,[23,0,75],[1,0,0,0],0,0,0]]
                          ];

    CONST cSegment_Par cSegment{70}:=[
                                        [1,"Home robot",FALSE],
                                        [2,"Home station",FALSE],
                                        [3,"Pouce",FALSE],
                                        [4,"Wait to continue",FALSE],
                                        [5,"Maintenance",FALSE],
                                        [6,"Calibration",FALSE],
                                        [7,"EMPTY",FALSE],
                                        [8,"EMPTY",FALSE],
                                        [9,"EMPTY",FALSE],
                                        [10,"EMPTY",FALSE],
                                        [11,"EMPTY",FALSE],
                                        [12,"EMPTY",FALSE],
                                        [13,"EMPTY",FALSE],
                                        [14,"EMPTY",FALSE],
                                        [15,"EMPTY",FALSE],
                                        [16,"EMPTY",FALSE],
                                        [17,"EMPTY",FALSE],
                                        [18,"EMPTY",FALSE],
                                        [19,"EMPTY",FALSE],
                                        [20,"EMPTY",FALSE],
                                        [21,"Pick_1",FALSE],
                                        [22,"Pick_2",FALSE],
                                        [23,"Pick_3",FALSE],
                                        [24,"Pick_4",FALSE],
                                        [25,"Pick_5",FALSE],
                                        [26,"Drop_1",FALSE],
                                        [27,"Drop_2",FALSE],
                                        [28,"Drop_3",FALSE],
                                        [29,"Drop_4",FALSE],
                                        [30,"Drop_5",FALSE],
                                        [31,"Check_1",FALSE],
                                        [32,"Check_2",FALSE],
                                        [33,"Check_3",FALSE],
                                        [34,"Check_4",FALSE],
                                        [35,"Check_5",FALSE],
                                        [36,"Dispense_1",FALSE],
                                        [37,"Dispense_2",FALSE],
                                        [38,"Dispense_3",FALSE],
                                        [39,"Dispense_4",FALSE],
                                        [40,"Dispense_5",FALSE],
                                        [41,"Weld_1",FALSE],
                                        [42,"Weld_2",FALSE],
                                        [43,"Weld_3",FALSE],
                                        [44,"Weld_4",FALSE],
                                        [45,"Weld_5",FALSE],
                                        [46,"Machining_1",FALSE],
                                        [47,"Machining_2",FALSE],
                                        [48,"Machining_3",FALSE],
                                        [49,"Machining_4",FALSE],
                                        [50,"Machining_5",FALSE],
                                        [51,"Cut_1",FALSE],
                                        [52,"Cut_2",FALSE],
                                        [53,"Cut_3",FALSE],
                                        [54,"Cut_4",FALSE],
                                        [55,"Cut_5",FALSE],
                                        [56,"Sand_1",FALSE],
                                        [57,"Sand_2",FALSE],
                                        [58,"Sand_3",FALSE],
                                        [59,"Sand_4",FALSE],
                                        [60,"Sand_5",FALSE],
                                        [61,"Process_1",FALSE],
                                        [62,"Process_2",FALSE],
                                        [63,"Process_3",FALSE],
                                        [64,"Process_4",FALSE],
                                        [65,"Process_5",FALSE],
                                        [66,"EMPTY",FALSE],
                                        [67,"EMPTY",FALSE],
                                        [68,"EMPTY",FALSE],
                                        [69,"EMPTY",FALSE],
                                        [70,"EMPTY",FALSE]
                                       ];

    !***ATUAIS
    PERS cProcess_Par cProcess_Cur:=[0,"EMPTY"];
    
    PERS cPart_Par cPart_Cur{2}:=[
                                    [
                                    0,"EMPTY",
                                    0,0,0,
                                    0,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                    [5,[50,0,50],[1,0,0,0],0,0,0],
                                    [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]],
                                    [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]]
                                    ],

                                    [
                                    0,"EMPTY",
                                    0,0,0,
                                    0,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                    [5,[50,0,50],[1,0,0,0],0,0,0],
                                    [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]],
                                    [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]]
                                    ]
                                    ];

    PERS cStation_Par cStation_Cur:= [
                                      0,"EMPTY",
                                      [FALSE,TRUE,"",[[300,600,200],[1,0,0,0]],[[0,200,30],[1,0,0,0]]]
                                     ];
                                     
    PERS cTool_Par cTool_Cur := [
                                 0,"EMPTY",
                                 [TRUE,[[97.4,0,223.1],[0.924,0,0.383,0]],[5,[23,0,75],[1,0,0,0],0,0,0]]
                                ];
    PERS cProduction_Par cProduction_Part{4} := [
                                                 [0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0]                                                     
                                                ];
                                                
    PERS cProduction_Par cProduction_General := [0,0,0,0,0,0,0];
                                                
    PERS cPallet_Point_Par cPallet_Drop{2,10}:=[
                                                [
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0]
                                                ],

                                                [
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0],
                                                [0,0,0,0,0]
                                                ]
                                               ];
                                               
    PERS num nCurrent_Layout{2,15} := [
                                       [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
                                       [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
                                      ];

    PERS cPallet_Par cPallet_Status{2} := [
                                           [0,0,0,0,0,FALSE],
                                           [0,0,0,0,0,FALSE]
                                          ];

    !########## NUMERICAS
    !*** Registradores
    PERS num nReg_1 := 0;
    PERS num nReg_2 := 0;
    PERS num nReg_3 := 0;
    PERS num nReg_4 := 0;
    PERS num nReg_5 := 0;
    
    !*** Gerais
    CONST num nTool_Length := 400;
    
    !########## BOOLEANAS
    !*** Registradores
    PERS bool bReg_1 := FALSE;
    PERS bool bReg_2 := FALSE;
    PERS bool bReg_3 := FALSE;
    PERS bool bReg_4 := FALSE;
    PERS bool bReg_5 := FALSE;
    
    !*** Gerais
    PERS bool bProcess_OK{2}   := [FALSE,FALSE];
    
    PERS bool bPermissible{12} := [
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE,
                                   FALSE
                                  ];
                                  
    PERS bool bProc_Condition{12} := [
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE,
                                      FALSE
                                      ];
    
    !########## STRINGS
    !*** Registradores
    PERS string sReg_1 := "EMPTY";
    PERS string sReg_2 := "EMPTY";
    PERS string sReg_3 := "EMPTY";
    PERS string sReg_4 := "EMPTY";
    PERS string sReg_5 := "EMPTY";
    
    !*** Gerais
    PERS string sAlarm{20} :=  [
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY"
                               ];
                                   
    PERS string sMessage{20} :=[
                               "Opcao invalida",
                               "Favor selecionar outra opcao",
                               "Permissivel nao liberado",
                               "Condicao de processo nao liberada",
                               "Dado invalido",
                               "Teste de freios concluido",
                               "Celula resetada",
                               "Aguardando caixa na esteira",
                               "Invasao da area compartilhada, robo em velocidade reduzida",
                               "Invasao da area compartilhada, robo parado",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY",
                               "EMPTY"
                               ];
    
    !########## TEMPORIZADORES
    !*** Registradores
    PERS clock clReg_1;
    PERS clock clReg_2;
    PERS clock clReg_3;
    PERS clock clReg_4;
    PERS clock clReg_5;
    
    !*** Gerais
    PERS clock clCicle_Running;
    PERS clock clCicle_Stopped;

    !########## ROBTARGET
    !*** Registradores
    PERS robtarget pReg_1 := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_2 := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_3 := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_4 := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pReg_5 := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
         
    !*** Gerais
    PERS robtarget pPick_Con := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];

    !Pontos atuais
    PERS robtarget pDrop_Pal_Cur      := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pDrop_Pal_Hori_Cur := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pDrop_Pal_Vert_Cur := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    
    PERS robtarget pPick_1_Cur := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    PERS robtarget pPick_2_Cur := [[600,500,225.3],[1,0,0,0],[1,1,0,0],[11,12.3,9E9,9E9,9E9,9E9]];
    
    !########## JOINT TARGET
    !*** Registradores
    PERS jointtarget pJoint_Reg_1 := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_2 := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_3 := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_4 := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pJoint_Reg_5 := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    
    !*** Gerais
    PERS jointtarget pCalib      := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    PERS jointtarget pBrake_Test := [ [ 0, 0, 0, 0, 0, 0], [ 0, 9E9, 9E9, 9E9, 9E9, 9E9] ];
    
    !########## TOOL DATA
    PERS tooldata tVacuum := [ TRUE, [[97.4, 0, 223.1], [0.924, 0, 0.383 ,0]], [5, [23, 0, 75], [1, 0, 0, 0], 0, 0, 0]];
    
    !########## WORK OBJECT / FRAME DATA
    PERS wobjdata wPallet_Right := [ FALSE, TRUE, "", [ [300, 600, 200], [1, 0, 0 ,0] ], [ [0, 200, 30], [1, 0, 0 ,0] ] ];
    PERS wobjdata wPallet_Left  := [ FALSE, TRUE, "", [ [300, 600, 200], [1, 0, 0 ,0] ], [ [0, 200, 30], [1, 0, 0 ,0] ] ];
    PERS wobjdata wConveyor     := [ FALSE, TRUE, "", [ [300, 600, 200], [1, 0, 0 ,0] ], [ [0, 200, 30], [1, 0, 0 ,0] ] ];


ENDMODULE