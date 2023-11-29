BEGIN BG2BAE

// Joining dialogue
IF ~Global("BG2BA_BEGIN","GLOBAL",0)~ THEN BEGIN BG2BAE0
  SAY @2001 /* Ah, greetings, surface-dweller. Your timing is impeccable, for you stand in the presence of the illustrious Baeloth Barrityl, master of the arcane and entertainer extraordinaire. */
  IF ~~ DO ~SetGlobal("BG2BA_BEGIN","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @1001 /* ~Well met, I am <CHARNAME>.~ */ GOTO BG2BAE2
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY @1003 /* ~Baeloth! Do you remember me?~ */ GOTO BG2BAE3
  IF ~~ THEN REPLY @1004 /* ~Die, drow!~ */ GOTO BG2BAE100
END

// Remember
IF ~~ THEN BEGIN BG2BAE3
  SAY @2003 /* Ah, yes, naturally! How could one possibly forget a face as... discreetly memorable as yours? In any case, rest assured that I would never overlook the distinct pleasure of your company, reveling in the glory that is, well, me. */
  IF ~~ THEN REPLY @1005 /* ~You don't remember me at all do you.~ */ GOTO BG2BAE4
END

IF ~~ THEN BEGIN BG2BAE4
  SAY @2004 /* My dear friend, let's not squabble over trifles. I am a man well, a drow of refinement and discerning taste. */
  IF ~~ THEN GOTO BG2BAE2
END

IF ~~ THEN BEGIN BG2BAE2
  SAY @2002 /* Do you see these confining walls, my unwitting companion? A temporary setback, I assure you. I, Baeloth, am not one to be ensnared for long. But perhaps, just perhaps, you could expedite my exit with a small, mutually beneficial arrangement? */
  IF ~~ THEN GOTO BG2BAE5
END

// Deal
IF ~~ THEN BEGIN BG2BAE5
  SAY @2005 /* Picture this, my enterprising ally: You set me free, and in return, I shall be an instrument of vengeance against the Red Wizards. Their demise will be a magnum opus, a masterpiece conducted by none other than I, Baeloth the Magnificent. Your role, small though modest, will be crucial, as you witness and contribute to the unfolding symphony of chaos and retribution. */
  IF ~~ THEN REPLY @1006 /* ~I accept this loose premise; let's hope your bark is as big as your bite.~ */ GOTO BG2BAE10
  IF ~~ THEN REPLY @1007 /* ~My trust in you is thin, Baeloth, but if releasing you means paving the way for the demise of the Red Wizards, then I'll agree for now.~ */ GOTO BG2BAE10
  IF ~~ THEN REPLY @1008 /* ~I won't release you. Stay in that cell and rot, for all I care.~ */ GOTO BG2BAE09
END

// Reject
IF ~~ THEN BEGIN BG2BAE09
  SAY @2009 /* This is your parting gift, then? Leaving me in this cell like a common criminal? You'll rue the day you chose such a fate.*/
  IF ~~ DO ~SetGlobal("BG2BAE_LEFTINCELL","GLOBAL",1)~ EXIT
END

// Accept
IF ~~ THEN BEGIN BG2BAE10
  SAY @2010 /* I sense a spark of intelligence in those eyes. Yes, yes, I can see you understand the value of aligning yourself with greatness. */
  IF ~~ THEN GOTO BG2BAE11
END

// Joins
IF ~~ THEN BEGIN BG2BAE11
  SAY @2011 /* Step lively, my newfound ally! We have a grand spectacle to orchestrate, and the Red Wizards are the unwitting audience. Oh, the poetic justice of it all they thought to imprison me, but now they shall witness the true extent of my power.*/
  IF ~~ DO ~SetGlobal("BG2BAE_JOINED","GLOBAL",1)~ EXIT
  IF ~~ DO ~SetGlobal("BG2BAEJOINXP","GLOBAL",1)~ EXIT
  IF ~~ DO ~JoinParty()~ EXIT
END

// BEGIN @5001
// // Line 1 - Player Frees Baeloth
//   ~Ah, the sweet scent of freedom! You've done the unthinkable, surface-dweller. I, Baeloth Barrityl, am in your debt.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_1","GLOBAL",1)~
// END

// BEGIN @5002
// // Line 2 - Player Suggests a Deal
//   ~A deal, you say? I'm not one to bend to the whims of others, but I find myself intrigued. Speak your terms, and let's see if your offer aligns with my greatness.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_2","GLOBAL",1)~
// END

// BEGIN @5003
// // Line 3 - Player Explains the Deal
//   ~You wish for my services? Interesting. Very well, surface-dweller, but know this: my loyalty is fickle. Cross me, and you'll regret the day you released Baeloth Barrityl.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_3","GLOBAL",1)~
// END

// BEGIN @5004
// // Line 4 - Player Accepts the Terms
//   ~Wise decision. I shall lend my talents to your cause, for now. But do not mistake my compliance for servitude. I serve Baeloth, and Baeloth alone.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_4","GLOBAL",1)~
// END

// BEGIN @5005
// // Line 5 - Player Rejects the Deal
//   ~Your loss, surface-dweller. Freedom is sweet, but the chance to bask in the brilliance of Baeloth Barrityl is a rare opportunity indeed.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_5","GLOBAL",1)~
// END

// BEGIN @5006
// // Line 6 - Player Attempts to Bargain Further
//   ~Ah, trying to wring more from me? Bold, I'll give you that. My freedom comes at a price, and that price is paid. Push your luck, and you may find it running thin.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_6","GLOBAL",1)~
// END

// BEGIN @5007
// // Line 7 - Player Asks About Baeloth's Intentions
//   ~Intentions? Surface-dweller, I'm a man of mystery. Perhaps I'm here to aid you, or perhaps I'm here to weave my own destiny. Only time will reveal my true purpose.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_7","GLOBAL",1)~
// END

// BEGIN @5008
// // Line 8 - Player Thanks Baeloth
//   ~Thanks? Save your gratitude for someone less magnificent than myself. Now, let us venture forth. The world awaits, and Baeloth's presence shall not go unnoticed.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Freed_Line_8","GLOBAL",1)~
// END

// BEGIN @3003
// // Line 8
//   ~It seems you've decided to part ways with the inimitable Baeloth Barrityl. A decision you'll come to regret, mark my words.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Left_Line_8","GLOBAL",1)~
// END

IF ~~ THEN BEGIN BG2BAE100
  SAY ~Oh, COME ON!~
  IF ~~ THEN DO ~
    SetGlobal("BG2BAE_HOSTILE","GLOBAL",1)
    ChangeAIScript("OHMADD01",CLASS)
    Enemy()
  ~ EXIT
END
