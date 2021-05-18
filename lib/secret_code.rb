class SecretCode
  attr_reader :pegs, :code

  def initialize
    @pegs = []
    @code = []
  end

  def add_peg(peg)
    @pegs << peg
  end

  def randomize
    @pegs.shuffle!
  end

  def row_one
    @pegs.find do |peg|
      peg.position == 1
    end
  end

  def row_two
    @pegs.find do |peg|
      peg.position == 2
    end
  end

  def row_three
    @pegs.find do |peg|
      peg.position == 3
    end
  end

  def row_four
    @pegs.find do |peg|
      peg.position == 4
    end
  end

  def create_code
    @code = [row_one, row_two, row_three, row_four]
  end

end
