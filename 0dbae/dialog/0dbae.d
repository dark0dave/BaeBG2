BEGIN 0DBAE

// Joining dialogue
IF ~Global("0DBAE_BEGIN","GLOBAL",0)~ THEN BEGIN 0DBAEI
  SAY @2000 /* This? Is this what passes for perverse entertainment, up on this plane? Pitiable! Poorly played! Pathetic! What a paltry pit fight. */
  IF ~~ THEN GOTO 0DBAE0
END

IF ~Global("0DBAE_BEGIN","GLOBAL",0)~ THEN BEGIN 0DBAE0
  SAY @2001 /* Well, well, well, what whimsical wonder do we witness here? Another face amidst the multitude of mundane mediocrity. You, my unwitting savior, stand before the ineffable Baeloth the Entertainer. */
  IF ~~ THEN REPLY @1001 /* ~Well met, I am <CHARNAME>.~ */ DO ~SetGlobal("0DBAE_BEGIN","GLOBAL",1)~ GOTO 0DBAE2
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY @1003 /* ~Baeloth! Do you remember me?~ */ DO ~SetGlobal("0DBAE_BEGIN","GLOBAL",1)~ GOTO 0DBAE3
  IF ~~ THEN REPLY @1011 /* ~I haven't the time for this!~ */ GOTO 0DBAEE
  IF ~~ THEN REPLY @1004 /* ~Die, drow!~ */ GOTO 0DBAE100
END

IF ~~ THEN BEGIN 0DBAEE
  SAY @2012 /* Oh, oh, OH! I see, can't stand the sight of me? */
  IF ~~ THEN EXIT
END

// Remember
IF ~~ THEN BEGIN 0DBAE3
  SAY @2003 /* Ah, absolutely! How could one ever forget a countenance as... delicately distinctive as yours? Regardless, rest assured that I would never disregard the delightful pleasure of your companionship, revelling in the glory that is, well, me. */
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY @1010 /* ~You should, Baeloth!  Don’t you recognize your former champion?~ */ GOTO 0DBAE4
  IF ~~ THEN REPLY @1005 /* ~You don't remember me at all do you.~ */ GOTO 0DBAE4
  IF ~Global("BA_BEGIN","GLOBAL",1) Global("BA_ATTACKED","LOCALS",1)~ THEN REPLY @1009 /* ~Travelling with me ended badly for you last time.~ */ GOTO 0DBAE4
END

IF ~~ THEN BEGIN 0DBAE4
  SAY @2004 /* My mirthful mate, let's not meander in minor matters. I am a dashing drow of discernment and delicious taste, indeed! */
  IF ~~ THEN GOTO 0DBAE2
END

IF ~~ THEN BEGIN 0DBAE2
  SAY @2002 /* Do you perceive these restricting walls, my unsuspecting companion? A brief setback, I assure you. I, Baeloth, am not one to be entangled for an extended duration. However, perchance, just perchance, you could hasten my exit through a petite, mutually advantageous arrangement? */
  IF ~~ THEN GOTO 0DBAE5
END

// Deal
IF ~~ THEN BEGIN 0DBAE5
  SAY @2005 /* Imagine this, my enterprising ally: You release me, and in return, I shall be an avant-garde avenger against the Red Wizards. Their downfall will be a magnum opus, a masterpiece magnificently managed by none other than me, Baeloth the Magnificent. Your role, petite yet pivotal, will be to partake and play a part in the uproarious opera of disorder and retribution. */
  IF ~~ THEN REPLY @1006 /* ~I accept this loose premise; let's hope your bark is as big as your bite.~ */ GOTO 0DBAE10
  IF ~~ THEN REPLY @1007 /* ~My trust in you is thin, Baeloth, but if releasing you means paving the way for the demise of the Red Wizards, then I'll agree for now.~ */ GOTO 0DBAE10
  IF ~~ THEN REPLY @1008 /* ~I won't release you. Stay in that cell and rot, for all I care.~ */ GOTO 0DBAE09
END

// Reject
IF ~~ THEN BEGIN 0DBAE09
  SAY @2009 /* Is this your parting present, then? Leaving me languishing thusly in this loathsome cell like a lowly miscreant? You'll rue the day you dared deliver such a dire destiny.*/
  IF ~~ DO ~SetGlobal("0DBAE_LEFTINCELL","GLOBAL",1)~ EXIT
END

// Accept
IF ~~ THEN BEGIN 0DBAE10
  SAY @2010 /* I discern a glimmer of intelligence in those eyes. Yes, yes, I perceive that you comprehend the worth of aligning yourself with magnificence. */
  IF ~~ THEN GOTO 0DBAE11
END

// Joins
IF ~~ THEN BEGIN 0DBAE11
  SAY @2011 /* Step spryly, my serendipitous sidekick! We've a spectacular show to splendidly stage, and the Red Wizards unwittingly waltz within our whimsical web. Oh, the poetic panorama of it all! They sought to stifle my spectacular self, but now they shall witness the wondrous weight of my wizardry! */
  IF ~~ DO ~SetGlobal("0DBAE_JOINED","GLOBAL",1)~ EXIT
  IF ~~ DO ~SetGlobal("0DBAEJOINXP","GLOBAL",1)~ EXIT
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

IF ~~ THEN BEGIN 0DBAE100
  SAY @50
  IF ~~ THEN DO ~
    SetGlobal("0DBAE_HOSTILE","GLOBAL",1)
    ChangeAIScript("OHMADD01",CLASS)
    Enemy()
  ~ EXIT
END
