require_relative 'spec_helper'

RSpec.describe Turn do
  it 'exists' do
    guess = 'rgyb'
    code = CreateCode.new
    turn = Turn.new

    expect(turn).to be_a(Turn)
  end


  it 'finds correct colors' do
    code = CreateCode.new
    turn = Turn.new
    guess = 'rryb'
    solution1 = ['r', 'r', 'b', 'y']
    solution2 = ['y', 'b', 'b', 'y']

    expect(turn.correct_colors(guess, solution1)).to eq(4)
    expect(turn.correct_colors(guess, solution2)).to eq(2)
  end

  xit 'will return false if guess is wrong' do
    guess = 'gbyr'
    # code = ['g', 'b', 'b', 'y']
    turn = Turn.new
    expect(turn.has_won?).to be(false)
  end

  xit 'will return true if guess is correct' do
    guess = 'gbyr'
    code = ['g', 'b', 'y', 'r']
    turn = Turn.new(guess, code)
    expect(turn.has_won?).to be(true)
  end

  it 'can compare elements to secret code' do
    guess = 'rgyb'
    code = CreateCode.new
    turn = Turn.new
    solution = ['g', 'b', 'b', 'y']
    expect(turn.correct_positions(guess, solution)).to eq(0)
  end
end
