# http://projecteuler.net/problem=3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
SMALLEST_PRIM = 2

def p3
  num = 600851475143
  keep_going = true
  result, factor = 0
  while (keep_going) do
    factor = find_prime_factor(num)
    result = factor if factor > result
    num = num / factor
    keep_going = false if prime?(num)
  end
  return result > num ? result : num
end

def find_prime_factor(num)
  (SMALLEST_PRIM..num).each { |e| return e if num % e == 0 && prime?(e)}
end

def prime?(num)
  return false if num <= 0  
  (2..num-1).each do |n|
    return false if num % n == 0
  end
  return true
end

puts p3
