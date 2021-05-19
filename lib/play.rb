
class Play
  attr_reader :guess, :code, :start_game

  def initialize(code)
    @guess = []
    @code = code
    @guess_counter = 0
    @correct_colors = 0
    @correct_positions = 0
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
    p "I have generated a beginner sequence with four positions made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    first_guess = gets.chomp
    @guess = first_guess.scan /\w/
    compare_blue
  end

  def compare_blue
    require 'pry'; binding.pry
    guess_blue = @guess.count('b')
    code_blue = @code.code.color.count(‘b’)
    if guess_blue == 0
      #compare_green
      compare_first_position
    elsif guess_blue == code_blue
      @correct_colors += code_blue
    elsif guess_blue > code_blue
      until guess_blue == code_blue
        guess_blue - 1
        # break
      end
      @correct_colors += code_blue
    elsif guess_blue < code_blue
      until guess_blue == code_blue
        code_blue - 1
      end
      @correct_colors += code_blue
    end
    #compare_green
    compare_first_position
  end

    # @guess.count(‘b’) == @code.code.count(‘b’)

  def compare_first_position
    if @guess[0] == @code.code[0].color
      p 'first position is correct'
      compare_second_position
      @correct_positions += 1
    else
      p 'first position not correct'
      compare_second_position
    end
  end

  def compare_second_position
    if @guess[1] == @code.code[1].color
      p 'second position is correct'
      compare_third_position
      @correct_positions += 1
    else
      p 'second position not correct'
      compare_third_position
    end
  end

  def compare_third_positon
    if @guess[2] == @code.code[2].color
      p 'third position is correct'
      compare_fourth_position
      @correct_positions += 1
    else
      p 'third position not correct'
      compare_fourth_position
    end
  end

  def compare_fourth_position
    if @guess[3] == @code.code[3].color
      p 'fourth position is correct'
      @correct_positions += 1
    else
      p 'fourth position not correct'
    end
    @guess_counter += 1
    end_turn_message
  end

  def end_turn_message
      p "#{@guess.join.upcase} has #{@correct_colors} of the correct elements with #{@correct_positions} in the correct positions.
      You've taken #{@guess_counter} guess"
  end
end
