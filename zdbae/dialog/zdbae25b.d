BEGIN ZDBAE25B

// Sarevok Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    !StateCheck("Sarevok",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAE25BSARV1","GLOBAL",0)~
THEN BSAREV25 ZDBAE25BSARV1
@6000 /* Drow, the more I know you the more I wish I had found you sooner. */
DO ~SetGlobal("ZDBAE25BSARV1","GLOBAL",1)~
== ZDBAE25B @6001 /* Ooh! What wonderful words! */
== BSAREV25 @6002 /* I sought conquer and death on a massive scale to bring about the return of my true father - Bhaal, Lord of Murder. You sought to conquer nations to exploit their slaves for entertainment. */
== ZDBAE25B @6003 /* -Nations?- Nah. I was jolly enough with just surly slaves and gladiators glad to get another round to fight. */
== ZDBAE25B @6004 /* But since you mentioned it, the sweet song of conquest to erect an entertainment empire entices me! */
== BSAREV25 @6005 /* You may still get your wish. */
== ZDBAE25B @6006 /* Yes, yes. Nation against nation! Godling against godling! All of them battle boldly to determine who brings Daddy Bhaal back. */
== BSAREV25 @6007 /* Drow, you assume that -all- Bhaalspawn want this. */
== ZDBAE25B @6008 /* Is that not your nature? The nature of a dog is to love steaks, but it'll settle for bones so long as they keep its mouth busy. You Bhaalspawn want to -murder- each other, but may settle for something else - diplomacy, dancing, or drunkenness. */
== BSAREV25 @6009 /* Drow, you have a point. */
EXIT

// Jan Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    !StateCheck("JAN",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAE25BJAN251","GLOBAL",0)~
THEN ZDBAE25B ZDBAE25BJAN251
~Don't think I've not noticed, Jan, your needles, your tall tales are all tediously, trite. Where's the frill, furbelow, the flourish?~
DO ~SetGlobal("ZDBAE25BJAN251","GLOBAL",1)~
== BJAN25 ~That is because all my stories are true. Every last one of them! I once took the ferry to Waterdeep standing next to a faerie. She had noticed the turnip I wore on my belt, the fashion at the time you see, and she gave me...~
== ZDBAE25B ~Oohoohoohoo, I've heard this one before! Although it was a dour dull dwarf instead of a fickle faerie. You have
become boringly predictable. I put it to you, that I am prescient and precise in predicting where your prose shall prod to next! Prepare
yourself, next, for prudently prophecies.~
== BJAN25 ~Predicting the future? Then, I should introduce you to my third—no, was it fourth?—let's say distant cousin once removed on my mother's side, an elven bard named Lotahe. See, she travelled far and wide to places elves never ventured before. On her travels, she met a Treant, by name of Olabthe, whose garden was full of radishes. It was love at first sight. As a gesture of their love, they would enter the most radiant radish into the yearly ruddy radish festival.~
== ZDBAE25B ~Radiant ruddy radishes? Loathe, Olabthe? Am I to believe their brothers were Tholae, Alboeth, and perhaps even Bolaeth? I have pierced your provocative pastishe of my name and deduced the 'truth' of your story my good gnome.~
== BJAN25 ~Hrmph. I knew you were a spoiled sport.~
== ZDBAE25B ~I believe I am now in the lead, of our little game. Step spryly now, my light-skinned Svirfneblin.~
EXIT
