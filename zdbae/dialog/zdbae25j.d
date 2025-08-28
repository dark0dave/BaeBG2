BEGIN ZDBAE25J

/* interjections */

/* saradush, volo */
EXTEND_TOP SARVOLO 9 #3
+ ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ + @10116 /* Tell me about Baeloth. */ + ZDBaeVoloBio
END

CHAIN SARVOLO ZDBaeVoloBio
@10117 /* Baeloth Barrityl, self-styled 'the Entertainer', a drow sorcerer of great power and greater ego. Infamous in the Underdark for his Black Pits, an arena where he- */
== ZDBAE25J @10118 /* Silence, you blundering buffoon! I'm writing my own scintillating story, sure to outsell every tale in your repertoire. I will not be reduced to a footnote. */
== SARVOLO @10119 /* Then perhaps I should omit you entirely? */
== ZDBAE25J @10120 /* Nonsense! Slide over your scroll, and I shall scribe something worthy of me. */
== ZDBAE25J @10121 /* Of course, I expect royalties for the privilege of adding my prose. */
== SARVOLO @10122 /* ...And I expect my revisions shall be extensive. */
EXTERN SARVOLO 9

/* solar, tob finale */
I_C_T FINSOL01 27 ZDBaeSolar
== ZDBAE25J IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN @10123 /* Foolish to forsake my company, of course. Still, should you choose to ascend, I shall await the boons you so greatly owe me. */
END
