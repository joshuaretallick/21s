Can Sam beat the Dealer at Blackjack (21s)?
===

#### Modeling game
* Create a deck of cards
* Two players (called Sam and Dealer) who will play each other
* Each player receives two cards from the top of the shuffled deck of cards

#### Rule implementation
* Determine the score of hand [1]
* Check if any of the players have blackjack (21) with their starting hand and win the match
* If no player has Blackjack, Sam can start drawing cards from the top of the deck
* Sam should stop drawing cards from the deck if his total score reaches 17 or more
* If Sam's total score becomes higher than 21, then Sam loses
* When Sam stops drawing, the dealer can start drawing cards from the top of the deck
* When the Dealer's score is higher than Sam's, the Dealer should stop drawing cards
* If the Dealer's total score becomes higher than 21, then the Dealer loses
* Determine which player wins the game

[1] Numbered cards score their point value. Jack, Queen and King score 10 and Ace scores 11.
