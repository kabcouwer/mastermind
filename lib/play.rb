
class Play
  attr_reader :guess, :code

  def initialize(code)
    @guess = []
    @code = code
    @guess_counter = 0
  end

  def color_key
    hash = {
      green: 'g',
      red: 'r',
      blue: 'b',
      yellow: 'y'
    }
  end

  def start_game
    p "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    first_guess = gets.chomp
    @guess = first_guess.scan /\w/
    require "pry"; binding.pry
  end

  def compare

  end
end
