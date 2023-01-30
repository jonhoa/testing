# gem 'rspec'
require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(square)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  describe "#subtract" do
    it 'should return the subtraction of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(5,1)
      expect(result).to eq(4)
    end
  end
  describe '#multiply' do
    it 'return the product of two arguments' do
      calculator = Calculator.new
      result = calculator.multiply(5,2)
      expect(result).to eq(10)
    end
    it 'product of negative numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-10,-10)
      expect(result).to eq(100)
    end
  end
  describe '#divide' do
    it 'return the division of two arguments' do
      calculator = Calculator.new
      result = calculator.divide(10,2)
      expect(result).to eq(5)
    end
  end
  describe '#square' do
    it 'return the square of a number' do
      calculator = Calculator.new
      result = calculator.sqaure(6)
      expect(result).to eq(36)
    end
  end
  describe '#power' do
    it 'return the power of two arguments' do
      calculator = Calculator.new
      result = calculator.power(2,3)
      expect(result).to eq(8)
    end
  end
end