Maths.rb

```
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
```

Maths_test.rb

```
require './maths'
require 'minitest/autorun'
require 'pry'

class TestMaths < Minitest::Test
  def setup
    @math = Maths.new
  end

  def test_sum
    binding.pry
    assert_equal @math.sum(3, 2), 5
  end

  def test_div_with_zero
    assert_raises Maths::DivZeroError do
      @math.div(3, 0)
    end
  end

  def test_div_with_non_zero
    assert_equal @math.div(3, 1), 3
  end
end
```