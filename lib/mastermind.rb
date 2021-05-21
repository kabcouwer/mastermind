class Mastermind
  include Message

  attr_reader :turn, :guess


  def initialize
    @guess = guess
    @code = CreateCode.new
    @turn = Turn.new(@guess, @code)
  end

  def welcome_screen
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
  end

  def continue_game
    @guess = gets.chomp
    # @guess = next_guess.downcase.split(//)
  end

  def run_game
    guess_count = 0
    while guess_count < 11
      guess_count += 1
    end
  end
end
