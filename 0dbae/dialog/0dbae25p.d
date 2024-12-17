BEGIN 0DBAE25P

IF ~!InParty(Myself) Global("0DBAE25KickedOut","GLOBAL",1)~ THEN BEGIN 0
  SAY ~I hope you're satisfied. Look at my clothing! Caked-on mud everywhere! Do you have any idea how many hairy, four-legged BEASTS I had to avoid while making my way here? Woofs, were they? Wharves? I don't know.~ [bab027]
  IF ~~ THEN REPLY ~Hello to you too, Baeloth. I have need of you. Will you join me?~ GOTO 1
  IF ~~ THEN REPLY ~Well, keep it up. You're doing a good job so far.~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~YES! At last, some protection! Protection for YOU, that is. I will join you. So that you can feel safe.~ [bab028]
  IF ~~ THEN DO ~SetGlobal("0DBAE25KickedOut","GLOBAL",0) SetDialogue("0DBAE25J") JoinParty()~ EXIT
END

IF ~!InParty(Myself) Global("KickedOut","GLOBAL",0)~ THEN BEGIN 1
  SAY ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [bab029]
  IF ~~ THEN REPLY ~Make your way to the Friendly Arm Inn. It's not far, and if you hide outside the walls on the east side, you probably won't be discovered and killed. Probably.~ DO ~SetGlobal("0DBAE25KickedOut","LOCALS",1) SetDialogue("0DBAE25P") EscapeAreaMove("AR2300",4721,3045,S)~ EXIT
  IF ~~ THEN REPLY ~On second thought, sure. Your whining convinced me.~ DO ~SetGlobal("0DBAE25KickedOut","LOCALS",0) SetDialogue("0DBAE25J") JoinParty()~ EXIT
END

IF ~!InParty(Myself) Global("0DBAE25Summoned","GLOBAL",2)~ THEN BEGIN 2
    SAY @5012 /* Ah, finally acknowledging the almighty archmage abandoned in this abominable abyss! What took you so long, my pocket-placed patron? */
    IF ~~ THEN REPLY @5013 /* Join me, then. */ DO ~SetGlobal("0DBAE25Summoned","GLOBAL",3) JoinParty()~
    IF ~~ THEN REPLY @5014 /* Wait a little longer. */ GOTO 3
END

IF ~~ THEN BEGIN 3
    SAY @5015 /* Once more, the audacious adventurer dares to dismiss the divine dramatist, denying the delight of my drowish dynamism. An alliance, alas, devoid of my majestic mastery of the magical multitude. Very well, I shall begrudgingly bide my time in this banal bastion. */
    IF ~~ EXIT
END
