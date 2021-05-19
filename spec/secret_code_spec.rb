require_relative 'spec_helper'

RSpec.describe SecretCode do
  before :each do
    @secret_code = SecretCode.new
    @peg1 = Peg.new('b', 4)
    @peg2 = Peg.new('r', 3)
    @peg3 = Peg.new('g', 2)
    @peg4 = Peg.new('y', 1)
    @peg5 = Peg.new('b', 1)
    @peg6 = Peg.new('r', 2)
    @peg7 = Peg.new('g', 3)
    @peg8 = Peg.new('y', 4)
  end

  it "exists" do
    expect(@secret_code).to be_an_instance_of(SecretCode)
  end

  it "has readable attributes" do
    expect(@secret_code.code).to eq([])
  end

  it "can add pegs to secret code" do
    @secret_code.add_peg(@peg1)
    @secret_code.add_peg(@peg2)
    @secret_code.add_peg(@peg3)
    @secret_code.add_peg(@peg4)

    expect(@secret_code.pegs).to eq([@peg1, @peg2, @peg3, @peg4])
  end

  it 'outputs a shuffled array of pegs' do
    @secret_code.add_peg(@peg1)
    @secret_code.add_peg(@peg2)
    @secret_code.add_peg(@peg3)
    @secret_code.add_peg(@peg4)
    @secret_code.add_peg(@peg5)
    @secret_code.add_peg(@peg6)
    @secret_code.add_peg(@peg7)
    @secret_code.add_peg(@peg8)

    expect(@secret_code.pegs).to eq([@peg1, @peg2, @peg3, @peg4, @peg5, @peg6, @peg7, @peg8])
    expect(@secret_code.randomize.length).to eq(8)
    expect(@secret_code.randomize).not_to eq([@peg1, @peg2, @peg3, @peg4, @peg5, @peg6, @peg7, @peg8])
  end

  it 'test the secret code' do
    @secret_code.add_peg(@peg1)
    @secret_code.add_peg(@peg2)
    @secret_code.add_peg(@peg3)
    @secret_code.add_peg(@peg4)
    @secret_code.add_peg(@peg5)
    @secret_code.add_peg(@peg6)
    @secret_code.add_peg(@peg7)
    @secret_code.add_peg(@peg8)
    @secret_code.randomize
    @secret_code.row_one
    @secret_code.row_two
    @secret_code.row_three
    @secret_code.row_four
    @secret_code.create_code

    expect(@secret_code.row_one.position).to eq(1)
    expect(@secret_code.row_two.position).to eq(2)
    expect(@secret_code.row_three.position).to eq(3)
    expect(@secret_code.row_four.position).to eq(4)
    expect(@secret_code.code.first.position).to eq(1)
    expect(@secret_code.code[1].position).to eq(2)
    expect(@secret_code.code[2].position).to eq(3)
    expect(@secret_code.code.last.position).to eq(4)

  end
end
