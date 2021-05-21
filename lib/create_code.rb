class CreateCode
  attr_reader :solution

  def initialize
    @possibilities = ['r', 'y', 'g', 'b', 'r', 'y', 'g', 'b', 'r', 'y', 'g', 'b', 'r', 'y', 'g', 'b']
    @solution = @possibilities.sample(4)
  end
end
