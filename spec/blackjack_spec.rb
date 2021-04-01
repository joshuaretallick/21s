require 'blackjack'

describe Card do

  subject(:card) { described_class.new }

  it "should accept suit and value when building" do
    card = Card.new(:clubs, 10)
    expect(card.suit).to eq :clubs
    expect(card.value).to eq 10
  end

end
