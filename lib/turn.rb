require './lib/mastermind'

class Turn
  include Message

  def initialize
  end

  def correct_colors(guess, solution)
    array_guess = guess.split('')
    correct_colors = 0
    solution.each do |color|
      if array_guess.include?(color)
        array_guess.delete_at(array_guess.index(color))
        correct_colors += 1
      end
    end
    correct_colors
  end

  def has_won?(guess, solution)
    guess == code
  end

  def correct_positions(guess, solution)
    correct_positions = 0
    array_guess = guess.split('')
    array_guess.each_with_index do |character, index|
      if array_guess[index] == solution[index]
        correct_positions += 1
      end
    end
    correct_positions
  end
end
