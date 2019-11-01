

class Dice
  def roll(number_of_dice = 1)
    results = []
    number_of_dice.times do
      results << rand(6) + 1
    end
      return results
  end
end
