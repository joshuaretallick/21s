require 'blackjack'

describe Card do

  subject(:card) { described_class.new }

  it "should accept suit and value when building" do
    card = Card.new(:clubs, 10)
    expect(card.suit).to eq :clubs
    expect(card.value).to eq 10
  end

  it "should have a value of 10 for facecards" do
    facecards = ["J", "Q", "K"]
    facecards.each do |facecard|
      card = Card.new(:hearts, facecard)
      expect(card.value).to eq 10
    end
  end

  it "should have a value of 4 for the 4-clubs" do
    card = Card.new(:clubs, 4)
    expect(card.value).to eq 4
  end

  it "should return 11 for Ace" do
    card = Card.new(:diamonds, "A")
    expect(card.value).to eq 11
  end

  it "should be formatted nicely" do
    card = Card.new(:diamonds, "A")
    expect(card.to_s).to eq "A-diamonds"
  end

end

describe Deck do

  subject(:deck) { described_class.new }

  it "should build 52 cards" do
    expect(Deck.build_cards.length).to eq 52
  end

  it "should have 52 cards when a new deck" do
    expect(Deck.new.cards.length).to eq 52
  end

end

describe Game do

  it "should have a players hand" do
    expect(Game.new.player_hand.cards.length).to eq 2
  end
  it "should have a dealers hand" do
    expect(Game.new.dealer_hand.cards.length).to eq 2
  end
  it "should have a status" do
    expect(Game.new.status).not_to eq nil
  end

end

describe Hand do


end
