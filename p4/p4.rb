# http://projecteuler.net/problem=4
# A palindromic number reads the same both ways. The largest palindrome made from 
# the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
MAX = 999 * 999

def p4
  MAX.downto(1).each { |e|  return e if palindrome?(e.to_s) }
end

def palindrome?(str)
  result = false
  if str.length == 0 then 
    result = false
  elsif str.length == 1 then
    result = true
  elsif str.length % 2 == 0 then
    result = str[0..str.length/2-1] == str[str.length/2..str.length].reverse
  else
    result = str[0..str.length/2] == str[str.length/2..str.length].reverse
  end  
end

# puts p4

# 998001
# 997799
# 1396755360
num = 2*5*7*8*9*11*13*17*19
puts num
(1..20).each { |e| puts e if num % e != 0 }

