# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# find the Least Common Multiple (LCM) of the group of numbers.
#
# The LCM of (1,2,3,4,5,6,7,8,9,10) = 2520


# start off with 2520 example

@all_nums = [*1..10]
@prime_nums = []

def is_prime?(num)
  count = 0
  (1..num).each do |n|
    if (num%n == 0)
      count+=1
    end
  end
  
  if (count==2)
    true
  else
    false
  end
end 

def find_prime_count(num, original_num)
  @prime_count = 0
  keep_counting(num, original_num)
  @prime_count
end

def keep_counting(num, original_num)
  if (!is_prime?(original_num))
    if (original_num%num == 0) 
      @prime_count+=1
      new_num = original_num/num
      keep_counting(num, new_num)
    end
  else
    if (original_num == num)
      @prime_count+=1
    end
  end
end

def get_primes(array)
  array.each do |number|
    find_prime(number) 
  end
  puts @prime_nums
end

def find_prime(num)
  prime_number_hash = {}
  (1..num).each do |n|
    if (num%n == 0) && (is_prime?(n) == true)
      
      prime_number_hash[n] = find_prime_count(n, num) 
    end
  end
  puts prime_number_hash
end

find_prime(12)
