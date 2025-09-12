// Pai'Na

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    See("C0Paina")
    InParty("C0Paina")
    !StateCheck("C0Paina",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAEC0Paina1","GLOBAL",0)~
THEN ZDBAEB ZDBAEC0Paina1
~Oh, dear. A drow with spider pets. How droll. No doubt you turned down a dog.~
DO ~SetGlobal("ZDBAEC0Paina1","GLOBAL",1)~
== C0Paina ~(snort) A simple play on words? Is that all you are good for?~
== C0Paina ~My children have provided me with more "entertainment" than you!~
== ZDBAEB ~Yes. Yes, I am sure they... Ahem, 'your children' are fascinating. Forgive me. But I've heard it all before. Priestess this, Lloth that. Its all so very tiring.~
== ZDBAEB ~Perchance, I could propose a more promising playmate?~
== ZDBAEB ~Allow me to introduce... Polly the Psittaciformes!~
== ZDPOLL ~SQWAAK TASTY SPIDERS! YUMMY SPIDERS!~
== ZDBAEB ~Though he may be a touch more vulgar than you prefer.~
== C0Paina ~You will be a withered husk of drow, if you touch any of my children.~
== ZDBAEB ~It seems, I should've gotten Mordenkainen's Protection from Arachnids for situations just like this.~
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    See("C0Paina")
    InParty("C0Paina")
    !StateCheck("C0Paina",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAEC0Paina2","GLOBAL",0)~
THEN ZDBAEB ZDBAEC0Paina2
~My dear, do tell me how you arrived here. We are after all alike, you and I. Though I am *clearly* the more charming.~
DO ~SetGlobal("ZDBAEC0Paina2","GLOBAL",1)~
== C0Paina ~Half alike! And I have no tale to share with you "entertainer". Begone lest my pets bite at your hide.~
== ZDBAEB ~Ah, the dowager drow druidess with dim and dreary dreams on the depthless surface. I see.~
== C0Paina ~I will only tell you once more. SHUT. UP.~
== ZDBAEB ~... and her only friends, her fickle fry pan, whose freakish tongue is fraught with filth.~
== C0Paina ~Grrrrrr... YOU ARROGANT DAMN DROW. ENOUGH TALK. Leave me be.~
EXIT
