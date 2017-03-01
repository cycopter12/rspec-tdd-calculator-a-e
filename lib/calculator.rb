class Calculator
  # your class goes here
  attr_reader :num

  def initialize(num)
    @num=num
  end

  def result
    @num
  end

  def reset(x)
    @num=x
  end

  def add(x)
    raise TypeError unless x.is_a? Numeric
    @num += x
    self
  end

  def subtract(x)
    raise TypeError if x.is_a? String
    @num -= x
    self
  end
  def multiply(x)
    raise TypeError if x.is_a? String
    @num *= x
    self
  end
  def divide(x)
    raise TypeError unless x.is_a? Numeric
    @num /= x
    self
  end

  def operation

  end
end
