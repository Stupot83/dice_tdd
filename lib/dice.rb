class Dice
  def initialize
    @score_array = []
  end

  def roll(num_dies)
    num_dies.times do
      @score_array << (rand(6) + 1)
    end
    return @score_array
  end

  def scores
    @score_array
  end
end
