
class Play
  attr_reader :guess, :solution, :start_game

  def initialize(solution)
    @guess = []
    @solution = solution
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
    compare_color
  end

  # def compare_blue
  #   if @guess.include?('b')
  #     # @correct_colors += @solution.solution.count('b')
  #     @solution.solution.each do |peg|
  #       return true if peg.color.include?('b')
  #       require 'pry'; binding.pry
  #         # @correct_colors += 1
  #       end
  #     p 'code contains blue'
  #   else
  #     p 'code does not contain blue'
  #   end
  #   compare_first_position
  # end

  # def compare_green
  #   if @guess.include?('g')
  #     correct_colors += @code.code.color.count('g')
  #   end
  # end

  # def compare_blue
  #   require 'pry'; binding.pry
  #   guess_blue = @guess.count('b')
  #   code_blue = @code.code.color.count('b')
  #   if guess_blue == 0
  #     #compare_green
  #     compare_first_position
  #   elsif guess_blue == code_blue
  #     @correct_colors += code_blue
  #   elsif guess_blue > code_blue
  #     until guess_blue == code_blue
  #       guess_blue - 1
  #       # break
  #     end
  #     @correct_colors += code_blue
  #   elsif guess_blue < code_blue
  #     until guess_blue == code_blue
  #       code_blue - 1
  #     end
  #     @correct_colors += code_blue
  #   end
  #   #compare_green
  #   compare_first_position
  # end

    # @guess.count(‘b’) == @code.code.count(‘b’)

  def compare_color
    # require 'pry'; binding.pry
    solution_as_array_colors = []
    @solution.solution.each do |color|
      solution_as_array_colors << color.color
    end
    array_of_different_colors = (@guess.sort - solution_as_array_colors.sort)
    @correct_colors += (4 - array_of_different_colors.length)
    compare_first_position

  end

  def compare_first_position
    if @guess[0] == @solution.solution[0].color
      p 'first position is correct'
      @correct_positions += 1
    else
      p 'first position not correct'
    end
    compare_second_position
  end

  def compare_second_position
    if @guess[1] == @solution.solution[1].color
      p 'second position is correct'
      @correct_positions += 1
    else
      p 'second position not correct'
    end
    compare_third_positon
  end

  def compare_third_positon
    if @guess[2] == @solution.solution[2].color
      p 'third position is correct'
      @correct_positions += 1
    else
      p 'third position not correct'
    end
    compare_fourth_position
  end

  def compare_fourth_position
    if @guess[3] == @solution.solution[3].color
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
      require 'pry'; binding.pry
  end
end
