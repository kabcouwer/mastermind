class Mastermind
  include Message

  attr_reader :guess

  def initialize
    @guess = guess
    @turn = Turn.new(@guess)
  end

  def welcome_screen
    # require "pry"; binding.pry
    p intro_message
    player_choice
  end

  def player_choice
    user_input = gets.chomp
    if user_input == 'i'
      p instructions
    elsif user_input == 'p'
      start_game
    elsif user_input == 'q' || user_input == 'quit'
      p quit
    elsif user_input == 'c' || user_input == 'cheat'
      cheat
    end
  end

  def start_game
    p start_message
    guess = gets.chomp
    if guess == 'q' || guess == 'quit'
      p quit
    elsif
      guess == 'c' || guess == 'cheat'
        cheat
    elsif
      guess.length < 4
      p input_too_short
      start_game
    elsif
      guess.length > 4
      p input_too_long
      start_game
    else
      @turn.correct_colors
    end
  end

  # def continue_game
  #   @guess = gets.chomp
  # end

  def run_game
    guess_count = 0
    while guess_count < 11
      guess_count += 1

    end
  end
end
