BEGIN BG2BAEJ

// Spellhold Asylum - Exterior
IF ~InParty("BG2BAEB")
    See("BG2BAEB")
    IsValidForPartyDialogue("BG2BAEB")
    !StateCheck("BG2BAE",CD_STATE_NOTVALID)
    AreaCheck("AR1500")
    Global("BG2BAESpellhold","GLOBAL",0)~
THEN BEGIN BG2BAESpellhold
  SAY ~An arcane asylum awaits? Expect no easy egress from there after entry!~
  IF ~~ THEN REPLY ~Feeling nervous, Baeloth?~ DO ~SetGlobal("BG2BAESpellhold","GLOBAL", 1)~ GOTO BG2BAESpellhold1
END

IF ~~ THEN BEGIN BG2BAESpellhold1
  SAY ~I smell the spell components from here. It's like home in the worst of ways!~
  IF ~~ THEN REPLY ~What do you mean, Baeloth?~ GOTO BG2BAESpellhold2
END

IF ~~ THEN BEGIN BG2BAESpellhold2
  SAY ~Trial, tribulation, and torment from some talented taskmaster that is -not- yours truly! Only agony awaits us within!~
  IF ~~ THEN REPLY ~But my companion Imoen is in there!~ GOTO BG2BAESpellhold3
END

IF ~~ THEN BEGIN BG2BAESpellhold3
  SAY ~Yes, yes. Your childhood cohort was captured as a contrivance to ensnare you.~
  IF ~~ THEN REPLY ~Time to go, Baeloth.~ EXIT
END

// Forest of Tethyr
IF ~InParty("BG2BAEB")
    See("BG2BAEB")
    IsValidForPartyDialogue("BG2BAEB")
    !StateCheck("BG2BAE",CD_STATE_NOTVALID)
    AreaCheck("AR2600")
    Global("BG2BAEForest","GLOBAL",0)~
THEN BEGIN BG2BAEForest
  SAY ~Such a flock of foliage flourishes around us!~
  IF ~~ GOTO BG2BAEForest1
END

IF ~~ THEN BEGIN BG2BAEForest1
  SAY ~However, what a relief! Hell is behind us and... disgustingly fresh air is around us! I already smell the animal sewage!~
  IF ~~ THEN GOTO BG2BAEForest2
END

IF ~~ THEN BEGIN BG2BAEForest2
  SAY ~Still, this place looks dangerous and ominous in its own delightful way.~
  IF ~~ THEN REPLY ~Now that you mention it, this place feels unwelcoming.~ GOTO BG2BAEForest3
END

IF ~~ THEN BEGIN BG2BAEForest3
  SAY ~Did you -not- expect that exiled Irenicus to have a collection of contingencies - spell or otherwise - if we countered his conspiracy?~
  IF ~~ THEN GOTO BG2BAEForest4
END

IF ~~ THEN BEGIN BG2BAEForest4
  SAY ~Even in death he may be mockingly making rude gestures at us!~
  IF ~~ THEN REPLY ~It's better than Hell, -that's- for sure!~ GOTO BG2BAEForest5
END

IF ~~ THEN BEGIN BG2BAEForest5
  SAY ~What an -obvious- observation.~
  IF ~~ THEN REPLY ~Let's look around. Be on your guard.~ GOTO BG2BAEForest6
END

IF ~~ THEN BEGIN BG2BAEForest6
  SAY ~<Baeloth winks.>~
  IF ~~ DO ~SetGlobal("BG2BAEForest","GLOBAL",1)~ EXIT
END

// Resurrection Gorge
CHAIN
IF ~InParty("BG2BAEB")
    See("BG2BAEB")
    IsValidForPartyDialogue("BG2BAEB")
    !StateCheck("BG2BAE",CD_STATE_NOTVALID)
    AreaCheck("OH5100")
    Global("BG2BAEGorge","GLOBAL",0)~
THEN BG2BAE BG2BAEGorge
~This place is portrayed as an in-person picturesque pastel painting parted by departing plant life. Pretty!~
DO ~SetGlobal("BG2BAEGorge","GLOBAL",1)~
== DORNJ IF ~IsValidForPartyDialogue("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN ~I expected more from you, -drow-, not what could pass as simple-minded poetry!~
== BG2BAE ~Our violent venture will wait a bit, but our reprieve has ended.~
END

// Tree of Life
CHAIN
IF ~InParty("BG2BAEB")
    See("BG2BAEB")
    IsValidForPartyDialogue("BG2BAEB")
    !StateCheck("BG2BAE",CD_STATE_NOTVALID)
    AreaCheck("AR2608")
    Global("BG2BAETree","GLOBAL",0)~
THEN BG2BAE BG2BAETree
~Fresh air? Bird song? Wind whistling through the branches? I despise it all!~ 
DO ~SetGlobal("BG2BAETree","GLOBAL",1)~
END
