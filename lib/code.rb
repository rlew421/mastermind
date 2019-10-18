class Code
  attr_reader :secret_code

  def initialize
    @secret_code = generate_code
  end

  def generate_code
    colors = ["R", "G", "B", "Y"] * 4
    colors.sample(4)
  end
end
