require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    @my_cal = Calculator.new(1)
    # initialize calculator
  end

  describe "Initialization" do
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
    it 'should add x to the internal result value, if x can be a valid number'
    @my_cal.add(1)
    expect(@my_cal.result).to eq(3)
  end
  # Tests go here
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
