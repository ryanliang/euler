# http://projecteuler.net/problem=6
def p6
  sum_square = 0
  (1..100).each { |e| sum_square += e }
  sum_square = sum_square * sum_square  

  square_sum = 0
  (1..100).each { |e| square_sum += e * e }  

  sum_square - square_sum
end

puts p6