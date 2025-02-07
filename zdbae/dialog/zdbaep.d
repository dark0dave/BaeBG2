BEGIN ZDBAEP

// Kickout Dialogue
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "0")~ THEN BEGIN ZDBAEJ1
  SAY @5020 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [ZDBAE52] */
  IF ~~ THEN REPLY @1498 /* I don't know what I was thinking. My senses took flight! They vanished and were vagrant! */  DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @5010 /* I will have need of you later Baeloth. You understand, right? */ DO ~SetGlobal("ZDBAE_LEFT", "GLOBAL", "1")~ EXIT
END

// Rejoin
IF ~Global("ZDBAE_JOINED","GLOBAL",1) Global("ZDBAE_LEFT", "GLOBAL", "1")~ THEN BEGIN ZDBAEJ2
  SAY @5016 /* ~I hope you're satisfied. Look at my clothing! Caked-on mud everywhere! Do you have any idea how many hairy, four-legged BEASTS I had to avoid while making my way here? Woofs, were they? Wharves? I don't know.~ [ZDBAE50] */
  IF ~~ THEN REPLY @5017 /* ~Hello to you too, Baeloth. I have need of you. Will you join me?~ */ GOTO ZDBAEJ3
  IF ~~ THEN REPLY @5018  /* ~Well, keep it up. You're doing a good job so far.~ */ EXIT
END

// Join
IF ~~ THEN BEGIN ZDBAEJ3
  SAY @5019 /* ~YES! At last, some protection! Protection for YOU, that is. I will join you. So that you can feel safe.~ */
  IF ~~ THEN DO ~SetGlobal("ZDBAE_LEFT","GLOBAL",0) JoinParty()~ EXIT
END

// Spellhold Asylum - Exterior (AR1500)
IF ~AreaCheck("AR1500")
    Global("ZDBAESpellhold","GLOBAL",0)~
THEN BEGIN ZDBAESpellhold
  SAY @4000 /* An arcane asylum awaits? Expect no easy egress from there after entry! */
  IF ~~ THEN REPLY @4001 /* Feeling nervous, Baeloth? */ DO ~SetGlobal("ZDBAESpellhold","GLOBAL", 1)~ GOTO ZDBAESpellhold1
END

IF ~~ THEN BEGIN ZDBAESpellhold1
  SAY @4002 /* I smell the spell components from here. It's like home in the worst of ways! */
  IF ~~ THEN REPLY @3372 /* What do you mean, Baeloth? */ GOTO ZDBAESpellhold2
END

IF ~~ THEN BEGIN ZDBAESpellhold2
  SAY @4003 /* Trial, tribulation, and torment from some talented taskmaster that is -not- yours truly! Only agony awaits us within! */
  IF ~~ THEN REPLY @4004 /* But my companion Imoen is in there! */ GOTO ZDBAESpellhold3
END

IF ~~ THEN BEGIN ZDBAESpellhold3
  SAY @4005 /* Yes, yes. Your childhood cohort was captured as a contrivance to ensnare you. */
  IF ~~ THEN REPLY @4006 /* Time to go, Baeloth. */ EXIT
END

// Forest of Tethyr (AR2600)
IF ~AreaCheck("AR2600")
    Global("ZDBAEForest","GLOBAL",0)~
THEN BEGIN ZDBAEForest
  SAY @4007 /* Such a flock of foliage flourishes around us! */
  IF ~~ GOTO ZDBAEForest1
END

IF ~~ THEN BEGIN ZDBAEForest1
  SAY @4008 /* However, what a relief! Hell is behind us and... disgustingly fresh air is around us! I already smell the animal sewage! */
  IF ~~ THEN GOTO ZDBAEForest2
END

IF ~~ THEN BEGIN ZDBAEForest2
  SAY @4009 /* Still, this place looks dangerous and ominous in its own delightful way. */
  IF ~~ THEN REPLY @4010 /* Now that you mention it, this place feels unwelcoming. */ GOTO ZDBAEForest3
END

IF ~~ THEN BEGIN ZDBAEForest3
  SAY @4011 /* Did you -not- expect that exiled Irenicus to have a collection of contingencies - spell or otherwise - if we countered his conspiracy? */
  IF ~~ THEN GOTO ZDBAEForest4
END

IF ~~ THEN BEGIN ZDBAEForest4
  SAY @4012 /* Even in death he may be mockingly making rude gestures at us! */
  IF ~~ THEN REPLY @4013 /* It's better than Hell, -that's- for sure! */ GOTO ZDBAEForest5
END

IF ~~ THEN BEGIN ZDBAEForest5
  SAY @4014 /* What an -obvious- observation. */
  IF ~~ THEN REPLY @4015 /* Let's look around. Be on your guard. */ GOTO ZDBAEForest6
END

IF ~~ THEN BEGIN ZDBAEForest6
  SAY @4016 /* <Baeloth winks.> */
  IF ~~ DO ~SetGlobal("ZDBAEForest","GLOBAL",1)~ EXIT
END

// Watcher's Keep (AR3000)
IF ~AreaCheck("AR3000")
    Global("ZDBAESWatcher","GLOBAL",0)~
THEN BEGIN ZDBAESWatcher
  SAY @4017 /* We can -finally- watch the watchers of Watcher's Keep. From what I've read, this castle's interior is a colossal coliseum kept to contain a copious count of curs. */
  IF ~~ THEN REPLY @4018 /* Curs? What? */ DO ~SetGlobal("ZDBAESWatcher","GLOBAL", 1)~ GOTO ZDBAESWatcher1
END

IF ~~ THEN BEGIN ZDBAESWatcher1
  SAY @4019 /* What else do you call people in an interplanar prison? Patrons? */
  IF ~~ THEN REPLY @4020 /* How do you know about this place, Baeloth? */ GOTO ZDBAESWatcher2
END

IF ~~ THEN BEGIN ZDBAESWatcher2
  SAY @4021 /* Some curious customer of the Copper Coronet kept books of certain subjects before he became a contender and I kept them from his corpse. */
  IF ~~ THEN REPLY @4022 /* Let's go, Baeloth. Progress awaits. */ GOTO ZDBAESWatcher3
END

IF ~~ THEN BEGIN ZDBAESWatcher3
  SAY @4023 /* <Baeloth flashes you a knowing smile.> */
  IF ~~ EXIT
END

// Tree of Life (AR2608)
IF ~AreaCheck("AR2608")
    Global("ZDBAETree1","GLOBAL",0)~
THEN BEGIN ZDBAETree1
  SAY @4024 /* Fresh air? Bird song? Wind whistling through the branches? I despise it all! */
  IF ~~ THEN REPLY @4025 /* You are more at home underground, I presume. */ DO ~SetGlobal("ZDBAETree1","GLOBAL",1)~ GOTO ZDBAETree2
END

IF ~~ THEN BEGIN ZDBAETree2
  SAY @4026 /* Ahh, all this aching quiet, devoid of the quintessential chorus of a crowd, lacks a unique quality. Its stillness is simply stifling. */
  IF ~~ EXIT
END

// Athkatla - Government District (AR1000)
IF ~AreaCheck("AR1000")
    Global("ZDBAEGOVCITY1","GLOBAL",0)~
THEN BEGIN ZDBAEGOVCITY1
  SAY @4027 /* Bah! These Cowled Wizards and their licenses for magic. How quintessentially quaint. I, Baeloth Barrityl, am beyond such base bounds. My magnificent magic defies categorization, after all. */
  IF ~~ THEN REPLY @4028 /* Is magic not dangerous? Should we not control its users? */ DO ~SetGlobal("ZDBAEGOVCITY1","GLOBAL",1)~ GOTO ZDBAEGOVCITY2
  IF ~~ THEN REPLY @4029 /* Oh, I agree. No one should put any limits on your displays of power. */ DO ~SetGlobal("ZDBAEGOVCITY1","GLOBAL",1)~  GOTO ZDBAEGOVCITY3
  IF ~~ THEN REPLY @4030 /* Right... Lets move on. */ DO ~SetGlobal("ZDBAEGOVCITY1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ZDBAEGOVCITY2
  SAY @4031 /* Magic itself isn't dangerous—it's the lack of talent that truly threatens us! Those who create licenses and impose limits on what can be achieved are lacking vision, and stifling greatness. BBut I say—tear down these suffocating rules! And let the cream rise to the top where it can be carefully curated. */
  IF ~~ EXIT
END

IF ~~ THEN BEGIN ZDBAEGOVCITY3
  SAY @4032 /* ***Baeloth, effortlessly steps over a drunk and bows*** */
  IF ~~ EXIT
END

// Athkatla - City Gates (AR0020)
IF ~AreaCheck("AR1000")
    Global("ZDBAEGATES1","GLOBAL",0)~
THEN BEGIN ZDBAEGATES1
  SAY @4033 /* Athkatla, my stage, and the streets my audience. Let the drama unfold, for Baeloth has arrived. */
  IF ~~ THEN REPLY @4034 /* The whole world's a stadge eh? */ DO ~SetGlobal("ZDBAEGATES1","GLOBAL",1)~ EXIT
END

// Circus Tent (AR0604)
IF ~AreaCheck("AR0604")
    Global("AerieSword","GLOBAL",1)
    Global("ZDBAECIRCUS1","GLOBAL",0)~
THEN BEGIN ZDBAECIRCUS1
  SAY @4042 /* An expert illusion indicated by incandescent chains, easily seen by my superior sight. <CHARNAME> this ogre speaks true. A pleasurable mystery if she is hideous, hirsute, or heavenly once we dispel the dastardlly spell. */
  IF ~~ THEN REPLY @4043 /* Are you sure Baeloth? she's an ogre, we've been killing those since level 3! */ DO ~SetGlobal("ZDBAECIRCUS1","GLOBAL",1)~ EXIT
END

// Copper Cornet (AR0406)
CHAIN
IF ~AreaCheck("AR0406")
    See("MADAM")
    Global("MadamUpset","GLOBAL",0)
    Global("ZDBAEVICES1","GLOBAL",0)~
THEN ZDBAEP ZDBAEVICES1
@4044 /* Another one of these primitive lust chambers. My goodness the quality of your stock is quite low Madame. Perchance you have a lovely hidden away for someone of debauched distinction? */
DO ~SetGlobal("ZDBAEVICES1","GLOBAL",1)~
== MADAM @4045 /* You vile blackskinned pimps never give us credit! */
EXIT

// Copper Cornet (AR0406)
CHAIN
IF ~AreaCheck("AR0406")
    See("COPCUST1")
    See("COPCUST2")
    Global("ZDBAEVICES2","GLOBAL",0)~
THEN ZDBAEP ZDBAEVICES1
@4046 /* What is this? It appears to be some kind of heated Inhalant? Aaah I know what this is! I'll be a moment <CHARNAME>, just uh, give me a moment. */
DO ~SetGlobal("ZDBAEVICES2","GLOBAL",1)~
== ZDBAEP @4047 /* .... */
== ZDBAEP @4048 /* This is tremendous! The thrum of the surface has reduced to tiny thin thud! */
== ZDBAEP @4049 /* You! Yes, you! Purchase this whole stock immediately. */
EXIT

// Resurrection Gorge (OH5100)
CHAIN
IF ~AreaCheck("OH5100")
    Global("ZDBAEGorge","GLOBAL",0)
    InParty("Dorn")
    See("Dorn")
    !StateCheck("Dorn", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)~
THEN ZDBAEP ZDBAEGorge
@4035 /* This place is portrayed as an in-person picturesque pastel painting parted by departing plant life. Pretty! */
DO ~SetGlobal("ZDBAEGorge","GLOBAL",1)~
== DORNJ @4036 /* I expected more from you, -drow-, not what could pass as simple-minded poetry! */
== ZDBAEP @4037 /* My dear half and part, I do hope you do not take my hymn to heart. */
== DORNJ @4038 /* I simply wish you would understanding the meaning of this place. */
== ZDBAEP @4039 /* Meaning, what meaning? Oh, the demon... demeaning! */
== DORNJ @4040 /* ... */
== ZDBAEP @4041 /* Our violent venture with words... will have to wait. For now, your reprieve has come—at last! */
EXIT
