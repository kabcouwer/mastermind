class Game
  attr_reader :play

  # def hash
  #   hash = {'p' => play,
  #     'i' => instructions,
  #     'q' => quit,
  #     'c' => cheat
  #   }
  # end

  def initialize(play)
    @play = play 
  end

  def welcome
    # require "pry"; binding.pry
    p 'Welcome to MASTERMIND\n'
    p 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
    user_input = gets.chomp
    if user_input == 'i'
      instructions
    elsif user_input == 'p'
      play_game
    elsif user_input == 'q'
      quit
    elsif user_input == 'c'
      cheat
    end
  end

  def instructions
    p 'MASTERMIND Game Rules

    OBJECT OF THE GAME

    The object of MASTERMIND is to guess a secret code consisting of a series of 4 colored "pegs". Each guess results in feedback narrowing down the possibilities of the code. You win the game by solving the secret code.

    TO BEGIN

    When prompted, enter your first guess, a sequence with four elements made up of: (r)ed, (g)reen, (b)blue, and (y)ellow. For example: rrgb

    Now that you have read the instructions, would you like to (p)lay or (q)uit?'
  end

  def play_game
    @play.start_game
  end

  def quit
    p 'Maybe next time'
  end

  def cheat
    p "Can't do it on your own, huh?"
  end

end
