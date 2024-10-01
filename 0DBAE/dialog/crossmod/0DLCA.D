// Caelar Banter
CHAIN
IF ~InParty("0DBAE")
    See("0DBAE")
    See("XACAELAB")
    InParty("XACAELAB")
    !StateCheck("XACAELAB",CD_STATE_NOTVALID)
    !StateCheck("0DBAE",CD_STATE_NOTVALID)
    Global("0DBAEXACAELAB1","GLOBAL",0)~
THEN 0DBAEB 0DBAEXACAELAB1
@10000 /* Behold how high you have risen, Caelar, ascending from abyssal depths of Avernus! How -hot- it must have been! Such -blazing battles- befitting of stage and song! */
DO ~SetGlobal("0DBAEXACAELAB1","GLOBAL",1)~
== XACAELAB @10001 /* Coming from you, -Drow-, I question your sincerity. */
== 0DBAEB @10002 /* -Insincere?- Me? You must mistake me for a meddling moronic miscreant! */
== XACAELAB @10003 /* Your 'entertaining' and 'dramatic' attitude, Drow, have made me question your motives and what you're hiding. */
== 0DBAEB @10004 /* Such suspicion! It is not every day that an angel assails herself free from Avernus without outside assistance! */
== XACAELAB @10005 /* I... see. I did not expect someone who could easily be my enemy celebrating my success. */
== 0DBAEB @10006 /* Oh, I know well the feeling of loud crowds and splendid celebrations. Often, the very most voluminous voices were from those who wanted me dead, disemboweled, disgraced, or deposed. */
== XACAELAB @10007 /* You have lived strangely, Drow. Still, why? */
== 0DBAEB @10008 /* Because I -survived- their assaults and my very vitality outrages their asinine assassination attempts! */
== XACAELAB @10009 /* Success is the greatest revenge. I see your point. */
EXIT

// Corwin Banter
CHAIN
IF ~InParty("0DBAE")
    See("0DBAE")
    See("XACORWIN")
    InParty("XACORWIN")
    !StateCheck("XACORWIN",CD_STATE_NOTVALID)
    !StateCheck("0DBAE",CD_STATE_NOTVALID)
    Global("0DBAEXACORWIB1","GLOBAL",0)~
THEN XACORWIB 0DBAEXACORWIB1
@10010 /* Baeloth, you survived the siege of Dragonspear, the assault on Avernus, and came here? I'm not sure if I should be surprised. */
DO ~SetGlobal("0DBAEXACORWIB1","GLOBAL",1)~
== 0DBAEB @10011 /* Oh, captain, my captain, dare you underestimate the capacity of this capable Drow? */
== XACORWIB @10012 /* I suppose so. What's kept you busy since the banishment from Baldur's Gate? */
== 0DBAEB @10013 /* Reviving my business empire. */
== XACORWIB @10014 /* You're still determined to build up from that... calling it a side show would be generous. */
== 0DBAEB @10015 /* Now, now. You can take Baeloth out the Black Pits over his blackened dead body, but you can't take the Black Pits for they are burned into my very SOUL! */
== XACORWIB @10016 /* Well, -someone's- proud of his mission in life. */
== 0DBAEB @10017 /* ... */
EXIT
