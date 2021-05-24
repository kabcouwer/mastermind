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
    player_choice
  end

  def play_again
    @solution = CreateCode.new.solution
    run_game
  end

  def player_choice
    guess = gets.chomp.downcase
    if guess == 'i'
      instructions
      player_choice
    elsif guess == 'p'
      run_game
    elsif guess == 'q' || guess == 'quit'
      quit
    end
  end

  def run_game
    start_time_min = Time.now.min
    start_time_sec = Time.now.sec
    guess_count = 0
    start_message
    while guess_count < 11
      guess_count += 1
      guess = gets.chomp.downcase

      if guess == 'q' || guess == 'quit'
        quit
        break
      elsif guess == 'c' || guess == 'cheat'
        cheat(@solution)
      elsif guess.length < 4
        input_too_short
        guess_count -= 1
      elsif guess.length > 4
        input_too_long
        guess_count -= 1
      elsif x = guess.split('').find_all do |character|
        character == 'r' || character == 'g' || character == 'b' || character == 'y'
      end
      if x.length != 4
        invalid_character_input_message
        guess_count -= 1
      elsif
        guess.split('') == @solution
        won_time_min = Time.now.min
        won_time_sec = Time.now.sec
        game_won_message(guess, guess_count, (won_time_min - start_time_min), (won_time_sec - start_time_sec))
        game_over
        break
      elsif guess != @solution
        feedback_message(guess, @solution, guess_count)
      end
    end
  end
end

  def game_over
    game_over_message
    guess = gets.chomp.downcase
    if guess == 'p'
      play_again
    elsif guess == 'q'
      quit
    end
  end
end
