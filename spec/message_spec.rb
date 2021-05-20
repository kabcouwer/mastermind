require 'spec_helper'

RSpec.describe Message do
  before :each do
    @message = Message.new
  end

  it 'exists' do
    expect(@message).to be_a(Message)
  end
end
