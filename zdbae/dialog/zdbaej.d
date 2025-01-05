BEGIN ZDBAEJ

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
