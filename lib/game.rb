class Game

  # def hash
  #   hash = {'p' => play,
  #     'i' => instructions,
  #     'q' => quit,
  #     'c' => cheat
  #   }
  # end

  def initialize

  end

  def welcome
    # require "pry"; binding.pry
    p 'Welcome to MASTERMIND\n'
    p 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
    user_input = gets.chomp
    if user_input == 'i'
      instructions
    elsif user_input == 'p'
      play
    elsif user_input == 'q'
      quit
    elsif user_input == 'c'
      cheat
    end
  end

  def instructions
    p 'here are the instructions'
  end

  def play
    p 'play game'
  end

  def quit
    p 'Maybe next time'
  end

  def cheat
    p "Can't do it on your own, huh?"
  end

end
