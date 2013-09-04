# http://projecteuler.net/problem=7

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
# that the 6th prime is 13.

# What is the 10 001st prime number?

def p7
  
end

def prime_n(n)
  p0 = 2
  p1 = 3
  p2 = 5 
  p3 = 7
  return p0 if n == 1
  return p1 if n == 2
  return p2 if n == 3
  return p3 if n == 4

  result  = 0

  (5..n).each do |p|
    result = p3 - p1 + p2        
    p1 = p2
    p2 = p3
    p3 = result
  end
  result
end

puts prime_n(5)