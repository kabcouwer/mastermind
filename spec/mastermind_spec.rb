require_relative 'spec_helper'

RSpec.describe Mastermind do
  before :each do
    @mastermind = Mastermind.new
  end

  it 'exists' do
    expect(@mastermind).to be_an_instance_of(Mastermind)
  end

  it 'can initialize with other classes' do
    expect(@mastermind.turn).to be_an_instance_of(Turn)
  end

  it 'can display messages' do
    expect(!@mastermind.welcome).to eq(welcome)
  end
  
  it 'can restart game if input is wrong' do


  end
end
