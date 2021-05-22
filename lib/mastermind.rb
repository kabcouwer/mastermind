require './lib/turn'

class Mastermind
  include Message

  attr_reader :turn

  def initialize
    @turn = Turn.new
    @solution = CreateCode.new.solution
  end

  def welcome_screen
    intro_message
    #need to loop input to accept either P or Q
    player_choice
  end

  def player_choice
    @guess = gets.chomp
    if guess == 'i'
      instructions
    elsif guess == 'p'
      start_game
    elsif guess == 'q' || guess == 'quit'
      quit
    elsif guess == 'c' || guess == 'cheat'
      cheat
    end
  end

  def start_game
    start_message
    guess = gets.chomp
    if guess == 'q' || guess == 'quit'
      quit
    elsif guess == 'c' || guess == 'cheat'
      cheat
    elsif guess.length < 4
      input_too_short
      start_game
    elsif guess.length > 4
      input_too_long
      start_game
    else

    @turn.correct_colors(guess, @solution)
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
