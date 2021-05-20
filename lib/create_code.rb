class CreateCode
  attr_reader :solution

  def initialize
    @secret_code = ['r', 'y', 'g', 'b', 'r', 'y', 'g', 'b', 'r', 'y', 'g', 'b', 'r', 'y', 'g', 'b']
    @solution = @secret_code.sample(4)
  end
end
