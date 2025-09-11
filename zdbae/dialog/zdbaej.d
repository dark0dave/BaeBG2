BEGIN ZDBAEJ

/* real housewives of athkatla intro */
IF ~Global("ZDBaeBoots","GLOBAL",1)~ THEN ZDBAETOSSACOINTOYOURBAELOTH
SAY ~The bustle of the bazaar! Trinkets, treasures, and tantalizing wares aplenty. My boots, alas, are worn thin from all our wandering. Perhaps you should spend a coin or two and preserve your most precious pal?~
++ ~All of that postering just to tell me your boots are falling apart!~ + ZDBAEBOOTS1
++ ~Then I suppose we could buy you a new pair.~ + ZDBAEBOOTS1
++ ~You're here to sling spells, Baeloth, not bore me with your endless chatter.~ DO ~SetGlobal("ZDBAEBoots","GLOBAL",2)~ EXIT
END

IF ~~ ZDBAEBOOTS1
SAY ~Precisely! What greater tragedy is there than Baeloth Barrityl being undone by shabby soles?~
IF ~~ DO ~AddJournalEntry(@1000001, QUEST) SetGlobal("ZDBAEBoots","GLOBAL",2)~ EXIT
END

/* item-based talks */
/* luxurious lizardskin leapers are equipped */
IF ~Global("zdbaeleapers","GLOBAL",1)~
THEN zdbaeleapers
  SAY ~Ah, the Luxurious Lizardskin Leapers! A splendid symphony of supple skin and sublime style. With these I shall sashay forward and even the stars shall seem subdued in comparison!~
  IF ~~ THEN DO ~SetGlobal("zdbaeleapers","GLOBAL",2)~ EXIT
END

/* sturdy boots are equipped */
IF ~Global("zdbaesturdy","GLOBAL",1)~
THEN zdbaesturdy
  SAY ~Simple, sturdy boots. Hmm, they will suffice, I suppose. Slightly too stodgy for my sophisticated sensibilities. Suitable for soldiers, perhaps, but scarcely for a sorcerer of my skill. How utterly uninspiring.~
  IF ~~ THEN DO ~SetGlobal("zdbaesturdy","GLOBAL",2)~ EXIT
END

/* simple boots are equipped - how DARE you! */
// commented out because this item doesn't exist
//  IF ~Global("zdbaesimple","GLOBAL",1)~
// THEN zdbaesimple
//  SAY @~Blast these brutish boots! They are bereft of beauty and bland in design. They barely beguile the eye! Why am I, the brilliant Baeloth, forced to travel with such foul footwear?~
//  IF ~~ THEN DO ~SetGlobal("zdbaesimple","GLOBAL",2)~ EXIT
// END

/* boots with da fur are equipped */
IF ~Global("zdbaefurries","GLOBAL",1)~
THEN zdbaefurries
  SAY ~Splendidly styled but too subtle for my taste. I dazzle, I delight. I refuse to be swallowed by the shadows like some sullen serf.~
  IF ~~ THEN DO ~SetGlobal("zdbaefurries","GLOBAL",2)~ EXIT
END

/* Obligatory Celvan Limerick */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAECelvan","AR0300",0)~
THEN CELVAN ZDBAECELV
~The Black Pits he ran with great flair,
A sorcerer beyond compare.
But hear him ramble on,
From dusk well past dawn,
And you'll wish he'd run out of air.~
DO ~SetGlobal("ZDBAECelvan","AR0300",1)~
== ZDBAEJ ~Oho! Two can play this game!~
== ZDBAEJ ~Confident in his gab,
A gnome tries to deliver a jab.
But one jest too far,
And I'll make you the star,
Of *my* show. Now run or I'll stab...~
END CELVAN 1


/* interjections */
// Government District
// Viconia intro
I_C_T VICG1 1 ZDBAEMOB1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Let's make ourselves scarce, shall we? Before their righteous rage redirects towards us.~
END

I_C_T VICG1 2 ZDBAEMOB2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Must I repeat myself, <CHARNAME>? No, no, that would be dreary indeed.~
END

I_C_T VICG1 5 ZDBAEMOB4
== VICG1 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Look! Over there, I spot another one!~
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Blast and bother.~
== VICG2 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~This is getting out of hand! Now there are two of them!~
== VICG1 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Then the invasion is truly upon us.~
END

I_C_T VICONI 11 ZDBAEMOB3
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~What a bother! ...But better her than me.~
END

// Corneil, Cowled Wizard selling licences
I_C_T CORNEIL 6 ZDBAECORN1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Listen to these Cowled Ones waving about their worthless warrants. Licenses for magic...how painfully pedestrian of them. I, Baeloth Barrityl, am beyond their banal barriers.~
END

// Temple District (AR0900)
// Response: Listen to me, my brothers and sisters... heed my words. We have been chosen as the recipient of a most holy miracle, one that should neither be dismissed nor ignored!
INTERJECT CSGAAL 0 ZDBAEGAAL0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  ~Oohoohoohoo! This should be good!~
END CSGAAL 1
// Response: I say that the churches lie to you! They claim their gods are present when they do nothing other than require your coin to fill their pockets!
INTERJECT_COPY_TRANS CSGAAL 3 ZDBAEGAAL1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  ~And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are. */ /* And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are~
END
// Response: Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!
INTERJECT_COPY_TRANS CSGAAL 10 ZDBAEGAAL10
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  ~Follow him to mediocrity or follow me to magnificence. Your choice, of course.~
END

// Market District
// Circus, Aerie introduction
// Thanks for being vague when telling us you sense something is off, Baeloth
I_C_T AERIE 30 ZDBAECIRC1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~The Weave twists and twirls around her. Such chaotic patterns require a cunning conductor. But, surely, that is why you keep *me* close.~
END

// Docks District
// Buy Jaheria a gift (dshop02.d)
// ~<CHARNAME>! You do not need to...
INTERJECT_COPY_TRANS JAHEIRAJ 247 ZDBAEJAHINTER0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
~Nay <CHARNAME>, NAY! You needst NOT do so. Mayhap thy bounteous booty might be better spent in more delightfully devious and devilish pursuits? Hmm? Perhaps upon this daring and dashing Drow, whose charm is as captivating as the celestial canvas itself?~
  == JAHABOAM IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN ~Errr, I don't think I have anything more for the gentleman.~
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN ~Bah! Am I to be belittled by balding bloated broker? What bilious buffoonery! Blast! BOO! A blight upon you sir!~
END

// Spellhold
// Yoshimo's Betrayal
I_C_T YOSHJ 113 ZDBAEYOSB
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN ~A banal betrayal by any drow standard. Tiresome and tedious to be sure.~
END

// Lonk is dealt with so we're gathering the team & charging Irenicus
I_C_T PLAYER1 15 ZDBAELONK
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ ~A fine flock of fodder you've freed. Shall we hurl them headlong into havoc then?~
END

// Slayer Change
I_C_T PLAYER1 3 ZDBAESLAY1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Bravo! Such a savage spectacle! I call for an encore!~
END

// Underdark
// Upon entry, speaking with Carlig, only if Viconia isn't present because we're stealing her drow-language line & reusing it for our own purposes
I_C_T UDDUER01 0 ZDBAECARLIG
== ZDBAEJ IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Lil waela lueth waela ragar brorna lueth wund nind, kyorlin elghinn! Sarn! Usstan uil Baeloth!~
== UDDUER01 IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Of... of course, malla Baeloth. I am at your service in all matters.~
== UDDUER02 IF ~NumInPartyGT(2) !InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Wait, wait! Carlig, he bears no house insignia that I know. Look at his companions! He is an outcast!~
== UDDUER02 IF ~!NumInPartyGT(2) !InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Wait, wait! Carlig, he bears no house insignia that I know. Look at his companion! He is an outcast!~
== UDDUER01 IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~It is not often that those not directly associated with a House pass this way.~
END

// Svirfneblin City Leader
// Once again reusing lines otherwise pulled for Viconia
EXTEND_TOP UDSVIR03 0 // Extend Top bad, I know, not sure if there's a better way to make this work though
IF ~!InParty("VICONIA") InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~
EXTERN UDSVIR03 ZDBAEDUER1
END

CHAIN UDSVIR03 ZDBAEDUER1
~Surprising that you travel with the darkness of a drow. I mean no disrespect, but it is surprising.~
== ZDBAEJ ~You svirfneblin continue to state the spectacularly self-evident! Are you dazzled and delighted by my presence? Or threatened instead?~
END
IF ~~ DO ~EraseJournalEntry(57761)~ EXTERN UDSVIR03 3

EXTEND_TOP UDSVIR03 16 // Extend Top bad, I know, not sure if there's a better way to make this work though
IF ~!InParty("VICONIA") InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~
EXTERN UDSVIR03 ZDBAEDUER2
END

CHAIN UDSVIR03 ZDBAEDUER2
~No offense, malla drow, but I see you do not wear the symbols of any House that I know. You would fare no better in there, especially with your current companions.~
== ZDBAEJ ~You underestimate my cunning, gnome, and my contacts. But tell us of your safe alternative.~
END
IF ~~ EXTERN UDSVIR03 18

I_C_T UDSVIR03 23 ZDBAEDEUR3
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~We are dealing with the infamous intermediary then? How tedious.~
END

// Svirfneblin Innkeeper
I_C_T UDSVIR04 5 ZDBAEGNOMEINN
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Astutely observed. This pitiful place is beneath me...though, admittedly, most places are.~
END

// Svirfneblin Slaughter
I_C_T UDSVIR08 1 ZDBAEDEEPGNOMES
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Smashing svirfneblin sounds sublime! To the slaughter!~
END

// Elven City
// Tree of Life approach
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) Global("ZDBAETreeOfLife","GLOBAL",0)~
EXTERN PLAYER1 ZDBAETREE1
END

CHAIN PLAYER1 ZDBAETREE1
~Baeloth Barrityl, the drow sorcerer, an unlikely ally who has flung fire and unleashed his fury upon your foes. But is he truly prepared for the fight ahead?~
DO ~SetGlobal("ZDBAETreeOfLife","GLOBAL",1)~
END
++ ~Baeloth, we have become friends, so you don't have to follow me any further. This isn't your fight.~ EXTERN ZDBAEJ ZDBAETREE2
++ ~There's a chance we won't survive. Turn tail and flee if you're too cowardly to see this battle through.~ EXTERN ZDBAEJ  ZDBAETREE2
++ ~We're nearing the end. I have to know that you're ready. There's no turning back.~ EXTERN ZDBAEJ ZDBAETREE2


CHAIN ZDBAEJ ZDBAETREE2
~I was preparing a particularly scorching fireball for these simpering elves. How they ever forced my kin beneath the ground is beyond comprehension.~
== ZDBAEJ ~But yes, yes, I hear you. I have resolved to remain. The spotlight beckons and I shan't miss my cue!~
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead
I_C_T PLAYER1 16 ZDBAEIREN1
  == ZDBAEJ IF ~InParty("ZDBAE") Range("ZDBAE",15) !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN ~Obviously, this was going to happen. Our triumph was assured with my superior sorcerous skills. ...Ah! What is this strange, nay sinister, sensation?~
END

// Entering the Hells
I_C_T PLAYER1 25 ZDBAEHELL1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~The Hells, is it? What a delightful debut for the next deadly duel!~
END

// Battling Irenicus in the Hells
I_C_T HELLJON 7 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Fight or flee, either way you fall!~ 
END

I_C_T HELLJON 8 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Fight or flee, either way you fall!~ 
END

I_C_T HELLJON 9 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Fight or flee, either way you fall!~ 
END

I_C_T HELLJON 10 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Fight or flee, either way you fall!~ 
END

/* friendship arc */

// 1 - General check-in & check up (shortly after recruitment, pre-Spellhold)
CHAIN IF ~Global("ZDBaeFriendshipTalks","GLOBAL",2)~ THEN ZDBAEJ BAEFT1
  ~The Copper Coronet, ah, such squandered potential. An arena of note but without a noteworthy patron. The roar of the ravenous crowd, the screams of the soon-to-be-slain, my reign would have been renowned!~
  DO ~SetGlobal("ZDBaeFriendshipTalks","GLOBAL",3) RealSetGlobalTimer("ZDBaeFriendshipTalksTimer","GLOBAL",3600)~
  == ZDBAEJ ~Alas, my triumphant return to running fighting pits came to an abrupt close. But fortune favors the flexible. Plans may perish, yet possibilities persist! Tell me, <CHARNAME>, what mission moves our party onward?~
END
  + ~NumInPartyGT(2)~ + ~Imoen was kidnapped by the Cowled Wizards, we're trying to get her back.~ EXTERN ZDBAEJ BAEFT1.1
  + ~!NumInPartyGT(2)~ + ~Imoen was kidnapped by the Cowled Wizards, I'm trying to get her back.~ EXTERN ZDBAEJ BAEFT1.1
  // Should be OR(2) & also check for SOD completion
  + ~Global("BPINBG","GLOBAL",1)~ + ~I was captured and tortured by a mage called Irenicus. I intend to find him and make him pay for his insolence.~ EXTERN ZDBAEJ BAEFT1.2
  + ~!Global("BPINBG","GLOBAL",1)~ + ~I was captured and tortured by a mage named Irenicus. I intend to find him and make him pay for his insolence.~ EXTERN ZDBAEJ BAEFT1.3
  ++ ~Just fall in line, Baeloth, I've no intention of explaining my plans.~ EXTERN ZDBAEJ BAEFT1.4

CHAIN ZDBAEJ BAEFT1.1
~Those conniving Cowled Ones? I applaud your audacity in opposing them. Any cause that confounds them is one I shall champion. Imagine trying to impose limits on my magic!~
== ZDBAEJ ~Oh, right, Imoen. Yes, yes, we’ll save her too, I suppose.~ EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.2
~Captured yet again? A dreadful habit and one you should cease. But this Irenicus intrigues me. He's powerful and presumptuous enough to seize you? You'll need formidable forces, and of course my magnificent magic, if you wish to see him suffer.~ EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.3
~To stoke your vengeance, Irenicus must be a mage of means and malice indeed. Fear not, with me in your retinue, retribution is only a matter of time.~ EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.4
~Then consider this conversation adjourned.~
END

CHAIN ZDBAEJ BFAEFT1.5
~I chose wisely when I cast my lot in with you. Do not fret, I shall think of something suitable with which you can repay me. The pleasure of my company does have its price.~
END
  + ~!NumInPartyGT(2)~ + ~Baeloth, you walk freely only due to my protection.~ EXTERN ZDBAEJ BAEFT1.6
  + ~NumInPartyGT(2)~ + ~Baeloth, you walk freely only due to our protection.~ EXTERN ZDBAEJ BAEFT1.6
  ++ ~From you, I would expect nothing less.~ EXTERN ZDBAEJ BAEFT1.6
  ++ ~Keep making demands and I’ll stuff you into the Copper Coronet’s cages instead.~ EXTERN ZDBAEJ BAEFT1.6
  ++ ~I assume your silence is a luxury I cannot afford then?~ EXTERN ZDBAEJ BAEFT1.6

CHAIN ZDBAEJ BAEFT1.6
~Now, onward! I tire of talking and thirst for other theatrics!~
END
