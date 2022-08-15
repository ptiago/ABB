MODULE Pallet_Layout
!===========================================
!       Pallet_Layout Module Program           
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
! Rotinas que atribuem o offset para cada posicao de layout
! levando as pectos do produto para o calculo.
!===========================================
    
    !*** Caracteristicas/parametros inerentes a cada produto
    PROC rSet_Layout_11()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 11;
        nLayers_In_Pallet := 10;
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := cPart_Cur.Y + cPart_Cur.Gap_2;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 2;
        cPallet_Drop{2}.Rot := 90;
        
        !Posicao 3
        cPallet_Drop{3}.X := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_2);
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 2;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := (3 * cPart_Cur.Y) + (3 * cPart_Cur.Gap_2);
        cPallet_Drop{4}.Y := 0;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := 0;
        cPallet_Drop{5}.Y := 2 * cPart_Cur.X;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 0;
        
        !Posicao 6
        cPallet_Drop{6}.X := (2 * cPart_Cur.X) + cPart_Cur.Gap_1;
        cPallet_Drop{6}.Y := 2 * cPart_Cur.X;
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 0;
    
    ENDPROC
    
    PROC rSet_Layout_12()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 11;
        nLayers_In_Pallet := 10;
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := (2 * cPart_Cur.X)  + cPart_Cur.Gap_1;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 2;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cPart_Cur.Y + cPart_Cur.Gap_2;
        cPallet_Drop{4}.Y := cPart_Cur.Y ;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_2);
        cPallet_Drop{5}.Y := cPart_Cur.Y ;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := (3 * cPart_Cur.Y) + (3 * cPart_Cur.Gap_2);
        cPallet_Drop{6}.Y := cPart_Cur.Y ;
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 90;
        
    ENDPROC
    
    PROC rSet_Layout_21()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 9;
        nLayers_In_Pallet := 10;
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 1;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cPart_Cur.X + cPart_Cur.Gap_3;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := cPart_Cur.Y + cPart_Cur.Gap_1;
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 2;
        cPallet_Drop{3}.Rot := 0;
        
        !Posicao 4
        cPallet_Drop{4}.X := cPart_Cur.X;
        cPallet_Drop{4}.Y := cPart_Cur.Y + cPart_Cur.Gap_3;
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := cPart_Cur.X + cPart_Cur.Y;
        cPallet_Drop{5}.Y := cPart_Cur.Y + cPart_Cur.Gap_3;
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 0;
        
        !Posicao 6
        cPallet_Drop{6}.X := 0;
        cPallet_Drop{6}.Y := cPart_Cur.X + cPart_Cur.Y + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 0;
        
        !Posicao 7
        cPallet_Drop{7}.X := (2 * cPart_Cur.X) + cPart_Cur.Gap_1;
        cPallet_Drop{7}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 90;
        
    ENDPROC
    
    PROC rSet_Layout_22()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 9;
        nLayers_In_Pallet := 10;
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cPart_Cur.Y + cPart_Cur.Gap_3;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cPart_Cur.X;
        cPallet_Drop{4}.Y := cPart_Cur.Y;
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cPart_Cur.X) + cPart_Cur.Gap_1;
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := cPart_Cur.X + cPart_Cur.Y;
        cPallet_Drop{6}.Y := cPart_Cur.X + cPart_Cur.Gap_3;
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 0;
        
        !Posicao 7
        cPallet_Drop{7}.X := cPart_Cur.Y + cPart_Cur.Gap_1;
        cPallet_Drop{7}.Y := cPart_Cur.X + cPart_Cur.Y + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 90;
        
    ENDPROC
    
    PROC rSet_Layout_31()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 10;
        nLayers_In_Pallet := 9;
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 1;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := cPart_Cur.Y + cPart_Cur.Gap_1;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 90;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := cPart_Cur.X + cPart_Cur.Gap_3;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 0;
        
        !Posicao 4
        cPallet_Drop{4}.X := 0;
        cPallet_Drop{4}.Y := (2 * cPart_Cur.X) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 0;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cPart_Cur.X) + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := cPart_Cur.X + cPart_Cur.Gap_1;
        cPallet_Drop{6}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 90;
        
        !Posicao 7
        cPallet_Drop{7}.X := cPart_Cur.X + cPart_Cur.Y + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{7}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{7}.Qtd_Box := 1;
        cPallet_Drop{7}.Rot := 90;
        
        !Posicao 8
        cPallet_Drop{8}.X := (3 * cPart_Cur.Y) + (3 * cPart_Cur.Gap_1);
        cPallet_Drop{8}.Y := 0;
        cPallet_Drop{8}.Qtd_Box := 1;
        cPallet_Drop{8}.Rot := 0;
        
        !Posicao 9
        cPallet_Drop{9}.X := (3 * cPart_Cur.Y) + (3 * cPart_Cur.Gap_1);
        cPallet_Drop{9}.Y := cPart_Cur.Y + cPart_Cur.Gap_3;
        cPallet_Drop{9}.Qtd_Box := 1;
        cPallet_Drop{9}.Rot := 0;
        
        !Posicao 10
        cPallet_Drop{10}.X := cPart_Cur.X + (2 * cPart_Cur.Y) + (3 * cPart_Cur.Gap_1);
        cPallet_Drop{10}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{10}.Qtd_Box := 1;
        cPallet_Drop{10}.Rot := 90;
    ENDPROC
    
    PROC rSet_Layout_32()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 10;
        nLayers_In_Pallet := 9;
        
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 1;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cPart_Cur.Y + cPart_Cur.Gap_3;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := cPart_Cur.X + cPart_Cur.Gap_1;
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cPart_Cur.Y;
        cPallet_Drop{4}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := cPart_Cur.Y + cPart_Cur.Gap_1;
        cPallet_Drop{5}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := cPart_Cur.X + (2 * cPart_Cur.Y);
        cPallet_Drop{6}.Y := 0;
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 90;
        
        !Posicao 7
        cPallet_Drop{7}.X := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{7}.Y := (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{7}.Qtd_Box := 1;
        cPallet_Drop{7}.Rot := 90;
        
        !Posicao 8
        cPallet_Drop{8}.X := cPart_Cur.X + (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{8}.Y := 0;
        cPallet_Drop{8}.Qtd_Box := 1;
        cPallet_Drop{8}.Rot := 90;
        
        !Posicao 9
        cPallet_Drop{9}.X := (3 * cPart_Cur.Y) + (3 * cPart_Cur.Gap_1);
        cPallet_Drop{9}.Y := cPart_Cur.X + cPart_Cur.Y + cPart_Cur.Gap_3;
        cPallet_Drop{9}.Qtd_Box := 1;
        cPallet_Drop{9}.Rot := 0;
        
        !Posicao 10
        cPallet_Drop{10}.X := (3 * cPart_Cur.Y) + (3 * cPart_Cur.Gap_1);
        cPallet_Drop{10}.Y := cPart_Cur.X + (2 * cPart_Cur.Y) + (2 * cPart_Cur.Gap_3);
        cPallet_Drop{10}.Qtd_Box := 1;
        cPallet_Drop{10}.Rot := 0;
    ENDPROC
    
    PROC rSet_Layout_41()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 14;
        nLayers_In_Pallet := 12;
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := cPart_Cur.Y + cPart_Cur.Gap_1;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 2;
        cPallet_Drop{2}.Rot := 90;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := 2 * cPart_Cur.X + cPart_Cur.Gap_4;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cPart_Cur.Y + cPart_Cur.Gap_1;
        cPallet_Drop{4}.Y := 2 * cPart_Cur.X;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := 2 * cPart_Cur.Y + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 0;
        
        !Posicao 6
        cPallet_Drop{6}.X := 2 * cPart_Cur.Y + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{6}.Y := cPart_Cur.Y;
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 0;
        
        !Posicao 7
        cPallet_Drop{7}.X := 2 * cPart_Cur.Y + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{7}.Y := 2 * cPart_Cur.Y;
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 0;
        
        !Posicao 8
        cPallet_Drop{8}.X := 2 * cPart_Cur.Y + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{8}.Y := 3 * cPart_Cur.Y;
        cPallet_Drop{8}.Qtd_Box := 2;
        cPallet_Drop{8}.Rot := 0;
         
    ENDPROC
    
    PROC rSet_Layout_42()
        !Atribui valores maximos de caixas/camada e camadas/palete
        nBox_In_Layer := 14;
        nLayers_In_Pallet := 12;
        
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cPart_Cur.Y;
        cPallet_Drop{2}.Qtd_Box := 2;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := 2 * cPart_Cur.Y;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 0;
        
        !Posicao 4
        cPallet_Drop{4}.X := 0;
        cPallet_Drop{4}.Y := 3 * cPart_Cur.Y;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 0;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cPart_Cur.X) + cPart_Cur.Gap_1;
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := (2 * cPart_Cur.X) + (cPart_Cur.Y)+ (2 * cPart_Cur.Gap_1);
        cPallet_Drop{6}.Y := 0;
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 90;
        
        !Posicao 7
        cPallet_Drop{7}.X := (2 * cPart_Cur.X) + cPart_Cur.Gap_1;
        cPallet_Drop{7}.Y := (2 * cPart_Cur.X) + cPart_Cur.Gap_4;
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 90;
        
        !Posicao 8
        cPallet_Drop{8}.X := (2 * cPart_Cur.X) + (cPart_Cur.Y) + (2 * cPart_Cur.Gap_1);
        cPallet_Drop{8}.Y := (2 * cPart_Cur.X) + cPart_Cur.Gap_1;
        cPallet_Drop{8}.Qtd_Box := 2;
        cPallet_Drop{8}.Rot := 90;

    ENDPROC
    
ENDMODULE