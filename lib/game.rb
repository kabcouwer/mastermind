class Game
  attr_reader :play,
              :message

  def initialize(play)
    @play = play
    @message = message
  end

  def welcome_screen
    intro_message
    player_choice
  end

  def player_choice
    user_input = gets.chomp
    if user_input == 'i'
      instructions
    elsif user_input == 'p'
      play_game
    elsif user_input == 'q'
      quit
    elsif user_input == 'c' || user_input == 'cheat'
      cheat
    end
  end

  def play_game
    @play.start
  end

end
