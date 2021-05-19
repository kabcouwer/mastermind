require_relative 'spec_helper'

RSpec.describe Play do
  before :each do
    @peg1 = Peg.new(:blue, 4)
    @peg2 = Peg.new(:red, 3)
    @peg3 = Peg.new(:green, 2)
    @peg4 = Peg.new(:yellow, 1)
    @peg5 = Peg.new(:blue, 1)
    @peg6 = Peg.new(:red, 2)
    @peg7 = Peg.new(:green, 3)
    @peg8 = Peg.new(:yellow, 4)
    @code1 = SecretCode.new
    @code1.add_peg(@peg1)
    @code1.add_peg(@peg2)
    @code1.add_peg(@peg3)
    @code1.add_peg(@peg4)
    @code1.add_peg(@peg5)
    @code1.add_peg(@peg6)
    @code1.add_peg(@peg7)
    @code1.add_peg(@peg8)
    @code1.randomize
    @code1.row_one
    @code1.row_two
    @code1.row_three
    @code1.row_four
    @code1.create_code
    @play = Play.new(@code1)
  end

  it 'exists' do
    expect(@play).to be_a(Play)
  end

  it 'has readable attributes' do
    expect(@play.code).to eq(@code1)
    expect(@play.guess).to eq([])
  end

  it 'test start game to message' do
    expect(@play.start_game).to be_a(String)
  end
end
