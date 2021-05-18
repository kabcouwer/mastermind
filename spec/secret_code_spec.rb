require_relative 'spec_helper'

RSpec.describe SecretCode do
  before :each do
    @secret_code = SecretCode.new
    @peg1 = Peg.new(:blue, 4)
    @peg2 = Peg.new(:red, 3)
    @peg3 = Peg.new(:green, 2)
    @peg4 = Peg.new(:yellow, 1)
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

    expect(@secret_code.secret_code).to eq([@peg1, @peg2, @peg3, @peg4])
  end
end
