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
    guess = gets.chomp
    if guess == 'i'
      instructions
    elsif guess == 'p'
      run_game
    elsif guess == 'q' || guess == 'quit'
      quit
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
      run_game
    end
  end

  def run_game
    guess_count = 0
    start_message
    while guess_count < 11
      guess_count += 1
      guess = gets.chomp

      if guess.downcase == 'c' || guess.downcase == 'cheat'
        cheat(@solution)
        try_again
      elsif guess == @solution
        game_won_message(guess)
        break
      elsif guess.downcase != @solution
        over_message(guess, @solution, guess_count)
        break if @turn.has_won?(guess, @solution) || guess_count == 10
      end
    end
    game_over
  end

  def game_over
    game_over_message
    guess = gets.chomp
    if guess == 'p'
      run_game
    elsif guess == 'q'
      quit
    elsif guess == 'i'
      instructions
    end
  end
end
