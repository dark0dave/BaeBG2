// Caelar Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    See("XACAELAB")
    InParty("XACAELAB")
    !StateCheck("XACAELAB",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAEXACAELAB1","GLOBAL",0)~
THEN ZDBAEB ZDBAEXACAELAB1
~Behold how high you have risen, Caelar, ascending from abyssal depths of Avernus! How -hot- it must have been! Such -blazing battles- befitting of stage and song!~
DO ~SetGlobal("ZDBAEXACAELAB1","GLOBAL",1)~
== XACAELAB ~Coming from you, -Drow-, I question your sincerity.~
== ZDBAEB ~-Insincere?- Me? You must mistake me for a meddling moronic miscreant!~
== XACAELAB ~Your 'entertaining' and 'dramatic' attitude, Drow, have made me question your motives and what you're hiding.~
== ZDBAEB ~Such suspicion! It is not every day that an angel assails herself free from Avernus without outside assistance!~
== XACAELAB ~I... see. I did not expect someone who could easily be my enemy celebrating my success.~
== ZDBAEB ~Oh, I know well the feeling of loud crowds and splendid celebrations. Often, the very most voluminous voices were from those who wanted me dead, disemboweled, disgraced, or deposed.~
== XACAELAB ~You have lived strangely, Drow. Still, why?~
== ZDBAEB ~Because I -survived- their assaults and my very vitality outrages their asinine assassination attempts!~
== XACAELAB ~Success is the greatest revenge. I think I understand you more than I released.~
EXIT

// Corwin Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    See("XACORWIN")
    InParty("XACORWIN")
    !StateCheck("XACORWIN",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAEXACORWIB1","GLOBAL",0)~
THEN XACORWIB ZDBAEXACORWIB1
~Baeloth, you survived the siege of Dragonspear, the assault on Avernus, and came here? I'm not sure if I should be surprised.~
DO ~SetGlobal("ZDBAEXACORWIB1","GLOBAL",1)~
== ZDBAEB ~Oh, captain, my captain, dare you underestimate the capacity of this capable Drow?~
== XACORWIB ~I suppose so. What's kept you busy since the banishment from Baldur's Gate?~
== ZDBAEB ~Reviving my business empire.~
== XACORWIB ~You're still determined to build up from that... calling it a side show would be generous.~
== ZDBAEB ~Now, now. You can take Baeloth out the Black Pits over his blackened dead body, but you can't take the Black Pits for they are burned into my very SOUL!~
== XACORWIB ~Well, -someone's- proud of his mission in life.~
== ZDBAEB ~...~
EXIT
