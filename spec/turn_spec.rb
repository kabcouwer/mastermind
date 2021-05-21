require_relative 'spec_helper'

RSpec.describe Turn do
  before :each do
    @guess = 'rgyb'
    @code = CreateCode.new
    @turn = Turn.new(@guess, @code)
  end

  xit 'exists' do
    expect(@turn).to be_a(Turn)
  end

  xit 'has readable attributes' do
    expect(@turn.code).to eq(@code)
    expect(@turn.guess).to be_a(String)
  end

  xit 'finds correct guesses' do
    guess = 'rgyb'
    code = CreateCode.new
    # code = ['r', 'g', 'y', 'b']
    turn = Turn.new(guess, code)

    expect(turn.correct_colors).to eq(4)

    guess2 = 'rgyy'
    turn2 = Turn.new(guess2, code)

    expect(turn2.correct_colors).to eq(3)
  end

  it 'can compare elements to secret code' do
    guess = 'rgyb'
    code = CreateCode.new
    turn = Turn.new(guess, code)
    expect(@turn.compare_first_position).to eq(1)
    expect(@turn.compare_second_position).to eq(1)
    expect(@turn.compare_third_position).to eq(2)
    expect(@turn.compare_fourth_position).to eq(3)
  end
end
