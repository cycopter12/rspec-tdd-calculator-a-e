require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    @my_cal = Calculator.new(1)
    # initialize calculator
  end

  describe 'Initialization' do
    it 'is an instance of Calculator' do
      expect(@my_cal).to be_instance_of(Calculator)
    end
  end

  describe 'Accessors' do
    it 'it should be readonly.' do
      expect(@my_cal.result).to eq(1)
    end
    it 'should reset the result to x.' do
      expect(@my_cal.reset(2)).to eq(2)
    end
  end

  describe 'Methods' do
    it 'should add x to the internal result value, if x can be a valid number' do
      @my_cal.add(1)
      expect(@my_cal.result).to eq(3)
    end

    it 'should check if x is a number' do
      # @my_cal.add("abc")
      expect { @my_cal.add('abc') }.to raise_error(TypeError)
    end

    it 'should subtract x to the internal result value, if x can be a valid number' do
      @my_cal.subtract(1)
      expect(@my_cal.result).to eq(2)
    end
    it 'should check if x is a number' do
      # @my_cal.add("abc")
      expect { @my_cal.subtract('abc') }.to raise_error(TypeError)
    end
    it 'should multiply x to the internal result value, if x can be a valid number' do
      @my_cal.multiply(1)
      expect(@my_cal.result).to eq(2)
    end
    it 'should check if x is a number' do
      # @my_cal.add("abc")
      expect { @my_cal.multiply('abc') }.to raise_error(TypeError)
    end
    it 'should divide the internal result value by x, if x can be a valid number' do
      @my_cal.divide(1)
      expect(@my_cal.result).to eq(2)
    end
    it 'should check if x is a number' do
      # @my_cal.add("abc")
      expect { @my_cal.divide('abc') }.to raise_error(TypeError)
    end
    it 'should all methods should be chainable in any order' do
      @my_cal.add(2).subtract(1).divide(3).multiply(1)
      expect(@my_cal.result).to eq(1)
    end
    it 'operation would apply the addition operation with the value of x' do
      @my_cal.operation('add',1)
      expect(@my_cal.result).to eq(2)  #WE ARE AT 2
    end
  end
  # Tests go here
  describe 'Undo' do
    it 'should undo the previous operation, restoring the result value.' do
      @my_cal.add(2)
      @my_cal.undo
      expect(@my_cal.num).to eq(2)
    end
  describe 'Redo' do
    it 'should redo the previous undone operation, restoring the result value.' do
      expect(@my_cal.redo).to eq(2)
    end

  end
end

# describe Tree do
#   before(:context) do
#     @tree = Tree.new('oak', 65, 2)
#   end
#
#   describe 'Initialization' do
#     it 'is an instance of the Tree class' do
#       expect(@tree).to be_instance_of(Tree)
#     end
