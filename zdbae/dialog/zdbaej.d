BEGIN ZDBAEJ

/* real housewives of athkatla intro */
IF ~Global("ZDBaeBoots","GLOBAL",1)~ THEN ZDBAETOSSACOINTOYOURBAELOTH
SAY @10116 /* The bustle of the bazaar! Trinkets, treasures, and tantalizing wares aplenty. My boots, alas, are worn thin from all our wandering. Perhaps you should spend a coin or two and preserve your most precious pal? */
++ @10117 /* All of that postering just to tell me your boots are falling apart! */ + ZDBAEBOOTS1
++ @10118 /* Then I suppose we could buy you a new pair. */ + ZDBAEBOOTS1
++ @10119 /* You're here to sling spells, Baeloth, not bore me with your endless chatter. */ DO ~SetGlobal("ZDBAEBoots","GLOBAL",2)~ EXIT
END

IF ~~ ZDBAEBOOTS1
  SAY @10120 /* Precisely! What greater tragedy is there than Baeloth Barrityl being undone by shabby soles? */
  IF ~~ DO ~AddJournalEntry(@1000001, QUEST) SetGlobal("ZDBAEBoots","GLOBAL",2)~ EXIT
END

/* item-based talks */
/* luxurious lizardskin leapers are equipped */
IF ~Global("zdbaeleapers","GLOBAL",1)~
THEN zdbaeleapers
  SAY @7000 /* Ah, the Luxurious Lizardskin Leapers! A splendid symphony of supple skin and sublime style. With these I shall sashay forward and even the stars shall seem subdued in comparison! */
  IF ~~ THEN DO ~SetGlobal("zdbaeleapers","GLOBAL",2)~ EXIT
END


/* simple boots are equipped - how DARE you! */
IF ~Global("zdbaesimple","GLOBAL",1)~
THEN zdbaesimple
  SAY @7002 /* Blast these brutish boots! They are bereft of beauty and bland in design. They barely beguile the eye! Why am I, the brilliant Baeloth, forced to travel with such foul footwear? */
  IF ~~ THEN DO ~SetGlobal("zdbaesimple","GLOBAL",2)~ EXIT
END

/* boots with da fur are equipped */
IF ~Global("zdbaefurries","GLOBAL",1)~
THEN zdbaefurries
  SAY @7003 /* Splendidly styled but too subtle for my taste. I dazzle, I delight. I refuse to be swallowed by the shadows like some sullen serf. */
  IF ~~ THEN DO ~SetGlobal("zdbaefurries","GLOBAL",2)~ EXIT
END

/* Obligatory Celvan Limerick */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAECelvan","AR0300",0)~
THEN CELVAN ZDBAECELV
  @10099 /* The Black Pits he ran with great flair,
  A sorcerer beyond compare.
  But hear him ramble on,
  From dusk well past dawn,
  And you'll wish he'd run out of air. */
DO ~SetGlobal("ZDBAECelvan","AR0300",1)~
  == ZDBAEJ @10100 /* Oho! Two can play this game! */
  == ZDBAEJ @10101 /* Confident in his gab,
  A gnome tries to deliver a jab.
  But one jest too far,
  And I'll make you the star,
  Of *my* show. Now run or I'll stab... */
END CELVAN 1


/* interjections */
// Temple District (AR0900)
// Response: Listen to me, my brothers and sisters... heed my words. We have been chosen as the recipient of a most holy miracle, one that should neither be dismissed nor ignored!
INTERJECT CSGAAL 0 ZDBAEGAAL0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4050 /* Oohoohoohoo! This should be good! */
END CSGAAL 1
// Response: I say that the churches lie to you! They claim their gods are present when they do nothing other than require your coin to fill their pockets!
INTERJECT_COPY_TRANS CSGAAL 3 ZDBAEGAAL1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4051 /* And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are. */
END
// Response: Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!
INTERJECT_COPY_TRANS CSGAAL 10 ZDBAEGAAL10
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4052 /* Follow him to mediocrity or follow me to magnificence. Your choice, of course. */
END

// Market District
// Circus, Aerie introduction
// Thanks for being vague when telling us you sense something is off, Baeloth
I_C_T AERIE 30 ZDBAECIRC1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @10121 /* The Weave twists and twirls around her. Such chaotic patterns require a cunning conductor. But, surely, that is why you keep *me* close. */
END

// Docks District
// Buy Jaheria a gift (dshop02.d)
// ~<CHARNAME>! You do not need to...
INTERJECT_COPY_TRANS JAHEIRAJ 247 ZDBAEJAHINTER0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4053 /* Nay <CHARNAME>, NAY! You needst NOT do so. Mayhap thy bounteous booty might be better spent in more delightfully devious and devilish pursuits? Hmm? Perhaps upon this daring and dashing Drow, whose charm is as captivating as the celestial canvas itself? */
  == JAHABOAM IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN @4054 /* Errr, I don't think I have anything more for the gentlemen. */
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
   @4055 /* Bah! Am I to be belittled by balding bloated broker? What bilious buffoonery! Blast! BOO! A blight upon you sir! */
END

// Spellhold
// Slayer Change
I_C_T PLAYER1 3 ZDBAESLAY1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN @10122 /* Bravo! Such a savage spectacle! I call for an encore! */
END

// Elven City
// Tree of Life approach
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) Global("ZDBAETreeOfLife","GLOBAL",0)~
EXTERN PLAYER1 ZDBAETREE1
END

CHAIN PLAYER1 ZDBAETREE1
  @10123 /* Baeloth Barrityl, the drow sorcerer, an unlikely ally who has flung fire and unleashed his fury upon your foes. But is he truly prepared for the fight ahead? */
DO ~SetGlobal("ZDBAETreeOfLife","GLOBAL",1)~
END
++ @10124 /* Baeloth, we have become friends, so you don't have to follow me any further. This isn't your fight. */ EXTERN ZDBAEJ ZDBAETREE2
++ @10125 /* There's a chance we won't survive. Turn tail and flee if you're too cowardly to see this battle through. */ EXTERN ZDBAEJ  ZDBAETREE2
++ @10126 /* We're nearing the end. I have to know that you're ready. There's no turning back. */ EXTERN ZDBAEJ ZDBAETREE2

CHAIN ZDBAEJ ZDBAETREE2
  @10127 /* I was preparing a particularly scorching fireball for these simpering elves. How they ever forced my kin beneath the ground is beyond comprehension. */
  == ZDBAEJ @10128 /* But yes, yes, I hear you. I have resolved to remain. The spotlight beckons and I shan't miss my cue! */
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead
I_C_T PLAYER1 16 ZDBAEIREN1
  == ZDBAEJ IF ~InParty("ZDBAE") Range("ZDBAE",15) !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN @10129 /* Obviously, this was going to happen. Our triumph was assured with my superior sorcerous skills. ...Ah! What is this strange, nay sinister, sensation? */
END
