BEGIN ZDBAEP

// Kickout Dialogue
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "0")~ THEN BEGIN ZDBAEJ1
  SAY @5020 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [ZDBAE52] */
  IF ~~ THEN REPLY @1498 /* I don't know what I was thinking. My senses took flight! They vanished and were vagrant! */  DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @5010 /* I will have need of you later Baeloth. You understand, right? */ DO ~SetGlobal("ZDBAE_LEFT", "GLOBAL", "1")~ EXIT
END

// Rejoin
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "1")~ THEN BEGIN ZDBAEJ2
  SAY @5016 /* ~I hope you're satisfied. Look at my clothing! Caked-on mud everywhere! Do you have any idea how many hairy, four-legged BEASTS I had to avoid while making my way here? Woofs, were they? Wharves? I don't know.~ [ZDBAE50] */
  IF ~~ THEN REPLY @5017 /* ~Hello to you too, Baeloth. I have need of you. Will you join me?~ */ GOTO ZDBAEJ3
  IF ~~ THEN REPLY @5018  /* ~Well, keep it up. You're doing a good job so far.~ */ EXIT
END

// Join
IF ~~ THEN BEGIN ZDBAEJ3
  SAY @5019 /* ~YES! At last, some protection! Protection for YOU, that is. I will join you. So that you can feel safe.~ */
  IF ~~ THEN DO ~SetGlobal("ZDBAE_LEFT","GLOBAL",0) JoinParty()~ EXIT
END

// Spellhold Asylum - Exterior (AR1500)
IF ~AreaCheck("AR1500")
    Global("ZDBAESpellhold","GLOBAL",0)~
THEN BEGIN ZDBAESpellhold
  SAY @4000 /* An arcane asylum awaits? Expect no easy egress from there after entry! */
  IF ~~ THEN REPLY @4001 /* Feeling nervous, Baeloth? */ DO ~SetGlobal("ZDBAESpellhold","GLOBAL", 1)~ GOTO ZDBAESpellhold1
END

IF ~~ THEN BEGIN ZDBAESpellhold1
  SAY @4002 /* I smell the spell components from here. It's like home in the worst of ways! */
  IF ~~ THEN REPLY @3372 /* What do you mean, Baeloth? */ GOTO ZDBAESpellhold2
END

IF ~~ THEN BEGIN ZDBAESpellhold2
  SAY @4003 /* Trial, tribulation, and torment from some talented taskmaster that is -not- yours truly! Only agony awaits us within! */
  IF ~~ THEN REPLY @4004 /* But my companion Imoen is in there! */ GOTO ZDBAESpellhold3
END

IF ~~ THEN BEGIN ZDBAESpellhold3
  SAY @4005 /* Yes, yes. Your childhood cohort was captured as a contrivance to ensnare you. */
  IF ~~ THEN REPLY @4006 /* Time to go, Baeloth. */ EXIT
END
