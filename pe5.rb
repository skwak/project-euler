# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# find the Least Common Multiple (LCM) of the group of numbers.
#
# The LCM of (1,2,3,4,5,6,7,8,9,10) = 2520

  def greatest_common_factor(a, b)
    @factors = []
    @factors2 = []
    @factors3 = []
    (2..a).each do |num|
      if a != num
        @factors << num if a % num == 0
      end
    end

    (2..b).each do |num|
      if b != num
        @factors2 << num if b % num == 0
      end
    end

    @factors.each do |num|
      @factors3 << num if @factors2.include?(num)
    end
    
    @max_factor = @factors3.max
    @factors3
  end

    def least_common_multiple(arr)
      @arr = arr
      @arr.each do |num|
        (2..num-1).each do |n|
          if num % n == 0
           #figure out how to push n more than once if necessary
            @arr << n
            @arr << n if num / n == n
            @arr.delete(num)
          end
          @arr
        end
      end 
    end  

