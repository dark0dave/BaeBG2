BEGIN ZDBAE25P

IF ~Global("ZDBAE25KickedOut","GLOBAL",1)~ THEN BEGIN 0
  SAY @5016 /* ~I hope you're satisfied. Look at my clothing! Caked-on mud everywhere! Do you have any idea how many hairy, four-legged BEASTS I had to avoid while making my way here? Woofs, were they? Wharves? I don't know.~ */
  IF ~~ THEN REPLY @5017 /* ~Hello to you too, Baeloth. I have need of you. Will you join me?~ */ GOTO 1
  IF ~~ THEN REPLY @5018  /* ~Well, keep it up. You're doing a good job so far.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @5019 /* ~YES! At last, some protection! Protection for YOU, that is. I will join you. So that you can feel safe.~ */
  IF ~~ THEN DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5020 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ */
  IF ~~ THEN REPLY @5021 /* ~Wait here.~ */ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @5022 /* ~On second thought, sure. Your whining convinced me.~ */ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
END