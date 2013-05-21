# http://projecteuler.net/problem=3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
SMALLEST_PRIM = 3

def p3
  num = 600851475143
  # num = 13775
  result = 0
  num.downto(SMALLEST_PRIM) do |n|
    if num % n == 0 && prime?(n) then
      result = n
      break
    end
  end
  result
end

def prime?(num)
  return false if num <= 0  
  (2..num-1).each do |n|
    return false if num % n == 0
  end
  return true
end

# puts prime?(600851475143)
puts p3