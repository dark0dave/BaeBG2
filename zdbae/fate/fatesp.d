EXTEND_TOP FATESP 6 #2
+ ~!Dead("ZDBAE") !InMyArea("ZDBAE") !Dead("ZDBAE25") !InMyArea("ZDBAE25") Global("ZDBAE25Summoned","GLOBAL",0)~ + ~Bring me Baeloth, the drow sorcerer.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
    Wait(2)
    CreateCreature("ZDBAE25",[1999.1228],0)
    SetGlobal("ZDBAE25Summoned","GLOBAL",1)~ GOTO 8
END
