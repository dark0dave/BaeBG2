BEGIN ZDBAEJ

/// Boots ///
IF ~GLOBAL("ZDTriggerBoots","GLOBAL",1)~
THEN zbbootbegin
  SAY ~I've step in gahh, why do you surfacers keep track me through flies filth and feaces! I demand we stop and search for a new pair of boots!~
  IF ~~
    IF EDWIN
      EDWIN: ~(Such simple simians. Can't watch were they are going. Still this might be an opportunity to purchase magical items and increase my power over this lot further.)~
    IF EDWINA
      EDWINA ~(Such simple simeons. Can't watch were they are going. But I can't deny, the simple pleasure of shopping. I feel strange, no matter.)~
    BAELOTH ~You there Edwin is it? Do you happen to have any such divination into where such a dashing dapper Drow as myself could such acquire acute luxury galoshes?~
    EDWIN ~(Must I indulge this menagerie at every step! The lack knowledge of the finer things in this world is insulting!) Why yes, of course I know of a place. But one such as yourself can not enter.~
    BAELOTH ~Ahh, I ascertain your allusion. An appropriate allurement is appropriate.~
    EDWIN ~(Gods save me from this Drow!) Whatever do you mean?!~
    BAELOTH ~Well my suitably simple "simian", see through these thoughts, and think. What gift of gratuity, is granted to those who give the gift of glamour? All that glitters is gold?~
    EDWIN ~(He uses my words against me?! I ought to blast him back down to his home!) ... I see what you mean. But for one such as yourself it will be expensive. You are not easy on the eyes.~
    IF EDWINA
      BAELOTH ~<WINKS> I see what you mean. However if I am with you I am sure it will be of little consequence!~
      EDWINA ~(I I, ~
    IF EDWIN
      BAELOTH ~I see... ~
END

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

// ------------------------
// Temple District (AR0900)
// ------------------------
// Response: Listen to me, my brothers and sisters... heed my words. We have been chosen as the recipient of a most holy miracle, one that should neither be dismissed nor ignored!
INTERJECT CSGAAL 0 ZDBAEGAAL0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4050 /* Oohoohoohoo! This should be good! */
END CSGAAL 1
// Response: I say that the churches lie to you! They claim their gods are present when they do nothing other than require your coin to fill their pockets!
INTERJECT_COPY_TRANS CSGAAL 3 ZDBAEGAAL1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4051 /* And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are */
END
// Response: Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!
INTERJECT_COPY_TRANS CSGAAL 10 ZDBAEGAAL10
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4052 /* Follow him to mediocrity or follow me to magnificence. Your choice, of course. */
END
