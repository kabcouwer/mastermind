class Message
  attr_reader :intro_message,
              :start_message,
              :instructions,
              :quit

  def initialize
    @intro_message = intro_message
    @start_message = start_message
    @instructions = instructions
    @quit = quit
  end

  def intro_message
    'Welcome to MASTERMIND'
    'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
  end

  def start_message
    "I have generated a beginner sequence with four positions made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def instructions
    'MASTERMIND Game Rules

    OBJECT OF THE GAME

    The object of MASTERMIND is to guess a secret code consisting of a series of 4 colored "pegs". Each guess results in feedback narrowing down the possibilities of the code. You win the game by solving the secret code.

    TO BEGIN

    When prompted, enter your first guess, a sequence with four elements made up of: (r)ed, (g)reen, (b)blue, and (y)ellow. For example: rrgb

    Now that you have read the instructions, would you like to (p)lay or (q)uit?'
  end

  def quit
    'Maybe next time'
  end

end
