require_relative 'spec_helper'

RSpec.describe Game do
  before :each do
    @game = Game.new
    @game.welcome
  end

  it "exists" do
    expect(@game).to be_an_instance_of(Game)
  end

end
