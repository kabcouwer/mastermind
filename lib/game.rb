class Game

  def welcome
    p 'Welcome to MASTERMIND\n'
    p 'Would you like to (p)lay, read the (i)instructions, or (q)uit?'
    user_input = gets.chomp

    require 'pry'; binding.pry
  end

end
