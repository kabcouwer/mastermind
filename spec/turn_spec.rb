require_relative 'spec_helper'

RSpec.describe Turn do
  xit 'exists' do
    guess = 'rgyb'
    code = CreateCode.new
    turn = Turn.new(guess, code)

    expect(turn).to be_a(Turn)
  end

  xit 'has readable attributes' do
    guess = 'rgyb'
    code = CreateCode.new
    turn = Turn.new(guess, code)

    expect(turn.code).to eq(code)
    expect(turn.guess.class).to eq(Array)
  end

  it 'finds correct guesses' do
    guess = 'rgyb'
    turn = Turn.new(guess)
    @code = ['r', 'g', 'y', 'b']

    expect(turn.correct_colors).to eq(4)

    guess2 = 'rgyy'
    turn2 = Turn.new(guess2)

    expect(turn2.correct_colors).to eq(3)
  end

  it 'will return false if guess is wrong' do
    guess = 'gbyr'
    # code = ['g', 'b', 'b', 'y']
    turn = Turn.new(guess)
    expect(turn.has_won?).to be(false)
  end

  xit 'will return true if guess is correct' do
    guess = 'gbyr'
    code = ['g', 'b', 'y', 'r']
    turn = Turn.new(guess, code)
    expect(turn.has_won?).to be(true)
  end

  xit 'can compare elements to secret code' do
    guess = 'rgyb'
    code = CreateCode.new
    turn = Turn.new(guess, code)
    expect(turn.compare_first_position).to eq(1)
    expect(turn.compare_second_position).to eq(1)
    expect(turn.compare_third_position).to eq(2)
    expect(turn.compare_fourth_position).to eq(3)
  end
end
