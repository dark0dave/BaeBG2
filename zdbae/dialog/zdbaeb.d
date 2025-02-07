BEGIN ZDBAEB

// Aerie Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEAerie1","GLOBAL",0)~
THEN BAERIE ZDBAEAerie1
@3000 /* Baeloth, your spells pack a punch, but have you ever considered the havoc they might wreak? */
DO ~SetGlobal("ZDBAEAerie1","GLOBAL",1)~
== ZDBAEB @3001 /* Havoc, honeyed harpy? Bah! The only havoc I worry about is the insipid howls of the meek who can't appreciate the hypnotic hurricane of my magical histrionics. Havoc is for the humorless and the hapless. */
== BAERIE @3002 /* But shouldn't we be careful with our magic? It's a force that demands respect. */
== ZDBAEB @3003 /* Respect? Ridiculous ramblings! Magic is meant to be a raging river, not a quaint little rivulet. Carefulness is for the cautious and the colorless. */
== BAERIE @3004 /* I worry that unrestrained magic might spiral out of control. We should exercise some restraint. */
== ZDBAEB @3005 /* Restraint? Really, radiant raven? That's the refuge of the repressed and the ridiculously righteous. Unrestrained magic is a radiant riot, a resplendent revelry! */
== BAERIE @3006 /* I believe in using magic for good, to protect and aid others. */
== ZDBAEB @3007 /* Goodness, gracious gryphon! But tell me, tender thrush, wouldn't you wonder if the line between goodness and ghastliness gets gruesomely grayed by the grandeur of power? */
== BAERIE @3008 /* I don't think power has to corrupt. We can choose to use it responsibly. */
== ZDBAEB @3009 /* Ah, the adorable aspirations of an angelic acolyte. But brace yourself, bewitching bird, for power will pirouette into the palms of those who paint with its pulsating palette. */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEAerie1","GLOBAL",1)
    Global("ZDBAEAerie2","GLOBAL",0)~
THEN ZDBAEB ZDBAEAerie2
@3010 /* Ah, my sweet adjutant Aerie. You seemed shocked we would supplement one another! */
DO ~SetGlobal("ZDBAEAerie2","GLOBAL",1)~
== BAERIE @3011 /* Well, yes. You're a Drow and- */
== ZDBAEB @3012 /* -and you, my angelic aspirant, are an Avariel. We are, not so different, you and I. */
== BAERIE @3013 /* Are you saying that because of my wings? */
== ZDBAEB @3014 /* Only minorly, my dear. I heard you were a slave, stolen from your home at a still early seniority. */
== BAERIE @3015 /* Well, yes. The circus took me in, even if they took me as a slave. Life in the circus troupe was cruel and I wasn't given enough space to spread my wings, so they just stopped working little by little. */
== ZDBAEB @3016 /* Aw, what a plainly pitiful past - but I don't blame you for the blight that befell you. */
== BAERIE @3017 /* Thanks... I think. */
== BAERIE  @3018 /* What about you? */
== ZDBAEB @3019 /* I sort of ran a circus, acted as its combat coordinator and commentator, and I was contemptuously canned when I bet it all on black. */
== BAERIE @3020 /* You were a gladiator? */
== ZDBAEB @3021 /* By necessity and -not- by need, my endeared darling. I was part of a game that was rigged to always win. Surely you see the pain of losing a 'foolproof' game. The circus is similar, or so I hear. */
== BAERIE @3022 /* Maybe my circus was kinder than others. People did sometimes win the games. */
== BAERIE @3023 /* Winning the ring toss was the hardest. I'm not sure if people were -meant- to win that. */
== ZDBAEB @3024 /* My dear, imagine if every time someone won the ring toss, one of your circus workers died. What a wonderful spectacle of shame that would be! */
EXIT

// Anomen Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
@3025 /* What is it, Drow?  What new means of mockery have you concocted? */
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB @3026 /* Mockery? No, my clever Cleric. Inquiry! */
== BANOMEN @3027 /* I suppose answering your... inquiry will cause you to stand farther away for a while so we can get back to more -worthy- pursuits! */
== ZDBAEB @3028 /* Why did you have such a -burning desire- to join the knightly order? */
== BANOMEN @3029 /* I simply wished to prove my worth to my family and "myself". I know beyond all doubt that I -can- follow my path. */
== ZDBAEB @3030 /* And how did you plan to do that by joining that dog kennel of an order? */
== BANOMEN @3031 /* How -dare- you insult the Most Noble Order? */
== ZDBAEB @3032 /* Think about it, my confident Cleric contemporary: This order of knights and Paladins is one of the strictest around! By joining, they put you on a permanent leash just like the ones -they- are on! */
== ZDBAEB @3033 /* You might do well for them and one day become top dog, but they demand -quick- and -reliable- obedience, just like a master whistling to his pet to come and slay. The ability to think and act freely is taken from you, then -maybe- earned back with rank. */
== ZDBAEB @3034 /* But make one mistake they don't like and they'll neuter you. No more position, powers, nor patron. */
== BANOMEN @3035 /* Is this 'cage' how you see my order?  That we are dogs in the eyes of our superiors and patron? */
== ZDBAEB @3036 /* It's easier to be your own man when no one is staring at you and expecting you to fail. */
== BANOMEN @3037 /* Do you jest, Drow? */
== ZDBAEB @3038 /* Oh, my Clerical companion, I can jest, but now I am being -sternly serious.- */
== BKELDOR IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID)
!StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
@3039 /* Anomen, the Drow is correct in the strictness of our order, but we understand that our reputation and the good we do are worth the price of our freedom. We help many who cannot help themselves. */
== BANOMEN IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID)
!StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN @3040 /* Thank you, teacher, for your insight. */
== BANOMEN @3041 /* <Anomen turns to Baeloth.>  Drow? */
== ZDBAEB @3042 /* Hmm? */
== BANOMEN @3043 /* I -may- consider your counsel. */
== ZDBAEB @3044 /* That is -all- I ask. */
EXIT

// Cernd Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAECernd1","GLOBAL",0)~
THEN CERNDJ ZDBAECernd1
@3045 /* Tell me, Baeloth, What is 'nature' to you in the Underdark? */
DO ~SetGlobal("ZDBAECernd1","GLOBAL",1)~
== ZDBAEB @3046 /* Dim and dreary darkness as far as the eye can see, illuminated by giant fluorescent mushrooms. Pocket portals picket the place. These openings to the Elemental Planes to give us air to breath, water to drink, earth to mask our scent, and fire with which to brand our slaves. */
== ZDBAEB @3047 /* It's a circle of violence, Cernd, just like on the surface. */
== CERNDJ @3048 /* You speak of violence and slavery. How are these things natural? */
== ZDBAEB @3049 /* Where there's life, there's war! -Everyone- and -everything- wants to rule! */
== ZDBAEB @3050 /* Look at the trees of the forest! They're all in a slow death race to the top to prevent each other from getting the life they need to grow! */
== ZDBAEB @3051 /* Look at the animals and creatures of the wild! They'll fight and kill each other out of hunger, yes, but also out of boredom! */
== ZDBAEB @3052 /* Look at the so-called 'civilized' places and races! All it takes is the right crisis for civilization to crumble and show its -true- nature: Hungry, desperate men turn into animals and savages to survive or if it suits them! */
== ZDBAEB @3053 /* So, the Underdark just happens to be an -exemplary- ecosystem to demonstrate just how -destructive- all life can be! */
== CERNDJ @3054 /* Do you think that being underground changes things? */
== ZDBAEB @3055 /* Why, of course! We have ready access to so many spell components from corpses and mining that -of course- we'll use these on the nearest thing we don't like! */
== CERNDJ @3056 /* So, in short, ready access to magic materials underground inspires blood feuds? */
== ZDBAEB @3057 /* Think of it like natural predators and prey, except in the Underdark, they're all magically talented, sometimes predators and prey switch places, and they have more eyes or tentacles than you have fingers. */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAECernd1","GLOBAL", 1)
    Global("ZDBAECernd2","GLOBAL",0)~
THEN CERNDJ ZDBAECernd1
@3058 /* Baeloth, I have been meditating on what you said about nature in the Underdark.  How do you perceive nature on the surface? */
DO ~SetGlobal("ZDBAECernd2","GLOBAL",1)~
== ZDBAEB @3059 /* Nature is naughty, my darling Druid! 'Balance' is but a brittle breath amidst a bloody battle! Each canyon is a coliseum and every forest a fight! */
== ZDBAEB @3060 /* Fauna's fights are fairly forward: Predators and prey proliferate in each other's absence. */
== ZDBAEB @3061 /* Flora is fond of struggling in a slow death race to the top! */
== CERNDJ @3062 /* What about the serenity of nature? */
== ZDBAEB @3063 /* This 'serenity' is simply a short stop in the suffering. "Out of sight means out of mind!" */
== ZDBAEB @3064 /* To call nature 'balanced' and 'orderly' is to call pit fighting 'fair.' These systems are rarely fair and mostly rigged for the enjoyment of the masses! */
== ZDBAEB @3065 /* Besides, didn't you rip and tear as a bear or fume fire on your foe? Where was the serenity then?  Hmm? */
== CERNDJ @3066 /* I did what I did to survive and preserve what I believe to be right. */
== ZDBAEB @3067 /* Exactly! Nature is naught but a veneer for romanticized ransacking! At least my Black Pits are honest about their intent - violent delights made for the paying masses! */
== CERNDJ @3068 /* What you described is simply called 'survival of the fittest,' but it is wisdom nonetheless. */
== ZDBAEB @3069 /* Of course, my darling Druid! */
EXIT

// Dorn Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("DORN")
    See("DORN")
    !StateCheck("DORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEDorn1","GLOBAL",0)~
THEN DORNJ ZDBAEDorn1
@3070 /* Drow, why do you again bother me with your banter? */
DO ~SetGlobal("ZDBAEDorn1","GLOBAL",1)~
== ZDBAEB @3071 /* I'm here to understand your ambition instead of assuming it asininely. */
== DORNJ @3072 /* Blood, death, and vengeance suit me well, Drow. -That- much you should know. */
== ZDBAEB @3073 /* Surely your style is not suited to act as a safe whose sole purpose is to elude entry. */
== DORNJ @3074 /* Consider this, Drow: My goal is to make my mark upon the realms and obtain the vengeance I seek. */
== ZDBAEB @3075 /* Perhaps our priorities align! I propose preparing your prowess in an arena purveyed and promoted by me. */
== DORNJ @3076 /* I have considered your offer, Drow, but know this: A mere pit ring is too small to contain my ambition. I am to test my limits against foes on a worldwide scale. */
== ZDBAEB @3077 /* Ah, my armored associate! Is this not what you sought - nation against nation and brother against brother for a drama like no other? It seems our assumptions and affinities align. */
== DORNJ @3078 /* Seemingly so, Drow. Don't be surprised if you fall over backwards in writhing agony once you realize how much I seek to conquer! */
== ZDBAEB @3079 /* Oh, trust me, Dorn. You conquer the champions and common folk while I entertain whatever remains! */
== DORNJ @3080 /* In your bloody pit battles? It sounds like a challenge. I'm in. */
EXIT

// Edwin Banter
CHAIN
IF ~InParty("ZDBAEB")
    See("ZDBAEB")
    Gender("Edwin",MALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEEdwin1","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin1
@3081 /* Ah, if it isn't my favorite Red Wizard! It's gloriously good to greet you! */
DO ~SetGlobal("ZDBAEEdwin1","GLOBAL",1)~
== BEDWIN @3082 /* Yes, yes, Baeloth. You are right. Your flattery will get you far. (What's this guy scheming now?) */
== ZDBAEB @3083 /* I can heeeeeear you! */
== BEDWIN @3084 /* Yes, yes. You were thinking it, anyway. */
== ZDBAEB @3085 /* As recognized by my research, Thay contains one of Faerun's finest fighting arenas, and I would -love- an introduction from you to those in charge. */
== BEDWIN @3086 /* What makes you think they would give a rat's ass about what you think, Drow? */
== ZDBAEB @3087 /*  I have -quite- the acute arcane ability myself, and -years- of experience yanking slaves into obedience to have them duel to the death! Truly, we can talk tips! */
== BEDWIN@3088 /*  Hmm. Perhaps, Drow, perhaps. Make it worth my while and I can send someone a message. */
EXIT

// Haer'dalis Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HAERDALIS")
    See("HAERDALIS")
    !StateCheck("HAERDALIS", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEHaerDalis1","GLOBAL",0)~
THEN ZDBAEB ZDBAEHaerDalis1
@3089 /* Why have you repeatedly questioned my choice of profession? I am satisfied with where I am, thank you. */
DO ~SetGlobal("ZDBAEHaerDalis1","GLOBAL",1)~
== ZDBAEB @3090 /* Why traipse about with that troupe of yours when you are such a competent combatant? */
== BHAERDA @3091 /* We have been friends for longer than I have known you. We compliment each other. */
== ZDBAEB @3092 /* Certainly you can! But have you considered leaving the low-budget life of the stage to gain something greater? */
== BHAERDA @3093 /* I already know what you mean - life as a gladiator where the arena is the stage and all the action is real. */
== ZDBAEB @3094 /* Absolutely, though acknowledging one's individual abilities is also an admirable attribute. (From here.) */
== BHAERDA @3095 /* The challenge of fighting for survival and for the thrill of the crowd has its appeal, I admit, but I also enjoy engaging with my fans before and after the show. */
== ZDBAEB @3096 /* You still can! Nothing a little resurrection and restoration won't remedy if it comes to that. You're rich enough that death is but a diminutive dent in your demeanor. */
== BHAERDA @3097 /* Baeloth, perhaps I shall agree to your terms. I had been seeking inspiration for a similar character I intended to portray in a work I am writing called “The Reign of Blades.” */
== ZDBAEB @3098 /* Practice makes perfect - and permanent. */
EXIT

// Hexxat Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HEXXAT")
    See("HEXXAT")
    !StateCheck("HEXXAT", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEHexxat1","GLOBAL",0)~
THEN BHEXXA25 ZDBAEHexxat1
@3099 /* Drow, why do you follow me around as if I were a child? Are you afraid I'll suck your blood? */
DO ~SetGlobal("ZDBAEHexxat1","GLOBAL",1)~
== ZDBAEB @3100 /* Verily, but you are vivacious for a vampire, even in full view of the light. */
== BHEXXA25 @3101 /* Yes, Drow, and I know your proposal: You want me to fight in your underground arena and earn my meals through being a predator of whatever prey you throw at me. */
== ZDBAEB @3102 /* Correct, my clever and cordial companion! Partaking as a pit warrior would properly prepare you to be in peak performance in siphoning sanguine substances. */
== BHEXXA25 @3103 /* Do you -demand- I be your pet pit vampire? */
== ZDBAEB @3104 /* It is an offer, but not an outstanding order. However, your agreement would be much obliged. */
== BHEXXA25 @3105 /* If I am in the mood, Drow, I shall consider it. */
== ZDBAEB @3106 /* Your vampiric vivacity could make for a very violent delight! My main demand is you refrain from siphoning the showgoers' lives as a matter of professional courtesy. */
== BHEXXA25 @3107 /* So long as they bet for me and not against me. */
== ZDBAEB @3108 /* I can already imagine your arena alias! */
== BHEXXA25 @3109 /* It had better not be anything embarrassing, Drow. */
== ZDBAEB @3110 /* "Death delivered." */
== BHEXXA25 @3111 /* Not my first choice, Drow, but I may go agree to it. */
EXIT

// Imoen Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("IMOEN2")
    See("IMOEN2")
    !StateCheck("IMOEN2", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEImoen21","GLOBAL",0)~
THEN ZDBAEB ZDBAEImoen21
@3112 /* Imoen, why the wailing? Your cheerful countenance even got me to crack a smile! */
DO ~SetGlobal("ZDBAEImoen21","GLOBAL",1)~
== BIMOEN2 @3113 /* I've been... experimented on. Tortured. I tried keeping my head up and staying cheery, but, it's like my captor made my -soul- hurt! */
== ZDBAEB @3114 /* You have me quite curious: What wounds did he inflict and where? What methodology led him? */
== BIMOEN2 @3115 /* I... I'm not entirely sure I know. Just thinking about it hurts. */
== ZDBAEB @3116 /* If I -knew- then I could better try to -undo- it, my dear. */
== BIMOEN2 @3117 /* Thanks, but why do you care so much about this, anyway? */
== ZDBAEB @3118 /* Subjugating slaves is my -specialty.- Your captor's technique seemed curiously cultivated for copious quantities of cricks and cramps and convulsions. I dare say he overdid it. */
== BIMOEN2 @3119 /* Thanks. I didn't like his torment, either! */
== ZDBAEB @3120 /* There exists a threshold beyond which further torment is trivial to the task of training slaves to obey and marks a master's abuse for his amusement or anger abatement. */
== BIMOEN2 @3121 /* Does knowing this change anything? */
== ZDBAEB @3122 /* Not noticeably. No notches on your noggin. Back bruises and lacerations seem minimal. It was like your tormenter's main aim was to maximize the mitigation of your morale. */
== BIMOEN2 @3123 /* It seems strange to me to ask you for this, but will you help cheer me up - for everyone's benefit? */
== ZDBAEB @3124 /* <Baeloth grins.> */
== ZDBAEB @3125 /* Let me entertain you! */
EXIT

// Jaheria Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAHEIRA")
    See("JAHEIRA")
    !StateCheck("JAHEIRA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEJaheira1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJaheira1
@3126 /* Ah, Jaheira. Round up any runts to remove to better the balance? You were quite fond of quoting, “Nature take the life she gave!” */
DO ~SetGlobal("ZDBAEJaheira1","GLOBAL",1)~
== BJAHEIR @3127 /* Don't patronize me, Drow. */
== ZDBAEB @3128 /* Patronize? Preposterous! I peacefully propose partaking in your purpose in life - unless the 'natural balance' is no longer your priority. */
== BJAHEIR @3129 /* What would you know about -balance?- */
== ZDBAEB @3130 /* Well, my well-traveled companion, what say you to the notion that this 'balance' is but a subjective opinion on how it operates? Are not all you Druids keen on avoiding conglomeration? */
== BJAHEIR @3131 /* I'll tell you this much, -Drow.- I'm my own person. What you consider friendly flattery I call an affront to nature and my training! */
== ZDBAEB @3390 /* But do I speak deceit when I declare what part of the balance you keep is your discretion? */
== BJAHEIR @3132 /* You are unfortunately correct. */
== ZDBAEB @3133 /* "Unfortunately?" How unexpected! */
== BJAHEIR @3134 /* I know enough of your past and you know enough of mine. It's like you prod and pry to get me to agree with something that's technically true but all part of a scheme I simply want to avoid! */
== ZDBAEB @3135 /* It's an earnest inquiry. Truly, am I the antagonist? */
== BJAHEIR @3136 /* To me right now you are. If you're here to butcher animals for meat or to make them fight for your amusement, don't look to me for my blessing, Baeloth. */
EXIT

// Jan Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAN")
    See("JAN")
    !StateCheck("JAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEJan1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJan1
@3137 /* Oh, Jan! */
DO ~SetGlobal("ZDBAEJan1","GLOBAL",1)~
== BJAN @3138 /* Y-yes? */
== ZDBAEB @3139 /* You wouldn't be interested in playing a little GAME, would you? Mmm? */
== BJAN @3140 /* Game? I -love- games! */
== BJAN @3141 /* There was this time about thirty years ago when my second cousin on my mother's side and I played our longest game of Chess yet. We were at it for over a day, and we kept moving our pieces to prevent being checkmated, but she passed out from exhaustion first, so she forfeited the game. She violently appealed to my mother after this and claimed that I did something to make her lose when I did not. */
== BJAN @3142 /* Of course, after my mother's ruling she appealed to guard and then to the Council of Six. But after the turnip embargo caused a reduction in tax revenue, the Council became unwilling to listen to new appeals. Which I have always viewed as the greatest calmity of our age. */
== ZDBAEB @3143 /* Ahem. */
== BJAN @3144 /* Ahem what? Oh. Your game? */
== ZDBAEB @3145 /* <Baeloth blinks.> */
== ZDBAEB @3146 /* Yes, my light-skinned Svirfneblin. */
== BJAN @3147 /* <Jan also blinks.> */
== BJAN @3148 /* There! We're tied! */
== ZDBAEB @3150 /* Nevermind. */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAN")
    See("JAN")
    !StateCheck("JAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEJan2","GLOBAL",0)~
THEN ZDBAEB ZDBAEJan2
~This one time, a human, friend of the family you see, a turnip artist by trade crafted a Jansen family crest. As you might have guessed Aunt Petunia chased him out of the house with her rake and smashed the it to pieces even though it depicted a lovely turnip pair in a loving embrace and when you pulled the string ... Oh, Baeloth is looking at me again, maybe later.~
DO ~SetGlobal("ZDBAEJan2","GLOBAL",1)~
== ZDBAEB ~I've got my eye on you my light-skinned Svirfneblin.~
EXIT

// Keldorn Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KELDORN")
    See("KELDORN")
    !StateCheck("KELDORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEKeldorn1","GLOBAL",0)~
THEN BKELDOR ZDBAEKeldorn1
@3151 /* A Drow among us? What madness is this? */
DO ~SetGlobal("ZDBAEKeldorn1","GLOBAL",1)~
== ZDBAEB @3152 /* I'm not bad. I just detect that way. */
== BKELDOR @3153 /* <Keldorn narrows his eyes suspiciously at Baeloth.> */
== ZDBAEB @3154 /* You're a Paladin. I can tell. Big, strong type. Fondness for heavy armor and big swords. I'm a Sorcerer and look like something you were trained to -hate!- */
== BKELDOR @3155 /* What is your point? */
== ZDBAEB @3156 /* Oh, Keldorn, despite appearances, we're not so different - you and I. In fact, I think we'll get along -just fine.- */
== BKELDOR @3157 /* What trickery is this? */
== ZDBAEB @3158 /* I can tell you're sworn to eradicate demons, devils, deviants, beholders, and all sorts of baddies. I -too- want many of them dead. */
== ZDBAEB @3159 /* In fact, I'd be -happy- to help point out many of them to you. -Plenty- of them pissed me off, and we can enjoy ridding the realms and the planes of them. Together. */
== BKELDOR @3160 /* <Keldorn looks suspiciously at Baeloth.> What do you get from this? */
== ZDBAEB @3161 /* Oh, I -know- you get pleasure from killing things and making these surface dwellers happier for it. -I- get the pleasure of making sure these -creatures- never ask me for money or favors again. It's win-win! */
== BKELDOR @3162 /* What am I? Your muscle in a collections agency? */
== ZDBAEB @3163 /* Oh, my dear Keldorn, your order has already made you that! You're a reaper of souls! You slay demons and devils and dragons and deviants of all sorts and collect their corpses as trophies to make Big Daddy Paladin in the order feel better. With me, you're just doing under my guidance and with my help. I won't even charge you for my services. */
== BKELDOR @3164 /* I... see. Perhaps I was mistaken about you, Drow. But know this: I -will- strike you down at the first sign of betrayal! */
== ZDBAEB @3165 /* I would expect nothing less from my righteous executioner! */
== ZDBAEB @3166 /*  Come, my pet Paladin! There's some foul fiend who owes me its gold or its guts, and we're gonna collect - together! */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KELDORN")
    See("KELDORN")
    !StateCheck("KELDORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEKeldorn1","GLOBAL",1)
    Global("ZDBAEKeldorn2","GLOBAL",0)~
THEN BKELDOR ZDBAEKeldorn2
@3167 /* What is it, -Baeloth?- Another affection or something more pressing? */
DO ~SetGlobal("ZDBAEKeldorn2","GLOBAL",1)~
== ZDBAEB @3168 /* My precious paladin and insightful inquisitor, I have an important inquiry. */
== BKELDOR @3170 /* I am hesitant to let you indulge your tongue my way, but go on. */
== ZDBAEB @3171 /* What is the primary purpose of paladinhood - to uplift the unfortunate underdog or to smite the sinner? */
== BKELDOR @3172 /* That is... a remarkably -sensible- question to ask of me, Baeloth. It is one I asked my teachers many years ago. */
== BKELDOR @3173 /* The truest answer is that everyone has a calling, a ministry. Some are first and foremost teachers or preachers or healers or charity workers. Some are scholars or investigators. */
== BKELDOR @3174 /* Being a paladin also means being a lawman, which means being a soldier. We are held to a high standard of moral and military character which is meant to inspire others to follow our lifestyles by example. */
== ZDBAEB @3175 /* That's -precisely- my pickle! */
== BKELDOR @3176 /* Go on. */
== ZDBAEB @3177 /* Let's postulate a pair of paladins is praised as saviors because they slay demons. That same day, should they also be hailed as heroes for upholding the laws of the land for punishing a peddler for being too poor to pay his prescribed taxes? */
== BKELDOR @3391 /* To what cause are these hypothetical paladins sworn? What are the laws of the land and who enforces them? What is their calling in life? All these matter more than you know. */
== BKELDOR @3178 /* You ask if it is better to uphold the letter of the law or to do good by showing mercy when it is appropriate. */
== ZDBAEB @3179 /* An important inquiry, inquisitor. */
== BKELDOR @3180 /* It is easier to make and break rules than it is to help those in need as they should be helped. Bringing about the greater good is my calling, even though I am still bound by certain oaths. */
== ZDBAEB @3181 /* Wise words, my prudent paladin. */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KELDORN")
    See("KELDORN")
    !StateCheck("KELDORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEKeldorn2","GLOBAL",1)
    Global("ZDBAEKeldorn3","GLOBAL",0)~
THEN ZDBAEB ZDBAEKeldorn3
@3182 /* What noble notions noodle through your noggin? */
DO ~SetGlobal("ZDBAEKeldorn3","GLOBAL",1)~
== BKELDOR @3183 /* There may be hope for your redemption yet, Baeloth. */
== ZDBAEB @3184 /* Redemption? Do you have a winning lottery ticket? */
== BKELDOR @3185 /* No. */
== BKELDOR @3186 /* The cosmic forces of good and evil war with each other in a fight that rages across the planes. Each side claims whatever souls it can. */
== BKELDOR @3187 /* It was... unfortunate for cosmic good that you were born a drow and influenced as you were, but you are a free-willed being, Baeloth. As you said, some of our goals are greatly aligned. */
== ZDBAEB @3188 /* Do you expect me to partake of the profession of paladin with your particular personification of penance and prayer? */
== BKELDOR @3189 /* Not specifically, Baeloth, but there is hope you would desire to bestow mercy and not sacrifice others in your arenas. */
== ZDBAEB @3190 /* I'm... indisposed! My career and calling in life are completely dependent upon a steady stream of suckers seeking fame and fortune from fighting. */
== BKELDOR @3191 /* Is that all you are, Baeloth - a promoter of your Black Pits? What happens if you're no longer Baeloth the Entertainer but just Baeloth the man, or the drow as the case may be? It's happened before. */
== ZDBAEB @3192 /* What a hurt to the heart that was, to contemplate the possibility that I could no longer be Baeloth the Entertainer! The realms would be ever so -boring- without me! */
== ZDBAEB @3193 /* But you got me thinking, a decidedly dangerous decision on your part! If I were different, then what? */
== BKELDOR @3194 /* That is a good start, Baeloth. We shall talk more later about this. */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KELDORN")
    See("KELDORN")
    !StateCheck("KELDORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEKeldorn3","GLOBAL",1)
    Global("ZDBAEKeldorn4","GLOBAL",0)~
THEN ZDBAEB ZDBAEKeldorn4
@3195 /* What you call 'cosmic good' seems radically racist to me! */
DO ~SetGlobal("ZDBAEKeldorn4","GLOBAL",1)~
== BKELDOR @3196 /* <Keldorn raises his eyebrow in suspicion at Baeloth.> */
== ZDBAEB @3197 /* Here you are, you fair-skinned human and knight in shining armor and you claim you embody cosmic good. Meanwhile the denizens of the Underdark and dragons whose scales are a certain color are asking for eradication because they're 'cosmic evil' and 'born badly.' That's the embodiment of unfair! */
== BKELDOR @3198 /* Many of these creatures you listed are free-willed and intelligent enough to be able to think for themselves. */
== ZDBAEB @3199 /* So, if some unintelligent ant or animal lives by survival of the fittest, it's excused from this cosmic morality, but if something with a bring as big as yours - and possibly with a greater skin pigmentation - believes in survival of the fittest, it's part of this cosmic morality? Didn't one of your -human- scholars who looked a bit like you write about survival of the fittest in the first place? */
== BKELDOR @3200 /* <Keldorn ponders uncomfortably a moment.> */
== ZDBAEB @3201 /* The look on your face tells me -all- I need to know! I've been interrogating this inequality for longer than you've lived! */
== BKELDOR @3202 /* I cannot speak of what you call 'survival of the fittest,' but these cosmic forces -absolutely exist!- I -know- you're smart enough to understand this. */
== ZDBAEB @3203 /* Oh, indeed, my pet Paladin! I understand the underlying theory, but for someone blessed or burdened with an ability to see who or what your god or cosmic morality permitted you to punish, have you ever wondered -specifically- how it worked? */
== BKELDOR@3204 /*  Not in the way that you propose. I understand there are certain things I simply do not need to know. I should focus on the things I do. */
== ZDBAEB @3205 /* Well worded my pious patriarch! I whole-heartedly agree that my time is too treasured to put toward trivial tasks. */
== BKELDOR @3206 /* For once I understand your position. Your kind was hunted because you looked like you were of the darkness by surface-dwellers who believed they alone were of the light. */
== ZDBAEB @3207 /* There's hope for you yet, Keldorn! I've been saying that for ages! */
== BKELDOR @3208 /* Even with this understanding, do not think me hesitant to punish you for your unwanted behavior, Baeloth. I am still a soldier with an oath to uphold cosmic morality. */
== ZDBAEB @3209 /* Oh, my pet Paladin! I am grateful and glad we get along! After all, we are not so different: You want to slay evil to uphold cosmic morality and I want to slay evil because it's ugly and it owes me money. Either way, evil is eliminated. */
== BKELDOR @3210 /* And what about charity? Is there room in your heart for -that?- */
== ZDBAEB @3211 /* You want to do charity because it makes people want to like and follow you while cosmic morality's causes are cuddled. I can, ahem, -tolerate- charity because it makes people want to like and follow me. */
== BKELDOR @3212 /* Hmm. You are a skilled debater. I grant you that, drow. */
== ZDBAEB @3213 /* I could say I'm a -master- of the craft, but I prefer the title of 'Baeloth the Entertainer' and I'm not trying to argue a case like one of your attorneys or magistrates. */
EXIT

// Korgan Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KORGAN")
    See("KORGAN")
    !StateCheck("KORGAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEKorgan1","GLOBAL",0)~
THEN BKORGAN ZDBAEKorgan1
@3214 /* What do -you- know about fightin', Drow? All I've seen you carry around is a prissy little stick! */
DO ~SetGlobal("ZDBAEKorgan1","GLOBAL",1)~
== ZDBAEB @3215 /* Aw. Did someone wake up on the wrong side of the keg? Hmm? */
== BKORGAN @3216 /* And I've ne'er seen ye cart around no holy symbols nor spellbooks, either. It's like you dance and prance around all prissy-like magic sparks come odda yer hands! */
== ZDBAEB @3217 /* Aw! Is the short one jealous that he can't kill anything he'd please with a well-placed sneeze? */
== BKORGAN @3218 /* I sneezed all over ye earlier. */
== ZDBAEB @3219 /* It was downright -disgusting!- Rightfully -revolting!- */
== BKORGAN @3220 /* Give it time, Drow. It'll still kill ye. */
== ZDBAEB @3221 /* It's like you -want- me to hate you. Noticing more melancholy from your mediocre stature is amusing, at least! */
== BKORGAN @3222 /* Alright, ye damned Drow. Ye pass. */
== ZDBAEB @3223 /* With my usual panache, I assume. */
== BKORGAN @3224 /* Ye've been sneezed at, pissed on, insulted, and survived my beer 'n' sausage farts. Ye got my respect, spell-slinger. */
== ZDBAEB @3225 /* What a woeful pain it was at first, being subjected to your -primitive- palette of -pain.- */
== BKORGAN @3226 /* Whaddaya mean? */
== ZDBAEB @3227 /* Let's see. I've been disfigured, dismembered, disemboweled, dead, dishonored, depressed, diseased, and detritus. Your little disgusting ditty was... dainty. */
== BKORGAN @3228 /* Whatever, Drow. Just do your prissy dancin' toward our enemies. Maybe they'll run away in fear or fall down laughin'. */
== ZDBAEB @3229 /* Come, my dear Dwarf. I have -plans.- */
EXIT

// Mazzy Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MAZZY")
    See("MAZZY")
    !StateCheck("MAZZY", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEMazzy1","GLOBAL",0)~
THEN ZDBAEB ZDBAEMazzy1
@3230 /* What have we here? A light-skinned Svirfneblin? */
DO ~SetGlobal("ZDBAEMazzy1","GLOBAL",1)~
== ZDBAEB @3231 /* No, the skull's slightly too small. */
== BMAZZY @3232 /* I'm a Halfling, not a Gnome. */
== ZDBAEB @3233 /* I was just about to say that! */
== BMAZZY @3234 /* Drow, what is your point? I tolerated the decision of our leader for us to travel together. */
== ZDBAEB @3235 /* Oh, I was just learning more about you surface folk. Apparently, we have a lot in common - besides skin color, of course! */
== BMAZZY @3236 /* I think I know where this is going, but tell me anyway. */
== ZDBAEB @3237 /* I am -so very glad- you asked! */
== ZDBAEB @3238 /* We have plenty of -common enemies!- Being around the surface for so long has taught me that it seems -everyone- hates -everything- in the Underdark! */
== BMAZZY @3239 /* -Hate- is a -strong- term, and maybe not the right one, but I see your point. We on the surface have had -strong suspicions- toward your malignant kind! */
== ZDBAEB @3240 /* Any guesses as to why? */
== BMAZZY @3241 /* Have you seen Beholders? Illithids? Demons? Devils? Liches? Many of them are rich, powerful, ugly-looking things that seem to be fighting amongst themselves for the chance to take over the surface as tyrants and puppet masters! */
== ZDBAEB @3242 /* When you put it that way my dear Mazzy, I think we'll get along -just fine.- */
== BMAZZY @3243 /* Just remember, BAELOTH: I am -not- your puppet! */
== ZDBAEB @3244 /* No, but for now we're partners. Let's go cull the Underdark herd - together. Ready when you are! */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MAZZY")
    See("MAZZY")
    !StateCheck("MAZZY", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEMazzy1","GLOBAL",1)
    Global("ZDBAEMazzy2","GLOBAL",0)~
THEN BMAZZY ZDBAEMazzy2
@3245 /* Drow, I noticed you meditating in my general direction. What are you pondering? Do I dare ask? */
DO ~SetGlobal("ZDBAEMazzy2","GLOBAL",1)~
== ZDBAEB @3246 /* Due to your determined desire to deduce what I was wondering, surely I shall share it! */
== BMAZZY @3247 /* At the very least, I invited this. */
== ZDBAEB @3248 /* I was musing on how wonderfully wanted the short folk - the Svirbneblin - were backstage in the Black Pits among the bigger beings. */
== BMAZZY @3249 /* Why would you wonder this around me? */
== ZDBAEB @3250 /* If you could smile and give into levity around me, surely we would be -wonderful- at parties! */
== BMAZZY @3251 /* What evil depravity is this? */
== ZDBAEB @3252 /* Nothing sensual, I assure you. The Svirfneblin were similarly celibate. */
== BMAZZY @3253 /* Well, Drow, I am hesitant to say I am honored you think of me as something more than a mere marionette or sexual prey to be conquered. At least you possess -that- basic dignity. */
== ZDBAEB @3254 /* That was only a -third- of the thought. */
== BMAZZY @3255 /* And now I shall walk away, lest I hear the rest. */
== ZDBAEB @3256 /* If you are to be the epicenter of any entertaining party endeavors, you simply -need- to know. */
== BMAZZY @3257 /* <Mazzy rolls her eyes.> */
== ZDBAEB @3258 /* The short ones were such a smash since they had bound bowls of beautiful food to their heads as they meandered and mingled. Guests never had to stoop to scoop! */
== BMAZZY @3259 /* You just proved my point, -Drow.- */
== ZDBAEB @3260 /* So, are you partial to casks of red wine? Caviar? Crackers? Whatever you deliver shall -surely- be a -delight!- */
EXIT

// Minsc Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MINSC")
    See("MINSC")
    !StateCheck("MINSC", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEMinsc1","GLOBAL",0)~
THEN BMINSC ZDBAEMinsc1
@3261 /* Boo sniffs the -evil- in the air around you, Drow, but he doesn't want to attack! I am confused! Explain this bewitchment! */
DO ~SetGlobal("ZDBAEMinsc1","GLOBAL",1)~
== ZDBAEB @3262 /* I assure you your hamster is downright -delighted- to be entertained by the best in the business! */
== BMINSC @3263 /* But how do you explain Boo wanting to dance? */
== ZDBAEB @3264 /* Your rodent is right in wanting to revel around me. Delight is my desire and gladiatorial glee my goal. */
== BMINSC @3265 /* But why is my hamster dancing? */
== ZDBAEB @3266 /* My skin secretes a scent sweet to the small creatures like him. I assumed it as an anomaly. */
== BMINSC @3267 /* Well, so long as it doesn't prevent us from fighting the evil we need to fight, I think it's fine. */
== BMINSC @3268 /* Come here, Boo! I need to teach you words to sing with your dance! Ha ha! */
== ZDBAEB @3269 /* This seems like a very personal priority and I would prefer a -private- performance with the pair of you. */
== BMINSC @3270 /* Ha ha! Minsc and Boo shall slay evil and sing and dance happily together! */
EXIT

// Nalia Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NALIA")
    See("NALIA")
    !StateCheck("NALIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAENalia1","GLOBAL",0)~
THEN ZDBAEB ZDBAENalia1
@3271 /* Nalia, what's nagged me about you is that you don't seem to know how to -rule!- I thought you were a noble! */
DO ~SetGlobal("ZDBAENalia1","GLOBAL",1)~
== BNALIA @3272 /* Well, I am. I'm just not sure I -enjoy- being one. */
== ZDBAEB @3273 /* How can you hate having others be legally liable to wait on you and do all the menial deeds you'd prefer to defer? */
== BNALIA @3274 /* Day after day I see injustices in the world. The poor walk miles to get food while the rich walk miles to get rid of the food they ate so they don't get too fat. */
== ZDBAEB @3275 /* So you say. */
== BNALIA @3276 /* But can't you see the painful inequality here? */
== ZDBAEB @3277 /* My precious, naive Nalia, let me educate your noble noggin in the ways of the world. You assume asininely that all lives are of equal worth. */
== BNALIA @3278 /* But aren't we all born under the sun? Can we truly trade one life for another so easily? */
== ZDBAEB @3279 /* Don't understand me, my dear: Even the most vulnerable vessel has value if used properly. -Someone- is providing the bread for all the circus goers! */
== BNALIA @3280 /* All life has value? I never thought I'd hear -that- from a Drow! */
== ZDBAEB @3281 /* Oh, -trust- me my dear. Surely, a god has more merit than a gauth or a gibberling, and a man is mightier than an ant but meeker than a dragon - a typical man, that is. */
== BNALIA @3282 /* So you're saying all life has value and everyone is just playing their parts? */
== ZDBAEB @3283 /* Aye? */
== ZDBAEB @3284 /* But there's one triumphant truth in -all- life: Greater power -always- wins. That's why it is -so satisfying- to see a superior species struggle when it is undone by an underdog. */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NALIA")
    See("NALIA")
    !StateCheck("NALIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAENalia1","GLOBAL",1)
    Global("ZDBAENalia2","GLOBAL",0)~
THEN BNALIA ZDBAENalia2
@3285 /* Baeloth, I still don't know your stance about how I feel about the poor. So many people are against it. Even my own family has doubted me. */
DO ~SetGlobal("ZDBAENalia2","GLOBAL",1)~
== ZDBAEB @3286 /* Let me lay it out for you this way, my dear: You have your pets and I have mine. */
== BNALIA @3287 /* The poor are just -pets- to you? */
== ZDBAEB @3288 /* Yes. You throw them some food, devise them a new dwelling, clean up their waste, and feel fine for the charity that came about at your hand. */
== ZDBAEB @3289 /* They're like darling dogs to you: They bark at you when they're cold or hot or hungry or afraid or danger draws near. */
== ZDBAEB @3290 /* You want all the diminutive dirty peasants to praise you when big mama Noble Nalia draws near and doles out some desirable outcome like a guard dog getting a grilled steak. */
== ZDBAEB @3291 /* You have -all- the keys to their kennels and do enough to ensure they don't depose you. If they do, their lot in life can't change much: They're poor, they're weak, and they're -absolutely adamant- about being in charge when they have nothing in their noggins but nonsensical notions! */
== ZDBAEB @3292 /* You can -try- to change them, but -they will never be noble!- A shiny new settlement or a bigger bed won't warp them into warriors or wizards - ones you -could- and -should- be courting. */
== BNALIA @3293 /* Wait! What? */
== ZDBAEB @3294 /* No invading army is amply agitated by ascetic agrarians. Warriors? Wizards? They keep your home -yours.- Not some fleabag farmer. */
== BNALIA @3295 /* But... shouldn't we try to elevate the status of the poor so they -become- the wizards and warriors you mentioned? */
== ZDBAEB @3296 /* Perhaps, my girl. Perhaps. But at what cost? */
== BNALIA @3297 /* It all comes down to money and priorities then, doesn't it? We can save our lands from outside invaders by just staying with the old system, or risk losing it all to pay to bring more people up from poverty and train them to be more useful to society. */
== ZDBAEB @3298 /* Totally true, my perceptive princess! */
== BNALIA @3299 /* Then what should I do? */
== ZDBAEB @3300 /* -Embrace- your position! Don't be afraid that others may die. You're a noble: That's your duty and maybe your delight! */
EXIT

CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NALIA")
    See("NALIA")
    !StateCheck("NALIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAENalia2","GLOBAL",1)
    Global("ZDBAENalia3","GLOBAL",0)~
THEN BNALIA ZDBAENalia3
@3301 /* Baeloth, if you were to seriously try to help the poor improve, what would you do? */
DO ~SetGlobal("ZDBAENalia3","GLOBAL",1)~
== ZDBAEB @3302 /* Oh, my curious compatriot, I am -so- satisfied you asked! */
== ZDBAEB @3303 /* Finding the worthiest warriors is easy: Surround yourself with the strongest bodies available then demand they duel to the death in duets! */
== BNALIA @3304 /* That's so cruel! */
== ZDBAEB @3305 /* It's -compassionate- compared to conquerors who care not of what you call 'kind.' Survival of the strongest is simple, my dear, and the 'luckiest' will live. */
== BNALIA @3306 /* I... hate to admit it, Baeloth, but you have a point. I did rush to the Copper Coronet because de'Arnise Hold was conquered by trolls who didn't care what happened to the inhabitants. */
== ZDBAEB @3307 /* Casters demand more training and tutelage from an early age, even if their sorcerous skills manifest meteors from temper tantrums. An open-air arena duel to the death won't do. */
== BNALIA @3308 /* What should be done? */
== ZDBAEB @3309 /* Use your noble noggin! What does your nation need now and later? */
== BNALIA @3310 /* Thanks, but how do you know all this? */
== ZDBAEB @3311 /* Being Baeloth the Entertainer meant my domain was a convert blood sport. It's so similar to leading a surface nation, except your combatants are conquerors and you fight to survive instead of entirely to entertain. */ /* Being Baeloth the Entertainer meant my domain was a covert blood sport. It's so similar to leading a surface nation, except your combatants are conquerors and you fight to survive instead of entirely to entertain. */
EXIT

// Neera Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NEERA")
    See("NEERA")
    !StateCheck("NEERA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAENeera1","GLOBAL",0)~
THEN ZDBAEB ZDBAENeera1
@3312 /* Neera, sometimes I envy you. */
DO ~SetGlobal("ZDBAENeera1","GLOBAL",1)~
== BNEERA @3313 /* Me? Why? Is it my pink hair and inability to grow a beard? */
== ZDBAEB @3314 /* No, no. Nothing that trite. Your affinity for Wild Magic is admirable. */
== BNEERA @3315 /* Really? Because much of the time people around me leave me feeling really, really sorry that this tangled strand of the Weave chose me! */
== ZDBAEB @3316 /* That's -exactly- why sometimes I envy you. Your magic is inherently -chaotic.- Every 'mistake' in your casting - your positioning, your timing, your choice of spells - has an inherent layer of plausible deniability. */
== BNEERA @3317 /* Are you saying Wild Magic is -good- for me? Because you'd probably be the first! */
== ZDBAEB @3318 /* Whether Wild Magic is good for you is debatable, but the fact that you cannot entirely control your powers means that some 'accidents' can be staged and fewer people can blame you directly for them. It's like adding an extra roll of the dice to every spell you cast instead of just picking the result you want. */
== BNEERA @3319 /* You mean bluffing with my spellcasting? That's... Huh. I don't know how I should say this. */
== ZDBAEB @3320 /* Then don't. You know enough already. */
EXIT

// Rasaad Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("RASAAD")
    See("RASAAD")
    !StateCheck("RASAAD", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAERasaad1","GLOBAL",0)~
THEN BRASAAD ZDBAERasaad1
@3321 /* Why do you look at me so curiously, Baeloth? */
DO ~SetGlobal("ZDBAERasaad1","GLOBAL",1)~
== ZDBAEB @3322 /* I. Don't. Get. You. */
== BRASAAD @3323 /* What do you mean? */
== ZDBAEB @3324 /* You prance around nearly naked with - at most - a modicum of magical might manifest. However do you handle yourself and -live?- */
== BRASAAD @3325 /* You are not the first to ask such a question. While my monastic training was never intended to make me a wizard, I learned martial arts well enough that many of my feats are preternatural or even seemingly supernatural in origin. */
== ZDBAEB @3275 /* So you say. */
== BRASAAD @3326 /* Why are you surprised? */
== ZDBAEB @3327 /* My research revealed - and rightly so - that living so scantily clad is, to use an aphorism from the Underdark - roughly translated - "asking for a smacking." By my counts, you should be dismembered, dead, disintegrated, disillusioned, depressed, or at the very least, discouraged! Yet, here you are, determined! */
== BRASAAD@3328 /*  What does your research about the Underdark reveal about the attitude of, "Try harder?" */
== ZDBAEB @3329 /* Eloquence and efficiency are the antithesis of effort in execution. Trying is for training. */
== BRASAAD @3330 /* Are you saying that I am disadvantaged because I have trained more diligently and put forth a more maximal effort than you to master your innate magical powers? */
== ZDBAEB @3331 /* An interesting insight, but not inherently. No, you straddle the gap between the mundane and the magical, but lack the sorcerous skills of a caster and the warrior's well-armed and well-armored ways. */
== BRASAAD @3332 /* Ah, now I understand you. I confuse you because my monastic training makes me seem like a paradox. */
== ZDBAEB @3333 /* Precisely my point! */
== BRASAAD @3334 /* Well, I shall consider ways to make my superior feats of athleticism and acrobatics acceptable to us - and any audience we aim to impress. */
== ZDBAEB @3335 /* Your accentuation excites me. Perhaps I shall accept you as my apprentice - at least in all things auditory. */
== BRASAAD @3336 /* I thank you for your offer, Baeloth, but I shall follow my own path for now. */
EXIT

// Valygar Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VALYGAR")
    See("VALYGAR")
    !StateCheck("VALYGAR", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEValygar1","GLOBAL",0)~
THEN BVALYGA ZDBAEValygar1
@3337 /* Drow, your very presence in this group offends me! You are birthed into evil, and I sense magical talent in your blood! */
DO ~SetGlobal("ZDBAEValygar1","GLOBAL",1)~
== ZDBAEB @3338 /* Ooh! Tell me something I haven't heard! */
== BVALYGA @3339 /* What? */
== ZDBAEB @3340 /* Look, Valygar, I get you. You think that magic is like farting: It's so, -so- bad when others do it, but if you do it, it's -totally- justified! */
== BVALYGA @3341 /* That is not at ALL what I said! */
== ZDBAEB @3342 /* I've heard your whimperings and murmurings about how magic is vile and relying on magic makes you weak. */
== BVALYGA @3343 /* 'Whimperings?' What am I, your dog? */
== ZDBAEB @3344 /* Let me offer you the -majority- opinion in this case: This -world- is made by and from magic. Your very -life- has been touched by the supernatural, and your mind -twisted- it into evil! */
== BVALYGA @3345 /* What spells have I cast- */
== ZDBAEB @3346 /* Spells? Did I -claim- you were a caster, Valygar? No? Good! */
== ZDBAEB @3347 /* You want to fight casters? You need better -magical- defenses to survive, lest you become a chicken, a mind slave, or a pile of ash! You need better -magical- weaponry to hurt them -and- their minions! And I don't think you want to wait -weeks- to recover from a fight when you could have some caster use a healing spell on you! */
== ZDBAEB @3348 /* Life is a magical arms race, Valygar. The only way to avoid it is to stay out of it and hope your side wins. */
== BVALYGA @3349 /* <Valygar's face contorts into one of hesitant resignation.> */
== BVALYGA @3350 /* I... see. Do not think my stance will change so drastically nor as soon as you hope, Drow! */
== ZDBAEB @3351 /* Life is -quite- the expedient teacher! */
EXIT

// Viconia Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VICONIA")
    See("VICONIA")
    !StateCheck("VICONIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEViconia1","GLOBAL",0)~
THEN BVICONI ZDBAEViconia1
@3352 /* What are you scheming now, -male?- */
DO ~SetGlobal("ZDBAEViconia1","GLOBAL",1)~
== ZDBAEB @3353 /* The sutures from your staking haven't fully healed. I'm -so sorry- for that set of unfortunate circumstances. */
== BVICONI @3354 /* Your tone sounds mocking. It's hard for me to believe you're sincere. */
== ZDBAEB @3355 /* We've each been usurped from the Underdark, forced to flee to the surface for sustenance. We've thrived in ways those underground thought we never would! */
== BVICONI @3356 /* Do you have a point beyond mere conversation? */
== ZDBAEB @3357 /* Certainly, my inquisitive one: The Drow of the Underdark seemed stifled in their lifestyle. Expansion to the surface is a logical leap of progress. I suspect it would shrink their desire to be bound in age-old blood feuds. */
== BVICONI @3358 /* More Drow living well on the surface? Have you forgotten how much we have been assaulted by others just because of who we are by birth? */
== ZDBAEB @3359 /* Not one bit. I've been beaten, burned, shipwrecked, stoned, buried, and endured excrutiations far -beyond- what anyone should -ever- aim to endure! */
== BVICONI @3360 /* What's your point? */
== ZDBAEB @3361 /* If those in the Underdark could quit bickering long enough to leave their low-light dwellings, they could step outside and find a -new- world to dominate! We are well-versed in age-old feuds: We'd merely be -finishing- what our progenitors' prejudices began ages ago! */
== BVICONI @3362 /* I'm not here to make even -more- enemies for me to amuse you, even if it helps our race somehow in a later generation! */
== ZDBAEB @3363 /* Suit yourself. */
EXIT

// Wilson Banter (BWILSON?)
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("WILSON")
    See("WILSON")
    !StateCheck("WILSON", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEWILSON1","GLOBAL",0)~
THEN ZDBAEB ZDBAEWILSON1
@3364 /* I've let slip the dogs of war and heard of bear baiting, but a friendly bear? What shall I do with you? */
DO ~SetGlobal("ZDBAEWILSON1","GLOBAL",1)~
== WILSON @3365 /* <Wilson snorfles.> */
== ZDBAEB @3366 /* You're akin to a Dire Dog with an enormous appetite and fewer oral displays of affection. */
== WILSON @3367 /* <Wilson snorts then snorts again.> */
== ZDBAEB @3368 /* An obvious implementation of your unique ursine ability would be to properly prepare you as a pit fighter. Surely, you could satisfactorily shoulder such a shift! */
== WILSON @3369 /* <Wilson whines.> */
== ZDBAEB @3370 /* Worry not, my warrior. We can call you, "The Ursine Usurper!" Eating opponents' innards is optional, obviously, however ostentatious. */
EXIT

// Yoshimo Banter
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("YOSHIMO")
    See("YOSHIMO")
    !StateCheck("YOSHIMO", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    !AreaType(DUNGEON)
    Global("ZDBAEYoshimo1","GLOBAL",0)~
THEN ZDBAEB ZDBAEYoshimo1
@3371 /* Ooh! What wondrous delights did you bring us for dinner? */
DO ~SetGlobal("ZDBAEYoshimo1","GLOBAL",1)~
== BYOSHIM @3372 /* What do you mean, Baeloth? */
== ZDBAEB @3373 /* Look at all those tricky toy traps you use! Did you get us some bear? Behir? Beholder? */
== BYOSHIM @3374 /* I see, Baeloth. */
== ZDBAEB @3375 /* I do, too. */
== BYOSHIM @3376 /* But, no. I don't normally try to catch animals or creatures of the night to eat. */
== ZDBAEB @3377 /* What would you prefer to trigger your traps? */
== BYOSHIM @3378 /* I'm a bounty hunter. I catch men. */
== ZDBAEB @3379 /* A hopeless romantic? */
== BYOSHIM @3380 /* <Yoshimo shakes his head.> */
== ZDBAEB @3381 /* Ah, so you're one of -those- mancatchers! */
== BYOSHIM @3360 /* What's your point? */
== ZDBAEB @3382 /* Well, as a purveyor of violent entertainment throughout the Underdark, Sword Coast, and beyond in the form of THE BLACK PITS, I need a notable number of neutralized nobodies to fatten the ranks of our gladiators. You seem like my man for the mission. */
== BYOSHIM @3383 /* Duels to the death, I assume? */
== ZDBAEB @3384 /* Oh, yes! -Evisceration- makes for the most -electrifying- entertainment! */
== BYOSHIM @3385 /* Then I charge extra because of the complications. Bringing criminals to justice is one thing, but trapping men knowing they'll likely die fighting each other? Well, I have a reputation to uphold! */
== ZDBAEB @3386 /* You play the part of a professional. How delightful. */
== BYOSHIM @3387 /* What are your terms? */
== ZDBAEB @3388 /* <Baeloth grins at Yoshimo.> */
== ZDBAEB @3389 /* Let's deal, my friend. */
EXIT
