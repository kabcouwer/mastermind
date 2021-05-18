require_relative 'spec_helper'

RSpec.describe Game do
  before :each do
    @game = Game.new
  end

  it "exists" do
    expect(@game).to be_an_instance_of(Game)
  end

  xit 'has readable attributes' do
    @game.welcome
    expect(@game.hash.length).to eq(4)
    expect(@game.hash['p']).to eq('bill')
    expect(@game.hash['i']).to eq('here are the instructions')
  end
end
