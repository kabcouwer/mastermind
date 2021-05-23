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

    def feedback_message(guess, solution, guess_count)
      puts "#{guess.upcase} has #{@turn.correct_colors(guess, solution)} of the correct elements with #{@turn.correct_positions(guess, solution)} in the correct position(s).\r\nYou've taken #{guess_count} guess(es). What is your next guess?"
    end

    def cheat(solution)
      cheat = solution.join(' ')
      solution = cheat.gsub!(/[rbgy]/, 'r' => 'Red', 'b' => 'Blue', 'g' => 'Green', 'y' => 'Yellow')
      puts solution
      puts 'Enter another guess: '
    end

    def first_over_message(guess, solution, guess_count)
      puts "#{guess.upcase} has #{@turn.correct_colors(guess, solution)} of the correct elements with #{@turn.correct_positions(guess, solution)} in the correct position.\r\nYou've taken #{guess_count} guess. What is your next guess?"
    end

    def game_over_message
      puts "Game over!\r\nWould you like to (p)lay again or (q)uit?"
    end

    def game_won_message(guess, guess_count, time_min, time_sec)
      puts "Congratulations! You guessed the sequence #{guess.upcase} in #{guess_count} guesses over #{time_min} minutes, #{time_sec} seconds."
    end
  end
