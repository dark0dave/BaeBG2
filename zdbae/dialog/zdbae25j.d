BEGIN ZDBAE25J

/* interjections */

/* saradush, volo */
EXTEND_TOP SARVOLO 9 #3
+ ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ + ~Tell me about Baeloth.~ + ZDBaeVoloBio
END

CHAIN SARVOLO ZDBaeVoloBio
~ Baeloth Barrityl, self-styled 'the Entertainer', a drow sorcerer of great power and greater ego. Infamous in the Underdark for his Black Pits, an arena where he-~
== ZDBAE25J ~Silence, you blundering buffoon! I'm writing my own scintillating story, sure to outsell every tale in your repertoire. I will not be reduced to a footnote.~
== SARVOLO ~Then perhaps I should omit you entirely?~
== ZDBAE25J ~Nonsense! Slide over your scroll, and I shall scribe something worthy of me.~
== ZDBAE25J ~Of course, I expect royalties for the privilege of adding my prose.~
== SARVOLO ~...And I expect my revisions shall be extensive.~
EXTERN SARVOLO 9

/* solar, tob finale */
I_C_T FINSOL01 27 ZDBaeSolar
== ZDBAE25J IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN ~Foolish to forsake my company, of course. Still, should you choose to ascend, I shall await the boons you so greatly owe me.~
END
