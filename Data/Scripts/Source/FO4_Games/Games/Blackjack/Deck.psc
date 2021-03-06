ScriptName Games:Blackjack:Deck extends Games:Shared:Deck
{Provides a deck of cards for Blackjack.}
import Games
import Games:Blackjack
import Games:Shared:Log
import Games:Shared:Motion

; Events
;---------------------------------------------

Event Games:Shared:Motion.TranslationEvent(Shared:Motion sender, var[] arguments)
	TranslationEventArgs e = sender.GetTranslationEventArgs(arguments)
	If (e)
		If (e.From == GamesBlackjack_Deck)
			UIPerkMenuEnter.Play(e.From)
		Else
			If (e.Translation == sender.TranslationStarted)
				PHYPaperMagazineH.Play(e.From)
			EndIf
		EndIf
	Else
		WriteUnexpectedValue(ToString(), "Games:Shared:Motion.TranslationEvent", "e", "Cannot handle empty or none event arguments.")
	EndIf
EndEvent


; Methods
;---------------------------------------------

; @Override
Card[] Function Seed()
	{Seeds the collection with 52 playing cards.}
	Card[] values = new Card[0]

	Card Spade01 = new Card
	Spade01.Suit = Spade
	Spade01.Rank = Ace
	Spade01.Reference = GamesBlackjack_Deck01SpadeAce
	values.Add(Spade01)

	Card Spade02 = new Card
	Spade02.Suit = Spade
	Spade02.Rank = Two
	Spade02.Reference = GamesBlackjack_Deck01Spade02
	values.Add(Spade02)

	Card Spade03 = new Card
	Spade03.Suit = Spade
	Spade03.Rank = Three
	Spade03.Reference = GamesBlackjack_Deck01Spade03
	values.Add(Spade03)

	Card Spade04 = new Card
	Spade04.Suit = Spade
	Spade04.Rank = Four
	Spade04.Reference = GamesBlackjack_Deck01Spade04
	values.Add(Spade04)

	Card Spade05 = new Card
	Spade05.Suit = Spade
	Spade05.Rank = Five
	Spade05.Reference = GamesBlackjack_Deck01Spade05
	values.Add(Spade05)

	Card Spade06 = new Card
	Spade06.Suit = Spade
	Spade06.Rank = Six
	Spade06.Reference = GamesBlackjack_Deck01Spade06
	values.Add(Spade06)

	Card Spade07 = new Card
	Spade07.Suit = Spade
	Spade07.Rank = Seven
	Spade07.Reference = GamesBlackjack_Deck01Spade07
	values.Add(Spade07)

	Card Spade08 = new Card
	Spade08.Suit = Spade
	Spade08.Rank = Eight
	Spade08.Reference = GamesBlackjack_Deck01Spade08
	values.Add(Spade08)

	Card Spade09 = new Card
	Spade09.Suit = Spade
	Spade09.Rank = Nine
	Spade09.Reference = GamesBlackjack_Deck01Spade09
	values.Add(Spade09)

	Card Spade10 = new Card
	Spade10.Suit = Spade
	Spade10.Rank = Ten
	Spade10.Reference = GamesBlackjack_Deck01Spade10
	values.Add(Spade10)

	Card Spade11 = new Card
	Spade11.Suit = Spade
	Spade11.Rank = Jack
	Spade11.Reference = GamesBlackjack_Deck01SpadeJack
	values.Add(Spade11)

	Card Spade12 = new Card
	Spade12.Suit = Spade
	Spade12.Rank = Queen
	Spade12.Reference = GamesBlackjack_Deck01SpadeQueen
	values.Add(Spade12)

	Card Spade13 = new Card
	Spade13.Suit = Spade
	Spade13.Rank = King
	Spade13.Reference = GamesBlackjack_Deck01SpadeKing
	values.Add(Spade13)


	Card Diamond01 = new Card
	Diamond01.Suit = Diamond
	Diamond01.Rank = Ace
	Diamond01.Reference = GamesBlackjack_Deck01DiamondAce
	values.Add(Diamond01)

	Card Diamond02 = new Card
	Diamond02.Suit = Diamond
	Diamond02.Rank = Two
	Diamond02.Reference = GamesBlackjack_Deck01Diamond02
	values.Add(Diamond02)

	Card Diamond03 = new Card
	Diamond03.Suit = Diamond
	Diamond03.Rank = Three
	Diamond03.Reference = GamesBlackjack_Deck01Diamond03
	values.Add(Diamond03)

	Card Diamond04 = new Card
	Diamond04.Suit = Diamond
	Diamond04.Rank = Four
	Diamond04.Reference = GamesBlackjack_Deck01Diamond04
	values.Add(Diamond04)

	Card Diamond05 = new Card
	Diamond05.Suit = Diamond
	Diamond05.Rank = Five
	Diamond05.Reference = GamesBlackjack_Deck01Diamond05
	values.Add(Diamond05)

	Card Diamond06 = new Card
	Diamond06.Suit = Diamond
	Diamond06.Rank = Six
	Diamond06.Reference = GamesBlackjack_Deck01Diamond06
	values.Add(Diamond06)

	Card Diamond07 = new Card
	Diamond07.Suit = Diamond
	Diamond07.Rank = Seven
	Diamond07.Reference = GamesBlackjack_Deck01Diamond07
	values.Add(Diamond07)

	Card Diamond08 = new Card
	Diamond08.Suit = Diamond
	Diamond08.Rank = Eight
	Diamond08.Reference = GamesBlackjack_Deck01Diamond08
	values.Add(Diamond08)

	Card Diamond09 = new Card
	Diamond09.Suit = Diamond
	Diamond09.Rank = Nine
	Diamond09.Reference = GamesBlackjack_Deck01Diamond09
	values.Add(Diamond09)

	Card Diamond10 = new Card
	Diamond10.Suit = Diamond
	Diamond10.Rank = Ten
	Diamond10.Reference = GamesBlackjack_Deck01Diamond10
	values.Add(Diamond10)

	Card Diamond11 = new Card
	Diamond11.Suit = Diamond
	Diamond11.Rank = Jack
	Diamond11.Reference = GamesBlackjack_Deck01DiamondJack
	values.Add(Diamond11)

	Card Diamond12 = new Card
	Diamond12.Suit = Diamond
	Diamond12.Rank = Queen
	Diamond12.Reference = GamesBlackjack_Deck01DiamondQueen
	values.Add(Diamond12)

	Card Diamond13 = new Card
	Diamond13.Suit = Diamond
	Diamond13.Rank = King
	Diamond13.Reference = GamesBlackjack_Deck01DiamondKing
	values.Add(Diamond13)


	Card Club01 = new Card
	Club01.Suit = Club
	Club01.Rank = Ace
	Club01.Reference = GamesBlackjack_Deck01ClubAce
	values.Add(Club01)

	Card Club02 = new Card
	Club02.Suit = Club
	Club02.Rank = Two
	Club02.Reference = GamesBlackjack_Deck01Club02
	values.Add(Club02)

	Card Club03 = new Card
	Club03.Suit = Club
	Club03.Rank = Three
	Club03.Reference = GamesBlackjack_Deck01Club03
	values.Add(Club03)

	Card Club04 = new Card
	Club04.Suit = Club
	Club04.Rank = Four
	Club04.Reference = GamesBlackjack_Deck01Club04
	values.Add(Club04)

	Card Club05 = new Card
	Club05.Suit = Club
	Club05.Rank = Five
	Club05.Reference = GamesBlackjack_Deck01Club05
	values.Add(Club05)

	Card Club06 = new Card
	Club06.Suit = Club
	Club06.Rank = Six
	Club06.Reference = GamesBlackjack_Deck01Club06
	values.Add(Club06)

	Card Club07 = new Card
	Club07.Suit = Club
	Club07.Rank = Seven
	Club07.Reference = GamesBlackjack_Deck01Club07
	values.Add(Club07)

	Card Club08 = new Card
	Club08.Suit = Club
	Club08.Rank = Eight
	Club08.Reference = GamesBlackjack_Deck01Club08
	values.Add(Club08)

	Card Club09 = new Card
	Club09.Suit = Club
	Club09.Rank = Nine
	Club09.Reference = GamesBlackjack_Deck01Club09
	values.Add(Club09)

	Card Club10 = new Card
	Club10.Suit = Club
	Club10.Rank = Ten
	Club10.Reference = GamesBlackjack_Deck01Club10
	values.Add(Club10)

	Card Club11 = new Card
	Club11.Suit = Club
	Club11.Rank = Jack
	Club11.Reference = GamesBlackjack_Deck01ClubJack
	values.Add(Club11)

	Card Club12 = new Card
	Club12.Suit = Club
	Club12.Rank = Queen
	Club12.Reference = GamesBlackjack_Deck01ClubQueen
	values.Add(Club12)

	Card Club13 = new Card
	Club13.Suit = Club
	Club13.Rank = King
	Club13.Reference = GamesBlackjack_Deck01ClubKing
	values.Add(Club13)


	Card Heart01 = new Card
	Heart01.Suit = Heart
	Heart01.Rank = Ace
	Heart01.Reference = GamesBlackjack_Deck01HeartAce
	values.Add(Heart01)

	Card Heart02 = new Card
	Heart02.Suit = Heart
	Heart02.Rank = Two
	Heart02.Reference = GamesBlackjack_Deck01Heart02
	values.Add(Heart02)

	Card Heart03 = new Card
	Heart03.Suit = Heart
	Heart03.Rank = Three
	Heart03.Reference = GamesBlackjack_Deck01Heart03
	values.Add(Heart03)

	Card Heart04 = new Card
	Heart04.Suit = Heart
	Heart04.Rank = Four
	Heart04.Reference = GamesBlackjack_Deck01Heart04
	values.Add(Heart04)

	Card Heart05 = new Card
	Heart05.Suit = Heart
	Heart05.Rank = Five
	Heart05.Reference = GamesBlackjack_Deck01Heart05
	values.Add(Heart05)

	Card Heart06 = new Card
	Heart06.Suit = Heart
	Heart06.Rank = Six
	Heart06.Reference = GamesBlackjack_Deck01Heart06
	values.Add(Heart06)

	Card Heart07 = new Card
	Heart07.Suit = Heart
	Heart07.Rank = Seven
	Heart07.Reference = GamesBlackjack_Deck01Heart07
	values.Add(Heart07)

	Card Heart08 = new Card
	Heart08.Suit = Heart
	Heart08.Rank = Eight
	Heart08.Reference = GamesBlackjack_Deck01Heart08
	values.Add(Heart08)

	Card Heart09 = new Card
	Heart09.Suit = Heart
	Heart09.Rank = Nine
	Heart09.Reference = GamesBlackjack_Deck01Heart09
	values.Add(Heart09)

	Card Heart10 = new Card
	Heart10.Suit = Heart
	Heart10.Rank = Ten
	Heart10.Reference = GamesBlackjack_Deck01Heart10
	values.Add(Heart10)

	Card Heart11 = new Card
	Heart11.Suit = Heart
	Heart11.Rank = Jack
	Heart11.Reference = GamesBlackjack_Deck01HeartJack
	values.Add(Heart11)

	Card Heart12 = new Card
	Heart12.Suit = Heart
	Heart12.Rank = Queen
	Heart12.Reference = GamesBlackjack_Deck01HeartQueen
	values.Add(Heart12)

	Card Heart13 = new Card
	Heart13.Suit = Heart
	Heart13.Rank = King
	Heart13.Reference = GamesBlackjack_Deck01HeartKing
	values.Add(Heart13)

	return values
EndFunction


; @Override
bool Function Restore()
	{Will undraw and move all cards in the deck to the deck marker without translation.}
	If (Cards)
		int index = 0
		While (index < Cards.Length)
			Card value = Cards[index]
			value.Drawn = false
			value.Reference.MoveTo(GamesBlackjack_Card_DeckMarker)
			index += 1
		EndWhile
		return true
	Else
		WriteUnexpectedValue(ToString(), "Restore", "Cards", "Cannot restore a none or empty card values.")
		return false
	EndIf
EndFunction


; @Override
bool Function Shuffle()
	{Shuffles all cards within the deck with FX.}
	If (parent.Shuffle())
		; TODO: I am not happy with the speed here. Too many nasty loops.
		; TODO: Disabling my card references causes them to reset back to their editor positions.
		
		int index = 0 ; Hides the deck cards by disabling each reference.
		While (index < Cards.Length)
			Cards[index].Reference.Disable()
			index += 1
		EndWhile

		Motion.Translate(GamesBlackjack_Deck, GamesBlackjack_Deck_ShuffleMarker, 50.0)
		index = 0
		While (index < 10)
			PHYPaperMagazineH.Play(Game.GetPlayer())
			Utility.Wait(0.25)
			index += 1
		EndWhile
		Motion.Translate(GamesBlackjack_Deck, GamesBlackjack_Deck_Marker, 50.0)

		index = 0
		While (index < Cards.Length)
			Cards[index].Reference.Enable()
			index += 1
		EndWhile

		return true
	Else
		WriteUnexpected(ToString(), "Shuffle", "The parent method has failed.")
		return false
	EndIf
EndFunction


bool Function Collect(Card[] values)
	{Collects an values of cards by undrawing each one.}
	If (values)
		bool success = true
		int index = 0
		While (index < values.Length)
			Card value = Cards[index]
			If (Undraw(value) == false)
				success = false
				WriteUnexpectedValue(ToString(), "Collect", "value", "Failed to undraw the card value. "+value)
			EndIf
			index += 1
		EndWhile
		return success
	Else
		WriteUnexpectedValue(ToString(), "Collect", "values", "Cannot collect a none or empty card array.")
		return false
	EndIf
EndFunction


; States
;---------------------------------------------

State Starting
	Event OnState()
		{Defines the state for this object.}
		Create(Seed())
		Motion.RegisterForTranslationEvent(self)
		Blackjack.Dealer.Motion.RegisterForTranslationEvent(self)
		Blackjack.Human.Motion.RegisterForTranslationEvent(self)
	EndEvent
EndState


State Dealing
	Event OnState()
		Shuffle()
		Restore()
	EndEvent
EndState

State Exiting
	Event OnState()
		Motion.UnregisterForTranslationEvent(self)
		Blackjack.Dealer.Motion.UnregisterForTranslationEvent(self)
		Blackjack.Human.Motion.UnregisterForTranslationEvent(self)
	EndEvent
EndState


; Properties
;---------------------------------------------

Group Scripts
	Blackjack:Main Property Blackjack Auto Const Mandatory
	Shared:Motion Property Motion Auto Const Mandatory
EndGroup

Group SFX
	Sound Property PHYPaperMagazineH Auto Const Mandatory
	{The sound for card movement.}
	Sound Property UIPerkMenuEnter Auto Const Mandatory
	{The sound for Shuffling.}
EndGroup

Group Deck
	ObjectReference Property GamesBlackjack_Deck Auto Const Mandatory
	{The actual card deck reference.}
	ObjectReference Property GamesBlackjack_Deck_Marker Auto Const Mandatory
	{The decks home position marker.}
	ObjectReference Property GamesBlackjack_Deck_ShuffleMarker Auto Const Mandatory
	{The decks shuffle position.}
	ObjectReference Property GamesBlackjack_Card_DeckMarker Auto Const Mandatory
	{The cards position inside the deck.}
	ObjectReference Property GamesBlackjack_Card_DeckEnabler Auto Const Mandatory
	{The enable parent for all cards in the deck.}
EndGroup

Group Cards
	ObjectReference Property GamesBlackjack_Deck01SpadeAce Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade02 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade03 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade04 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade05 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade06 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade07 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade08 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade09 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Spade10 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01SpadeJack Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01SpadeQueen Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01SpadeKing Auto Const Mandatory

	ObjectReference Property GamesBlackjack_Deck01DiamondAce Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond02 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond03 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond04 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond05 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond06 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond07 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond08 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond09 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Diamond10 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01DiamondJack Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01DiamondQueen Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01DiamondKing Auto Const Mandatory

	ObjectReference Property GamesBlackjack_Deck01ClubAce Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club02 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club03 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club04 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club05 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club06 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club07 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club08 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club09 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Club10 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01ClubJack Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01ClubQueen Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01ClubKing Auto Const Mandatory

	ObjectReference Property GamesBlackjack_Deck01HeartAce Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart02 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart03 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart04 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart05 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart06 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart07 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart08 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart09 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01Heart10 Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01HeartJack Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01HeartQueen Auto Const Mandatory
	ObjectReference Property GamesBlackjack_Deck01HeartKing Auto Const Mandatory
EndGroup
