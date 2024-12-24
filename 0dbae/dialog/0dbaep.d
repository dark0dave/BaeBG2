BEGIN 0DBAEP

// Spellhold Asylum - Exterior (AR1500)
IF ~AreaCheck("AR1500")
    Global("0DBAESpellhold","GLOBAL",0)~
THEN BEGIN 0DBAESpellhold
  SAY @4000 /* An arcane asylum awaits? Expect no easy egress from there after entry! */
  IF ~~ THEN REPLY @4001 /* Feeling nervous, Baeloth? */ DO ~SetGlobal("0DBAESpellhold","GLOBAL", 1)~ GOTO 0DBAESpellhold1
END

IF ~~ THEN BEGIN 0DBAESpellhold1
  SAY @4002 /* I smell the spell components from here. It's like home in the worst of ways! */
  IF ~~ THEN REPLY @3372 /* What do you mean, Baeloth? */ GOTO 0DBAESpellhold2
END

IF ~~ THEN BEGIN 0DBAESpellhold2
  SAY @4003 /* Trial, tribulation, and torment from some talented taskmaster that is -not- yours truly! Only agony awaits us within! */
  IF ~~ THEN REPLY @4004 /* But my companion Imoen is in there! */ GOTO 0DBAESpellhold3
END

IF ~~ THEN BEGIN 0DBAESpellhold3
  SAY @4005 /* Yes, yes. Your childhood cohort was captured as a contrivance to ensnare you. */
  IF ~~ THEN REPLY @4006 /* Time to go, Baeloth. */ EXIT
END

// Forest of Tethyr (AR2600)
IF ~AreaCheck("AR2600")
    Global("0DBAEForest","GLOBAL",0)~
THEN BEGIN 0DBAEForest
  SAY @4007 /* Such a flock of foliage flourishes around us! */
  IF ~~ GOTO 0DBAEForest1
END

IF ~~ THEN BEGIN 0DBAEForest1
  SAY @4008 /* However, what a relief! Hell is behind us and... disgustingly fresh air is around us! I already smell the animal sewage! */
  IF ~~ THEN GOTO 0DBAEForest2
END

IF ~~ THEN BEGIN 0DBAEForest2
  SAY @4009 /* Still, this place looks dangerous and ominous in its own delightful way. */
  IF ~~ THEN REPLY @4010 /* Now that you mention it, this place feels unwelcoming. */ GOTO 0DBAEForest3
END

IF ~~ THEN BEGIN 0DBAEForest3
  SAY @4011 /* Did you -not- expect that exiled Irenicus to have a collection of contingencies - spell or otherwise - if we countered his conspiracy? */
  IF ~~ THEN GOTO 0DBAEForest4
END

IF ~~ THEN BEGIN 0DBAEForest4
  SAY @4012 /* Even in death he may be mockingly making rude gestures at us! */
  IF ~~ THEN REPLY @4013 /* It's better than Hell, -that's- for sure! */ GOTO 0DBAEForest5
END

IF ~~ THEN BEGIN 0DBAEForest5
  SAY @4014 /* What an -obvious- observation. */
  IF ~~ THEN REPLY @4015 /* Let's look around. Be on your guard. */ GOTO 0DBAEForest6
END

IF ~~ THEN BEGIN 0DBAEForest6
  SAY @4016 /* <Baeloth winks.> */
  IF ~~ DO ~SetGlobal("0DBAEForest","GLOBAL",1)~ EXIT
END

// Watcher's Keep (AR3000)
IF ~AreaCheck("AR3000")
    Global("0DBAESWatcher","GLOBAL",0)~
THEN BEGIN 0DBAESWatcher
  SAY @4017 /* We can -finally- watch the watchers of Watcher's Keep. From what I've read, this castle's interior is a colossal coliseum kept to contain a copious count of curs. */
  IF ~~ THEN REPLY @4018 /* Curs? What? */ DO ~SetGlobal("0DBAESWatcher","GLOBAL", 1)~ GOTO 0DBAESWatcher1
END

IF ~~ THEN BEGIN 0DBAESWatcher1
  SAY @4019 /* What else do you call people in an interplanar prison? Patrons? */
  IF ~~ THEN REPLY @4020 /* How do you know about this place, Baeloth? */ GOTO 0DBAESWatcher2
END

IF ~~ THEN BEGIN 0DBAESWatcher2
  SAY @4021 /* Some curious customer of the Copper Coronet kept books of certain subjects before he became a contender and I kept them from his corpse. */
  IF ~~ THEN REPLY @4022 /* Let's go, Baeloth. Progress awaits. */ GOTO 0DBAESWatcher3
END

IF ~~ THEN BEGIN 0DBAESWatcher3
  SAY @4023 /* <Baeloth flashes you a knowing smile.> */
  IF ~~ EXIT
END

// Tree of Life (AR2608)
IF ~AreaCheck("AR2608")
    Global("0DBAETree1","GLOBAL",0)~
THEN BEGIN 0DBAETree1
  SAY @4024 /* Fresh air? Bird song? Wind whistling through the branches? I despise it all! */
  IF ~~ THEN REPLY @4025 /* You are more at home underground, I presume. */ DO ~SetGlobal("0DBAETree1","GLOBAL",1)~ GOTO 0DBAETree2
END

IF ~~ THEN BEGIN 0DBAETree2
  SAY @4026 /* Ahh, all this aching quiet, devoid of the quintessential chorus of a crowd, lacks a unique quality. Its stillness is simply stifling. */
  IF ~~ EXIT
END

// Athkatla - Government District (AR1000)
IF ~AreaCheck("AR1000")
    Global("0DBAEGOVCITY1","GLOBAL",0)~
BEGIN 0DBAEGOVCITY1
  SAY @4027 /* Bah! These Cowled Wizards and their licenses for magic. How quintessentially quaint. I, Baeloth Barrityl, am beyond such base bounds. My magnificent magic defies categorization, after all. */
  IF ~~ THEN REPLY @4028 /* Is magic not dangerous? Should we not control its users? */ DO ~SetGlobal("0DBAEGOVCITY1","GLOBAL",1)~ GOTO 0DBAEGOVCITY2
  IF ~~ THEN REPLY @4029 /* Oh, I agree. No one should put any limits on your displays of power. */ DO ~SetGlobal("0DBAEGOVCITY1","GLOBAL",1)~  GOTO 0DBAEGOVCITY3
  IF ~~ THEN REPLY @4030 /* Right... Lets move on. */ DO ~SetGlobal("0DBAEGOVCITY1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 0DBAEGOVCITY2
  SAY @4031 /* Magic itself isn't dangerous—it's the lack of talent that truly threatens us! Those who create licenses and impose limits on what can be achieved are lacking vision, and stifling greatness. BBut I say—tear down these suffocating rules! And let the cream rise to the top where it can be carefully curated. */
  IF ~~ EXIT
END

IF ~~ THEN BEGIN 0DBAEGOVCITY3
  SAY @4032 /* ***Baeloth, effortlessly steps over a drunk and bows*** */
  IF ~~ EXIT
END

// Athkatla - City Gates (AR0020)
IF ~AreaCheck("AR1000")
    Global("0DBAEGATES1","GLOBAL",0)~
BEGIN 0DBAEGATES1
  SAY @4033 /* Athkatla, my stage, and the streets my audience. Let the drama unfold, for Baeloth has arrived. */
  IF ~~ THEN REPLY @4034 /* The whole world's a stadge eh? */ DO ~SetGlobal("0DBAEGATES1","GLOBAL",1)~ EXIT
END

// Resurrection Gorge (OH5100)
CHAIN
IF ~AreaCheck("OH5100")
    Global("0DBAEGorge","GLOBAL",0)
    InParty("Dorn")
    See("Dorn")
    !StateCheck("Dorn", CD_STATE_NOTVALID)
    !StateCheck("0DBAE", CD_STATE_NOTVALID)~
THEN 0DBAE 0DBAEGorge
@4035 /* This place is portrayed as an in-person picturesque pastel painting parted by departing plant life. Pretty! */
DO ~SetGlobal("0DBAEGorge","GLOBAL",1)~
== DORNJ @4036 /* I expected more from you, -drow-, not what could pass as simple-minded poetry! */
== 0DBAE @4037 /* My dear half and part, I do hope you do not take my hymn to heart. */
== DORNJ @4038 /* I simply wish you would understanding the meaning of this place. */
== 0DBAE @4039 /* Meaning, what meaning? Oh, the demon... demeaning! */
== DORNJ @4040 /* ... */
== 0DBAE @4041 /* Our violent venture with words... will have to wait. For now, your reprieve has come—at last! */
EXIT
