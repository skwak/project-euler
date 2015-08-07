# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# find the Least Common Multiple (LCM) of the group of numbers.
#
# The LCM of (1,2,3,4,5,6,7,8,9,10) = 2520


# start off with 2520 example

@all_nums = [*1..10]
@prime_nums = {}

# find the highest prime of each number in the array, as well as the count/power
def find_prime(num)
  (1..num).each do |n|
    if (num%n == 0) && (is_prime?(n) == true)
      if (@prime_nums[n] == nil)
        @prime_nums[n] = 1
      else 
        @prime_nums[n] += 1
      end
    end
  end
  puts @prime_nums
end

def get_primes(array)
  array.each do |num|
    
  end
end

def is_prime?(num)
  count = 0
  (1..num).each do |n|
    if (num%n == 0)
      count+=1
    end
  end
  if count==2
    true
  else
    false
  end
end 

puts "3: " + "#{is_prime?(3)}"
puts "6: " + "#{is_prime?(6)}"
find_prime(15)
