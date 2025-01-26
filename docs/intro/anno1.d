BEGIN ~ANNO1~

IF ~NumTimesTalkedTo(0)
!Dead("gladiator")~ THEN BEGIN 0 // from:
  SAY #15466 /* ~If I may have your attention once again, gentlefolk of Athkatla! Lehtinan is proud to provide for your amusement once again! Bring your attention to the pit as we see two combatants fighting for their very lives!~ [ANNO101] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15468 /* ~I trust all bets have been placed. Very well! BEGIN!~ [ANNO102] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut02a")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #16964 /* ~You will fight because you are a slave and you have been told to fight! Refuse and be devoured for the amusement of our guests!~ [ANNO103] */
  IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Minsc")~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut02c")
~ EXIT
  IF ~IsValidForPartyDialog("Aerie")~ THEN EXTERN ~AERIEJ~ 42
  IF ~!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOMENJ~ 161
  IF ~!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ 75
END
