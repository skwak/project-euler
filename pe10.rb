#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.
#

def is_prime?(number)
  count = 0
  if (number < 1)
    false
  else
    (2..Math.sqrt(number)).each do |n|
      count += 1 if (number % n == 0)
    end
    
    if (count >= 1)
      false
    else
      true
    end 
  end
end

def find_sum(range)
  sum = 0
  (2..range).each do |num|
    if (is_prime?(num))
      puts num
      sum += num
    end
  end

  puts sum
end

find_sum(2_000_000)
