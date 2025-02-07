BEGIN ~BAELOTHP~

IF ~  !InParty(Myself)
Global("KickedOut","LOCALS",1)
~ THEN BEGIN 0 // from:
  SAY #31935 /* ~I hope you're satisfied. Look at my clothing! Caked-on mud everywhere! Do you have any idea how many hairy, four-legged BEASTS I had to avoid while making my way here? Woofs, were they? Wharves? I don't know.~ [bab027] */
  IF ~~ THEN REPLY #31936 /* ~Hello to you too, Baeloth. I have need of you. Will you join me?~ */ GOTO 1
  IF ~~ THEN REPLY #31937 /* ~Well, keep it up. You're doing a good job so far.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31938 /* ~YES! At last, some protection! Protection for YOU, that is. I will join you. So that you can feel safe.~ [bab028] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
SetDialogue("BAELOTHJ")
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #31939 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [bab029] */
  IF ~~ THEN REPLY #31940 /* ~Sorry.~ */ EXIT
END

IF ~  !InParty(Myself)
Global("KickedOut","LOCALS",0)
~ THEN BEGIN 3 // from:
  SAY #31939 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [bab029] */
  IF ~~ THEN REPLY #31931 /* ~Make your way to the Friendly Arm Inn. It's not far, and if you hide outside the walls on the east side, you probably won't be discovered and killed. Probably.~ */ DO ~SetGlobal("KickedOut","LOCALS",1)
SetDialogue("BAELOTHP")
EscapeAreaMove("AR2300",4721,3045,S)
~ EXIT
  IF ~~ THEN REPLY #31932 /* ~On second thought, sure. Your whining convinced me.~ */ DO ~SetGlobal("KickedOut","LOCALS",0)
SetDialogue("BAELOTHJ")
JoinParty()
~ EXIT
END
