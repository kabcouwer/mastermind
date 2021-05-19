require_relative 'spec_helper'

RSpec.describe Peg do
  before :each do
    @peg = Peg.new('b', 4)
  end

  it "exists" do
    expect(@peg).to be_an_instance_of(Peg)
  end

  it "has readable attritues" do
    expect(@peg.color).to eq('b')
    expect(@peg.position).to eq(4)
  end

end
