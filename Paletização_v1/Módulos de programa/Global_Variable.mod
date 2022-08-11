MODULE Global_Variable
    !########## DECLARACAO DE CLASSES
    
    !*** Segmento de processo
    RECORD cProcess_Segment
        
        num Process;
        string Process_Name;
        
        num Product;
        string Product_Name;
        
        num Station;
        string Station_Name;
        
        num Tool;
        string Tool_Name;
        
        num Segment;
        string Segment_Name;
        
        bool AtSegment;
        
    ENDRECORD
    
    !*** Ponto/posicao de deposito no palete
    RECORD cDrop_Point_Par
        
        num X;
        num Y;
        num Z;
        num Rot;
        num Qtd_Box; !numero de caixas para deposito
        bool Droped;
        
    ENDRECORD
    
    !*** Caracteristicas/parametros inerentes a cada produto
    RECORD cProd_Par
        
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
        
        robtarget pPick_Con;
        robtarget pDrop_Pal_Hori;
        robtarget pDrop_Pal_Vert;
        
    ENDRECORD
    
    !########## CLASSES
    PERS cProcess_Segment cProcess_Seg := [0," ",0," ",0," ",0," ",0," ",FALSE];
    PERS cDrop_Point_Par cPallet_Drop{10} := [
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE],
                                                [0,0,0,0,0,FALSE]                                                    
                                             ];
    PERS cProd_Par cProduct{4} := [ 
                                    [
                                    0,0,0,
                                    0,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                    ],
                                    
                                    [
                                    0,0,0,
                                    0,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                    ],
                                    
                                    [
                                    0,0,0,
                                    0,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                    ],
                                    
                                    [
                                    0,0,0,
                                    0,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                    ]
                                   ];
                                   
    PERS cProd_Par cProduct_Cur := [
                                    0,0,0,
                                    0,0,0,0,0,
                                    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ],
                                    [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ]
                                   ];
                                             
                                             
    !########## NUMERICAS
    CONST num nTool_Length := 400;
    
    !########## ROBTARGET
    PERS robtarget pPick_Con := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    
    !Pontos atuais
    PERS robtarget pDrop_Pal_Cur := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    PERS robtarget pDrop_Pal_Hori_Cur := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    PERS robtarget pDrop_Pal_Vert_Cur := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    PERS robtarget pPick_1_Cur := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
    PERS robtarget pPick_2_Cur := [ [600, 500, 225.3], [1, 0, 0, 0], [1, 1, 0, 0], [ 11, 12.3, 9E9, 9E9, 9E9, 9E9] ];
     
ENDMODULE