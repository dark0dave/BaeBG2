BEGIN ~BAELOTH1~

IF ~  Global("BA_BEGIN","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0001
END

Come one, come all! See the cream of the Sword Coast's combatant crop! Witness the brilliant and bizarre battles in the Black Pits of the one and only Baeloth the Entertainer! 
Greetings, friendly, ah, surface-dweller. You wouldn't happen to know the direction of the nearest entrance to the Underdark, would you?
From the Underdark. Was that not clear? Goodness, are you blind? Eugh, I hadn't realized how sickly you surfacer sort are.
No, I suppose you wouldn't. This is particularly problematic for a popular power player such as myself!
How could I forget?! Allow me to introduce myself. I am Baeloth Barrityl, more commonly known as BAELOTH THE ENTERTAINER! Yes, I know. THAT Baeloth. Fall to your knees and beg for mercy; I'm sure you know the drill.

IF ~~ THEN BEGIN 1 // from:
  SAY @0002 /* ~Najim? Are you even LISTENING? My most obedient serv—friend! WHERE ARE YOU?! Surely you aren't going to leave me UP HERE!~ [bab003] */
  IF ~~ THEN EXTERN ~BAELOTH~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #31862 /* ~Argh! YOU CONNIVING CUR! I will crack your realm wide open and DRAG YOU INTO THIS PLANE OF— Oh, hello. Well, this is awkward.~ [bab004] */
  IF ~~ THEN REPLY #31863 /* ~Well met, I am <CHARNAME>.~ */ EXTERN ~BAELOTH~ 3
  IF ~~ THEN REPLY #31864 /* ~Who the hell are you?~ */ EXTERN ~BAELOTH~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31865 /* ~Greetings, friendly, ah, surface-dweller. You wouldn't happen to know the direction of the nearest entrance to the Underdark, would you?~ [bab005] */
  IF ~  !InParty("NEERA")
~ THEN REPLY #31866 /* ~I'm afraid I don't.~ */ EXTERN ~BAELOTH~ 5
  IF ~  !InParty("NEERA")
~ THEN REPLY #31867 /* ~Where on earth did you come from?~ */ EXTERN ~BAELOTH~ 4
  IF ~  !InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
  IF ~  InParty("NEERA")
~ THEN REPLY #31866 /* ~I'm afraid I don't.~ */ EXTERN ~NEERAJ~ 166
  IF ~  InParty("NEERA")
~ THEN REPLY #31867 /* ~Where on earth did you come from?~ */ EXTERN ~BAELOTH~ 4
  IF ~  InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 4 // from:
  SAY #31869 /* ~From the Underdark. Was that not clear? Goodness, are you blind? Eugh, I hadn't realized how sickly you surfacer sort are.~ [bab006] */
  IF ~  !InParty("NEERA")
~ THEN REPLY #31870 /* ~As pleasant as you are, I'm afraid I don't know where an Underdark entrance can be located.~ */ EXTERN ~BAELOTH~ 5
  IF ~  !InParty("NEERA")
~ THEN REPLY #31871 /* ~Who are you, exactly?~ */ EXTERN ~BAELOTH~ 6
  IF ~  !InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
  IF ~  InParty("NEERA")
~ THEN REPLY #31870 /* ~As pleasant as you are, I'm afraid I don't know where an Underdark entrance can be located.~ */ EXTERN ~NEERAJ~ 166
  IF ~  InParty("NEERA")
~ THEN REPLY #31871 /* ~Who are you, exactly?~ */ EXTERN ~BAELOTH~ 6
  IF ~  InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 5 // from:
  SAY #31875 /* ~No, I suppose you wouldn't. This is particularly problematic for a popular power player such as myself!~ [bab007] */
  IF ~  !InParty("NEERA")
~ THEN REPLY #31876 /* ~And who might, ah, yourself be?~ */ EXTERN ~BAELOTH~ 6
  IF ~  !InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
  IF ~  InParty("NEERA")
~ THEN REPLY #31876 /* ~And who might, ah, yourself be?~ */ EXTERN ~NEERAJ~ 167
  IF ~  InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 6 // from:
  SAY #31879 /* ~How could I forget?! Allow me to introduce myself. I am Baeloth Barrityl, more commonly known as BAELOTH THE ENTERTAINER! Yes, I know. THAT Baeloth. Fall to your knees and beg for mercy; I'm sure you know the drill.~ [bab008] */
  IF ~  !InParty("VICONIA")
~ THEN REPLY #31880 /* ~I shall do no such thing.~ */ EXTERN ~BAELOTH~ 10
  IF ~  !InParty("VICONIA")
~ THEN REPLY #31881 /* ~The thing about that is... I left my kneepads back at home, and, well, you know how these things go.~ */ EXTERN ~BAELOTH~ 10
  IF ~  !InParty("VICONIA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
  IF ~  InParty("VICONIA")
~ THEN REPLY #31880 /* ~I shall do no such thing.~ */ EXTERN ~VICONJ~ 33
  IF ~  InParty("VICONIA")
~ THEN REPLY #31881 /* ~The thing about that is... I left my kneepads back at home, and, well, you know how these things go.~ */ EXTERN ~VICONJ~ 33
  IF ~  InParty("VICONIA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~VICONJ~ 33
END

IF ~~ THEN BEGIN 7 // from:
  SAY #31883 /* ~Ooooh, I LIKE this one!~ [bab008b] */
  IF ~~ THEN EXTERN ~VICONJ~ 34
END

IF ~~ THEN BEGIN 8 // from:
  SAY #31885 /* ~But of course, slender one. Anything for a lady of such grace. What house did you say you were from again? Please don't say Do'Urden.~ [bab008d] */
  IF ~~ THEN EXTERN ~VICONJ~ 35
END

IF ~~ THEN BEGIN 9 // from:
  SAY #31887 /* ~Oh my, tough crowd! In any case, it seems that I am in a bit of a bind. I am unable to return to my home, and I am bare to the boundless barbarism of the surface world!~ [bab008f] */
  IF ~  InParty("NEERA")
~ THEN REPLY #31888 /* ~That's a shame, a nice guy like you mixed up in a situation like this.~ */ EXTERN ~NEERAJ~ 168
  IF ~  !InParty("NEERA")
~ THEN REPLY #31888 /* ~That's a shame, a nice guy like you mixed up in a situation like this.~ */ EXTERN ~BAELOTH~ 11
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 10 // from:
  SAY #31889 /* ~Hmm. Perhaps you aren't as cultured as I had assumed. In any case, it seems that I am in a bit of a bind. I am unable to return to my home, left bare to the boundless barbarism of the surface world!~ [bab009] */
  IF ~  !InParty("NEERA")
~ THEN REPLY #31890 /* ~That's a shame. How could such a nice guy like you get mixed up in a situation like this?~ */ EXTERN ~BAELOTH~ 11
  IF ~  !InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
  IF ~  InParty("NEERA")
~ THEN REPLY #31890 /* ~That's a shame. How could such a nice guy like you get mixed up in a situation like this?~ */ EXTERN ~NEERAJ~ 168
  IF ~  InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 11 // from:
  SAY #31892 /* ~You must be crawling with questions, but first let me elucidate recent events. Perhaps many of your petty ponderances will be answered!~ [bab010] */
  IF ~  !InParty("NEERA")
~ THEN REPLY #31893 /* ~By the gods, if my eyes continue to roll at this speed, they'll begin to smoke!~ */ EXTERN ~BAELOTH~ 12
  IF ~  !InParty("NEERA")
~ THEN REPLY #31894 /* ~Perhaps they will be. Carry on, then.~ */ EXTERN ~BAELOTH~ 12
  IF ~  !InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
  IF ~  InParty("NEERA")
~ THEN REPLY #31893 /* ~By the gods, if my eyes continue to roll at this speed, they'll begin to smoke!~ */ EXTERN ~NEERAJ~ 169
  IF ~  InParty("NEERA")
~ THEN REPLY #31894 /* ~Perhaps they will be. Carry on, then.~ */ EXTERN ~NEERAJ~ 169
  IF ~  InParty("NEERA")
~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 12 // from:
  SAY #31896 /* ~My most recent project was a little something I called the Black Pits. I'm sure you've heard of it. Mortal pitted against mortal in a desperate bid to... oh, it doesn't matter anymore.~ [bab011] */
  IF ~~ THEN REPLY #31897 /* ~Can't say that I have.~ */ EXTERN ~BAELOTH~ 13
  IF ~~ THEN REPLY #31898 /* ~Yes, in fact! I've visited that particular bank of outhouses many times.~ */ EXTERN ~BAELOTH~ 15
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 13 // from:
  SAY #31899 /* ~You must be out of the loop. It was a marvelous sight! The roaring crowd, my obedient djinn slave keeping the prisoners in line, the sound of hammer crushing bone—ah, such fond memories!~ [bab012] */
  IF ~~ THEN REPLY #31900 /* ~How did you GET the djinni in the first place?~ */ EXTERN ~BAELOTH~ 14
  IF ~~ THEN REPLY #31901 /* ~Sounds like quite the hotspot.~ */ EXTERN ~BAELOTH~ 16
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 14 // from:
  SAY #31902 /* ~A favor here, a clever spell there, a geas or two. It's not so hard.~ [bab013] */
  IF ~~ THEN REPLY #31903 /* ~And it worked out so well for you!~ */ EXTERN ~BAELOTH~ 16
END

IF ~~ THEN BEGIN 15 // from:
  SAY #31904 /* ~Outhouses? You dare compare my barony of bloody battles to a privy?~ [bab014] */
  IF ~~ THEN REPLY #31905 /* ~I must have been mistaken.~ */ EXTERN ~BAELOTH~ 13
END

IF ~~ THEN BEGIN 16 // from:
  SAY #31906 /* ~Things went quite swimmingly until some upstarts tricked me into facing them in battle. They cheated, of course.~ [bab015] */
  IF ~~ THEN EXTERN ~BAELOTH~ 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY #31907 /* ~But I am nothing if not calculatingly cautious, and so I instructed that djinn jerk Najim to grant me a final wish: that I be protected from death. Oh, he granted that one, all right.~ [bab016] */
  IF ~  !InParty("NEERA")
~ THEN EXTERN ~BAELOTH~ 18
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 170
END

IF ~~ THEN BEGIN 18 // from:
  SAY #31910 /* ~As you can see, I live again. No Demonweb Pits for me! But I am bereft of my previous power, forced to converse with a pack of mouth-brea— Oh, I apologize. I'm beginning to ramble!~ [bab017] */
  IF ~~ THEN REPLY #31911 /* ~I've been called worse by better. In any case, I feel a request coming.~ */ EXTERN ~BAELOTH~ 19
  IF ~~ THEN REPLY #31912 /* ~Did he also rob you of your manners?~ */ EXTERN ~BAELOTH~ 20
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 19 // from:
  SAY #31913 /* ~I am simply unaccustomed to dealing with your kind on less than crushingly advantageous terms.~ [bab018] */
  IF ~~ THEN REPLY #31914 /* ~I'll try to speak slowly and in reverent tones.~ */ EXTERN ~BAELOTH~ 20
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 20 // from:
  SAY #31915 /* ~I do not make it a habit to beg others for aid, and I prefer to lend favors rather than request them.~ [bab019] */
  IF ~~ THEN REPLY #31916 /* ~Now I definitely feel a request coming.~ */ EXTERN ~BAELOTH~ 21
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 21 // from:
  SAY #31917 /* ~Clearly, I still command SOME of my powers. Even in this diminished state, I must remain one of the top five spellcasters in all the realms. If someone were to offer me martial protection, I'm sure I could be of great help to... whatever it is you're doing.~ [bab020] */
  IF ~  !InParty("NEERA")
!InParty("EDWIN")
!InParty("TIAX")
~ THEN REPLY #31918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ EXTERN ~BAELOTH~ 23
  IF ~  InParty("TIAX")
!InParty("EDWIN")
!InParty("NEERA")
~ THEN REPLY #31918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ EXTERN ~TIAXJ~ 10
  IF ~  InParty("EDWIN")
!InParty("NEERA")
~ THEN REPLY #31918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ EXTERN ~EDWINJ~ 25
  IF ~  InParty("NEERA")
~ THEN REPLY #31918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ EXTERN ~NEERAJ~ 171
  IF ~~ THEN REPLY #31919 /* ~I'm afraid I can't take you with me.~ */ EXTERN ~BAELOTH~ 26
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 22 // from:
  SAY #31922 /* ~And it's true! I am shockingly popular with sorcerous women.~ [bab020c] */
  IF ~~ THEN EXTERN ~EDWINJ~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #31925 /* ~So I can really come with you? How perspicacious of you! You won't regret this. Now then, I assume you'll want me in a leadership capacity.~ [bab021] */
  IF ~~ THEN REPLY #31926 /* ~Back of the line, drow.~ */ EXTERN ~BAELOTH~ 24
  IF ~~ THEN REPLY #31927 /* ~Indeed! Just write down your suggestions and then choke on them.~ */ EXTERN ~BAELOTH~ 25
END

IF ~~ THEN BEGIN 24 // from:
  SAY #31928 /* ~Don't think you can intimidate me. Let us hope that you learn proper respect before my patience withers.~ [bab022] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
AddJournalEntry(31953,INFO)
SetDialogue("BAELOTHJ")
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #31929 /* ~Very crass. Fine then, lead onward.~ [bab023] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
AddJournalEntry(31953,INFO)
SetDialogue("BAELOTHJ")
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #31930 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! There are pale-skinned barbarians everywhere!~ [bab024] */
  IF ~~ THEN REPLY #31931 /* ~Make your way to the Friendly Arm Inn. It's not far, and if you hide outside the walls on the east side, you probably won't be discovered and killed. Probably.~ */ EXTERN ~BAELOTH~ 27
  IF ~~ THEN REPLY #31932 /* ~On second thought, sure. Your whining convinced me.~ */ EXTERN ~BAELOTH~ 23
  IF ~~ THEN REPLY #31868 /* ~Die, drow!~ */ EXTERN ~BAELOTH~ 28
END

IF ~~ THEN BEGIN 27 // from:
  SAY #31933 /* ~Fine! I'll just make my way there myself. I don't need your help. Begone!~ [bab025] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
AddJournalEntry(31952,INFO)
SetDialogue("BAELOTHP")
EscapeAreaMove("AR2300",4721,3045,S)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #31934 /* ~Oh, COME ON!~ [bab026] */
  IF ~~ THEN DO ~SetGlobal("BA_ATTACKED","LOCALS",1)
ChangeAIScript("OHMADD01",CLASS)
Enemy()
~ EXIT
END
