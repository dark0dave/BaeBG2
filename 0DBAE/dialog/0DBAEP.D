BEGIN 0DBAEP

// Spellhold Asylum - Exterior (AR1500)
IF ~AreaCheck("AR1500")
    Global("0DBAESpellhold","GLOBAL",0)~
THEN BEGIN 0DBAESpellhold
  SAY ~An arcane asylum awaits? Expect no easy egress from there after entry!~
  IF ~~ THEN REPLY ~Feeling nervous, Baeloth?~ DO ~SetGlobal("0DBAESpellhold","GLOBAL", 1)~ GOTO 0DBAESpellhold1
END

IF ~~ THEN BEGIN 0DBAESpellhold1
  SAY ~I smell the spell components from here. It's like home in the worst of ways!~
  IF ~~ THEN REPLY ~What do you mean, Baeloth?~ GOTO 0DBAESpellhold2
END

IF ~~ THEN BEGIN 0DBAESpellhold2
  SAY ~Trial, tribulation, and torment from some talented taskmaster that is -not- yours truly! Only agony awaits us within!~
  IF ~~ THEN REPLY ~But my companion Imoen is in there!~ GOTO 0DBAESpellhold3
END

IF ~~ THEN BEGIN 0DBAESpellhold3
  SAY ~Yes, yes. Your childhood cohort was captured as a contrivance to ensnare you.~
  IF ~~ THEN REPLY ~Time to go, Baeloth.~ EXIT
END

// Forest of Tethyr (AR2600)
IF ~AreaCheck("AR2600")
    Global("0DBAEForest","GLOBAL",0)~
THEN BEGIN 0DBAEForest
  SAY ~Such a flock of foliage flourishes around us!~
  IF ~~ GOTO 0DBAEForest1
END

IF ~~ THEN BEGIN 0DBAEForest1
  SAY ~However, what a relief! Hell is behind us and... disgustingly fresh air is around us! I already smell the animal sewage!~
  IF ~~ THEN GOTO 0DBAEForest2
END

IF ~~ THEN BEGIN 0DBAEForest2
  SAY ~Still, this place looks dangerous and ominous in its own delightful way.~
  IF ~~ THEN REPLY ~Now that you mention it, this place feels unwelcoming.~ GOTO 0DBAEForest3
END

IF ~~ THEN BEGIN 0DBAEForest3
  SAY ~Did you -not- expect that exiled Irenicus to have a collection of contingencies - spell or otherwise - if we countered his conspiracy?~
  IF ~~ THEN GOTO 0DBAEForest4
END

IF ~~ THEN BEGIN 0DBAEForest4
  SAY ~Even in death he may be mockingly making rude gestures at us!~
  IF ~~ THEN REPLY ~It's better than Hell, -that's- for sure!~ GOTO 0DBAEForest5
END

IF ~~ THEN BEGIN 0DBAEForest5
  SAY ~What an -obvious- observation.~
  IF ~~ THEN REPLY ~Let's look around. Be on your guard.~ GOTO 0DBAEForest6
END

IF ~~ THEN BEGIN 0DBAEForest6
  SAY ~<Baeloth winks.>~
  IF ~~ DO ~SetGlobal("0DBAEForest","GLOBAL",1)~ EXIT
END

// Watcher's Keep (AR3000)
IF ~AreaCheck("AR3000")
    Global("0DBAESWatcher","GLOBAL",0)~
THEN BEGIN 0DBAESWatcher
  SAY ~We can -finally- watch the watchers of Watcher's Keep. From what I've read, this castle's interior is a colossal coliseum kept to contain a copious count of curs.~
  IF ~~ THEN REPLY ~Curs? What?~ DO ~SetGlobal("0DBAESWatcher","GLOBAL", 1)~ GOTO 0DBAESWatcher1
END

IF ~~ THEN BEGIN 0DBAESWatcher1
  SAY ~What else do you call people in an interplanar prison? Patrons?~
  IF ~~ THEN REPLY ~How do you know about this place, Baeloth?~ GOTO 0DBAESWatcher2
END

IF ~~ THEN BEGIN 0DBAESWatcher2
  SAY ~Some curious customer of the Copper Coronet kept books of certain subjects before he became a contender and I kept them from his corpse.~
  IF ~~ THEN REPLY ~Let's go, Baeloth. Progress awaits.~ GOTO 0DBAESWatcher3
END

IF ~~ THEN BEGIN 0DBAESWatcher3
  SAY ~<Baeloth flashes you a knowing smile.>~
  IF ~~ EXIT
END

// Resurrection Gorge (OH5100)
IF ~AreaCheck("OH5100")
    Global("0DBAEGorge","GLOBAL",0)~
THEN 0DBAE 0DBAEGorge
~This place is portrayed as an in-person picturesque pastel painting parted by departing plant life. Pretty!~
DO ~SetGlobal("0DBAEGorge","GLOBAL",1)~
== DORNJ IF ~See("Dorn") !StateCheck("Dorn",STATE_SLEEPING)~ THEN ~I expected more from you, -drow-, not what could pass as simple-minded poetry!~
== 0DBAE ~Our violent venture will wait a bit, but our reprieve has ended.~
EXIT

// Tree of Life (AR2608)
IF ~AreaCheck("AR2608")
    Global("0DBAETree","GLOBAL",0)~
THEN 0DBAE 0DBAETree
~Fresh air? Bird song? Wind whistling through the branches? I despise it all!~ 
DO ~SetGlobal("0DBAETree","GLOBAL",1)~
EXIT
