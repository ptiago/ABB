MODULE Check_Points
    FUNC bool fCP_1()

!        !Prioridade 1
!        IF fProc_Cond_1131() THEN
!            nProcDestino:=1131;

!            !Prioridade 2   
!        ELSEIF fProc_Cond_1231() THEN
!            nProcDestino:=1231;

!            !Prioridade 3
!        ELSEIF fProc_Cond_1331() THEN
!            nProcDestino:=1331;

!            !Prioridade 4
!        ELSEIF fProc_Cond_1431() THEN
!            nProcDestino:=1431;

!            !Prioridade 5
!        ELSE
!            nProcDestino:=0;
!        ENDIF

!        !Executa a rotina de destino
!        CallByVar "rProcess_",nProcDestino;

    ENDFUNC

    FUNC bool fCP_2()

!        !Prioridade 1
!        IF fProc_Cond_2111() THEN
!            nProcDestino:=2111;

!        !Prioridade 2   
!        ELSEIF fProc_Cond_2121() THEN
!            nProcDestino:=2121;

!        !Prioridade 3
!        ELSEIF fProc_Cond_2211() THEN
!            nProcDestino:=2211;

!        !Prioridade 4
!        ELSEIF fProc_Cond_2221() THEN
!            nProcDestino:=2221;

!        !Prioridade 5
!        ELSEIF fProc_Cond_2311() THEN
!            nProcDestino:=2311;

!        !Prioridade 6
!        ELSEIF fProc_Cond_2321() THEN
!            nProcDestino:=2321;

!        !Prioridade 7
!        ELSEIF fProc_Cond_2411() THEN
!            nProcDestino:=2411;

!        !Prioridade 8
!        ELSEIF fProc_Cond_2421() THEN
!            nProcDestino:=2421;

!        ELSE
!            !rAlarme
!        ENDIF

!        !Executa a rotina de destino
!        CallByVar "rProcess_",nProcDestino;

    ENDFUNC

ENDMODULE