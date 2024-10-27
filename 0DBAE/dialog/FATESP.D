EXTEND_TOP FATESP 6 #2
+ ~!Dead("0DBAE") !InMyArea("0DBAE") !Dead("0DBAE25") !InMyArea("0DBAE25") Global("0DBAE25Summoned","GLOBAL",0)~ + @5999
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
    Wait(2)
    CreateCreature("0DBAE25",[1999.1228],0)
    SetGlobal("0DBAE25Summoned","GLOBAL",1)~ GOTO 8
END
