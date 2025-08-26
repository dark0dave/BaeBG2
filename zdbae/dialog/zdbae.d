BEGIN ZDBAE

// Joining dialogue
IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_BEGIN","GLOBAL",0) Global("ZDBAE_SHUTUP","GLOBAL",0)~ THEN BEGIN ZDBAE1
  SAY @2002 /* Well, well, well, what whimsical wonder do we witness here? Another face amidst the multitude of mundane mediocrity. You, stand before the ineffable Baeloth the Entertainer. */
  IF ~~ THEN REPLY @1001 /* Well met, I am <CHARNAME>. */ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE2
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY @1003 /* Baeloth! Do you remember me? */ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE3
  IF ~~ THEN REPLY @1004 /* Die, drow! */ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1) SetGlobal("ZDBAE_REVEAL","GLOBAL",1)~ GOTO ZDBAE100
  IF ~~ THEN REPLY @1011 /* Whatever mischief you're initiating, I want no part in it. */ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1) SetGlobal("ZDBAE_SHUTUP","GLOBAL",1)~ GOTO ZDBAEFU
END

IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_BEGIN","GLOBAL",1) Global("ZDBAE_SHUTUP","GLOBAL",1)~ THEN BEGIN ZDBAES
  SAY @6 /* Eh? What do YOU want?~ [ZDBAEF] */
  IF ~~ THEN REPLY @1001 /* Well met, I am <CHARNAME>. */ GOTO ZDBAE2
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY @1003 /* Baeloth! Do you remember me? */ GOTO ZDBAE3
  IF ~~ THEN REPLY @1017 /* I want you to die, drow! */ DO ~SetGlobal("ZDBAE_REVEAL","GLOBAL",1)~ GOTO ZDBAE100
  IF ~~ THEN REPLY @1015 /* I am not interested in your dog and pony show, drow. */ GOTO ZDBAEC
END

// Confused
IF ~~ BEGIN ZDBAEC
  SAY @2015 /* But, but, my equine and lupus burlesque pageant draws distinguished Drow from all over ... nevermind. In any event, should you reconsider your ridiculous refrain, I'll remain here. */
  IF ~~ THEN EXIT
END

// Hello
IF ~~ THEN BEGIN ZDBAE2
  SAY @2014 /* Is this what passes for perverse entertainment? Pitiable! Poorly played! Pathetic! What a paltry pit fight. */
  IF ~~ THEN REPLY @1008 /* If it's real entertainment you're seeking, perhaps you'll join my party instead? */ GOTO ZDBAE5
  IF ~~ THEN REPLY @1016 /* I am not interested your entertainment. */ DO ~SetGlobal("ZDBAE_SHUTUP","GLOBAL",1)~ GOTO ZDBAEFU
END

IF ~~ THEN BEGIN ZDBAEFU
  SAY @10102 /* Your loss, I assure you! */
  IF ~~ THEN EXIT
END

// Remember
IF ~~ THEN BEGIN ZDBAE3
  SAY @2003 /* Ah, absolutely! How could one ever forget a countenance as... delicately distinctive as yours? Regardless, rest assured that I would never disregard the delightful pleasure of your companionship, revelling in the glory that is, well... me. */
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY @1010 /* You should, Baeloth! Don’t you recognize your former champion? */ GOTO ZDBAE4
  IF ~~ THEN REPLY @1005 /* You don't remember me at all do you. */ GOTO ZDBAE4
END

IF ~~ THEN BEGIN ZDBAE4
  SAY @2004 /* My mirthful mate, let's not meander in minor matters. I am a dashing drow of discernment and delicious taste, indeed! */
  IF ~~ THEN REPLY @1008 /* If you want real entertainment, Baeloth, perhaps you should join my party instead? */ GOTO ZDBAE5
END

// Reject
IF ~~ THEN BEGIN ZDBAE5
  SAY @2005 /* No, no, no. I wish for splendour and spectacle. Not parading around about in the public housing districts, with... What did you say your name was again? No, you shall bear witness to my new atmospheric arena. */
  IF ~~ THEN GOTO ZDBAE7
END

// Reveal
IF ~~ THEN BEGIN ZDBAE7
  SAY @2007 /* Behold! Your ENTERTAINER! */
  IF ~~ THEN DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",2) SetGlobal("ZDBAE_REVEAL","GLOBAL",1)~ EXIT
END

// Rescue
IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_REVEAL","GLOBAL",2)~ THEN BEGIN ZDBAE8
  SAY @2009 /* Upon further reflection, I reconsider. I shall join your party of plenty after all. These misguided masses seem rather misinformed, don't you think? Let us be off, before Baeloth the Brilliant becomes Baeloth the Bludgeoned. */
  IF ~~ THEN REPLY @1006 /* I accept this loose premise; let's hope your bark is as big as your bite. */ GOTO ZDBAE09
  IF ~~ THEN REPLY @1012 /* I think I'd be more "entertained" by watching what these good people do to you! */ GOTO ZDBAE12
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY @1007 /* My trust in you is thin, Baeloth, but if having you means another spellcaster at my side, then I'll agree for now. */ GOTO ZDBAE09
  IF ~Global("BA_ATTACKED","LOCALS",1)~ THEN REPLY @1009 /* Travelling with me ended badly for you last time. */ GOTO ZDBAE10
END

// Accept
IF ~~ THEN BEGIN ZDBAE09
  SAY @2010 /* I sense the discerning glimmer of intelligence in those eyes. Yes, I can perceive your comprehension at my pernicious predicament. I would most heartily agree to aligning myself with your magnificence. */
  IF ~~ THEN GOTO ZDBAE11
END

// Uncertain
IF ~~ THEN BEGIN ZDBAE10
  SAY @2013 /* It would be beneath you to so fervently fopp over a grudge for my erstwhile employment. Let bygones be bygones, as they say, Hmm? */
  IF ~~ THEN REPLY @1007 /* My trust in you is thin, Baeloth, but if having you means another spellcaster at my side, then I'll agree for now. */ GOTO ZDBAE09
  IF ~~ THEN REPLY @1014 /* 'Oh Baeloth, bygones are not bygone.' Lets see what the misguided masses do to you now! */ GOTO ZDBAE12
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY @1013 /* There is no forgetting what you did to me I am afraid! Lets see some "entertainment". */ GOTO ZDBAE12
END

// Joins
IF ~~ THEN BEGIN ZDBAE11
  SAY @2011 /* Step spryly, my serendipitous sidekick! We've a spectacular show to splendidly stage, and the unintelligent will unwittingly waltz within our whimsical web. Oh, the poetic panorama of it all! They sought to stifle my spectacular self, but now they shall witness the wondrous weight of my wizardry! */
  IF ~~ THEN DO ~SetGlobal("ZDBAE_JOINED","GLOBAL",1)~ EXIT
END

// Exit
IF ~~ THEN BEGIN ZDBAE12
  SAY @2013 /* Is this your parting present, then? Leaving me languishing thusly in this loathsome stand like some lowly miscreant? You'll rue the day you dared deliver such a dire destiny. */
  IF ~~ THEN GOTO ZDBAE100
END

IF ~~ THEN BEGIN ZDBAE100
  SAY @50 /* Oh, COME ON! */
  IF ~~ THEN DO ~
    SetGlobal("ZDBAE_HOSTILE","GLOBAL",1)
    ActionOverride("ZDBAE",ChangeAIScript("mage18c",CLASS))
    Enemy()~ EXIT
END

// Copper Coronet (AR0406)
// Response: If I may have your attention once again, gentlefolk of Athkatla! Lehtinan is proud to provide for your amusement once again! Bring your attention to the pit as we see two combatants fighting for their very lives!
INTERJECT ANNO1 0 ZDBAEINTRO0
  == ZDBAE IF ~~ THEN
  @4050 /* Oohoohoohoo! This should be good! */
END ANNO1 1
