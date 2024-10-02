BEGIN 0DBAE25

IF ~Global("0DBAE25Summoned","GLOBAL",1)~ 0DBAE25_1
    SAY @5000 /* Well, blast it all! The bumbling boob who beckoned me has boorishly banjaxed a business deal beyond belief! What bothersome buffoonery is this? */
    IF ~~ THEN REPLY @5001 /* I didn't mean to interrupt anything. */ DO ~SetGlobal("0DBAE25Summoned","GLOBAL",2)~ GOTO 0DBAE25_2
END

IF ~~ 0DBAE25_2
    SAY @5002 /* Oh, what an unwitting interruption! I was on the cusp of crafting a cosmic covenant, a deal dripping with dreams of dynasties and dazzling displays of diabolical dominance. But no, you whimsically wrenched me away from the negotiating table. How inconvenient! */
    IF ~~ THEN REPLY @5003 /* I didn't know. Is there a way to salvage it? */ GOTO 0DBAE25_2_1
    IF ~~ THEN REPLY @5004 /* I don't have time for this... */ GOTO 0DBAE25_3_2
END

IF ~~ 0DBAE25_2_1
    SAY @5005 /* Salvage? Well, here we stand, a sorcerer shackled to circumstance. As much as it irks me to admit it, the cosmic current has cast us together. So, tell me, do you perchance have a need for the magnificence that is Baeloth the Entertainer? */
    IF ~~ THEN REPLY @5006 /* Yes. Join me. */ GOTO 0DBAE25_3
    IF ~~ THEN REPLY @5007 /* I'd rather you wait here for now. */ GOTO 0DBAE25_3_1
END

IF ~~ 0DBAE25_3
    SAY @5008 /* Ah, acknowledging the allure of my arcane artistry, are you? Very well, I shall shower your shabby squad with the splendor that is Baeloth the Bewitching. */
    IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ 0DBAE25_3_1
    SAY @5009 /* Wait here? You must be jesting! The audacity to confine Baeloth the Magnificent to a pocket of pretentious power! */
    IF ~~ THEN REPLY @5010 /* I will have need of you later Baeloth. You understand, right? */ GOTO 0DBAE25_3_2
END

IF ~~ 0DBAE25_3_2
    SAY @5011 /* This is an affront to arcane artistry! Fine, I'll bide my time in this minuscule magical mockery of a realm. But mark my words, when you realize the void my vaudevillian virtuosity leaves, you'll beg for the return of Baeloth the Entertainer. */
    IF ~~ DO ~MoveToPointNoInterrupt([1517.1517]) Face(1)~ EXIT
END

IF ~Global("0DBAE25Summoned","GLOBAL",2)~ 0DBAE25_5
    SAY @5012 /* Ah, finally acknowledging the almighty archmage abandoned in this abominable abyss! What took you so long, my pocket-placed patron? */
    IF ~~ THEN REPLY @5013 /* Join me, then. */ GOTO 0DBAE25_3
    IF ~~ THEN REPLY @5014 /* Wait a little longer. */ GOTO 0DBAE25_6
END 

IF ~~ 0DBAE25_6
    SAY @5015 /* Once more, the audacious adventurer dares to dismiss the divine dramatist, denying the delight of my drowish dynamism. An alliance, alas, devoid of my majestic mastery of the magical multitude. Very well, I shall begrudgingly bide my time in this banal bastion. */
    IF ~~ EXIT
END
