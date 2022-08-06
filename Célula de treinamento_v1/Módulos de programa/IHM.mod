MODULE IHM
    !######################################
    !
    ! Este modulo contem apenas as rotinas 
    ! relacionadas aos uso de mensagens, alarmes, 
    ! e outros itens relacionados a interacao 
    ! com o usuario.
    !
    !######################################
    
    PROC rMensagem(num mensagem_1,num mensagem_2,num mensagem_3,num mensagem_4)
        
        ErrWrite \I,"Celula", sMensagens{mensagem_1} \RL2:=sMensagens{mensagem_2} \RL3:=sMensagens{mensagem_3} \RL4:=sMensagens{mensagem_4};
   
    ENDPROC
    
    PROC rMsg_Reset_Cell()
        TPErase;
        TPReadFK reg1,"Deseja reiniacar a celula?", "SIM",stEmpty,stEmpty,stEmpty,"NAO";
        
        IF reg1 = 1 rReset_Cell;
    ENDPROC
    
ENDMODULE