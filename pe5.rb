# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# find the Least Common Multiple (LCM) of the group of numbers.
#
# The LCM of (1,2,3,4,5,6,7,8,9,10) = 2520

def greatest_common_factor(a, b)
  factors = []
  factors2 = []
  factors3 = []
  (1..a).each do |num|
    factors << num if a % num == 0
  end

  (1..b).each do |num|
    factors2 << num if b % num == 0
  end

  factors.each do |num|
    factors3 << num if factors2.include?(num)
  end

  @max_factor = factors3.max
end

def lowest_common_multiple
  
end
