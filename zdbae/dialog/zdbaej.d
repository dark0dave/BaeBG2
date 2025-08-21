BEGIN ZDBAEJ

/* item-based talks */
/* luxurious lizardskin leapers are equipped */
IF ~Global("zdbaeleapers","GLOBAL",1)~
THEN zdbaeleapers
  SAY @7000 /* Ah, the Luxurious Lizardskin Leapers! A splendid symphony of supple skin and sublime style. With these I shall sashay forward and even the stars shall seem subdued in comparison! */
  IF ~~ THEN DO ~SetGlobal("zdbaeleapers","GLOBAL",2)~ EXIT
END

/* sturdy boots are equipped */
IF ~Global("zdbaesturdy","GLOBAL",1)~
THEN zdbaesturdy
  SAY @7001 /* Simple, sturdy boots. Hmm, they will suffice, I suppose. Slightly too stodgy for my sophisticated sensibilities. Suitable for soldiers, perhaps, but scarcely for a sorcerer of my skill. How utterly uninspiring. */
  IF ~~ THEN DO ~SetGlobal("zdbaesturdy","GLOBAL",2)~ EXIT
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
  @4051 /* And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are. */ /* And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are */
END
// Response: Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!
INTERJECT_COPY_TRANS CSGAAL 10 ZDBAEGAAL10
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4052 /* Follow him to mediocrity or follow me to magnificence. Your choice, of course. */
END

// Buy Jaheria a gift (dshop02.d)
// ~<CHARNAME>! You do not need to...
INTERJECT_COPY_TRANS JAHEIRAJ 247 ZDBAEJAHINTER0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4053 /* Nay <CHARNAME>, NAY! You needst NOT do so. Mayhap thy bounteous booty might be better spent in more delightfully devious and devilish pursuits? Hmm? Perhaps upon this daring and dashing Drow, whose charm is as captivating as the celestial canvas itself? */
  == JAHABOAM IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN @4054 /* Errr, I don't think I have anything more for the gentlemen. */
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
   @4055 /* Bah! Am I to be belittled by balding bloated broker? What bilious buffoonery! Blast! BOO! A blight upon you sir! */
END
