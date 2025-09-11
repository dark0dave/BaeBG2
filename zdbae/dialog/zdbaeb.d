BEGIN ZDBAEB

// Aerie 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEAerie1","GLOBAL",0)~
THEN BAERIE ZDBAEAerie1
~Baeloth, your spells are...very powerful, have you ever worried about the havoc they might cause?~
DO ~SetGlobal("ZDBAEAerie1","GLOBAL",1)~
== ZDBAEB ~Havoc? Hah! Why should I concern myself with those who can't appreciate the hypnotic hurricane of my magical histrionics?~
== BAERIE ~I...I just think we should be careful. Magic is not something to be taken lightly. Someone can easily get hurt from a stray fireball.~
== BAERIE ~We should use our powers for good. To protect, heal or aid others.~
== ZDBAEB ~Limit yourself if you must, but know I will not. My power flows like a raging river, not a quaint rivulet.~
EXIT

// Anomen 1, Lawful Neutral, hasn't been knighted
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",LAWFUL_NEUTRAL)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
~What is it now, Baeloth? A petty jest at my expense?~
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB ~Jest? No, my sanctimonious squire. Inquiry!~
== BANOMEN ~Hmph. Ask and be done with it.~
== ZDBAEB ~What phantom pain of puberty prods you towards this pompous path of paladins?~
== BANOMEN ~Nothing as vile as you imply! I seek only to prove my worth. To stand as my own man, unbroken by circumstance.~
== ZDBAEB ~Yet yours is a cult of leash and law. You seek independence, yet every new commandment curtails it.~
== ZDBAEB ~Stumble yet once and they will strip you bare of rank, regalia, respect, and even your patronage.~
== BANOMEN ~Enough! I will hear no more of your vile speech! Sprout your blasphemy elsewhere!~
== BKELDOR IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID) InParty("KELDORN")~ THEN ~Peace, Anomen. The drow speaks harshly, yet there is truth in what he says. Our order is strict, aye, but the harshest burdens are borne for the good of all. Discipline grants us the strength to protect the helpless.~
== BANOMEN IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID) InParty("KELDORN")~ THEN ~Of course, Sir Keldorn. I thank you for your guidance.~
== ZDBAEB ~Ah so noble, but only nob on mind. so yet so nob I mean so narrow-minded.~
EXIT

// Anomen 1, Lawful Good, knighted
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",LAWFUL_GOOD)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
~What is it now, Baeloth? A petty jest at my expense?~
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB ~Jest? No, my lawful lapdog. Inquiry!~
== BANOMEN ~I can sense your ill-intent. Save your breath, drow. I am a knight of Helm, sworn to duty and honor.~
== ZDBAEB ~So touchy, so terribly tedious. Very well, I shall tithe my titillation elsewhere.~
EXIT

// Anomen 1, Chaotic Neutral, failed test
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",CHAOTIC_NEUTRAL)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
~What is it now, Baeloth? A petty jest at my expense?~
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB ~Jest? No, my brooding brother-in-bitterness. Merely curiosity! Tell me, what phantom pain of puberty prodded you to serve that pompous order of paladins?~
== BANOMEN ~You think I still honor them? I spit on their vows! They may call absolute obedience discipline, but it is nothing but a leash.~
== ZDBAEB ~...A kennel, a cult, a cage for the craven.~
== BANOMEN ~Aye. Let them choke on their pride, and may their precious code strangle them all.~
== ZDBAEB ~The shackled squire sheds his chains at last!~
EXIT

// Cernd 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAECernd1","GLOBAL",0)~
THEN BCERND ZDBAECernd1
~I wonder, Baeloth, how does nature manifest within the depths of the Underdark?~
DO ~SetGlobal("ZDBAECernd1","GLOBAL",1)~
== ZDBAEB ~As fungi forests that glow in the dark, or stone caverns that swallow the witless whole.~
== ZDBAEB ~Every creature within its bounds craves conquest. Survival within the Underdark is synonymous with slaughter!~
== BCERND ~You speak of violence and strife. Do you truly believe such things to be natural?~
== ZDBAEB ~Trees on the surface strangle each other for sunlight. Beasts brawl for blood or boredom. And civilization? Pfeh! A flimsy façade, stripped away at the first hint of famine.~
== ZDBAEB ~What is nature if not conflict, hmm?~
EXIT

// Dorn 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("DORN")
    See("DORN")
    !StateCheck("DORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEDorn1","GLOBAL",0)~
THEN DORNJ ZDBAEDorn1
~Drow, why do insist on bothering me?~
DO ~SetGlobal("ZDBAEDorn1","GLOBAL",1)~
== ZDBAEB ~Why, I aim to ascertain your ambitions. What is it that you want, Dorn Il-Khan?~
== DORNJ ~Blood. Power. Vengeance.~
== ZDBAEB ~A triumvirate most tantalizing! Perhaps our priorities align? I propose bolstering your prowess in the arena. Perhaps one purveyed and promoted by me, the great Baeloth the Entertainer!~
== DORNJ ~A pit of vermin and half-trained fighters? Bah! I crave foes worthy of slaughter.~
== ZDBAEB ~And I shall find them, my armored associate, once my - ah - enterprise is restored to its former magnificence!~
== DORNJ ~Then speak to me when you offer more than words. I grow tired of killing for promises.~
EXIT

// Edwin 1, setting up the beginning of their rivalry, Baeloth needs to *know* Edwin can't help him so he can tease the HECK out of him instead
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("Edwin",MALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin1","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin1
~Behold! The most radiant Red Wizard of remarkable renown!~
DO ~SetGlobal("ZDBAEEdwin1","GLOBAL",1)~
== BEDWIN ~Yes, yes, Baeloth. Recognizing my genius is the least I expect from this group. (What could he possibly be scheming now?)~
== ZDBAEB ~I can heeeeeear you!~
== BEDWIN ~No, you can't!~
== ZDBAEB ~Regardless, as I recognized during my research, Thay contains one of Faerun's finest fighting arenas. I would delight in an introduction. Surely someone of your stature can oblige?~
== BEDWIN ~And why should I concern myself with your petty request?~
== ZDBAEB ~I have quite the arcane ability myself, and years of experience yanking slaves into obedience. Having them duel to the death even! Truly, I can share tips!~
== BEDWIN ~Hmph. Perhaps. The idea has...potential. Make it worth my while and I might consider it. (Curse my fall from favor! Such an opportunity doesn't come by often...)~
== ZDBAEB ~Ah, a fall from favor, was it?~
== BEDWIN ~Quiet, drow, I have no further interest in indulging you!~
EXIT

// Haer'dalis 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HAERDALIS")
    See("HAERDALIS")
    !StateCheck("HAERDALIS", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEHaerDalis1","GLOBAL",0)~
THEN ZDBAEB ZDBAEHaerDalis1
~Do you rehearse your speeches, Baeloth, or is your brilliance conjured spontaneously?~
DO ~SetGlobal("ZDBAEHaerDalis1","GLOBAL",1)~
== ZDBAEB ~Rehearse? Ha! My majestic monologues manifest in the moment! I've no need for petty preparation.~
== BHAERDA ~Then it seems we are kindred spirits, you and I. Each seeking the crowd's admiration, each delighting in its capture.~
== ZDBAEB ~Indeed! Partners in pomp, pride, and performance!~
EXIT

// Hexxat 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HEXXAT")
    See("HEXXAT")
    !StateCheck("HEXXAT", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEHexxat1","GLOBAL",0)~
THEN BHEXXAT ZDBAEHexxat1
~Why do your eyes linger on me, drow? Are you afraid I will drink you dry?~
DO ~SetGlobal("ZDBAEHexxat1","GLOBAL",1)~
== ZDBAEB ~Fear? Perish the thought! I was merely musing on how marvelously you'd perform in my arena.~
== ZDBAEB ~Crowds would cheer, my coffers would swell, and you could sate your thirst through blessed bloodshed.~
== BHEXXAT ~Imagine, instead, what happens when I don't play along.~
== ZDBAEB ~...Consider my offer reluctantly rescinded.~
EXIT

/* Imoen 1, this is both deeply unsettling & also wholesome
Dave WHY?! */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("IMOEN2")
    See("IMOEN2")
    !StateCheck("IMOEN2", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEImoen21","GLOBAL",0)~
THEN ZDBAEB ZDBAEImoen21
~Imoen, why the wailing? Your normally cheerful countenance even managed to coax a smile out of me!~
DO ~SetGlobal("ZDBAEImoen21","GLOBAL",1)~
== BIMOEN2 ~Want to take a guess? I've been experimented on. Tortured. Had my soul stolen...~
== BIMOEN2 ~I try to keep my head up, but it hasn't been easy lately.~
== ZDBAEB ~You have me quite curious: what wounds did Irenicus inflict? And where?~
== BIMOEN2 ~Rub salt into the cuts, why don’t you? Why do you even care?~
== ZDBAEB ~If I know what he did, I can better try to undo it, my dear.~
== ZDBAEB ~Besides, subjugating slaves is practically my specialty. I dare say your captor overdid it.~
== BIMOEN2 ~Thanks...I think. I didn't enjoy his torment either!~
== ZDBAEB ~There is a threshold where torment becomes trivial, no longer useful for training obedience. A true master of cruelty knows this line.~
== BIMOEN2 ~That's oddly insightful. But talking with you has cheered me up a little. Could we walk together a bit longer?~
== ZDBAEB ~Of course. Let me entertain you!~
EXIT

// Jaheria 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAHEIRA")
    See("JAHEIRA")
    !StateCheck("JAHEIRA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEJaheira1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJaheira1
~Ah, Jaheira! Ever ready with a rebuke. Your tongue is sharper than the weapon at your side.~
DO ~SetGlobal("ZDBAEJaheira1","GLOBAL",1)~
== BJAHEIR ~Keep testing my patience, drow, and you may feel its sting.~
EXIT

// Jan 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAN")
    See("JAN")
    !StateCheck("JAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEJan1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJan1
~Ah, Jan! I have a proposition that might pique your interest.~
DO ~SetGlobal("ZDBAEJan1","GLOBAL",1)~
== BJAN ~A proposition, you say? I am always willing to hear out a prospective business partner.~
== BJAN ~Why, I am quite renowned for my listening skills, as my second cousin twice removed once remarked. Did I ever tell you he owned a turnip farm near Beregost? Poor fellow, he always seemed to choose the poorest of ventures.~
== BJAN ~People were only interested in mushrooms, you see, the dried variety found deep in the Underdark. I'm sure, as a drow, you are quite familiar with them. But yes, as I said, he complimented me on my impeccable listening skills while he was...~
== ZDBAEB ~...~
== BJAN ~Why the sudden silence? Surely my words merit a response! Oh, your proposal! Very well, I'm all ears.~
== ZDBAEB ~Yes, my light-skinned Svirfneblin.~
== BJAN ~...~
== ZDBAEB ~There! I've rendered you momentarily mute in turn. A marvelous match, wouldn't you agree?~
EXIT

// Keldorn 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KELDORN")
    See("KELDORN")
    !StateCheck("KELDORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKeldorn1","GLOBAL",0)~
THEN BKELDOR ZDBAEKeldorn1
~You travel alongside a paladin without fear of retribution or judgment?~
DO ~SetGlobal("ZDBAEKeldorn1","GLOBAL",1)~
== ZDBAEB ~Is there some scintillating reason why you should choose to smite me?~
== BKELDOR ~Having heard a little of your past, is there a reason why I should not?~
== ZDBAEB ~I am not evil! I merely detect that way.~
== BKELDOR ~And a difficult upbringing oft leads to making ill-informed choices. I accede to your point, Baeloth, but heed my warning.~
== BKELDOR ~Tread carefully, and avoid further harming others with your actions, lest your antics summon true consequences.~
== ZDBAEB ~Consequences? Not on my coarse conscience! Oh no.~
EXIT

// Korgan 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KORGAN")
    See("KORGAN")
    !StateCheck("KORGAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKorgan1","GLOBAL",0)~
THEN ZDBAE ZDBAEKorgan1
~Have you ever considered a career of chaos and carnage in my arena?~
DO ~SetGlobal("ZDBAEKorgan1","GLOBAL",1)~
== BKORGAN ~Blood an' gold in equal measure, eh? Aye, I might be interested. What's yer offer, drow?~
== ZDBAEB ~Besides earning fame and fervent applause? Perhaps...ah! Five-hundred gold coins!~
== BKORGAN ~Five hundred? Bah! Tavern brawls pay better. Ye couldnae afford me.~
== ZDBAEB ~Not yet, my cocksure companion, but fortunes are fickle. Tomorrow's treasure may well tip the scales!~
EXIT

// Mazzy 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MAZZY")
    See("MAZZY")
    !StateCheck("MAZZY", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEMazzy1","GLOBAL",0)~
THEN ZDBAEB ZDBAEMazzy1
~Ah! A halfling. For a moment I mistook you for a pale Svirfneblin with a stunted skull.~
DO ~SetGlobal("ZDBAEMazzy1","GLOBAL",1)~
== BMAZZY ~I do not take kindly to being mocked, Baeloth.~
== ZDBAEB ~Mockery? Never! I'm merely marveling at our uncommon companionship. <CHARNAME> keeps curious company.~
== BMAZZY ~You mistake necessity for friendship. We travel together only by <CHARNAME>'s choice.~
== ZDBAEB ~Then lets call ourselves partners in peril, even if not in principle.~
EXIT

// Minsc 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MINSC")
    See("MINSC")
    !StateCheck("MINSC", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEMinsc1","GLOBAL",0)~
THEN BMINSC ZDBAEMinsc1
~See how Boo sniffs you, dark one? His nose knows evil!~
DO ~SetGlobal("ZDBAEMinsc1","GLOBAL",1)~
== ZDBAEB ~Perhaps he will reconsider? Behold, I brought candied hazelnuts! Your furry friend might find them delicious.~
== BMINSC ~You will not buy Boo's trust with sweets! A hamster's sense of justice cannot be swayed!~
== ZDBAEB ~Buy is such a blunt word. I prefer to call it cultivating camaraderie.~
== BMINSC ~He is not happy with you. And when Boo is not happy, Minsc is not happy.~
== ZDBAEB ~What a ghastly glower from gerbil and a gentlemen. I'll stand way over there for a spell, shall I?~
EXIT

// Nalia 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NALIA")
    See("NALIA")
    !StateCheck("NALIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAENalia1","GLOBAL",0)~
THEN ZDBAEB ZDBAENalia1
~Nalia, what's nagged me about you, is that you know naught about navigating the knot of nomination. I thought you numbered amongst the nobility?~
DO ~SetGlobal("ZDBAENalia1","GLOBAL",1)~
== BNALIA ~I do but I cannot say I enjoy it.~
== ZDBAEB ~Why would anyone dislike others being legally liable to wait on them?~
== BNALIA ~Should I take pride in something I didn't choose? Something I earned through mere circumstance of my birth?~
== BNALIA ~Day after day, I witness the inequality in the world. My life is worth no more than any other.~
== ZDBAEB ~Ah, noble Nalia, ever hobbled by her heightened humanity. Ha!~
== BNALIA ~What gives my life worth are my deeds. Nobility does not define who I am or what I'm capable of.~
EXIT

// Neera 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NEERA")
    See("NEERA")
    !StateCheck("NEERA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAENeera1","GLOBAL",0)~
THEN ZDBAEB ZDBAENeera1
~Half-elf, your wild magic is a magnificent maelstrom.~
DO ~SetGlobal("ZDBAENeera1","GLOBAL",1)~
== BNEERA ~Ha! Pull the other one. Usually people just pray I don't explode nearby.~
== ZDBAEB ~You wield chaos as both curse and cover. Every miscast spell cloaks you with credible deniability for future accidents.~
== BNEERA ~...So you admire me because I can screw up and pretend it wasn't my fault?~
== BNEERA ~Figures. But, sure, I suppose that is a perk.~
EXIT

// Rasaad 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("RASAAD")
    See("RASAAD")
    !StateCheck("RASAAD", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAERasaad1","GLOBAL",0)~
THEN BRASAAD ZDBAERasaad1
~Why do you stare at me so intently, Baeloth?~
DO ~SetGlobal("ZDBAERasaad1","GLOBAL",1)~
== ZDBAEB ~Because you bewilder me. Bare of armor, bereft of spells, and yet somehow still alive.~
== BRASAAD ~I need not rely on armor nor sorcery. My body is my weapon, my discipline my shield.~
== ZDBAEB ~A flimsy defense against fireballs or fiends. Neither of them pauses to meditate.~
== BRASAAD ~Nor do they choose mercy. That is why I must.~
EXIT

// Valygar 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VALYGAR")
    See("VALYGAR")
    !StateCheck("VALYGAR", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEValygar1","GLOBAL",0)~
THEN BVALYGA ZDBAEValygar1
~I don't trust your kind, Baeloth. Magic corrupts and you revel in your power.~
DO ~SetGlobal("ZDBAEValygar1","GLOBAL",1)~
== ZDBAEB ~Sorcery sings and simmers in my veins. Stifling it would be like trying to bottle lightning.~
== BVALYGA ~And when it bursts, as it always does, innocent bystanders pay the price.~
== BVALYGA ~I'll be watching you closely. Every step, every spell.~
EXIT

// Viconia 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VICONIA")
    See("VICONIA")
    !StateCheck("VICONIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEViconia1","GLOBAL",0)~
THEN BVICONI ZDBAEViconia1
~What are you scheming now, lowly jaluk?~
DO ~SetGlobal("ZDBAEViconia1","GLOBAL",1)~
== ZDBAEB ~We are both outcasts upon the surface. If nothing else, elg'caress, we are equals in exile.~
== BVICONI ~Do not mistake exile for elevation.~
== ZDBAEB ~Spare me the suffocating squabbles of priestesses and their pitiful, petty posturing.~
EXIT

// Wilson 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("WILSON")
    See("WILSON")
    !StateCheck("WILSON", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEWILSON1","GLOBAL",0)~
THEN ZDBAEB ZDBAEWILSON1
~A bear as a battle-brother. What role shall I bestow upon you, hmm?~
DO ~SetGlobal("ZDBAEWILSON1","GLOBAL",1)~
== WILSON ~Snort.~
== ZDBAEB ~What about...The Ursine Usurper! Crowds will roar as you crush challengers in my arena.~
== WILSON ~Grr!~
== ZDBAEB ~Spoilsport.~
EXIT

// Yoshimo 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("YOSHIMO")
    See("YOSHIMO")
    !StateCheck("YOSHIMO", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEYoshimo1","GLOBAL",0)~
THEN BYOSHIM ZDBAEYoshimo1
~You are a hard man to miss, Baeloth. It's always a flourish with you, never a whisper.~
DO ~SetGlobal("ZDBAEYoshimo1","GLOBAL",1)~
== ZDBAEB ~Subtlety is for thieves not sorcerers.~
== BYOSHIM ~Shadows may lack spectacle, my friend, but they keep one alive.~
== ZDBAEB ~I have survived plots, poisons, and priestesses of the Underdark. No danger the surface poses could daunt me.~
== BYOSHIM ~Confidence is a fine shield...until the first blade slips past it.~
EXIT

// Aerie 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEAerie2","GLOBAL",0)~
THEN ZDBAEB ZDBAEAerie2
~Oooh... we have such stories amongst my people. Being underground is just not for the avariel…~
DO ~SetGlobal("ZDBAEAerie2","GLOBAL",1)~
== BAERIE ~The Underdark especially… I… I can't imagine living there.~
== ZDBAEB ~Fear fetters the mind, my feeble-hearted friend. My home holds countless opportunities for the courageous and cunning.~
== ZDBAEB ~Perhaps you would participate in my perilous - I mean perfectly pleasant - arena? It lies in shambles at present, but once rebuilt, all of the planes shall proclaim the genius of Baeloth the Entertainer.~
== BAERIE ~N-No, thank you.~
== ZDBAEB ~Then perhaps a petty payment would suffice? Even a prodigy like myself requires coin to construct and create.~
== BAERIE ~I…I think this conversation is quite done.~
== ZDBAEB ~A pity.~
EXIT

// Cernd 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAECernd1","GLOBAL", 1)
    Global("ZDBAECernd2","GLOBAL",0)~
THEN CERNDJ ZDBAECernd1
~I have been meditating on what you said about nature. How do you perceive it on the surface?~
DO ~SetGlobal("ZDBAECernd2","GLOBAL",1)~
== ZDBAEB ~As a sun-drenched stage for the same savage symphony.~
== CERNDJ ~You speak as though all is strife and struggle. That is your error, Baeloth, your past philosophies extend beyond the Underdark's tunnels. You see only the trees strangling one another for sunlight...~
== CERNDJ ~Yet nature thrives in cycles. Rivers nourish forests, predators keep prey populations in check. Harmony is just as vital.~
== ZDBAEB ~Perhaps your surface is less savage than I imagined albeit only marginally so.~
EXIT

// Edwin 2 - The Age-Old Sorcerer vs Mage rivalry
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("Edwin",MALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin1","GLOBAL",1)
    Global("ZDBAEEdwin2","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin2
~How fare your fumbling forays into the arcane arts?~
DO ~SetGlobal("ZDBAEEdwin2","GLOBAL",1)~
== BEDWIN ~Unlike you, drow, my ability knows no bounds. Magical mastery demands intellect. A quality you patently lack.~
== ZDBAEB ~I need no brittle books nor banal memorization to bend the weave. *My* magic is instinct itself!~
== BEDWIN ~What you call instinct is mere theatrics. Impressive to fools alone.~
== ZDBAEB ~Such splendid spluttering from bargain-bin Baeloth himself.~
EXIT

// Korgan 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KORGAN")
    See("KORGAN")
    !StateCheck("KORGAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKorgan2","GLOBAL",0)~
THEN BKORGAN ZDBAEKorgan2
~I've a thirst fer carnage ye ken? Yer stories drown me in feel'n the sweet rage 'til the next bout.~
DO ~SetGlobal("ZDBAEKorgan2","GLOBAL",1)~
== ZDBAEB ~No more gratis gore, my grim friend. Last time you claimed I couldn't afford you. Now, it seems, you cannot afford me.~
== ZDBAEB ~Still, should you reconsider my offer, I shall spin more stories for you. Or, better yet, you can write them yourself upon the arena's sands.~
== BKORGAN ~A devil's bargain, Baeloth. Nae be me quick answer, but you can glitter it wit' gold fer 'nother try.~
EXIT

/* Edwin 3 - Enter Edwina, Stage Right */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("Edwin",FEMALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin3","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin3
~My! What a marvelous metamorphosis!~
DO ~SetGlobal("ZDBAEEdwin3","GLOBAL",1)~
== BEDWIN ~Silence! This indignity is temporary. Entirely temporary.~
== ZDBAEB ~Temporary, tantalizing, and terribly amusing! Does the weave respond differently when woven with your womanly wiles?~
== BEDWIN ~I shall end you, Baeloth! Slowly, meticulously, savoring every moment of your suffering.~
== ZDBAEB ~Even your threats sound more mellifluous now.~
EXIT

/* Viconia 3, if she's in a romance */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VICONIA")
    See("VICONIA")
    !StateCheck("VICONIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEViconia3","GLOBAL",0)
    OR(2)
    Global("ViconiaRomanceActive","GLOBAL",1)
    Global("ViconiaRomanceActive","GLOBAL",2)~
THEN BVICONI ZDBAEViconia3
~Let me make one thing clear, jaluk: whatever delusions you fostered, there was never a chance for anything between us.~
DO ~SetGlobal("ZDBAEViconia3","GLOBAL",1)~
== ZDBAEB ~Such putrid presumptions! I flirt with chaos not certain death.~
== ZDBAEB ~Still watching you court a surfacer has been an endless source of entertainment.~
== BVICONI ~Know your place, Barrityl. Another word and I will feed you your own tongue!~
== ZDBAEB ~There it is! That classic drow charm. <CHARNAME> must be completely enchanted...or perhaps concussed.~
EXIT
