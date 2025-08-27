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
  SAY @7000 /* Ah, the Luxurious Lizardskin Leapers! A splendid symphony of supple skin and sublime style. With these I shall sashay forward and even the stars shall seem subdued in comparison! */
  IF ~~ THEN DO ~SetGlobal("zdbaeleapers","GLOBAL",2)~ EXIT
END

/* sturdy boots are equipped */
IF ~Global("zdbaesturdy","GLOBAL",1)~
THEN zdbaesturdy
  SAY @7001 /* Simple, sturdy boots. Hmm, they will suffice, I suppose. Slightly too stodgy for my sophisticated sensibilities. Suitable for soldiers, perhaps, but scarcely for a sorcerer of my skill. How utterly uninspiring. */
  IF ~~ THEN DO ~SetGlobal("zdbaesturdy","GLOBAL",2)~ EXIT
END

/* simple boots are equipped - how DARE you! */
// commented out because this item doesn't exist
//  IF ~Global("zdbaesimple","GLOBAL",1)~
// THEN zdbaesimple
//  SAY @7002 /* Blast these brutish boots! They are bereft of beauty and bland in design. They barely beguile the eye! Why am I, the brilliant Baeloth, forced to travel with such foul footwear? */
//  IF ~~ THEN DO ~SetGlobal("zdbaesimple","GLOBAL",2)~ EXIT
// END

/* boots with da fur are equipped */
IF ~Global("zdbaefurries","GLOBAL",1)~
THEN zdbaefurries
  SAY @7003 /* Splendidly styled but too subtle for my taste. I dazzle, I delight. I refuse to be swallowed by the shadows like some sullen serf. */
  IF ~~ THEN DO ~SetGlobal("zdbaefurries","GLOBAL",2)~ EXIT
END

/* Obligatory Celvan Limerick */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAECelvan","AR0300",0)~
THEN CELVAN ZDBAECELV
@10099 /* The Black Pits he ran with great flair,
A sorcerer beyond compare.
But hear him ramble on,
From dusk well past dawn,
And you'll wish he'd run out of air. */
DO ~SetGlobal("ZDBAECelvan","AR0300",1)~
== ZDBAEJ @10100 /* Oho! Two can play this game! */
== ZDBAEJ @10101 /* Confident in his gab,
A gnome tries to deliver a jab.
But one jest too far,
And I'll make you the star,
Of *my* show. Now run or I'll stab... */
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

// Temple District (AR0900)
// Response: Listen to me, my brothers and sisters... heed my words. We have been chosen as the recipient of a most holy miracle, one that should neither be dismissed nor ignored!
INTERJECT CSGAAL 0 ZDBAEGAAL0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4050 /* Oohoohoohoo! This should be good! */
END CSGAAL 1
// Response: I say that the churches lie to you! They claim their gods are present when they do nothing other than require your coin to fill their pockets!
INTERJECT_COPY_TRANS CSGAAL 3 ZDBAEGAAL1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4051 /* And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are. */ /* And I, I say listen to me Baeloth the Bright! Baeloth the Bedazzling!  Baeloth the ... Well in any event, don't listen to this blind bat, however brilliant his bids at bewilderment are */
END
// Response: Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!
INTERJECT_COPY_TRANS CSGAAL 10 ZDBAEGAAL10
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  @4052 /* Follow him to mediocrity or follow me to magnificence. Your choice, of course. */
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
  @4053 /* Nay <CHARNAME>, NAY! You needst NOT do so. Mayhap thy bounteous booty might be better spent in more delightfully devious and devilish pursuits? Hmm? Perhaps upon this daring and dashing Drow, whose charm is as captivating as the celestial canvas itself? */
  == JAHABOAM IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN @4054 /* Errr, I don't think I have anything more for the gentlemen. */
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
   @4055 /* Bah! Am I to be belittled by balding bloated broker? What bilious buffoonery! Blast! BOO! A blight upon you sir! */
END

// Spellhold
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
== ZDBAEJ ~You svirfneblin continue to state the spectacularly self-evident! Are you dazzled and delighted by my presense? Or threatened instead?~
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
