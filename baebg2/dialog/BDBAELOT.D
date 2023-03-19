BEGIN ~BDBAELOT~

IF ~  AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)
~ THEN BEGIN 0 // from:
  SAY #67440 /* <Invalid Strref 67440> */
  IF ~~ THEN DO ~SetGlobal("bd_baeloth_kicked_mdd1330","global",1)
SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~  GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)
~ THEN BEGIN 1 // from:
  SAY #60614 /* <Invalid Strref 60614> */
  IF ~~ THEN REPLY #60615 /* <Invalid Strref 60615> */ GOTO 2
  IF ~~ THEN REPLY #60616 /* <Invalid Strref 60616> */ GOTO 3
  IF ~~ THEN REPLY #60617 /* <Invalid Strref 60617> */ GOTO 2
  IF ~~ THEN REPLY #60618 /* <Invalid Strref 60618> */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.2 1.0
  SAY #60619 /* <Invalid Strref 60619> */
  IF ~~ THEN DO ~DestroyAllFragileEquipment(ADAMANTINE)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #60620 /* <Invalid Strref 60620> */
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
  SAY #66567 /* <Invalid Strref 66567> */
  IF ~~ THEN REPLY #66568 /* <Invalid Strref 66568> */ GOTO 5
  IF ~  OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("baeloth")
~ THEN REPLY #66569 /* <Invalid Strref 66569> */ GOTO 6
  IF ~~ THEN REPLY #66570 /* <Invalid Strref 66570> */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66571 /* <Invalid Strref 66571> */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #66572 /* <Invalid Strref 66572> */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #66573 /* <Invalid Strref 66573> */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~  GlobalGT("bd_joined","locals",0)
~ THEN BEGIN 8 // from:
  SAY #57200 /* <Invalid Strref 57200> */
  IF ~~ THEN REPLY #57201 /* <Invalid Strref 57201> */ GOTO 9
  IF ~  GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("baeloth")
~ THEN REPLY #57202 /* <Invalid Strref 57202> */ DO ~SetGlobal("bd_npc_camp","locals",1)
~ GOTO 10
  IF ~~ THEN REPLY #57203 /* <Invalid Strref 57203> */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57204 /* <Invalid Strref 57204> */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #57205 /* <Invalid Strref 57205> */
  IF ~~ THEN DO ~SetGlobal("bd_joined","locals",0)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #57206 /* <Invalid Strref 57206> */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #65629 /* <Invalid Strref 65629> */
  IF ~~ THEN EXTERN ~BDPFAUG~ 18
END

IF ~  AreaCheck("bd4300")
GlobalGT("bd_plot","global",585)
~ THEN BEGIN 13 // from:
  SAY #65638 /* <Invalid Strref 65638> */
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("BD_Baeloth_Intro","GLOBAL",2)
AreaCheck("bd1000")
~ THEN BEGIN 14 // from:
  SAY #41963 /* <Invalid Strref 41963> */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41964 /* <Invalid Strref 41964> */
  IF ~~ THEN EXTERN ~BDTCRWD1~ 0
END

IF ~~ THEN BEGIN 16 // from:
  SAY #41966 /* <Invalid Strref 41966> */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT200",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #41968 /* <Invalid Strref 41968> */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT201",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41970 /* <Invalid Strref 41970> */
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
  SAY #39930 /* <Invalid Strref 39930> */
  IF ~~ THEN REPLY #39931 /* <Invalid Strref 39931> */ GOTO 21
  IF ~~ THEN REPLY #39932 /* <Invalid Strref 39932> */ GOTO 21
  IF ~~ THEN REPLY #39933 /* <Invalid Strref 39933> */ GOTO 21
  IF ~~ THEN REPLY #39934 /* <Invalid Strref 39934> */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3
  SAY #39935 /* <Invalid Strref 39935> */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT203",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.1 19.0
  SAY #39940 /* <Invalid Strref 39940> */
  IF ~~ THEN REPLY #39941 /* <Invalid Strref 39941> */ GOTO 22
  IF ~~ THEN REPLY #39942 /* <Invalid Strref 39942> */ GOTO 23
  IF ~~ THEN REPLY #39943 /* <Invalid Strref 39943> */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.2 21.0
  SAY #39944 /* <Invalid Strref 39944> */
  IF ~~ THEN DO ~SetGlobal("BD_Baeloth_Intro","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("BDCUT203",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #39945 /* <Invalid Strref 39945> */
  IF ~~ THEN EXTERN ~BDTCRWD1~ 2
END

IF ~~ THEN BEGIN 24 // from:
  SAY #39953 /* <Invalid Strref 39953> */
  IF ~~ THEN REPLY #39954 /* <Invalid Strref 39954> */ GOTO 25
  IF ~~ THEN REPLY #39955 /* <Invalid Strref 39955> */ GOTO 25
  IF ~~ THEN REPLY #65505 /* <Invalid Strref 65505> */ EXTERN ~BDMKHIIN~ 8
  IF ~~ THEN REPLY #39956 /* <Invalid Strref 39956> */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.1 24.0
  SAY #39957 /* <Invalid Strref 39957> */
  IF ~~ THEN EXTERN ~BDMKHIIN~ 8
END

IF ~~ THEN BEGIN 26 // from:
  SAY #39959 /* <Invalid Strref 39959> */
  IF ~~ THEN REPLY #39960 /* <Invalid Strref 39960> */ GOTO 27
  IF ~~ THEN REPLY #39961 /* <Invalid Strref 39961> */ GOTO 27
  IF ~~ THEN REPLY #39962 /* <Invalid Strref 39962> */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.1 26.0 24.3
  SAY #39976 /* <Invalid Strref 39976> */
  IF ~~ THEN REPLY #39977 /* <Invalid Strref 39977> */ GOTO 28
  IF ~~ THEN REPLY #39978 /* <Invalid Strref 39978> */ GOTO 28
  IF ~~ THEN REPLY #39979 /* <Invalid Strref 39979> */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2 27.1 27.0
  SAY #39982 /* <Invalid Strref 39982> */
  IF ~~ THEN EXTERN ~BDMKHIIN~ 9
END

IF ~  Global("BD_Baeloth_Intro","GLOBAL",6)
Global("bd_baeloth_join","global",0)
AreaCheck("bd1000")
~ THEN BEGIN 29 // from:
  SAY #39986 /* <Invalid Strref 39986> */
  IF ~~ THEN REPLY #39987 /* <Invalid Strref 39987> */ DO ~SetGlobal("bd_baeloth_join","global",1)
~ EXTERN ~BDMKHIIN~ 10
  IF ~~ THEN REPLY #39988 /* <Invalid Strref 39988> */ DO ~SetGlobal("bd_baeloth_join","global",1)
~ EXTERN ~BDMKHIIN~ 10
  IF ~~ THEN REPLY #39989 /* <Invalid Strref 39989> */ DO ~SetGlobal("bd_baeloth_join","global",1)
~ EXTERN ~BDMKHIIN~ 10
END

IF ~~ THEN BEGIN 30 // from:
  SAY #62071 /* <Invalid Strref 62071> */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #62072 /* <Invalid Strref 62072> */
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY #62073 /* <Invalid Strref 62073> */ EXTERN ~BDDYNAHJ~ 51
  IF ~  !IsValidForPartyDialogue("DYNAHEIR")
~ THEN REPLY #62073 /* <Invalid Strref 62073> */ GOTO 32
  IF ~  IsValidForPartyDialogue("CORWIN")
~ THEN REPLY #62074 /* <Invalid Strref 62074> */ EXTERN ~BDCORWIJ~ 23
  IF ~  !IsValidForPartyDialogue("CORWIN")
~ THEN REPLY #62074 /* <Invalid Strref 62074> */ GOTO 33
  IF ~~ THEN REPLY #62075 /* <Invalid Strref 62075> */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY #39995 /* <Invalid Strref 39995> */
  IF ~~ THEN DO ~AddJournalEntry(61703,INFO)
TriggerActivation("Dog Cage",TRUE)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.3
  SAY #40001 /* <Invalid Strref 40001> */
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
  SAY #40003 /* <Invalid Strref 40003> */
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
  SAY #66574 /* <Invalid Strref 66574> */
  IF ~~ THEN REPLY #66575 /* <Invalid Strref 66575> */ GOTO 36
  IF ~~ THEN REPLY #66576 /* <Invalid Strref 66576> */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #66577 /* <Invalid Strref 66577> */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #66578 /* <Invalid Strref 66578> */
  IF ~~ THEN EXIT
END

IF ~  Global("bd_joined","locals",0)
~ THEN BEGIN 38 // from:
  SAY #57194 /* <Invalid Strref 57194> */
  IF ~~ THEN REPLY #57195 /* <Invalid Strref 57195> */ GOTO 39
  IF ~~ THEN REPLY #57196 /* <Invalid Strref 57196> */ GOTO 39
  IF ~~ THEN REPLY #57197 /* <Invalid Strref 57197> */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.0
  SAY #57198 /* <Invalid Strref 57198> */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #57199 /* <Invalid Strref 57199> */
  IF ~~ THEN EXIT
END
