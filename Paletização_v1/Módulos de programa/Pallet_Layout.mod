MODULE Pallet_Layout
    
    !*** Caracteristicas/parametros inerentes a cada produto
    PROC rSet_Layer_1A()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := cProduct{cProcess_Seg.Product}.Y + nGap_2_Cur;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 2;
        cPallet_Drop{2}.Rot := 90;
        
        !Posicao 3
        cPallet_Drop{3}.X := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_2_Cur);
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 2;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := (3 * cProduct{cProcess_Seg.Product}.Y) + (3 * nGap_2_Cur);
        cPallet_Drop{4}.Y := 0;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := 0;
        cPallet_Drop{5}.Y := 2 * cProduct{cProcess_Seg.Product}.X;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 0;
        
        !Posicao 6
        cPallet_Drop{6}.X := (2 * cProduct{cProcess_Seg.Product}.X) + nGap_1_Cur;
        cPallet_Drop{6}.Y := 2 * cProduct{cProcess_Seg.Product}.X;
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 0;
    
    ENDPROC
    
    PROC rSet_Layer_1B()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := (2 * cProduct{cProcess_Seg.Product}.X)  + nGap_1_Cur;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 2;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cProduct{cProcess_Seg.Product}.Y + nGap_2_Cur;
        cPallet_Drop{4}.Y := cProduct{cProcess_Seg.Product}.Y ;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_2_Cur);
        cPallet_Drop{5}.Y := cProduct{cProcess_Seg.Product}.Y ;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := (3 * cProduct{cProcess_Seg.Product}.Y) + (3 * nGap_2_Cur);
        cPallet_Drop{6}.Y := cProduct{cProcess_Seg.Product}.Y ;
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 90;
        
    ENDPROC
    
    PROC rSet_Layer_2A()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 1;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cProduct{cProcess_Seg.Product}.X + nGap_3_Cur;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := cProduct{cProcess_Seg.Product}.Y + nGap_1_Cur;
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 2;
        cPallet_Drop{3}.Rot := 0;
        
        !Posicao 4
        cPallet_Drop{4}.X := cProduct{cProcess_Seg.Product}.X;
        cPallet_Drop{4}.Y := cProduct{cProcess_Seg.Product}.Y + nGap_3_Cur;
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := cProduct{cProcess_Seg.Product}.X + cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{5}.Y := cProduct{cProcess_Seg.Product}.Y + nGap_3_Cur;
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 0;
        
        !Posicao 6
        cPallet_Drop{6}.X := 0;
        cPallet_Drop{6}.Y := cProduct{cProcess_Seg.Product}.X + cProduct{cProcess_Seg.Product}.Y + (2 * nGap_3_Cur);
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 0;
        
        !Posicao 7
        cPallet_Drop{7}.X := (2 * cProduct{cProcess_Seg.Product}.X) + nGap_1_Cur;
        cPallet_Drop{7}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 90;
        
    ENDPROC
    
    PROC rSet_Layer_2B()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cProduct{cProcess_Seg.Product}.Y + nGap_3_Cur;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cProduct{cProcess_Seg.Product}.X;
        cPallet_Drop{4}.Y := cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cProduct{cProcess_Seg.Product}.X) + nGap_1_Cur;
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := cProduct{cProcess_Seg.Product}.X + cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{6}.Y := cProduct{cProcess_Seg.Product}.X + nGap_3_Cur;
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 0;
        
        !Posicao 7
        cPallet_Drop{7}.X := cProduct{cProcess_Seg.Product}.Y + nGap_1_Cur;
        cPallet_Drop{7}.Y := cProduct{cProcess_Seg.Product}.X + cProduct{cProcess_Seg.Product}.Y + (2 * nGap_3_Cur);
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 90;
        
    ENDPROC
    
    PROC rSet_Layer_3A()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 1;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := cProduct{cProcess_Seg.Product}.Y + nGap_1_Cur;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 90;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := cProduct{cProcess_Seg.Product}.X + nGap_3_Cur;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 0;
        
        !Posicao 4
        cPallet_Drop{4}.X := 0;
        cPallet_Drop{4}.Y := (2 * cProduct{cProcess_Seg.Product}.X) + (2 * nGap_3_Cur);
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 0;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cProduct{cProcess_Seg.Product}.X) + (2 * nGap_1_Cur);
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := cProduct{cProcess_Seg.Product}.X + nGap_1_Cur;
        cPallet_Drop{6}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 90;
        
        !Posicao 7
        cPallet_Drop{7}.X := cProduct{cProcess_Seg.Product}.X + cProduct{cProcess_Seg.Product}.Y + (2 * nGap_1_Cur);
        cPallet_Drop{7}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{7}.Qtd_Box := 1;
        cPallet_Drop{7}.Rot := 90;
        
        !Posicao 8
        cPallet_Drop{8}.X := (3 * cProduct{cProcess_Seg.Product}.Y) + (3 * nGap_1_Cur);
        cPallet_Drop{8}.Y := 0;
        cPallet_Drop{8}.Qtd_Box := 1;
        cPallet_Drop{8}.Rot := 0;
        
        !Posicao 9
        cPallet_Drop{9}.X := (3 * cProduct{cProcess_Seg.Product}.Y) + (3 * nGap_1_Cur);;
        cPallet_Drop{9}.Y := cProduct{cProcess_Seg.Product}.Y + nGap_3_Cur;
        cPallet_Drop{9}.Qtd_Box := 1;
        cPallet_Drop{9}.Rot := 0;
        
        !Posicao 10
        cPallet_Drop{10}.X := cProduct{cProcess_Seg.Product}.X + (2 * cProduct{cProcess_Seg.Product}.Y) + (3 * nGap_1_Cur);
        cPallet_Drop{10}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{10}.Qtd_Box := 1;
        cPallet_Drop{10}.Rot := 90;
    ENDPROC
    
    PROC rSet_Layer_3B()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 1;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cProduct{cProcess_Seg.Product}.Y + nGap_3_Cur;
        cPallet_Drop{2}.Qtd_Box := 1;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := cProduct{cProcess_Seg.Product}.X + nGap_1_Cur;
        cPallet_Drop{3}.Y := 0;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{4}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{4}.Qtd_Box := 1;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := cProduct{cProcess_Seg.Product}.Y + nGap_1_Cur;
        cPallet_Drop{5}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{5}.Qtd_Box := 1;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := cProduct{cProcess_Seg.Product}.X + (2 * cProduct{cProcess_Seg.Product}.Y);
        cPallet_Drop{6}.Y := 0;
        cPallet_Drop{6}.Qtd_Box := 1;
        cPallet_Drop{6}.Rot := 90;
        
        !Posicao 7
        cPallet_Drop{7}.X := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_1_Cur);
        cPallet_Drop{7}.Y := (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{7}.Qtd_Box := 1;
        cPallet_Drop{7}.Rot := 90;
        
        !Posicao 8
        cPallet_Drop{8}.X := cProduct{cProcess_Seg.Product}.X + (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_1_Cur);
        cPallet_Drop{8}.Y := 0;
        cPallet_Drop{8}.Qtd_Box := 1;
        cPallet_Drop{8}.Rot := 90;
        
        !Posicao 9
        cPallet_Drop{9}.X := (3 * cProduct{cProcess_Seg.Product}.Y) + (3 * nGap_1_Cur);
        cPallet_Drop{9}.Y := cProduct{cProcess_Seg.Product}.X + cProduct{cProcess_Seg.Product}.Y + nGap_3_Cur;
        cPallet_Drop{9}.Qtd_Box := 1;
        cPallet_Drop{9}.Rot := 0;
        
        !Posicao 10
        cPallet_Drop{10}.X := (3 * cProduct{cProcess_Seg.Product}.Y) + (3 * nGap_1_Cur);
        cPallet_Drop{10}.Y := cProduct{cProcess_Seg.Product}.X + (2 * cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_3_Cur);
        cPallet_Drop{10}.Qtd_Box := 1;
        cPallet_Drop{10}.Rot := 0;
    ENDPROC
    
    PROC rSet_Layer_4A()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 90;
        
        !Posicao 2
        cPallet_Drop{2}.X := cProduct{cProcess_Seg.Product}.Y + nGap_1_Cur;
        cPallet_Drop{2}.Y := 0;
        cPallet_Drop{2}.Qtd_Box := 2;
        cPallet_Drop{2}.Rot := 90;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := 2 * cProduct{cProcess_Seg.Product}.X + nGap_4_Cur;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 90;
        
        !Posicao 4
        cPallet_Drop{4}.X := cProduct{cProcess_Seg.Product}.Y + nGap_1_Cur;
        cPallet_Drop{4}.Y := 2 * cProduct{cProcess_Seg.Product}.X;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 90;
        
        !Posicao 5
        cPallet_Drop{5}.X := 2 * cProduct{cProcess_Seg.Product}.Y + (2 * nGap_1_Cur);
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 0;
        
        !Posicao 6
        cPallet_Drop{6}.X := 2 * cProduct{cProcess_Seg.Product}.Y + (2 * nGap_1_Cur);
        cPallet_Drop{6}.Y := cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 0;
        
        !Posicao 7
        cPallet_Drop{7}.X := 2 * cProduct{cProcess_Seg.Product}.Y + (2 * nGap_1_Cur);
        cPallet_Drop{7}.Y := 2 * cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 0;
        
        !Posicao 8
        cPallet_Drop{8}.X := 2 * cProduct{cProcess_Seg.Product}.Y + (2 * nGap_1_Cur);
        cPallet_Drop{8}.Y := 3 * cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{8}.Qtd_Box := 2;
        cPallet_Drop{8}.Rot := 0;
         
    ENDPROC
    
    PROC rSet_Layer_4B()
        !Posicao 1
        cPallet_Drop{1}.X := 0;
        cPallet_Drop{1}.Y := 0;
        cPallet_Drop{1}.Qtd_Box := 2;
        cPallet_Drop{1}.Rot := 0;
        
        !Posicao 2
        cPallet_Drop{2}.X := 0;
        cPallet_Drop{2}.Y := cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{2}.Qtd_Box := 2;
        cPallet_Drop{2}.Rot := 0;
        
        !Posicao 3
        cPallet_Drop{3}.X := 0;
        cPallet_Drop{3}.Y := 2 * cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{3}.Qtd_Box := 1;
        cPallet_Drop{3}.Rot := 0;
        
        !Posicao 4
        cPallet_Drop{4}.X := 0;
        cPallet_Drop{4}.Y := 3 * cProduct{cProcess_Seg.Product}.Y;
        cPallet_Drop{4}.Qtd_Box := 2;
        cPallet_Drop{4}.Rot := 0;
        
        !Posicao 5
        cPallet_Drop{5}.X := (2 * cProduct{cProcess_Seg.Product}.X) + nGap_1_Cur;
        cPallet_Drop{5}.Y := 0;
        cPallet_Drop{5}.Qtd_Box := 2;
        cPallet_Drop{5}.Rot := 90;
        
        !Posicao 6
        cPallet_Drop{6}.X := (2 * cProduct{cProcess_Seg.Product}.X) + (cProduct{cProcess_Seg.Product}.Y)+ (2 * nGap_1_Cur);
        cPallet_Drop{6}.Y := 0;
        cPallet_Drop{6}.Qtd_Box := 2;
        cPallet_Drop{6}.Rot := 90;
        
        !Posicao 7
        cPallet_Drop{7}.X := (2 * cProduct{cProcess_Seg.Product}.X) + nGap_1_Cur;
        cPallet_Drop{7}.Y := (2 * cProduct{cProcess_Seg.Product}.X) + nGap_4_Cur;
        cPallet_Drop{7}.Qtd_Box := 2;
        cPallet_Drop{7}.Rot := 90;
        
        !Posicao 8
        cPallet_Drop{8}.X := (2 * cProduct{cProcess_Seg.Product}.X) + (cProduct{cProcess_Seg.Product}.Y) + (2 * nGap_1_Cur);
        cPallet_Drop{8}.Y := (2 * cProduct{cProcess_Seg.Product}.X) + nGap_1_Cur;
        cPallet_Drop{8}.Qtd_Box := 2;
        cPallet_Drop{8}.Rot := 90;

    ENDPROC
    
ENDMODULE