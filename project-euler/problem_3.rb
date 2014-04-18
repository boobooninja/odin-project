#!/usr/bin/ruby

value = 600851475143

largest_prime = 0
start = 2

def divide(number, start)
  start.upto(number).each do |n|
    if number % n == 0
      number = number / n
      start = n
      break
    end
  end

  puts "#{number}: #{start}"
  return number, start
end

while value > 1 do
  value, start = divide(value, start)
  largest_prime = start
end

puts "largest_prime: #{largest_prime}"
