MODULE IHM
    !*** Mostra na Teach Pendant eventos que geram parada no programa
    PROC rAlarm(num Alarm)
        <SMT>
    ENDPROC
    
    !*** Mostra na Teach Pendant eventos que que nao geram parada no programa
    PROC rMessage(num message)
        <SMT>
    ENDPROC
    
    !*** Pergunta se celula deve ser rejeitada
    PROC rMsg_Reset_Cell()
        <SMT>
    ENDPROC
    
    !*** Pergunta o procedimento para o final do ciclo
    PROC rMsg_End_Cicle()
        <SMT>
    ENDPROC
    
    !*** Pergunta quais produtos serao produzidos
    PROC rMsg_Setup_Part()
        <SMT>
    ENDPROC
ENDMODULE