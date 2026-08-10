BEGIN ZDBAE

// Joining dialogue
IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_BEGIN","GLOBAL",0) Global("ZDBAE_SHUTUP","GLOBAL",0)~ THEN BEGIN ZDBAE1
  SAY ~Well, well, well, what whimsical wonder do we witness here? Another face amidst the multitude of mundane mediocrity. You stand before the ineffable Baeloth the Entertainer.~
  IF ~~ THEN REPLY ~Well met, I am <CHARNAME>.~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE2
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY ~Baeloth, we travelled together before. Surely you remember me?~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE3
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY ~If it isn't my least favorite megalomaniac. Don't you remember me, drow?~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE3
  IF ~~ THEN REPLY ~Whatever mischief you're planning, I'll play no part in it.~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1) SetGlobal("ZDBAE_SHUTUP","GLOBAL",1)~ GOTO ZDBAEFU
END

IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_BEGIN","GLOBAL",1) Global("ZDBAE_SHUTUP","GLOBAL",1)~ THEN BEGIN ZDBAES
  SAY ~Eh? What do YOU want?~ [zdbaef]
  IF ~~ THEN REPLY ~I could use your skills. Perhaps you'd consider joining me?~ GOTO ZDBAE5
  IF ~~ THEN REPLY ~I want you to die, drow!~ DO ~SetGlobal("ZDBAE_REVEAL","GLOBAL",1)~ GOTO ZDBAE100
  IF ~~ THEN REPLY ~I am not interested in your dog and pony show.~ GOTO ZDBAEC
END

// Confused
IF ~~ BEGIN ZDBAEC
  SAY ~But, but - my equine-and-lupus burlesque pageant draws distinguished drow from all over! In any event, should you tire of these tedious refusals, I shall remain here.~
  IF ~~ THEN EXIT
END

// Hello
IF ~~ THEN BEGIN ZDBAE2
  SAY ~<CHARNAME>, tell me, is this what passes for perverse entertainment? Pitiful! Poorly played! Pathetic! What a paltry pit fight.~
  IF ~~ THEN REPLY ~If you want real entertainment, perhaps you'll consider joining me?~ GOTO ZDBAE5
  IF ~~ THEN REPLY ~I've no patience for this prattle.~ DO ~SetGlobal("ZDBAE_SHUTUP","GLOBAL",1)~ GOTO ZDBAEFU
END

IF ~~ THEN BEGIN ZDBAEFU
  SAY ~Your loss, I assure you!~
  IF ~~ THEN EXIT
END

// Remember
IF ~~ THEN BEGIN ZDBAE3
  SAY~Ah, absolutely! How could one forget a countenance as... delicately distinctive as yours? Regardless, rest assured that I would never disregard the delightful pleasure of your company, revelling in the glory that is, well... me.~
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY ~You ought to remember. After all, I am your former champion.~ GOTO ZDBAE4
  IF ~~ THEN REPLY ~You don't remember me at all, do you?~ GOTO ZDBAE4
END

IF ~~ THEN BEGIN ZDBAE4
  SAY ~My mirthful mate, let's not meander over minor matters. I am a dashing drow of discernment and delicious taste indeed!~
  IF ~~ THEN REPLY ~I suppose your skills may be useful. Perhaps you'll consider joining me?~ GOTO ZDBAE5
  IF ~~ THEN REPLY ~I don't need your company, Baeloth.~ GOTO ZDBAEFU
END

// Reject
IF ~~ THEN BEGIN ZDBAE5
  SAY ~No, no, no. I crave for splendor and spectacle. Not cavorting amongst the common rabble with...What did you say your name was again? Instead, you shall bear witness as this arena falls under my dazzling dominion!~
  IF ~~ THEN GOTO ZDBAE7
END

// Reveal
IF ~~ THEN BEGIN ZDBAE7
  SAY ~Behold! Your ENTERTAINER!~
  IF ~~ THEN DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",2) SetGlobal("ZDBAE_REVEAL","GLOBAL",1)~ EXIT
END

// Rescue
IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_REVEAL","GLOBAL",2)~ THEN BEGIN ZDBAE8
  SAY ~Upon further reflection, I reconsider. I shall join your party of plenty after all. These misguided masses seem rather misinformed, don't you think? Let us be off, before Baeloth the Brilliant becomes Baeloth the Bludgeoned.~
  IF ~~ THEN REPLY ~I accept this loose premise; let's hope your bark is as big as your bite.~ GOTO ZDBAE11
  IF ~~ THEN REPLY ~I think I'd be better entertained by watching what these people do to you.~ GOTO ZDBAE100
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY ~My trust in you is thin, but I'll suffer your company for your spells.~ GOTO ZDBAE11
  IF ~Global("BA_ATTACKED","LOCALS",1)~ THEN REPLY ~Our last travels together ended badly for you.~ GOTO ZDBAE10
END

// Uncertain
IF ~~ THEN BEGIN ZDBAE10
  SAY~Let bygones be bygones, as they say, hmm?~
  IF ~~ THEN REPLY ~My trust in you is thin, but I'll suffer your company for your spells.~ GOTO ZDBAE11
  IF ~~ THEN REPLY ~I think I'd be better entertained by watching what these people do to you.~ GOTO ZDBAE100
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY ~You once trapped me in your pits, Baeloth. Let's see how you fare in this one.~ GOTO ZDBAE100
END

// Joins
IF ~~ THEN BEGIN ZDBAE11
  SAY ~Then step spryly, my serendipitous sidekick! We've a spectacular show to stage: the masses will marvel at the magic of Baeloth!~
  IF ~~ THEN DO ~SetGlobal("ZDBAE_JOINED","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ZDBAE100
  SAY ~Oh, COME ON!~ [zdbae54]
  IF ~~ THEN DO ~
    SetGlobal("ZDBAE_HOSTILE","GLOBAL",1)
    ActionOverride("ZDBAE",ChangeAIScript("mage18c",CLASS))
    Enemy()~ EXIT
END

// Copper Coronet (AR0406)
// Response: If I may have your attention once again, gentlefolk of Athkatla! Lehtinan is proud to provide for your amusement once again! Bring your attention to the pit as we see two combatants fighting for their very lives!
INTERJECT ANNO1 0 ZDBAEINTRO0
  == ZDBAE IF ~~ THEN
  ~Oohoohoohoo! This should be good!~
END ANNO1 1
