BEGIN ~DSHOP02~

IF ~True()~ THEN BEGIN 0 // from:
  SAY #26474 /* ~Ho there, I have worked long and lonely hours, and it is good to see a friendly face! Care to see some of my trinkets and far-flung wares?~ */
  IF ~Global("Jahaboam","GLOBAL",0)~ THEN GOTO 15
  IF ~Global("Jahaboam","GLOBAL",1)~ THEN GOTO 14
END

IF ~~ THEN BEGIN 1 // from: 15.0
  SAY #26475 /* ~Something... for the lady, perhaps? Oh, yes, I see a glint in the eye. There is romance afoot, and it needs the dancing partner of the adornments of affection!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 245
END

IF ~~ THEN BEGIN 2 // from:
  SAY #26477 /* ~Nonsense! Oh, but perhaps I have overstepped my bounds with my observant eyes. I apologize most profusely. ~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26478 /* ~It changes nothing though. You, <PRO_SIRMAAM>, your name?~ */
  IF ~~ THEN REPLY #26479 /* ~None of your business.~ */ GOTO 4
  IF ~~ THEN REPLY #26480 /* ~<CHARNAME>.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26481 /* ~Ah, perhaps it is your curtness that has made the air around the lady so chilly. Might I offer a suggestion? Gifts will warm the coldest hearts.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 246
END

IF ~~ THEN BEGIN 5 // from:
  SAY #9660 /* ~I believe I was speaking to the gentleman. Now, sir, she is a lady of the battlefield, so a commemorative blade possibly? No! I have the perfect thing!~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #9668 /* ~<CHARNAME>? The name of a man that knows his heart, but who perhaps has troubles warming the lady's heart. By no fault of your own, of course! Perhaps a gift?~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 246
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #9674 /* ~A locket to carry an endearing portrait! A minor magic will instantly implant a likeness of the lady. A mere 20 gold, that you might but glance at my other items.~ */
  IF ~PartyGoldGT(19)~ THEN REPLY #9675 /* ~Fine, I'll take it.~ */ DO ~TakePartyGold(20)
GiveItemCreate("MISC5W",LastTalkedToBy,0,0,0)~ EXTERN ~JAHEIRAJ~ 247
  IF ~~ THEN REPLY #9690 /* ~I believe the lady said she didn't want anything. ~ */ GOTO 12
  IF ~~ THEN REPLY #9692 /* ~I would like to get it, but I won't pay 20 gold.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #9696 /* ~Oh, no refunds at that price. The enchantment has already given it your faces when you handled it. But return to see my other wares, and I'll see what I can do.~ */
  IF ~~ THEN REPLY #9711 /* ~Thank you then. I will be back.~ */ GOTO 12
  IF ~~ THEN REPLY #9712 /* ~No, I don't think that's likely.~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY #9701 /* ~Then I shall give it to you! A sign of friendship becomes your sign of caring. Just return to see my other items.~ */
  IF ~~ THEN DO ~GiveItemCreate("MISC5W",LastTalkedToBy,0,0,0)~ EXTERN ~JAHEIRAJ~ 247
END

IF ~~ THEN BEGIN 10 // from:
  SAY #9710 /* ~Well said, <PRO_SIRMAAM>! Some of us are reluctant to accept affections. A little encouragement is all that is needed. Now please return to see my other wares, will you?~ */
  IF ~~ THEN REPLY #25539 /* ~Yes, I think I will do that.~ */ GOTO 12
  IF ~~ THEN REPLY #26482 /* ~Perhaps some other time.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from:
  SAY #26483 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1 8.0 8.1 10.0 10.1
  SAY #26491 /* ~As you will. Farewell for now. Good luck to you and the lady. Ahh, to be young. Jahaboam bids you not squander what is there to grasp. Farewell!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 250
END

IF ~~ THEN BEGIN 13 // from: 14.1
  SAY #61141 /* ~As you will. Farewell then.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.1 15.1
  SAY #61146 /* ~Just say the word, and all manner of wonder is at your disposal. Eh, and don't overlook the mundane. Bread and butter sales, they are. ~ */
  IF ~~ THEN REPLY #61148 /* ~Yes, let me see what you have.~ */ DO ~StartStore("dshop02",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY #61149 /* ~No thanks, not right now.~ */ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 0.0
  SAY #61147 /* ~Something special, something plain, whatever you wish for in these uncertain times—I can make accommodation.~ */
  IF ~OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
IsValidForPartyDialogue("JAHEIRA")
InPartySlot(LastTalkedToBy,0)~ THEN DO ~SetGlobal("Jahaboam","GLOBAL",1)~ GOTO 1
  IF ~OR(4)
Global("JaheiraRomanceActive","GLOBAL",0)
Global("JaheiraRomanceActive","GLOBAL",3)
!IsValidForPartyDialogue("JAHEIRA")
!InPartySlot(LastTalkedToBy,0)~ THEN GOTO 14
END
