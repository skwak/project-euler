#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

limit = 10**6
@range = [*2..limit]

def is_prime?(num)
  count = 0
  (1..num).each do |n|
    count+=1 if (num%n==0)
  end

  (count == 2) ? true : false
end

def find_nth_prime(n)
  goal = 0
  @range.each do |num| 
    goal +=1 if (is_prime?(num))
    puts goal
    if (goal == n)
      puts num
      break
    end
  end 
end

find_nth_prime(10001)
