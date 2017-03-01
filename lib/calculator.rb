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
    raise TypeError if x.is_a? String
    @num += x
  end

  def subtract(x)
    raise TypeError if x.is_a? String
    @num -= x
  end
  def multiply(x)
    raise TypeError if x.is_a? String
    @num *= x
  end
  def divide(x)

  end
end
