BEGIN BG2BAE25B

// BEGIN @40
// IF ~Global("Baeloth_In_Athkatla","GLOBAL",0)~ baeloth
//   OUTER_SPRINT baeloth SAY
// BEGIN 3
// // Baeloth's Banter while in Athkatla
//   SAY @4001
//   SAY @4002
// END

// BEGIN @4002
// // Banter Line 2
//   ~These Cowled Wizards and their licenses for magic. How quaint. I, Baeloth Barrityl, am beyond such petty restrictions. My magic defies categorization, after all.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Athkatla_Line_2","GLOBAL",1)~
// END

// BEGIN @4002
// // Banter Line 8
//   ~Athkatla, my stage, and the streets my audience. Let the drama unfold, for Baeloth has arrived.~
//   /* Add appropriate trigger conditions here */
//   DO ~SetGlobal("Baeloth_Athkatla_Line_8","GLOBAL",1)~
// END
