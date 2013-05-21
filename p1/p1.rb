# Q: If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
# get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the 
# multiples of 3 or 5 below 1000.

# A: 233168

def p1  
  sum = 0 
  (1..999).each do |n|
    if n % 3 == 0 || n % 5 == 0 then
      sum = sum + n
    end
  end
  sum
end

puts p1