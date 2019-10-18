require 'pry'

class Guess
  attr_reader :guess

  def initialize(guess)
    @guess = guess
  end

  def correct?
    @guess == code.secret_code
  end

  def valid_letters?(guess)
    valid_letters = ['R', 'G', 'B', 'Y']

    unless (guess.to_s.chars-valid_letters).any?
      false
    end
  end

  def valid_length?
    if @guess.length > 4
      "Your guess is too long"
    else @guess.length < 4
      "Your guess is too short"
    end
  end
end
