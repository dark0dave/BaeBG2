BEGIN BG2BAE25B

// Sarevok Banter
CHAIN
IF ~InParty("BG2BAE25B")
    See("BG2BAE25B")
    See("Sarevok")
    !StateCheck("Sarevok",STATE_SLEEPING)
    !StateCheck("BG2BAE25B",STATE_SLEEPING)
    Global("BG2BAE25BSarevok1","GLOBAL",0)~
THEN BSAREV25 BG2BAE25BSarevok1
~Drow, the more I know you the more I wish I had found you sooner.~
DO ~SetGlobal("BG2BAE25BAerie1","GLOBAL",1)~
== BG2BAE25B ~Ooh! What wonderful words!~
== BSAREV25 ~I sought conquer and death on a massive scale to bring about the return of my true father - Bhaal, Lord of Murder. You sought to conquer nations to exploit their slaves for entertainment.~
== BG2BAE25B ~-Nations?- Nah. I was jolly enough with just surly slaves and gladiators glad to get another round to fight.~
== BG2BAE25B ~But since you mentioned it, the sweet song of conquest to erect an entertainment empire entices me!~
== BSAREV25 ~You may still get your wish.~
== BG2BAE25B ~Yes, yes. Nation against nation! Godling against godling! All of them battle boldly to determine who brings Daddy Bhaal back.~
== BSAREV25 ~Drow, you assume that -all- Bhaalspawn want this.~
== BG2BAE25B ~Is that not your nature? The nature of a dog is to love steaks, but it'll settle for bones so long as they keep its mouth busy. You Bhaalspawn want to -murder- each other, but may settle for something else - diplomacy, dancing, or drunkenness.~
== BSAREV25 ~Drow, you have a point.~
EXIT
