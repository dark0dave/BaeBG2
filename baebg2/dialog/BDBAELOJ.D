BEGIN ~BDBAELOJ~

IF ~~ THEN BEGIN 0 // from:
  SAY #40014 /* <Invalid Strref 40014> */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #40015 /* <Invalid Strref 40015> */ EXTERN ~BDMKHIIN~ 28
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #40015 /* <Invalid Strref 40015> */ EXTERN ~BDMKHIIN~ 30
  IF ~~ THEN REPLY #40016 /* <Invalid Strref 40016> */ GOTO 1
  IF ~~ THEN REPLY #40017 /* <Invalid Strref 40017> */ GOTO 1
  IF ~~ THEN REPLY #40018 /* <Invalid Strref 40018> */ EXTERN ~BDMKHIIN~ 26
END

IF ~~ THEN BEGIN 1 // from: 0.3 0.2
  SAY #40025 /* <Invalid Strref 40025> */
  IF ~~ THEN REPLY #40026 /* <Invalid Strref 40026> */ GOTO 3
  IF ~~ THEN REPLY #62074 /* <Invalid Strref 62074> */ GOTO 2
  IF ~~ THEN REPLY #62075 /* <Invalid Strref 62075> */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #40033 /* <Invalid Strref 40033> */
  IF ~~ THEN REPLY #62091 /* <Invalid Strref 62091> */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
SetGlobal("bd_npc_camp","locals",1)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 23
  IF ~~ THEN REPLY #62092 /* <Invalid Strref 62092> */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
SetGlobal("bd_npc_camp","locals",1)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 25
END

IF ~~ THEN BEGIN 3 // from: 1.2 1.0
  SAY #40029 /* <Invalid Strref 40029> */
  IF ~~ THEN REPLY #40030 /* <Invalid Strref 40030> */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 23
  IF ~~ THEN REPLY #40031 /* <Invalid Strref 40031> */ DO ~SetGlobal("bd_joined","locals",0)
ChangeAIScript("bdparty",DEFAULT)
LeaveParty()
~ EXTERN ~BDMKHIIN~ 25
END

IF ~~ THEN BEGIN 4 // from:
  SAY #35630 /* <Invalid Strref 35630> */
  IF ~~ THEN EXTERN ~BDIVANN~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY #64773 /* <Invalid Strref 64773> */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 34
END

IF ~~ THEN BEGIN 6 // from:
  SAY #35928 /* <Invalid Strref 35928> */
  IF ~~ THEN EXTERN ~BDCORWIN~ 19
END

IF ~~ THEN BEGIN 7 // from:
  SAY #43619 /* <Invalid Strref 43619> */
  IF ~~ THEN DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("bd_sdd200_baeloth","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("bdcutgl3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #56062 /* <Invalid Strref 56062> */
  IF ~~ THEN EXTERN ~BDMENHI1~ 2
END

IF ~~ THEN BEGIN 9 // from:
  SAY #56063 /* <Invalid Strref 56063> */
  IF ~~ THEN EXTERN ~BDMENHI2~ 2
END

IF ~~ THEN BEGIN 10 // from:
  SAY #56064 /* <Invalid Strref 56064> */
  IF ~~ THEN EXTERN ~BDMENHI3~ 2
END

IF ~~ THEN BEGIN 11 // from:
  SAY #56065 /* <Invalid Strref 56065> */
  IF ~~ THEN EXTERN ~BDMENHI4~ 2
END

IF ~~ THEN BEGIN 12 // from:
  SAY #56069 /* <Invalid Strref 56069> */
  IF ~~ THEN EXTERN ~BDMENHI5~ 2
END

IF ~~ THEN BEGIN 13 // from:
  SAY #56244 /* <Invalid Strref 56244> */
  IF ~~ THEN EXTERN ~BDMENHI6~ 2
END

IF ~~ THEN BEGIN 14 // from:
  SAY #36600 /* <Invalid Strref 36600> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #36600 /* <Invalid Strref 36600> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #43452 /* <Invalid Strref 43452> */
  IF ~~ THEN EXTERN ~BDBF2~ 3
  IF ~  IsValidForPartyDialogue("KHALID")
~ THEN EXTERN ~BDKHALID~ 74
END

IF ~~ THEN BEGIN 17 // from:
  SAY #46666 /* <Invalid Strref 46666> */
  IF ~~ THEN EXTERN ~BDTHIRRI~ 18
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 12
END

IF ~~ THEN BEGIN 18 // from:
  SAY #46668 /* <Invalid Strref 46668> */
  IF ~~ THEN EXTERN ~BDTHIRRI~ 17
END

IF ~~ THEN BEGIN 19 // from:
  SAY #60753 /* <Invalid Strref 60753> */
  IF ~~ THEN EXTERN ~BDPRITCH~ 24
END

IF ~  AreaCheck("BD0114")
Global("BD_POINT6","BD0114",2)
~ THEN BEGIN 20 // from:
  SAY #47217 /* <Invalid Strref 47217> */
  IF ~~ THEN DO ~SetGlobal("BD_POINT6","BD0114",3)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #47306 /* <Invalid Strref 47306> */
  IF ~~ THEN DO ~ActionOverride("MKHIIN",MoveToPoint([1089.1796]))
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #52451 /* <Invalid Strref 52451> */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 61
END

IF ~~ THEN BEGIN 23 // from:
  SAY #50817 /* <Invalid Strref 50817> */
  IF ~~ THEN EXTERN ~BDDOGW01~ 5
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~BDVICONJ~ 14
END

IF ~~ THEN BEGIN 24 // from:
  SAY #37642 /* <Invalid Strref 37642> */
  IF ~~ THEN EXTERN ~BDWILCH~ 5
END

IF ~~ THEN BEGIN 25 // from:
  SAY #41795 /* <Invalid Strref 41795> */
  IF ~~ THEN REPLY #41796 /* <Invalid Strref 41796> */ EXTERN ~BDSHAPUR~ 20
  IF ~~ THEN REPLY #41797 /* <Invalid Strref 41797> */ EXTERN ~BDSHAPUR~ 21
  IF ~~ THEN REPLY #41798 /* <Invalid Strref 41798> */ EXTERN ~BDSHAPUR~ 20
END

IF ~~ THEN BEGIN 26 // from:
  SAY #41839 /* <Invalid Strref 41839> */
  IF ~~ THEN EXTERN ~BDKAELET~ 4
END

IF ~~ THEN BEGIN 27 // from:
  SAY #41841 /* <Invalid Strref 41841> */
  IF ~~ THEN EXTERN ~BDUMAR~ 5
END

IF ~~ THEN BEGIN 28 // from:
  SAY #41844 /* <Invalid Strref 41844> */
  IF ~  !IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~BDUMAR~ 6
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~BDSAFANJ~ 73
END

IF ~~ THEN BEGIN 29 // from:
  SAY #41848 /* <Invalid Strref 41848> */
  IF ~~ THEN EXTERN ~BDKAELET~ 5
END

IF ~~ THEN BEGIN 30 // from:
  SAY #66069 /* <Invalid Strref 66069> */
  IF ~~ THEN EXTERN ~BDSHAPUR~ 30
END

IF ~~ THEN BEGIN 31 // from:
  SAY #49150 /* <Invalid Strref 49150> */
  IF ~~ THEN EXTERN ~BDSINDRE~ 3
END

IF ~~ THEN BEGIN 32 // from:
  SAY #50164 /* <Invalid Strref 50164> */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 91
END

IF ~~ THEN BEGIN 33 // from:
  SAY #40544 /* <Invalid Strref 40544> */
  IF ~~ THEN EXTERN ~BDFLOSS~ 7
END

IF ~~ THEN BEGIN 34 // from:
  SAY #60427 /* <Invalid Strref 60427> */
  IF ~~ THEN DO ~SetGlobal("bd_battle","global",32)
StartCutSceneMode()
StartCutSceneEx("bdcut40d",TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #38218 /* <Invalid Strref 38218> */
  IF ~~ THEN EXTERN ~BDTHRUDD~ 1
END

IF ~~ THEN BEGIN 36 // from:
  SAY #38288 /* <Invalid Strref 38288> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #38746 /* <Invalid Strref 38746> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #38951 /* <Invalid Strref 38951> */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 66
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 67
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 68
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 69
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 39 // from:
  SAY #39004 /* <Invalid Strref 39004> */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF ~  Global("BD_Sacrifice_Baeloth","bd4500",1)
GlobalLT("bd_plot","global",550)
~ THEN BEGIN 40 // from:
  SAY #39052 /* <Invalid Strref 39052> */
  IF ~  !Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #39053 /* <Invalid Strref 39053> */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 41
  IF ~  Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #39053 /* <Invalid Strref 39053> */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 44
  IF ~  !Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #39054 /* <Invalid Strref 39054> */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 42
  IF ~  Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #39054 /* <Invalid Strref 39054> */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 44
  IF ~  !Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #39055 /* <Invalid Strref 39055> */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 43
  IF ~  Global("bd_thrix_mark_baeloth","global",1)
~ THEN REPLY #39055 /* <Invalid Strref 39055> */ DO ~SetGlobal("BD_Sacrifice_Baeloth","bd4500",3)
~ GOTO 44
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #39056 /* <Invalid Strref 39056> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2
  SAY #39057 /* <Invalid Strref 39057> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 40.4
  SAY #39058 /* <Invalid Strref 39058> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 40.5 40.3 40.1
  SAY #69992 /* <Invalid Strref 69992> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #39338 /* <Invalid Strref 39338> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #39402 /* <Invalid Strref 39402> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #56471 /* <Invalid Strref 56471> */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 142
END

IF ~  Global("bd_baeloth_reputation_warning","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #60606 /* <Invalid Strref 60606> */
  IF ~~ THEN REPLY #60607 /* <Invalid Strref 60607> */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 49
  IF ~~ THEN REPLY #60608 /* <Invalid Strref 60608> */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 49
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #60609 /* <Invalid Strref 60609> */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 50
  IF ~  !CheckStatGT(Player1,11,CHR)
~ THEN REPLY #60609 /* <Invalid Strref 60609> */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 51
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #60610 /* <Invalid Strref 60610> */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 50
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN REPLY #60610 /* <Invalid Strref 60610> */ DO ~SetGlobal("bd_baeloth_reputation_warning","GLOBAL",2)
~ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.1 48.0
  SAY #60611 /* <Invalid Strref 60611> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.4 48.2
  SAY #60612 /* <Invalid Strref 60612> */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.5 48.3
  SAY #60613 /* <Invalid Strref 60613> */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
EscapeArea()
~ EXIT
END
