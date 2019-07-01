require 'pry'
class Maths

  class DivZeroError < StandardError; end

  def sum(a, b)
    a + b
  end

  def div(a, b)
    raise DivZeroError if b == 0
    a / b
  end
end
binding.pry
puts "Done"