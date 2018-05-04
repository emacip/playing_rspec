require 'minitest/autorun'


class Calculator
  attr_reader :digest

  def initialize(list_num)
    @digest = packing_nums(list_num)
  end

  def sum
    digest.inject(:+)
  end

  def packing_nums(list_num)
    list_num.split(",").map {|num| num.to_i}
  end
end


describe Calculator do
  it "sum list digist" do
    calc = Calculator.new("1,2,3,4,5")
    calc.sum.must_equal(15)
  end
end
