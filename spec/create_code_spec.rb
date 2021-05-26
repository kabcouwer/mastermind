require_relative 'spec_helper'

RSpec.describe CreateCode do
  before :each do
    @code = CreateCode.new
  end

  it "exists" do
    expect(@code).to be_an_instance_of(CreateCode)
  end

  it 'can create a possibility array with 16 elements' do
    expect(@code.possibilities.length).to eq(16)
  end

  it "can create a randomized secret code which is an array" do
    expect(@code.solution.length).to eq(4)
    expect(@code.solution).to be_a(Array)
  end
end
