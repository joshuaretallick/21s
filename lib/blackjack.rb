def blackjack

    card_values = {
    "Ace"=>11, "2"=>2, "3"=>3, "4"=>4, "5"=>5,
    "6"=>6, "7"=>7, "8"=>8, "9"=>9, "10"=>10,
    "Jack"=>10, "Queen"=>10, "King"=>10
    }

    cards = ["Ace", "2", "3", "4", "5", "6", "7",
          "8", "9", "10", "Jack", "Queen", "King"]

    sam_total = 0
    dealer_total = 0

    sam_hand = []
    dealer_hand = []

    2.times { sam_hand << cards.sample }
    2.times { dealer_hand << cards.sample }

    sam_hand.each do |score|
      sam_total += card_values[score]
    end
    puts "Sams Hand: #{sam_hand}, Sams Total: #{sam_total}"

    dealer_hand.each do |score|
      dealer_total += card_values[score]
    end
    puts "Dealers Hand: #{dealer_hand}, Dealers Total: #{dealer_total}"

    if sam_total == 21 && dealer_total == 21
      puts "Its a draw!"
    elsif sam_total == 21
      puts "Sam got Blackjack!"
    elsif dealer_total == 21
      puts "You lose! Dealer got Blackjack!"
    else
      sam_hand << cards.sample
      puts "Sams Hand: #{sam_hand}, Sams Total: #{sam_total}"
    end

end
