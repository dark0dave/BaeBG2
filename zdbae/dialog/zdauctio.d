// Auctioneer for Housewives quest
BEGIN ZDAUCTIO

CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 5)~
THEN ZDAUCTIO ZDTRHWOABOOTBID
  ~Ah, esteemed guests, I see you're all curious about these humble boots. Let me assure you, they may appear simple, but they possess a power that though temporary, binds to buyer for eternity. Genie's may not apply. Terms and astral projections apply.~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",6)~
  == ZDAUCTIO ~What power do these boots grant? That, my dear bidders, is for the worthy to discover. For they react to the moment they are purchased of course!~
  == ZDAUCTIO ~This power comes from beyond the material pl-, I mean, from beyond our knoweldge.~
  == EDWINJ ~(Of course he would say that, what type of simians does he take us for.)~
  == ZDAUCTIO ~You there lovely lady!~
  == EDWINJ ~Me!? How dare... I mean of course?~
  == ZDBAEJ ~Come now 'edwina' we all have our parts to play, *wink*.~
  == ZDAUCTIO ~What do you say to a fine pair of these boots. Or how about your husband his feet seem almost grey!~
  == EDWINJ ~HE's NOT MY HUSBA..~
  == ZDBAEJ ~Ahhh, my magnificent magnate allow me to elucidate the edifice of artifice. That is to say, I bid 1000 gold.~
END
 + ~PartyGoldGT(2500)~ + ~Baeloth, bet more!~ EXTERN ZDBAEJ ZDBAETRHWOABET
 + ~PartyGoldLT(1000)~ + ~Baeloth, we can not afford such a purchase.~ EXTERN ZDAUCTIO ZDTRHWOABOOTBIDNOTHING
 ++ ~...~ EXTERN ZDAUCTIO ZDDAUCTIGOT2.5
 ++ ~Baeloth I want nothing to do with this.~ EXTERN ZDAUCTIO ZDTRHWOABOOTBIDNOTHING

/* simple boots are equipped - how DARE you! */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 6)~
THEN ZDAUCTIO ZDTRHWOABOOTBIDNOTHING
  ~What a terrible shame. All that potential wasted. Very well, I shall take some pity on you, here take these.~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaesimple","GLOBAL",1)~
  == ZDBAEJ ~Blast these brutish boots! They are bereft of beauty and bland in design. They barely beguile the eye! Why am I, the brilliant Baeloth, forced to travel with such foul footwear?~
  == EDWINJ ~(I think I prefer this drow miseralable, lest he put me in another mad scheme.)~
END
  ++ ~Cheer up baeloth at least your feet aren't cold any more.~ EXIT
  ++ ~Now, will you be quiet, so we can continue with our journey?~ EXIT

/* luxurious lizardskin leapers are equipped */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 7)~
THEN ZDAUCTIO ZDDAUCTIGOT10
  ~Stand back and marvel at the magnificent, luxurious lizardskin leapers!~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaeleapers","GLOBAL",1)~
  == ZDBAEJ ~Ah, the Luxurious Lizardskin Leapers! A splendid symphony of supple skin and sublime style. With these I shall sashay forward and even the stars shall seem subdued in comparison!~
END
  ++ ~I hope your happy Baeloth. That was expensive.~ EXIT
  ++ ~Enjoy. Now will you stop complaining?~ EXIT

/* boots with da fur are equipped */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 7)~
THEN ZDAUCTIO ZDDAUCTIGOT5
  ~What a fine price for a moment such as this. Enjoy the fizzling feeling! Or should I say enjoy the fabolous furry felts!~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaefurries","GLOBAL",1)~
  == ZDBAEJ ~Splendidly styled but too subtle for my taste. I dazzle, I delight. I refuse to be swallowed by the shadows like some sullen serf.~
END
  ++ ~A fine pair boots. Let us proceed.~ EXIT
  ++ ~Wonderful, now can we move on?~ EXIT

/* sturdy boots are equipped */
CHAIN
IF ~Global("ZDAuctionTrigger", "GLOBAL", 7)~
THEN ZDAUCTIO ZDDAUCTIGOT2.5
  ~Well I suppose not all moments can be grandious and glorious here take these.~
DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",8) SetGlobal("zdbaesturdy","GLOBAL",1)~
  == ZDBAEJ ~Simple, sturdy boots. Hmm, they will suffice, I suppose. Slightly too stodgy for my sophisticated sensibilities. Suitable for soldiers, perhaps, but scarcely for a sorcerer of my skill. How utterly uninspiring.~
END
  ++ ~Well I hope you enjoy them, anyways.~ EXIT
  ++ ~I paid good money for those. Lets move on, be grateful you got something at all.~ EXIT
