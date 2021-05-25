class CreateCode
  attr_reader :solution, :possibilities

  def initialize
    @possibilities = ['r', 'y', 'g', 'b'] * 4
    @solution = @possibilities.sample(4)
  end
end
