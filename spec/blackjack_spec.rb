require 'blackjack'

describe Card do

  subject(:card) { described_class.new }

  it "should have a suit" do
    expect(card.suit).not_to eq nil
  end

  it "should have a value"
  it "should accept suit and value when building"

end
