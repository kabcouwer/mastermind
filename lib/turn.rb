class Turn
  attr_reader :guess, :code

  def initialize(guess, code)
    @guess = guess
    @code = code
    # @guess_counter = 0
    # @correct_colors = 0
    @correct_positions = 0
  end

  def correct_colors
    format_guess = guess.split('')
    correct_colors = 0
    format_guess.uniq.each do |character|
      if @code.solution.include?(character)
        correct_colors +=1
      end
    end
    correct_colors
  end

  def compare_first_position
    format_guess = guess.split('')
    if format_guess[0] == @code.solution[0]
      @correct_positions += 1
    else
      'no winner'
    end

  end

  def compare_second_position
    guess = guess.split('')
    if @guess[1] == @code.solution[1]
      @correct_positions += 1
    else
      'no winner'
    end
  end

  def compare_third_positon
    if @guess[2] == @code.solution[2]
      @correct_positions += 1
    end
  end

  def compare_fourth_position
    if @guess[3] == @code.solution[3]
      @correct_positions += 1
    end
  end
end
