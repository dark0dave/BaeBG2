BEGIN ~BAELOTHJ~

IF ~  Global("BA_BALDUR","LOCALS",1)
~ THEN BEGIN 0 // from:
  SAY #31941 /* ~Being the center of attention is something I normally aspire to, but I am beginning to rethink that stance.~ [bab131] */
  IF ~~ THEN DO ~SetGlobal("BA_BALDUR","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_NASHKEL","LOCALS",1)
~ THEN BEGIN 1 // from:
  SAY #31942 /* ~Stand at attention, you deficient dimwits! Grab a shovel. We can make the Underdark in a few hours of digging.~ [bab132] */
  IF ~~ THEN DO ~SetGlobal("BA_NASHKEL","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_FAI","LOCALS",1)
~ THEN BEGIN 2 // from:
  SAY #31943 /* ~A den of diminutive dullards! What would possess us to come to such a filthy hovel?~ [bab133] */
  IF ~~ THEN DO ~SetGlobal("BA_FAI","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_IRON_THRONE","LOCALS",1)
~ THEN BEGIN 3 // from:
  SAY #31944 /* ~Now this... THIS I like. Secure a room for us at once!~ [bab134] */
  IF ~~ THEN DO ~SetGlobal("BA_IRON_THRONE","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_CLOAKWOOD","LOCALS",1)
~ THEN BEGIN 4 // from:
  SAY #31945 /* ~There aren't any elves around here, are there? I have no qualms about vaporizing a few of those abrasive curs, but they have an irritating habit of attacking in large numbers.~ [bab135] */
  IF ~~ THEN DO ~SetGlobal("BA_CLOAKWOOD","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_CANDLEKEEP","LOCALS",1)
~ THEN BEGIN 5 // from:
  SAY #31946 /* ~Ugh, a pretentious pile of petty ponderances. No wonder you surface folk never get anything done—you're too busy poring over ancient manuscripts. Where's the flair? Where's the excitement?~ [bab136] */
  IF ~~ THEN DO ~SetGlobal("BA_CANDLEKEEP","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_CATACOMBS","LOCALS",1)
~ THEN BEGIN 6 // from:
  SAY #31947 /* ~If I recall correctly, it's "rock crushes lizard." I won't forget that one again.~ [bab137] */
  IF ~~ THEN DO ~SetGlobal("BA_CATACOMBS","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_UNDERCITY","LOCALS",1)
~ THEN BEGIN 7 // from:
  SAY #31948 /* ~The Undercity? Well, it's close enough to home, I suppose.~ [bab138] */
  IF ~~ THEN DO ~SetGlobal("BA_UNDERCITY","LOCALS",2)
~ EXIT
END

IF ~  Global("BA_BHAAL_TEMPLE","LOCALS",1)
~ THEN BEGIN 8 // from:
  SAY #31949 /* ~This brutish brawler we're about to beat had better be the finale to this little escapade. We need to focus on GETTING ME HOME ALREADY.~ [bab139] */
  IF ~~ THEN DO ~SetGlobal("BA_BHAAL_TEMPLE","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #32160 /* ~To be honest, Dorn... You might be on to something.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 265
END
