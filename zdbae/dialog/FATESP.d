EXTEND_TOP FATESP 6 #2
+ ~!Dead("ZDBAE") !InMyArea("ZDBAE") Global("ZDBAESummoned","GLOBAL",0)~ + ~Bring me Baeloth, the drow sorcerer.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("ZDBAE",[1999.1228],0) 
SetGlobal("ZDBAESummoned","GLOBAL",1)~ GOTO 8
END
