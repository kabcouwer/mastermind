require_relative 'spec_helper'

RSpec.describe Mastermind do
  before :each do
    @mastermind = Mastermind.new
  end

  it 'exists' do
    expect(@mastermind).to be_an_instance_of(Mastermind)
    require "pry"; binding.pry
  end

  xit 'can initialize with other classes' do
    expect(@mastermind.turn).to be_an_instance_of(Turn)
  end

  xit 'can display messages' do
    expect(@mastermind.welcome_screen.class).to eq(String)
  end

  it "text" do

  end

  context 'player choice can print instructions' do

    it 'can display instructions' do
      allow(@mastermind).to receive(:player_choice).and_return(@mastermind.instructions)

      expect(@mastermind.player_choice).to eq("MASTERMIND Game Rules\r\nOBJECT OF THE GAME\r\nThe object of MASTERMIND is to guess a secret code consisting of a series of 4 colored <pegs>. Each guess results in feedback narrowing down the possibilities of the code. You win the game by solving the secret code.\r\nTO BEGIN\r\nWhen prompted, enter your first guess, a sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. For example: rrgb\r\nNow that you have read the instructions, would you like to (p)lay or (q)uit?")
    end
  end

  context 'player choice can quit game' do

    it 'quit game' do
      allow(@mastermind).to receive(:player_choice).and_return("q")
    end
  end

  context 'run game can display guess information'

    xit 'can display correct colors and positions' do
      turn = Turn.new
      guess = 'rrrr'
      solution = ['r', 'r', 'g', 'y']
      guess_count = 1
      allow(@mastermind.run_game).to receive(:gets).and_return("#{guess.upcase} has #{turn.correct_colors(guess, solution)} of the correct elements with #{turn.correct_positions(guess, solution)} in the correct positions.\r\nYou've taken #{guess_count} guess(es). What is your next guess?")
    end
  end
