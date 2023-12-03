EXTEND_TOP FATESP 6 #2
+ ~!Dead("BG2BAE") !InMyArea("BG2BAE") !Dead("BG2BAE25") !InMyArea("BG2BAE25") Global("BG2BAE25Summoned","GLOBAL",0)~ + ~Bring me Baeloth, the drow sorcerer.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
    Wait(2) 
    CreateCreature("BG2BAE25",[1999.1228],0)
    SetGlobal("BG2BAE25Summoned","GLOBAL",1)~ GOTO 8
END
