class Code
  attr_reader :code

  def initialize(code = self.generate_code)
    @code = code
  end

  def generate_code
    colors = ["R", "G", "B", "Y"] * 4
    colors.sample(4)
  end
end
