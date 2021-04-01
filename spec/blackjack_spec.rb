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

end
