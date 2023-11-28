BEGIN @10
IF ~~ baeloth
  OUTER_SPRINT baeloth SAY
BEGIN 0
// Baeloth's Lines
  SAY @1001
  SAY @1002
  SAY @1003
  SAY @1004
END

BEGIN @1001
// Line 1
  ~Ah, greetings, surface-dweller. Your timing is impeccable, for you stand in the presence of the illustrious Baeloth Barrityl, master of the arcane and entertainer extraordinaire.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Spoke_Line_1","GLOBAL",1)~
END

BEGIN @1002
// Line 2
  ~Do you see these confining walls, my unwitting companion? A temporary setback, I assure you. I, Baeloth, am not one to be ensnared for long. But perhaps, just perhaps, you could expedite my exit with a small, mutually beneficial arrangement?~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Spoke_Line_2","GLOBAL",1)~
END

BEGIN @1003
// Line 3
  ~You, there! I sense potential in you. Potential for profit, that is. Release me from this mundane cell, and I shall weave enchantments that would make your wildest dreams seem like mere child's play.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Spoke_Line_3","GLOBAL",1)~
END

BEGIN @1004
// Line 4
  ~Oh, don't look so shocked. I, Baeloth the Magnificent, am not one to stay confined for long. What say you and I strike a deal? A deal that will free me from this predicament and leave you with a taste of the extraordinary.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Spoke_Line_4","GLOBAL",1)~
END


BEGIN @20
IF ~Global("Baeloth_Rescued","GLOBAL",0)~ baeloth
  OUTER_SPRINT baeloth SAY
BEGIN 1
// Baeloth's Lines after Rescue
  SAY @2001
  SAY @2002
  SAY @2003
  SAY @2004
  SAY @2005
  SAY @2006
  SAY @2007
END

BEGIN @2001
// Line 1
  ~Ah, my savior! How fortunate you are to have rescued the illustrious Baeloth Barrityl. Together, we shall embark on a journey that will be the stuff of legends!~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Rescued_Line_1","GLOBAL",1)~
END

BEGIN @2002
// Line 2
  ~It seems you possess a modicum of intelligence after all. I've decided to grace your party with my presence. A wise decision on your part, I assure you.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Rescued_Line_2","GLOBAL",1)~
END

BEGIN @2003
// Line 3
  ~What a delightful turn of events! I was growing tired of this drab prison anyway. Let the adventures continue, my friend, with Baeloth leading the way!~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Rescued_Line_3","GLOBAL",1)~
END

BEGIN @2004
// Line 4
  ~You, my rescuer, have earned the privilege of basking in the glory of Baeloth's company. Try not to let your gratitude overwhelm you.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Rescued_Line_4","GLOBAL",1)~
END

BEGIN @2005
// Line 5
  ~At last, freedom! I suppose I could tolerate sticking around with you for a while. After all, my wit and charm are in high demand.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Rescued_Line_5","GLOBAL",1)~
END

BEGIN @2006
// Line 6
  ~How fortunate for you, my dear companion. I've decided to lend my considerable talents to your cause. Consider yourself privileged.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Rescued_Line_6","GLOBAL",1)~
END

BEGIN @2007
// Line 7
  ~Well, well, well. It seems fate has conspired to keep us together a bit longer. Fear not, for I, Baeloth the Magnificent, shall grace your party with my unparalleled expertise.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Rescued_Line_7","GLOBAL",1)~
END


BEGIN @30
IF ~Global("Baeloth_Left_In_Cell","GLOBAL",0)~ baeloth
  OUTER_SPRINT baeloth SAY
BEGIN 2
// Baeloth's Lines after Being Left in the Cell
  SAY @3001
  SAY @3002
  SAY @3003
END

BEGIN @3001
// Line 5
  ~I hope you enjoy the company of mediocrity, for you've just lost the chance to have the illustrious Baeloth by your side.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Left_Line_5","GLOBAL",1)~
END

BEGIN @3002
// Line 6
  ~This is your parting gift, then? Leaving me in this cell like a common criminal? You'll rue the day you chose such a fate.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Left_Line_6","GLOBAL",1)~
END

BEGIN @3003
// Line 8
  ~It seems you've decided to part ways with the inimitable Baeloth Barrityl. A decision you'll come to regret, mark my words.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Left_Line_8","GLOBAL",1)~
END

BEGIN @40
IF ~Global("Baeloth_In_Athkatla","GLOBAL",0)~ baeloth
  OUTER_SPRINT baeloth SAY
BEGIN 3
// Baeloth's Banter while in Athkatla
  SAY @4001
  SAY @4002
END

BEGIN @4002
// Banter Line 2
  ~These Cowled Wizards and their licenses for magic. How quaint. I, Baeloth Barrityl, am beyond such petty restrictions. My magic defies categorization, after all.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Athkatla_Line_2","GLOBAL",1)~
END

BEGIN @4002
// Banter Line 8
  ~Athkatla, my stage, and the streets my audience. Let the drama unfold, for Baeloth has arrived.~
  /* Add appropriate trigger conditions here */
  DO ~SetGlobal("Baeloth_Athkatla_Line_8","GLOBAL",1)~
END

