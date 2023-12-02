BEGIN BG2BAEB

CHAIN
IF ~InParty(Myself)
    See(Myself)
    !StateCheck("Aerie",CD_STATE_NOTVALID)
    !StateCheck("BG2BAE",CD_STATE_NOTVALID)
    Global("BG2BAEAerie1","GLOBAL",0)~ 
THEN BAERIE BG2BAEAerie1
~Baeloth, your spells pack a punch, but have you ever considered the havoc they might wreak on the weave?~
DO ~SetGlobal("BG2BAEAerie1","GLOBAL",1)~
== BG2BAEB ~Havoc, honeyed harpy? Bah! The only havoc I worry about is the insipid howls of the meek who can't appreciate the hypnotic hurricane of my magical histrionics. Havoc is for the humorless and the hapless.~
== BAERIE ~But shouldn't we be careful with our magic? It's a force that demands respect.~
== BG2BAEB ~Respect? Ridiculous ramblings! Magic is meant to be a raging river, not a quaint little rivulet. Carefulness is for the cautious and the colorless.~
== BAERIE ~I worry that unrestrained magic might spiral out of control. We should exercise some restraint.~
== BG2BAEB ~Restraint? Really, radiant raven? That's the refuge of the repressed and the ridiculously righteous. Unrestrained magic is a radiant riot, a resplendent revelry!~
== BAERIE ~I believe in using magic for good, to protect and aid others.~
== BG2BAEB ~Goodness, gracious gryphon! But tell me, tender thrush, wouldn't you wonder if the line between goodness and ghastliness gets gruesomely grayed by the grandeur of power?~
== BAERIE ~I don't think power has to corrupt. We can choose to use it responsibly.~
== BG2BAEB ~Ah, the adorable aspirations of an angelic acolyte. But brace yourself, bewitching bird, for power will pirouette into the palms of those who paint with its pulsating palette.~
EXIT
