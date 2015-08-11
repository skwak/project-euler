#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.
#

def is_prime?(number)
  count = 0
  (1..number).each do |n|
    if (number % n == 0)
      count += 1
    end
  end

  (count == 2) ? true : false
end

def find_sum(range)
  sum = 0
  (1...range).each do |num|
    if (is_prime?(num))
      puts num
      sum += num
    end
  end

  puts sum
end

find_sum(2_000_000)