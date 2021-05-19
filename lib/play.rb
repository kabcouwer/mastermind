
class Play
  attr_reader :guess, :code, :start_game

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
    compare_first_element
  end

  def compare_first_element
    if @guess[0] == @code.code[0].color
      p 'first element is correct'
      compare_second_element
    else
      p 'Not correct'
      compare_second_element
    end
  end

  def compare_second_element
    if @guess[1] == @code.code[1].color
      p 'second element is correct'
      compare_third_element
    else
      p 'second element Not correct'
      compare_third_element
    end
  end

  def compare_third_element
    if @guess[2] == @code.code[2].color
      p 'third element is correct'
      compare_fourth_element
    else
      p 'third element Not correct'
      compare_fourth_element
    end
  end

  def compare_fourth_element
    if @guess[3] == @code.code[3].color
      p 'fourth element is correct'
    else
      p 'fourth element Not correct'
    end
    p @guess_counter += 1
  end
end
