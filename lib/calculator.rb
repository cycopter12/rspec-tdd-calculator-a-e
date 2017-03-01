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

end
