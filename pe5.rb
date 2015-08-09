# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# find the Least Common Multiple (LCM) of the group of numbers.
#
# The LCM of (1,2,3,4,5,6,7,8,9,10) = 2520


# start off with 2520 example

@prime_nums = []

@biggest_primes_multiplied = []

# checks if number is prime (however, does not include 1 for now)
def is_prime?(num)
  count = 0
  (1..num).each do |n|
    if (num%n == 0)
      count+=1
    end
  end
  
  if (count == 2)
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

def find_prime(num)
  prime_number_hash = {}
  (1..num).each do |n|
    if (num%n == 0) && (is_prime?(n) == true)
      prime_number_hash[n] = find_prime_count(n, num) 
    end
  end
  @prime_nums << prime_number_hash
end

def get_sum(final_multiplied_primes)
  final_multiplied_primes.inject { |product, n| product * n }
end

def multiply_all(hash_of_primes)
  hash_of_primes.each do |k, v|
   @biggest_primes_multiplied << k**v
  end

  puts get_sum(@biggest_primes_multiplied)
end

def get_primes(array)
  array.each do |number|
    find_prime(number) 
  end
  
  biggest_primes = {}
  @prime_nums.each do |hash|
    number_in_question = hash.keys[0]
    if (biggest_primes.empty?)
      biggest_primes.merge!(hash)
    else
      if (biggest_primes.has_key?(number_in_question))
        if (hash[number_in_question] > biggest_primes[number_in_question])
          biggest_primes.merge!(hash)
        end
      else
        biggest_primes.merge!(hash)
      end
    end
  end
  multiply_all(biggest_primes)
end


  # @prime_nums.each do |hash|
      #sorted_array = hash.sort_by { |number, count| number }
      #number = sorted_array[-1][0]
      #power = sorted_array[-1][1]
      #@biggest_primes_multiplied << number**power
    # end

def multiply_biggest_primes(array)
  get_primes(array)

  puts @biggest_primes_multiplied
  biggest = @biggest_primes_multiplied.inject{ |product, n| product * n }
  puts biggest
end

@all_nums = [*1..10]
get_primes(@all_nums)
#multiply_biggest_primes(@all_nums)
