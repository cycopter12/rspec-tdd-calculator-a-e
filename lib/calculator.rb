class Calculator
  # your class goes here
  attr_reader :num

  @@result_history = []

  def initialize(num)
    @num=num
    @can_undo=false
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
    @@result_history.push(@num)
    @can_undo=false
    self
  end

  def subtract(x)
    raise TypeError if x.is_a? String
    @num -= x
    @@result_history.push(@num)
    @can_undo=false
    self
  end
  def multiply(x)
    raise TypeError if x.is_a? String
    @num *= x
    @@result_history.push(@num)
    @can_undo=false
    self
  end
  def divide(x)
    raise TypeError unless x.is_a? Numeric
    @num /= x
    @@result_history.push(@num)
    @can_undo=false
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

    def undo
      @num = @@result_history[@@result_history.length-2]
      @can_undo=true
    end

    def redo
      if @can_undo
        @can_undo=false
      @num = @@result_history[@@result_history.length-1]
    else
      p "you are not allowed"
      end
    end
  end
end
