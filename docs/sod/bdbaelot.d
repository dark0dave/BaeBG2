BEGIN ~BDBAELOT~

IF ~  AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)
~ THEN BEGIN 0 // from:
  SAY #67440 /* ~Fillet this fiery fiend, my friend!~ */
  IF ~~ THEN DO ~SetGlobal("bd_baeloth_kicked_mdd1330","global",1)
SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~  GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)
~ THEN BEGIN 1 // from:
  SAY #60614 /* ~You were warned once, <CHARNAME>, but that warning wasn't welcomed. And so we wind up with me walking away. Where? I know not. Somewhere without you.~ [BD60614] */
  IF ~~ THEN REPLY #60615 /* ~If that is your choice, I will respect it.~ */ GOTO 2
  IF ~~ THEN REPLY #60616 /* ~Is helping others really such a terrible burden, Baeloth?~ */ GOTO 3
  IF ~~ THEN REPLY #60617 /* ~Your exit is well timed, drow. Had you remained much longer, I would surely have slain you, or at least cut that endlessly wagging serpent tongue from your skull.~ */ GOTO 2
  IF ~~ THEN REPLY #60618 /* ~You will regret this decision. Baeloth. But I won't. Begone.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2 1.3
  SAY #60619 /* ~Don't try to stop me. My decision is determined. I will depart without delay.~ */
  IF ~~ THEN DO ~DestroyAllFragileEquipment(ADAMANTINE)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60620 /* ~A bigger burden than I am willing to bear. My decision is determined. I will depart without delay.~ */
  IF ~~ THEN DO ~DestroyAllFragileEquipment(ADAMANTINE)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
~ EXIT
END

IF ~  OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)
~ THEN BEGIN 4 // from:
  SAY #66567 /* ~You abandon me in this abysmal slaughterhouse? I am aghast at this extraordinary act of apathy.~ [BD66567] */
  IF ~~ THEN REPLY #66568 /* ~Wait here, Baeloth.~ */ GOTO 5
  IF ~  OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("baeloth")
~ THEN REPLY #66569 /* ~Go to the crypt's entrance. Should I have need of you, I'll seek you out there.~ */ GOTO 6
  IF ~~ THEN REPLY #66570 /* ~You're not being abandoned, drow. I need your power. Tread carefully. There are enemies all about.~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66571 /* ~An unexpected appeal, but I am always eager to accommodate. I will await you in this area.~ */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #66572 /* ~What? You would waste the world's most wonderful wizard with... forget it. If I'm wanted, wend your way to where we entered.~ */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #66573 /* ~Wise words from a worthy <PRO_MANWOMAN>. Lead on.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~  GlobalGT("bd_joined","locals",0)
~ THEN BEGIN 8 // from:
  SAY #57200 /* ~What absurdity is it you ask of me? You adjure me abandon you to an uncertain outcome?~ [BD57200] */
  IF ~~ THEN REPLY #57201 /* ~Bide here for a time. I will return to fetch you in due course.~ */ GOTO 9
  IF ~  GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("baeloth")
~ THEN REPLY #57202 /* ~I want you to go back to the camp. I'll come and find you later.~ */ DO ~SetGlobal("bd_npc_camp","locals",1)
~ GOTO 10
  IF ~~ THEN REPLY #57203 /* ~On second thought, I'll keep you with me.~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57204 /* ~Really? You will return to retrieve me in due course. Fine. Run away, then. Here I'll remain till you recognize the ruin you've wrought with this ridiculous ruling.~ */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #57205 /* ~"Baeloth, do this." "Baeloth, go there." "Baeloth, attend my every utterance"! Are you not aware, is it not obvious that I act of my own accord? I shall embark immediately for the encampment because I opt to do so and on no account because you ordered it. Baeloth Barrityl is not so casually dismissed as that.~ */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #57206 /* ~Oh, you'll keep me? You are too kind, my curiously conceited companion.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #65629 /* ~Permit the pompous peacock a little preening, Thayan.~ */
  IF ~~ THEN EXTERN ~BDPFAUG~ 18
END

IF ~  AreaCheck("bd4300")
GlobalGT("bd_plot","global",585)
~ THEN BEGIN 13 // from:
  SAY #65638 /* ~A fine finish for a fearsome foe, and hard-fought fame found for the hero of Baldur's Gate. A more condign conclusion I couldn't concoct.~ */
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("BD_Baeloth_Intro","GLOBAL",2)
AreaCheck("bd1000")
~ THEN BEGIN 14 // from:
  SAY #41963 /* ~Come one, come all! See the cream of the Sword Coast's combatant crop! Witness the brilliant and bizarre battles in the Black Pits of the one and only Baeloth the Entertainer!~ [BD41963] */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41964 /* ~Gather in the gallery, my gallants! 'Tis time for another test 'twixt two titanic terrors in Baeloth's blackest pit yet!~ [BD41964] */
  IF ~~ THEN EXTERN ~BDTCRWD1~ 0
END

IF ~~ THEN BEGIN 16 // from:
  SAY #41966 /* ~Fate favors you fortunate few who will witness these feral foes in a furious fray! First, I give you the wild wonder of the western kingdoms. Wise men say only fools rush in to face... the wolverine!~ [BD41966] */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT200",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #41968 /* ~But what wily wonder could conceivably win a war 'gainst the wolverine? There's but one answer: that hardy, hate-filled horror, the honey badger!~ [BD41968] */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT201",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41970 /* ~I bid the battle... BEGIN!~ [BD41970] */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
ActionOverride("CUTSPY",DestroySelf())
SetGlobal("BD_Baeloth_Intro","GLOBAL",4)
Face(SE)
ActionOverride("BDTCRWD1",Face(NW))
ActionOverride("BDTCRWD2",Face(S))
PlaySound("AMB_E45A")
ActionOverride("BDBSQUIR",MoveToPoint([2066.526]))
Wait(1)
ActionOverride("BDBRAT",MoveToPoint([1942.518]))
PlaySound("AMB_E45C")
SetGlobal("BD_CUT202","BD1000",1)
DialogueInterrupt(TRUE)
~ EXIT
END

IF ~  Global("BD_Baeloth_Intro","GLOBAL",4)
AreaCheck("bd1000")
~ THEN BEGIN 19 // from:
  SAY #39930 /* ~Patience, my peculiarly profound patrons! The primitive play you propose will be presented!~ [BD39930] */
  IF ~~ THEN REPLY #39931 /* ~Gods, Baeloth! What are you up to now?~ */ GOTO 21
  IF ~~ THEN REPLY #39932 /* ~This display is as disgusting as it is disturbing. And it's over now.~ */ GOTO 21
  IF ~~ THEN REPLY #39933 /* ~Your audience is right, drow. This is about as entertaining as watching grass grow.~ */ GOTO 21
  IF ~~ THEN REPLY #39934 /* ~Present it soon or I'll give these people the show they desire.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3
  SAY #39935 /* ~You crave more, you cretinous creatures—er, cultured company of canniness and class? I concur. And so I give you... the goblin!~ [BD39935] */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT203",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 19.1 19.2
  SAY #39940 /* ~Do I know you?~ [BD39940] */
  IF ~~ THEN REPLY #39941 /* ~You don't remember? It wasn't so long ago we fought together, each at the other's side.~ */ GOTO 22
  IF ~~ THEN REPLY #39942 /* ~We've not met. I'd remember you.~ */ GOTO 23
  IF ~~ THEN REPLY #39943 /* ~You should. I'm pretty sure I killed you once.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.2
  SAY #39944 /* ~Ah, yes. <CHARNAME>. It's... moderately mortifying to see you again. But the past is past, and these people pine for a performance. And so I give you... the goblin!~ [BD39944] */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT203",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #39945 /* ~You flatter me.~ [BD39945] */
  IF ~~ THEN EXTERN ~BDTCRWD1~ 2
END

IF ~~ THEN BEGIN 24 // from:
  SAY #39953 /* ~Silence, you simpering scullion!~ [BD39953] */
  IF ~~ THEN REPLY #39954 /* ~Wait—am I to understand this goblin doesn't want to fight?~ */ GOTO 25
  IF ~~ THEN REPLY #39955 /* ~The goblin clearly doesn't want to be here. Release her. Now.~ */ GOTO 25
  IF ~~ THEN REPLY #65505 /* ~Slay the goblin! Cleanse the filth from the face of Toril!~ */ EXTERN ~BDMKHIIN~ 8
  IF ~~ THEN REPLY #39956 /* ~A goblin against a drow—there's a fight worth watching. Do it, goblin! Fight! Fight!~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #39957 /* ~Think on this a tick, noble one. Have you ever met a goblin that DIDN'T thirst for the thrill of the fray?~ [BD39957] */
  IF ~~ THEN EXTERN ~BDMKHIIN~ 8
END

IF ~~ THEN BEGIN 26 // from:
  SAY #39959 /* ~Shut your slobbering facehole, you sniveling smutch!~ */
  IF ~~ THEN REPLY #39960 /* ~She says she doesn't want to fight.~ */ GOTO 27
  IF ~~ THEN REPLY #39961 /* ~Be silent, drow. I would speak with this goblin.~ */ GOTO 27
  IF ~~ THEN REPLY #39962 /* ~If there's to be no bloodshed, I'll be on my way.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 24.3 26.0 26.1 26.2
  SAY #39976 /* ~Recognize your role, you repellent wretch. I am the Entertainer. I speak. You watch and applaud—or remove yourself, if you'd rather.~ [BD39976] */
  IF ~~ THEN REPLY #39977 /* ~That does it. This place is finished.~ */ GOTO 28
  IF ~~ THEN REPLY #39978 /* ~I'll not let you kill a sentient creature for the entertainment of this mob.~ */ GOTO 28
  IF ~~ THEN REPLY #39979 /* ~I'll remove your head, you alliterating annoyance!~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #39982 /* ~I cannot concede to such contemptible, nay, criminal, coercion.~ [BD39982] */
  IF ~~ THEN EXTERN ~BDMKHIIN~ 9
END

IF ~  Global("BD_Baeloth_Intro","GLOBAL",6)
Global("bd_baeloth_join","global",0)
AreaCheck("bd1000")
~ THEN BEGIN 29 // from:
  SAY #39986 /* ~My pit of plenty... pauperized, made pitiful by a pernicious porcupine of a goblin! What a woeful waste.~ [BD39986] */
  IF ~~ THEN REPLY #39987 /* ~It was pitiful long before the goblin did what she did.~ */ DO ~SetGlobal("bd_baeloth_join","global",1)
~ EXTERN ~BDMKHIIN~ 10
  IF ~~ THEN REPLY #39988 /* ~Not that woeful. It really wasn't much of an arena to begin with.~ */ DO ~SetGlobal("bd_baeloth_join","global",1)
~ EXTERN ~BDMKHIIN~ 10
  IF ~~ THEN REPLY #39989 /* ~The goblin's more merciful than I would be in her shoes.~ */ DO ~SetGlobal("bd_baeloth_join","global",1)
~ EXTERN ~BDMKHIIN~ 10
END

IF ~~ THEN BEGIN 30 // from:
  SAY #62071 /* ~It was a honey badger.~ [BD62071] */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #62072 /* ~Forget this wretched rabble-rouser! What will happen to me, Baeloth Barrityl, Showman of Showmen, Entertainer of Entertainers?~ [BD62072] */
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY #62073 /* ~Would you consider joining me in facing the threat of Caelar Argent, the Shining Lady?~ */ EXTERN ~BDDYNAHJ~ 51
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY #62073 /* ~Would you consider joining me in facing the threat of Caelar Argent, the Shining Lady?~ */ GOTO 32
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN REPLY #62074 /* ~To the south, there is a Flaming Fist camp. Go there, and tell them <CHARNAME> sent you. They're accustomed to duergar and drow; they shouldn't give you too much trouble.~ */ EXTERN ~BDCORWIJ~ 23
  IF ~  !IsValidForPartyDialogue("CORWIN")
~ THEN REPLY #62074 /* ~To the south, there is a Flaming Fist camp. Go there, and tell them <CHARNAME> sent you. They're accustomed to duergar and drow; they shouldn't give you too much trouble.~ */ GOTO 33
  IF ~~ THEN REPLY #62075 /* ~Bide here a time. If I've need of a showman, I shall return for you.~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY #39995 /* ~You are wise beyond words, <PRO_RACE>.~ [BD39995] */
  IF ~~ THEN DO ~AddJournalEntry(61703,INFO)
TriggerActivation("Dog Cage",TRUE)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.3
  SAY #40001 /* ~I shall attend this camp as you suggest. You'll find my wits and wisdom there when you need them.~ [BD40001] */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetInterrupt(FALSE)
TriggerActivation("Dog Cage",TRUE)
AddJournalEntry(61703,INFO)
Face(SW)
SmallWait(5)
SetSequence(SEQ_CAST)
SmallWait(5)
CreateVisualEffectObject("SPDIMNDR","BAELOTH")
Wait(3)
CreateVisualEffect("SPDIMNDR",[540.3230])
Wait(1)
SetGlobal("bd_mkhiin_auto_talk","bd1000",1)
JumpToPoint([540.3230])
DialogueInterrupt(TRUE)
SetInterrupt(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.4
  SAY #40003 /* ~Your wish is my carefully considered course of action. I shall be here... until I choose not to be.~ */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
SetInterrupt(FALSE)
TriggerActivation("Dog Cage",TRUE)
AddJournalEntry(61704,INFO)
MoveToPoint([2190.352])
Face(NE)
SetGlobal("bd_mkhiin_auto_talk","bd1000",1)
DialogueInterrupt(TRUE)
SetInterrupt(TRUE)
~ EXIT
END

IF ~  OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","locals",0)
~ THEN BEGIN 35 // from:
  SAY #66574 /* ~<CHARNAME>. Can you confirm the curse of Korlasz is concluded?~ [BD66574] */
  IF ~~ THEN REPLY #66575 /* ~It will be soon, with your help. Join me.~ */ GOTO 36
  IF ~~ THEN REPLY #66576 /* ~When it's done, I'll let you know.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #66577 /* ~You can depend on this drow.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #66578 /* ~I anxiously await an announcement of her extirpation.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_joined","locals",0)
~ THEN BEGIN 38 // from:
  SAY #57194 /* ~Yes, what is it? Well? Don't just stand silent—say something.~ [BD57194] */
  IF ~~ THEN REPLY #57195 /* ~I would have you accompany me on my current venture.~ */ GOTO 39
  IF ~~ THEN REPLY #57196 /* ~For reasons that escape me at the moment, I would like you to join my party.~ */ GOTO 39
  IF ~~ THEN REPLY #57197 /* ~I've nothing to say to you, drow.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57198 /* ~And why not? Wait, I'm sure I can think of something... Come on, Barrityl, where are your wits? Oy. What a time to draw a blank. Very well. I'm with you.~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #57199 /* ~Certainly nothing worth my while. Well, if you've naught to say, be on your way. I've wasted words enough on you.~ */
  IF ~~ THEN EXIT
END
