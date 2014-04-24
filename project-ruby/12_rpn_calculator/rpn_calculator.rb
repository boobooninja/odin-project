class RPNCalculator
  attr_accessor :stack

  def initialize
    @stack = [ ]
  end

  def push(num)
    stack.push(num.to_f)
  end

  def plus
    validate

    stack.push(:+)
  end

  def minus
    validate

    stack.push(:-)
  end

  def divide
    validate

    stack.push(:/)
  end

  def times
    validate

    stack.push(:*)
  end

  def tokens(string)
    array = [ ]

    string.split.each do |val|
      if ['*','+','-','/'].include?(val)
        array.push(val.to_sym)
      else
        array.push(val.to_f)
      end
    end

    array
  end

  def evaluate(string)
    stack.push( tokens(string) ).flatten!
    value
  end

  def value
    values = []

    stack.each do |val|
      if val.class == Float
        values.push( val )
      elsif [:-, :/, :*, :+].include?(val)
        values.push( evaluate_math(values.pop, values.pop, val) )
      end
    end

    values.last
  end

  private

  def validate
    raise "calculator is empty" if stack.empty?
  end

  def evaluate_math(num1, num2, operator)
    num2.send(operator, num1)
  end
end
