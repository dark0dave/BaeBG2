BEGIN 0DBAE25B

// Sarevok Banter
CHAIN
IF ~InParty("0DBAE25")
    See("0DBAE25")
    See("Sarevok")
    !StateCheck("Sarevok", CD_STATE_NOTVALID)
    !StateCheck("0DBAE25", CD_STATE_NOTVALID)
    Global("0DBAE25BSarevok1","GLOBAL",0)~
THEN BSAREV25 0DBAE25BSarevok1
@6000 /* Drow, the more I know you the more I wish I had found you sooner. */
DO ~SetGlobal("0DBAE25BSarevok1","GLOBAL",1)~
== 0DBAE25B @6001 /* Ooh! What wonderful words! */
== BSAREV25 @6002 /* I sought conquer and death on a massive scale to bring about the return of my true father - Bhaal, Lord of Murder. You sought to conquer nations to exploit their slaves for entertainment. */
== 0DBAE25B @6003 /* -Nations?- Nah. I was jolly enough with just surly slaves and gladiators glad to get another round to fight. */
== 0DBAE25B @6004 /* But since you mentioned it, the sweet song of conquest to erect an entertainment empire entices me! */
== BSAREV25 @6005 /* You may still get your wish. */
== 0DBAE25B @6006 /* Yes, yes. Nation against nation! Godling against godling! All of them battle boldly to determine who brings Daddy Bhaal back. */
== BSAREV25 @6007 /* Drow, you assume that -all- Bhaalspawn want this. */
== 0DBAE25B @6008 /* Is that not your nature? The nature of a dog is to love steaks, but it'll settle for bones so long as they keep its mouth busy. You Bhaalspawn want to -murder- each other, but may settle for something else - diplomacy, dancing, or drunkenness. */
== BSAREV25 @6009 /* Drow, you have a point. */
EXIT
