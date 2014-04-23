def add(num_1, num_2)
  num_1 + num_2
end

def subtract(num_1, num_2)
  num_1 - num_2
end

def sum(array)
  sum = 0
  array.each{|num| sum += num }
  sum
end

def multiply(num_1, num_2, *num_n)
  sum = num_1 * num_2
  num_n.each{|num| sum *= num }
  sum
end

def power(num_1, num_2)
  num_1 ** num_2
end

def factorial(num_1)
  sum = 1

  (1..num_1).each { |num| sum *= num } unless num_1 == 0

  sum
end
