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

  def operation(x,y)
    if x == "add"
      add(y)
    elsif x =="subtract"
      subtract(y)
    elsif x =="divide"
      divide(y)
    elsif x =="multiply"
      multiply(y)
    else
      p "method does not exist"
    end

    def upon()
    end
  end
end
