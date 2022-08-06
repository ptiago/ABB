MODULE Drive
    !*** Liga garra
    PROC rTON_Vacuum_Gripper()
        SetDO DO_003_TON_VACUUM,1;
        Reset DO_004_TOF_VACUUM;
    ENDPROC
    
    !*** Desliga garra
    PROC rTOFF_Vacuum_Gripper()
        SetDO DO_004_TOF_VACUUM,1;
        Reset DO_003_TON_VACUUM;
    ENDPROC
    
ENDMODULE