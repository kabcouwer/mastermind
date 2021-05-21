class Turn
  attr_reader :guess, :code

  def initialize(guess)
    @guess = guess
    # @code = code
    # @guess_counter = 0
    # @correct_colors = 0
    @correct_positions = 0
    @code = CreateCode.new.solution
  end

  def split_guess_into_array
    guess = @mastermind.guess.split('')
    correct_colors
  end

  def correct_colors
    # user_guess = guess.split('')
    require "pry"; binding.pry
    correct_colors = 0
    guess.uniq.each do |character|
      if @code.include?(character)
        correct_colors +=1
      end
    end
    correct_colors
  end

  def has_won?
    @guess == @code
  end

  def compare_first_position
    if @guess[0] == @code[0]
      @correct_positions += 1
    else
      'no winner'
    end

  end

  def compare_second_position
    if @guess[1] == @code[1]
      @correct_positions += 1
    else
      'no winner'
    end
  end

  def compare_third_positon
    if @guess[2] == @code[2]
      @correct_positions += 1
    else
      'no winner'
    end
  end

  def compare_fourth_position
    if @guess[3] == @code[3]
      @correct_positions += 1
    else
      'no winner'
    end
  end
end
