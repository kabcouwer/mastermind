class SecretCode
  attr_reader :pegs, :secret_code

  def initialize
    @pegs = []
    @secret_code = []
  end

  def add_peg(peg)
    @pegs << peg
  end

  def randomize
    @pegs.shuffle!
  end

  def row
    @pegs.each_with_index do |peg, index|
      until index == 3
      @secret_code << peg
      break
    end 
    end
    @secret_code
  end
end
