module Message

  def intro_message
    puts "Welcome to MASTERMIND\r\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def start_message
    puts "I have generated a beginner sequence with four positions made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\r\nWhat's your guess?"
  end

  def instructions
    puts "MASTERMIND Game Rules\r\nOBJECT OF THE GAME\r\nThe object of MASTERMIND is to guess a secret code consisting of a series of 4 colored <pegs>. Each guess results in feedback narrowing down the possibilities of the code. You win the game by solving the secret code.\r\nTO BEGIN\r\nWhen prompted, enter your first guess, a sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. For example: rrgb\r\nNow that you have read the instructions, would you like to (p)lay or (q)uit?"
  end

  def quit
    puts "Maybe next time"
  end

  def input_too_long
    puts "Invalid Input. Your guess contains too many characters."
  end

  def input_too_short
    puts "Invalid Input. Your guess does not have enough characters."
  end

  def invalid_character_input_message
    puts "Invalid Input. Your guess does not have the correct characters.\r\nTry (r)ed, (g)reen, (b)lue, and (y)ellow. For example: rrgb"
  end

  def end_turn_message
    puts "#{@guess.join.upcase} has #{@correct_colors} of the correct elements with #{@correct_positions} in the correct positions.\r\nYou've taken #{@guess_counter} guess. What is your next guess?"
  end

  def end_game_message
    puts "Congratulations! You guessed the sequence #{@code.solution.upcase} in 8 guesses over #{time}.\r\nDo you want to (p)lay again or (q)uit?"
  end
end
