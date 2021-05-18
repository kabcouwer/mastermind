class SecretCode
  attr_reader :secret_code

  def initialize
    @secret_code = []
  end

  def add_peg(peg)
    @secret_code << peg
  end


end
