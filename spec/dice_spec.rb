require "dice"

describe "Dice" do
  before :each do
    @dice = Dice.new
  end

  it "successfully creates an instance of the dice class" do
    expect(@dice).to be_kind_of(Dice)
  end

  it "keeps record of random score generated when rolling one dice" do
    actual = @dice.roll(1)

    expected = @dice.scores[0]

    expect(actual).to include(expected)
  end

  it "keeps record of random scores generated when rolling multiple die" do
    actual = @dice.roll(4)

    expected = @dice.scores[0..3]

    expect(actual).to eq(expected)
  end
end
