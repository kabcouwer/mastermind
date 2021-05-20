require_relative 'spec_helper'

RSpec.describe Game do
  before :each do
    @solution = CreateCode.new
    @play = Play.new(@solution)
    @game = Game.new(@play)
    @message = Message.new
  end

  it "exists" do
    expect(@game).to be_an_instance_of(Game)
  end

  it 'works' do
    expect(@game.player_choice).to be_a(String)
  end
end
