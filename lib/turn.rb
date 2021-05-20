class Turn
  attr_reader :guess, :solution, :start_game

  def initialize(solution)
    @guess = guess
    @solution = solution
    @guess_counter = 0
    @correct_colors = 0
    @correct_positions = 0
  end

  def start_game
    p start_message
    first_guess = gets.chomp
    @guess = first_guess.downcase.split(//)
    compare_color
  end

  def compare_color
    # require 'pry'; binding.pry
    array_of_different_colors = (@solution.sort - @guess.sort)
    @correct_colors += (4 - array_of_different_colors.length)
    compare_first_position
  end

  def compare_first_position
    @correct_positions = 0
    if @guess[0] == @solution[0]
      p 'first position is correct'
      @correct_positions += 1
    else
      p 'first position not correct'
    end
    compare_second_position
  end

  def compare_second_position
    if @guess[1] == @solution[1]
      p 'second position is correct'
      @correct_positions += 1
    else
      p 'second position not correct'
    end
    compare_third_positon
  end

  def compare_third_positon
    if @guess[2] == @solution[2]
      p 'third position is correct'
      @correct_positions += 1
    else
      p 'third position not correct'
    end
    compare_fourth_position
  end

  def compare_fourth_position
    if @guess[3] == @solution[3]
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
      # require 'pry'; binding.pry
  end
end
