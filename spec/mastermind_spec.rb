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


  it 'creates a solution and is an array' do
    expect(@mastermind.solution.class).to eq(Array)
  end

  it 'can create a new code after playing a round' do
    allow(@mastermind).to receive(:gets).and_return('rgby')
    first_round_code = @mastermind.solution
    @mastermind.play_again
    next_round_code = @mastermind.solution

    expect(first_round_code).to_not eq(next_round_code)
  end

  it 'can quit' do
    allow(@mastermind).to receive(:gets).and_return('q')

    expect(@mastermind.player_choice).to eq(@mastermind.quit)
  end

  it 'can perform timer_math' do
    start_time = 38
    won_time = 52
    guess = 'rrbb'
    guess_count = 4

    expect(@mastermind.timer_math(start_time, won_time, guess, guess_count)).to eq("Congratulations! You guessed the sequence #{guess.upcase} in #{guess_count} guesses over #{time_min} minutes, #{time_sec} seconds.")
  end
end

  # xit 'can initialize time' do
  #   time_now = Time.now
  #   allow(@mastermind).to receive(:gets).and_return('rgby')
  #
  #   allow(Time).to receive(:now).and_return(time_now)
  #
  #   expect(@mastermind.run_game).to eq(time_now)
  # end
