require_relative 'spec_helper'

RSpec.describe SecretCode do
  before :each do
    @secret_code = SecretCode.new
    @peg1 = Peg.new(:blue, 4)
    @peg2 = Peg.new(:red, 3)
    @peg3 = Peg.new(:green, 2)
    @peg4 = Peg.new(:yellow, 1)
    @peg5 = Peg.new(:blue, 1)
    @peg6 = Peg.new(:red, 2)
    @peg7 = Peg.new(:green, 3)
    @peg8 = Peg.new(:yellow, 4)
  end

  it "exists" do
    expect(@secret_code).to be_an_instance_of(SecretCode)
  end

  it "has readable attributes" do
    expect(@secret_code.secret_code).to eq([])
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

  it 'creates a secret code' do
    @secret_code.add_peg(@peg1)
    @secret_code.add_peg(@peg2)
    @secret_code.add_peg(@peg3)
    @secret_code.add_peg(@peg4)
    @secret_code.add_peg(@peg5)
    @secret_code.add_peg(@peg6)
    @secret_code.add_peg(@peg7)
    @secret_code.add_peg(@peg8)
    @secret_code.randomize

    expect(@secret_code.row.length).to eq(4)
  end
end
