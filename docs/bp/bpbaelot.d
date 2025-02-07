BEGIN ~BPBAELOT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #29149 /* ~What's next? Ah, this group. Are they awake yet? Up! Rouse yourselves, you lice-laden layabouts. Stand and salute your new master, Baeloth the Entertainer.~ [BPA101] */
  IF ~~ THEN DO ~SetGlobal("BLACK_PITS","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29150 /* ~You may also thank me, since your meaningless lives are about to become infinitely more exciting and quite likely... abbreviated.~ [BPA102] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29151 /* ~You have been brought here by an unlucky roll of the die. Well, unlucky for you. Gather some equipment, gird your loins, and prepare to fight. Najim, my obedient slave, take care of them.~ [BPA103] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29152 /* ~And don't forget to give them a little spending money!~ [BPA104] */
  IF ~~ THEN DO ~StartCutSceneMode()
LockScroll()
CreateVisualEffect("spdimndr",[848.612])
Wait(1)
Activate("BPNAJIM")
Wait(4)
ActionOverride("BPNAJIM",StartDialogNoSet(Player1))
UnlockScroll()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #29153 /* ~I can heeeeeear you!~ [BPA109] */
  IF ~~ THEN EXTERN ~BPNAJIM~ 4
END

IF WEIGHT #1 ~  GlobalLT("BPBAELOT_DIALOG","GLOBAL",10)
~ THEN BEGIN 5 // from:
  SAY #29154 /* ~It took you long enough, you pathetic pack of peripatetics! Are you ready for your very first battle in my arena? I have a crowd waiting, and I want to show them a rousing rumble.~ [BPL101] */
  IF ~~ THEN REPLY #29155 /* ~We are ready.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("BPBAELOT_DIALOG","GLOBAL",11)
SetGlobal("TIER","GLOBAL",0)
SetGlobal("START_BATTLE","GLOBAL",1)
SetGlobal("LAST_BATTLE","GLOBAL",0)
SetGlobal("T0_B1","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~~ THEN REPLY #29156 /* ~We aren't ready yet.~ */ EXIT
  IF ~~ THEN REPLY #29157 /* ~Please free us and let us return home.~ */ DO ~SetGlobal("BPBAELOT_DIALOG","GLOBAL",11)
~ GOTO 7
  IF ~~ THEN REPLY #29158 /* ~Step into the arena with us, Baeloth! We will strike you down and win our freedom!~ */ DO ~SetGlobal("BPBAELOT_DIALOG","GLOBAL",11)
LockScroll()
~ GOTO 10
END

IF WEIGHT #2 ~  Global("START_BATTLE","GLOBAL",2)
Global("T0_B1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #29159 /* ~Huzzah! Now then, are you ready to hear what fearsome foes you'll fight first?~ [BPL102] */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #29160 /* ~I'm afraid I can't let you go. I would be disappointing dozens of desperately depraved devotees of my devious diversions! And just look at all the hard work I've put into creating this colossal complex of combat! But you wouldn't want that to go to waste, would ya?~ [BPL103] */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29161 /* ~So as you can see, there's no way I will allow you to leave. Your only choice is to provide a particularly prodigious performance in the pits.~ [BPL104] */
  IF ~~ THEN REPLY #29162 /* ~And if we refuse?~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #29163 /* ~I'll kill you, of course. And maybe your families! Now then, throw on some big smiles and— Ooh, dear, maybe that one shouldn't smile. Have a cleric look at that most malevolent mouth. Anyway, back on topic. Are you ready to hear what you'll be battling against?~ [BPL105] */
  IF ~~ THEN REPLY #29155 /* ~We are ready.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("BPBAELOT_DIALOG","GLOBAL",11)
SetGlobal("TIER","GLOBAL",0)
SetGlobal("START_BATTLE","GLOBAL",1)
SetGlobal("LAST_BATTLE","GLOBAL",0)
SetGlobal("T0_B1","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~~ THEN REPLY #29156 /* ~We aren't ready yet.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3
  SAY #29164 /* ~What's the point of that? If I were to die, who would look after my guests? Who would oversee Najim? Who would summon more combatants for the arena? Really now, you're just being ridiculous. Are you ready to hear what you'll be battling against?~ [BPL106] */
  IF ~~ THEN REPLY #29155 /* ~We are ready.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("BPBAELOT_DIALOG","GLOBAL",11)
SetGlobal("TIER","GLOBAL",0)
SetGlobal("START_BATTLE","GLOBAL",1)
SetGlobal("LAST_BATTLE","GLOBAL",0)
SetGlobal("T0_B1","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~~ THEN REPLY #29156 /* ~We aren't ready yet.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #29165 /* ~Before any of our unwilling warriors wastes our time in a meaningful match, we like to warm them up with a little light exercise. So as not to overwhelm the newcomers, we'll start with the worst of a wretched lot of gibberlings!~ [BPT0B101] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #3 ~  Global("T0_B1","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #29166 /* ~That certainly could have gone worse. You've proven you can stamp out the weakest of opponents. Now let's see how you do against some who have eaten in the last tenday!~ [BPT0B102] */
  IF ~~ THEN DO ~GiveGoldForce(500)
AddXPObject(Player1,2500)
AddXPObject(Player2,2500)
AddXPObject(Player3,2500)
AddXPObject(Player4,2500)
AddXPObject(Player5,2500)
AddXPObject(Player6,2500)
SetGlobal("T0_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",1)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #4 ~  Global("START_BATTLE","GLOBAL",2)
Global("T0_B2","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #29167 /* ~They may not look like much, but these gibberlings have passed inspection, unlike that last sorry gang. You'll have to break a sweat to slay these savages!~ [BPT0B201] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #5 ~  Global("T0_B2","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #29168 /* ~Well done, my precious pugilists! You've certainly proven that I picked well when I picked you to perish in the Black Pits!~ [BPT0B202] */
  IF ~~ THEN DO ~GiveGoldForce(500)
AddXPObject(Player1,2500)
AddXPObject(Player2,2500)
AddXPObject(Player3,2500)
AddXPObject(Player4,2500)
AddXPObject(Player5,2500)
AddXPObject(Player6,2500)
SetGlobal("T0_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",2)
SetGlobal("TIER","GLOBAL",1)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #6 ~  Global("START_BATTLE","GLOBAL",2)
Global("T1_B1","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #29169 /* ~Prepare yourselves, my Underdark gladiators! A gruesome fate awaits you at the hand of this motley mob of miscreants! I yanked them from a shabby saloon. Perhaps the victors can celebrate with a drink.~ [BPT1B101] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #7 ~  Global("T1_B1","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",101)
~ THEN BEGIN 16 // from:
  SAY #29170 /* ~Congratulations, you have slain a bunch of boozy bumblers. Najim shall ensure that you are awarded appropriately.~ [BPT1B102] */
  IF ~~ THEN DO ~GiveGoldForce(1750)
AddexperienceParty(7300)
SetGlobal("T1_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",101)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #8 ~  Global("T1_B1","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",101)
GlobalGT("LAST_BATTLE","GLOBAL",101)
~ THEN BEGIN 17 // from:
  SAY #29170 /* ~Congratulations, you have slain a bunch of boozy bumblers. Najim shall ensure that you are awarded appropriately.~ [BPT1B102] */
  IF ~~ THEN DO ~GiveGoldForce(875)
AddexperienceParty(7300)
SetGlobal("T1_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #9 ~  Global("START_BATTLE","GLOBAL",2)
Global("T1_B2","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #29171 /* ~Behold! Your next adversaries are a pack of punchy hobgoblins I picked up near Waterdeep. I promised them freedom if they perforate you, so they're just ITCHING for a chance to escape! Either that or my delousing spell needs work.~ [BPT1B201] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #10 ~  Global("T1_B2","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",102)
~ THEN BEGIN 19 // from:
  SAY #29172 /* ~Goodness! The look on their faces when they realized they would never again see those disgusting dens they call home. I think that deserves a bonus.~ [BPT1B202] */
  IF ~~ THEN DO ~GiveGoldForce(2000)
AddexperienceParty(9125)
SetGlobal("T1_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",102)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #11 ~  Global("T1_B2","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",102)
GlobalGT("LAST_BATTLE","GLOBAL",102)
~ THEN BEGIN 20 // from:
  SAY #29172 /* ~Goodness! The look on their faces when they realized they would never again see those disgusting dens they call home. I think that deserves a bonus.~ [BPT1B202] */
  IF ~~ THEN DO ~GiveGoldForce(1000)
AddexperienceParty(9125)
SetGlobal("T1_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #12 ~  Global("START_BATTLE","GLOBAL",2)
Global("T1_B3","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #29173 /* ~I do enjoy toying with lesser spellcasters. I captured this insolent little necromancer running for his life outside of Menzoberranzan. How he got there, I don't know. But he does summon skeletons with supernatural speed.~ [BPT1B301] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #13 ~  Global("T1_B3","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",103)
~ THEN BEGIN 22 // from:
  SAY #29174 /* ~Uncanny! You seem to have a knack for killing things that are already dead. If only you displayed a little more flair and enthusiasm for your work.~ [BPT1B302] */
  IF ~~ THEN DO ~GiveGoldForce(2250)
AddexperienceParty(12167)
SetGlobal("T1_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",103)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #14 ~  Global("T1_B3","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",103)
GlobalGT("LAST_BATTLE","GLOBAL",103)
~ THEN BEGIN 23 // from:
  SAY #29174 /* ~Uncanny! You seem to have a knack for killing things that are already dead. If only you displayed a little more flair and enthusiasm for your work.~ [BPT1B302] */
  IF ~~ THEN DO ~GiveGoldForce(1125)
AddexperienceParty(12167)
SetGlobal("T1_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #15 ~  Global("START_BATTLE","GLOBAL",2)
Global("T1_B4","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #29175 /* ~While the spell is mightier than the sword, something is lost during a subtle spell duel. What is that elusive quality? The visceral impact of body blows, the crunch of bone and the rending of flesh. Behold, a team of pulverizing pugilists ready to pound the precious life out of our proud defenders!~ [BPT1B401] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #16 ~  Global("T1_B4","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 25 // from:
  SAY #29176 /* ~Well, you may be able to take a hit, but you certainly won't make one fighting such dull brutes. I must provide a more engaging foe for our next fracas!~ [BPT1B402] */
  IF ~~ THEN DO ~GiveGoldForce(2500)
AddexperienceParty(18250)
SetGlobal("T1_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",104)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #17 ~  Global("T1_B4","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",104)
GlobalGT("LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 26 // from:
  SAY #29176 /* ~Well, you may be able to take a hit, but you certainly won't make one fighting such dull brutes. I must provide a more engaging foe for our next fracas!~ [BPT1B402] */
  IF ~~ THEN DO ~GiveGoldForce(1250)
AddexperienceParty(18250)
SetGlobal("T1_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #18 ~  Global("START_BATTLE","GLOBAL",2)
Global("T1_B5","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #29177 /* ~You've beaten my hobgoblins, which means you're exceptionally strong. You've also bested my pet spellcaster, which means that you've studied well. I can clearly not rely on one extreme or another, so instead I shall crush you with a combination of combatants. Carry on!~ [BPT1B501] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #19 ~  Global("T1_B5","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",105)
~ THEN BEGIN 28 // from:
  SAY #29178 /* ~Inconceivable! Get out of here, and take your reward with you.~ [BPT1B502] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",105)
SetGlobal("T1_B5","GLOBAL",-1)
SetGlobal("TIER","GLOBAL",2)
GiveGoldForce(3000)
AddexperienceParty(18250)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #20 ~  Global("T1_B5","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",105)
GlobalGT("LAST_BATTLE","GLOBAL",105)
~ THEN BEGIN 29 // from:
  SAY #29178 /* ~Inconceivable! Get out of here, and take your reward with you.~ [BPT1B502] */
  IF ~~ THEN DO ~SetGlobal("T1_B5","GLOBAL",-1)
AddexperienceParty(18250)
GiveGoldForce(1500)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #21 ~  Global("TIER","GLOBAL",2)
GlobalLT("BPBAELOT_DIALOG","GLOBAL",20)
Global("LAST_BATTLE","GLOBAL",105)
~ THEN BEGIN 30 // from:
  SAY #29179 /* ~Ridiculous! Outstanding! Impossible! Fantastic! You've managed to crush everything I've thrown at you. Clearly, I have excellent taste in selecting gladiators.~ [BPL201] */
  IF ~~ THEN DO ~SetGlobal("BPBAELOT_DIALOG","GLOBAL",20)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #29180 /* ~You've survived for longer than I expected and gained quite a following in the process. But don't worry, you'll be dead soon enough! I've dug out some of my rarer beasts. Very soon now, they'll crack your skull open and feast on the gooey innards!~ [BPL202] */
  IF ~~ THEN REPLY #29181 /* ~We've served our purpose. Your guests are entertained! Let us return home, and you can find new combatants!~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #29182 /* ~Oh, don't be such a preposterously petulant persnicket. I'll tell you what: Because you've been so gracious about all this kidnapping and forced to fight to the death business, I'll give you a reward!~ [BPL203] */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #29183 /* ~Now go get ready for your next battle. You'll most likely be slain, so it's probably time to perform whatever funeral rituals your culture requires.~ [BPL204] */
  IF ~~ THEN EXIT
END

IF WEIGHT #22 ~  Global("START_BATTLE","GLOBAL",2)
Global("T2_B1","GLOBAL",1)
~ THEN BEGIN 34 // from:
  SAY #29184 /* ~I'm afraid I haven't had time to arrange a suitable contest for this next round... Wait! Do you feel that? Something trembles through the earth, like doom burrowing its way into the arena. There! Can it be? Yes! The biggest bugs that ever bored through the earth!~ [BPT2B101] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #23 ~  Global("T2_B1","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",201)
~ THEN BEGIN 35 // from:
  SAY #29185 /* ~After that last contest, I don't know whether to call you a gladiator or an exterminator.~ [BPT2B102] */
  IF ~~ THEN DO ~GiveGoldForce(4000)
AddexperienceParty(26032)
SetGlobal("T2_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",201)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #24 ~  Global("T2_B1","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",201)
GlobalGT("LAST_BATTLE","GLOBAL",201)
~ THEN BEGIN 36 // from:
  SAY #29185 /* ~After that last contest, I don't know whether to call you a gladiator or an exterminator.~ [BPT2B102] */
  IF ~~ THEN DO ~GiveGoldForce(2000)
AddexperienceParty(26032)
SetGlobal("T2_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #25 ~  Global("START_BATTLE","GLOBAL",2)
Global("T2_B2","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #29186 /* ~For our next contest, I have brought you nature's own avenger, a deadly druid with his own assemblage of amazing arachnids to annex, annul, abolish, and annihilate their adversaries!~ [BPT2B201] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #26 ~  Global("T2_B2","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",202)
~ THEN BEGIN 38 // from:
  SAY #29187 /* ~Again, you prove yourself a skilled swatter of insects. Perhaps what you need are some enemies with real backbone!~ [BPT2B202] */
  IF ~~ THEN DO ~GiveGoldForce(4500)
AddexperienceParty(32540)
SetGlobal("T2_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",202)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #27 ~  Global("T2_B2","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",202)
GlobalGT("LAST_BATTLE","GLOBAL",202)
~ THEN BEGIN 39 // from:
  SAY #29187 /* ~Again, you prove yourself a skilled swatter of insects. Perhaps what you need are some enemies with real backbone!~ [BPT2B202] */
  IF ~~ THEN DO ~GiveGoldForce(2250)
AddexperienceParty(32540)
SetGlobal("T2_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #28 ~  Global("START_BATTLE","GLOBAL",2)
Global("T2_B3","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #29188 /* ~Oh, now I feel a little bad about this one. I've allowed your opponents into the arena early so they can put their special talents to use. Try not to trip as you traverse the tricky territory!~ [BPT2B301] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #29 ~  Global("T2_B3","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",203)
~ THEN BEGIN 41 // from:
  SAY #29189 /* ~Hmm... I didn't think you'd sidestep all those traps I instructed them to set up. You should be a pile of constituent body parts right now! Bah, take your reward and choke on it.~ [BPT2B302] */
  IF ~~ THEN DO ~GiveGoldForce(5000)
AddexperienceParty(44386)
SetGlobal("T2_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",203)
TriggerActivation("GREASETRAP",FALSE)
TriggerActivation("ARROWTRAP1",FALSE)
TriggerActivation("ARROWTRAP2",FALSE)
TriggerActivation("ARROWTRAP3",FALSE)
TriggerActivation("ARROWTRAP4",FALSE)
TriggerActivation("ARROWTRAP5",FALSE)
TriggerActivation("ARROWTRAP6",FALSE)
TriggerActivation("STINKYTRAP",FALSE)
TriggerActivation("JERKTRAP",FALSE)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #30 ~  Global("T2_B3","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",203)
GlobalGT("LAST_BATTLE","GLOBAL",203)
~ THEN BEGIN 42 // from:
  SAY #29189 /* ~Hmm... I didn't think you'd sidestep all those traps I instructed them to set up. You should be a pile of constituent body parts right now! Bah, take your reward and choke on it.~ [BPT2B302] */
  IF ~~ THEN DO ~GiveGoldForce(2500)
AddexperienceParty(44386)
SetGlobal("T2_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
TriggerActivation("GREASETRAP",FALSE)
TriggerActivation("ARROWTRAP1",FALSE)
TriggerActivation("ARROWTRAP2",FALSE)
TriggerActivation("ARROWTRAP3",FALSE)
TriggerActivation("ARROWTRAP4",FALSE)
TriggerActivation("ARROWTRAP5",FALSE)
TriggerActivation("ARROWTRAP6",FALSE)
TriggerActivation("STINKYTRAP",FALSE)
TriggerActivation("JERKTRAP",FALSE)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #31 ~  Global("START_BATTLE","GLOBAL",2)
Global("T2_B4","GLOBAL",1)
~ THEN BEGIN 43 // from:
  SAY #29190 /* ~Some of my friends have come to me to confide their concerns that I have favored quality over quantity. Well, who says you can't have them both?! Here with five endless avenues to excitement is my friend and yours, the magnificent ogre mage!~ [BPT2B401] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #32 ~  Global("T2_B4","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",204)
~ THEN BEGIN 44 // from:
  SAY #29191 /* ~That was hardly fair, routing your rival's reinforcements. But you have given me a great idea. What this contest needs are some fresh faces, and I have just the plan to provide some.~ [BPT2B402] */
  IF ~~ THEN DO ~GiveGoldForce(5500)
AddexperienceParty(65079)
SetGlobal("T2_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",204)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #33 ~  Global("T2_B4","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",204)
GlobalGT("LAST_BATTLE","GLOBAL",204)
~ THEN BEGIN 45 // from:
  SAY #29191 /* ~That was hardly fair, routing your rival's reinforcements. But you have given me a great idea. What this contest needs are some fresh faces, and I have just the plan to provide some.~ [BPT2B402] */
  IF ~~ THEN DO ~GiveGoldForce(2750)
AddexperienceParty(65079)
SetGlobal("T2_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #34 ~  Global("START_BATTLE","GLOBAL",2)
Global("T2_B5","GLOBAL",1)
~ THEN BEGIN 46 // from:
  SAY #29192 /* ~Enough is enough! I am a fair master—as long as my needs are served by being fair—but this is ridiculous! I need fresh blood, so I have plucked a new crop of combatants from the conjuring kingdom of Thay. Meet your replacements, <CHARNAME>!~ [BPT2B501] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #35 ~  Global("T2_B5","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",205)
~ THEN BEGIN 47 // from:
  SAY #29193 /* ~Get. Out. Get out! GET OUT OF MY SIGHT BEFORE I BURN YOUR EYES FROM THEIR SOCKETS!~ [BPT2B502] */
  IF ~~ THEN REPLY #29194 /* ~What happened to all the alliteration? I hope we haven't broken Baeloth.~ */ DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("T2_B5","GLOBAL",-1)
SetGlobal("LAST_BATTLE","GLOBAL",205)
SetGlobal("TIER","GLOBAL",3)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #36 ~  Global("T2_B5","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",205)
GlobalGT("LAST_BATTLE","GLOBAL",205)
~ THEN BEGIN 48 // from:
  SAY #29193 /* ~Get. Out. Get out! GET OUT OF MY SIGHT BEFORE I BURN YOUR EYES FROM THEIR SOCKETS!~ [BPT2B502] */
  IF ~~ THEN REPLY #29194 /* ~What happened to all the alliteration? I hope we haven't broken Baeloth.~ */ DO ~GiveGoldForce(3000)
AddexperienceParty(130896)
SetGlobal("T2_B5","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("TIER","GLOBAL",3)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #37 ~  Global("TIER","GLOBAL",3)
GlobalLT("BPBAELOT_DIALOG","GLOBAL",30)
Global("LAST_BATTLE","GLOBAL",205)
~ THEN BEGIN 49 // from:
  SAY #29195 /* ~My apologies, <RACE>! I seldom lose my temper before an audience. It's just that I'm so... impressed by your performance, that I find it difficult to express myself. I should be joyous, for with you I have created the entertainment spectacle of a generation!~ [BPL301] */
  IF ~~ THEN DO ~SetGlobal("BPBAELOT_DIALOG","GLOBAL",30)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #29196 /* ~It is somewhat irksome that the crowd roars louder for you than when I step out to introduce the combatants, but... I shan't trouble you with the vicissitudes of show business! I shall find something far deadlier to trouble you with.~ [BPL302] */
  IF ~~ THEN REPLY #29197 /* ~I doubt you could lay any more trouble at my feet.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29198 /* ~While you've done an excellent job of entertaining my guests, it is time to eliminate your exasperating endurance. Ooh, that doesn't mean you won't go out with a bang! Far from it, in fact. Najim! Prepare a suitable gift for them.~ [BPL303] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #29199 /* ~Ah, already? I expected this one to hold out much longer. Well, any time is a good time for pain!~ [BPE303] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("CUTBP04")
~ EXIT
END

IF WEIGHT #38 ~  Global("START_BATTLE","GLOBAL",2)
Global("START_BATTLE","GLOBAL",2)
Global("START_BATTLE","GLOBAL",2)
Global("T3_B1","GLOBAL",1)
~ THEN BEGIN 53 // from:
  SAY #29200 /* ~Tell me: Which feeling do you enjoy the least? A foul set of clawed hands grasping at your neck? Or the painful, dissolving juices of slime creeping into your pantaloons? Wait! Don't answer! YOU can have BOTH!~ [BPT3B101] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #39 ~  !Global("START_BATTLE","GLOBAL",0)
Global("T3_B1","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",301)
~ THEN BEGIN 54 // from:
  SAY #29202 /* ~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~ [BPT3B104] */
  IF ~~ THEN DO ~GiveGoldForce(8000)
AddexperienceParty(152712)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("LAST_BATTLE","GLOBAL",301)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #29202 /* ~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~ [BPT3B104] */
  IF ~~ THEN DO ~GiveGoldForce(8000)
AddexperienceParty(152712)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("LAST_BATTLE","GLOBAL",301)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #40 ~  Global("T3_B1","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",301)
GlobalGT("LAST_BATTLE","GLOBAL",301)
~ THEN BEGIN 56 // from:
  SAY #29202 /* ~Oh, this is no fun! Your neck remains unscathed and your pantaloons are rapidly drying! What a waste of good slimes...~ [BPT3B104] */
  IF ~~ THEN DO ~GiveGoldForce(4000)
AddexperienceParty(152712)
SetGlobal("T3_B1","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #41 ~  Global("START_BATTLE","GLOBAL",2)
Global("T3_B2","GLOBAL",1)
~ THEN BEGIN 57 // from:
  SAY #29203 /* ~While subtlety can be deadly, who doesn't love a good, straightforward beating? And what beating isn't better with bigger brawlers? Watch as these brutal behemoths batter their enemies to bloody rubbish.~ [BPT3B201] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #29204 /* ~What a despicable display of enchanted weapons. Hm, it's almost as if someone gave them advice. Was it you, Najim?~ [BPT3B202] */
  IF ~~ THEN EXIT
END

IF WEIGHT #42 ~  Global("T3_B2","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",302)
~ THEN BEGIN 59 // from:
  SAY #29204 /* ~What a despicable display of enchanted weapons. Hm, it's almost as if someone gave them advice. Was it you, Najim?~ [BPT3B202] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
CreateVisualEffect("spdimndr",[591.503])
PlaySound("EFF_M13")
Wait(4)
Activate("BPNAJIM")
ActionOverride("BPNAJIM",StartDialogNoSet(Player1))
~ EXIT
END

IF WEIGHT #51 /* Triggers after states #: 72 71 66 65 64 63 62 61 even though they appear after this state */
~  Global("T3_B2","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",302)
GlobalGT("LAST_BATTLE","GLOBAL",302)
~ THEN BEGIN 60 // from:
  SAY #29204 /* ~What a despicable display of enchanted weapons. Hm, it's almost as if someone gave them advice. Was it you, Najim?~ [BPT3B202] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
CreateVisualEffect("spdimndr",[591.503])
PlaySound("EFF_M13")
Wait(4)
Activate("BPNAJIM")
ActionOverride("BPNAJIM",StartDialogNoSet(Player1))
~ EXIT
END

IF WEIGHT #43 ~  Global("START_BATTLE","GLOBAL",2)
Global("T3_B3","GLOBAL",1)
~ THEN BEGIN 61 // from:
  SAY #29205 /* ~From the uttermost reaches of the Great Glacier, I bring you a frozen treat unlike any you have enjoyed before. Thrill to the fearsome ferocity of these frosty foes!~ [BPT3B301] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #44 ~  Global("T3_B3","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",303)
~ THEN BEGIN 62 // from:
  SAY #29206 /* ~Confound it! Once more, you have anticipated my surprise! How does this keep happening?~ [BPT3B302] */
  IF ~~ THEN DO ~GiveGoldForce(12000)
AddexperienceParty(229068)
SetGlobal("T3_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",303)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #45 ~  Global("T3_B3","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",303)
GlobalGT("LAST_BATTLE","GLOBAL",303)
~ THEN BEGIN 63 // from:
  SAY #29206 /* ~Confound it! Once more, you have anticipated my surprise! How does this keep happening?~ [BPT3B302] */
  IF ~~ THEN DO ~GiveGoldForce(6000)
AddexperienceParty(229068)
SetGlobal("T3_B3","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #46 ~  Global("START_BATTLE","GLOBAL",2)
Global("T3_B4","GLOBAL",1)
~ THEN BEGIN 64 // from:
  SAY #29207 /* ~I nabbed this big fellow from the Plane of Fire, and MY, is he ever angry. I'm even having a little trouble keeping this one in check. Begin the battle before this big belligerent breaks loose!~ [BPT3B401] */
  IF ~~ THEN DO ~SetGlobal("START_BATTLE","GLOBAL",3)
SetCutSceneLite(TRUE)
~ EXIT
END

IF WEIGHT #47 ~  Global("T3_B4","GLOBAL",2)
GlobalLT("LAST_BATTLE","GLOBAL",304)
~ THEN BEGIN 65 // from:
  SAY #29208 /* ~Heh huh... it appears I have miscalculated once again. I grow tired of this game. Begone, <RACE>! You are beginning to bother me.~ [BPT3B402] */
  IF ~~ THEN DO ~GiveGoldForce(14000)
AddexperienceParty(305423)
SetGlobal("T3_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",304)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF WEIGHT #48 ~  Global("T3_B4","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",304)
GlobalGT("LAST_BATTLE","GLOBAL",304)
~ THEN BEGIN 66 // from:
  SAY #29208 /* ~Heh huh... it appears I have miscalculated once again. I grow tired of this game. Begone, <RACE>! You are beginning to bother me.~ [BPT3B402] */
  IF ~~ THEN DO ~GiveGoldForce(7000)
AddexperienceParty(305423)
SetGlobal("T3_B4","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutScene("CUTBP03")
~ EXIT
END

IF ~~ THEN BEGIN 67 // from: 72.16
  SAY #29209 /* ~Had I known you would grow to become such a thorn in my side, I would have left you where I found you. You must be very proud of defeating all the challenges that the great Baeloth has placed before you! How furious you must think I am! Hahaha. Surely, you are on the very edge of freedom!~ [BPT3B501] */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #29210 /* ~Hahahahaha—no... no escape. No more tricks. No more performances. No more last-minute victories. Your lives end here. But at least your wish will be granted: I will personally face you in combat.~ [BPT3B502] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #29211 /* ~Your antics grew stale long ago, <RACE>. Garaq, draw your blade and enter the arena with me. You and I shall bleed these creatures to death. Slowly.~ [BPT3B503] */
  IF ~~ THEN EXTERN ~BPELAN~ 21
END

IF ~~ THEN BEGIN 70 // from:
  SAY #29212 /* ~Such a dramatic turn of events! Gorch, would you mind repeating that splendid rant of indignation on the arena floor? I thought not. Garaq, Thardek, to me! Together we will traumatize these tenacious troopers!~ [BPT3B512] */
  IF ~~ THEN DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B5","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
~ EXIT
END

IF WEIGHT #49 ~  Global("BAELOTH_DOWN","OH9310",1)
~ THEN BEGIN 71 // from:
  SAY #29213 /* ~No... My captives triumph over me? Me? Baeloth the Entertainer? This is all a terrible cliché, unworthy of... my final enter... entertain...~ [BPTZ101] */
  IF ~~ THEN DO ~SetGlobal("BAELOTH_DEFEATED","GLOBAL",1)
~ EXIT
END

IF WEIGHT #50 ~  AreaCheck("OH9360")
~ THEN BEGIN 72 // from:
  SAY #29214 /* ~Ah, you have returned! Are you ready to spill blood on the arena floor?~ [BPL107] */
  IF ~  GlobalLT("LAST_BATTLE","GLOBAL",1)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T0_B0","GLOBAL",-1)
SetGlobal("T0_B1","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",1)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T0_B2","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",2)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B1","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",101)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B2","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",102)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B3","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",103)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B4","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",104)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B5","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",105)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B1","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",201)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B2","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",202)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B3","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",203)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B4","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",204)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B5","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",205)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B1","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",301)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B2","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",302)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B3","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",303)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B4","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  Global("LAST_BATTLE","GLOBAL",304)
~ THEN REPLY #29215 /* ~I am ready for your next challenge.~ */ DO ~SetGlobal("T3_B5","GLOBAL",1)
~ GOTO 67
  IF ~~ THEN REPLY #29216 /* ~I need more time to prepare.~ */ EXIT
  IF ~  GlobalGT("TIER","GLOBAL",0)
GlobalGT("LAST_BATTLE","GLOBAL",100)
~ THEN REPLY #29217 /* ~I would like to fight a Tier 1 battle.~ */ GOTO 73
  IF ~  GlobalGT("TIER","GLOBAL",1)
GlobalGT("LAST_BATTLE","GLOBAL",105)
~ THEN REPLY #29218 /* ~I would like to fight a Tier 2 battle.~ */ GOTO 74
  IF ~  GlobalGT("TIER","GLOBAL",2)
GlobalGT("LAST_BATTLE","GLOBAL",205)
~ THEN REPLY #29219 /* ~I would like to fight a Tier 3 battle.~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.18
  SAY #29220 /* ~And which battle would you like to fight again?~ [BPL108] */
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",100)
~ THEN REPLY #29221 /* ~Battle 1: The Plan-B Team~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B1","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",101)
~ THEN REPLY #29222 /* ~Battle 2: Bad Hobs and Boomsticks~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B2","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",102)
~ THEN REPLY #29223 /* ~Battle 3: How to Raise the Dead and Influence People~ */ DO ~SetGlobal("SPRITE_IS_DEADBPLLYRK","GLOBAL",0)
SetCutSceneLite(TRUE)
SetGlobal("T1_B3","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",103)
~ THEN REPLY #29224 /* ~Battle 4: Gauntlet of Ogres~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B4","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",104)
~ THEN REPLY #29225 /* ~Battle 5: The Margarine of Evil~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T1_B5","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~~ THEN REPLY #29226 /* ~On second thought, nevermind.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.19
  SAY #29227 /* ~Unfinished business, hmm? With which fight will you next astonish my attentive audience?~ [BPL109] */
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",200)
~ THEN REPLY #29228 /* ~Battle 6: Bugged~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B1","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",201)
~ THEN REPLY #29229 /* ~Battle 7: Unfriendly Neighborhood Spider Man~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B2","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",202)
~ THEN REPLY #29230 /* ~Battle 8: Thicket of Thieves~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B3","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",203)
~ THEN REPLY #29231 /* ~Battle 9: Gift of the Ogre Mage~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B4","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",204)
~ THEN REPLY #29232 /* ~Battle 10: Red Shirt Wizards~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T2_B5","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~~ THEN REPLY #29233 /* ~I have changed my mind.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.20
  SAY #29234 /* ~Didn't get it quite right the first time, did we? All right, which battle are you going to tackle?~ [BPL110] */
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",300)
~ THEN REPLY #29235 /* ~Battle 11: Swamped~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B1","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",301)
~ THEN REPLY #29236 /* ~Battle 12: A History of Violent Beatings~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B2","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",302)
~ THEN REPLY #29237 /* ~Battle 13: Ice to See You~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B3","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~  GlobalGT("LAST_BATTLE","GLOBAL",303)
~ THEN REPLY #29238 /* ~Battle 14: Catching Fire~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("T3_B4","GLOBAL",1)
SetGlobal("START_BATTLE","GLOBAL",1)
LockScroll()
~ EXIT
  IF ~~ THEN REPLY #29239 /* ~Actually, I do not wish to battle yet.~ */ EXIT
END
