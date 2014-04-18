#!/usr/bin/ruby

max = 4000000

term_a = 1
term_b = 2
term_c = 0

sum = term_b

while term_a + term_b < max do
  term_c = term_a + term_b

  sum += term_c if term_c % 2 == 0

  # puts term_a
  # puts term_b
  # puts term_c
  # puts "sum: #{sum}"
  # puts

  term_a = term_b
  term_b = term_c
end

puts "sum: #{sum}"
# Answer: 4613732
