// Pai'Na

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    See("C0Paina")
    InParty("C0Paina")
    !StateCheck("C0Paina",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAEC0Paina1","GLOBAL",0)~
THEN ZDBAEB ZDBAEC0Paina1
~<Charname> you won't be keeping that in the party will you? I have a phobia of spiders.~
DO ~SetGlobal("ZDBAEC0Paina1","GLOBAL",1)~
== C0Paina ~~
== ZDBAEB ~~
EXIT
