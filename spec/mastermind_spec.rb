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

  it 'testing' do
    expect(@mastermind.welcome_screen).to be_a(2)
  end
end
