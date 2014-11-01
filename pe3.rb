class PrimeFactor
  attr_accessor :array

  def initialize
    @array = []
  end

  def find_prime(number)
    (2..Math.sqrt(number).ceil).each do |n|
      if (number % n == 0) && is_prime?(n)
          @array <<  n
      end
    end
  end

  def is_prime?(n)
    (2..Math.sqrt(n).ceil).each do |num|
      if n % num == 0
        return false
        break
      else
        true
      end
    end
  end


end


prime_factor = PrimeFactor.new
prime_factor.find_prime(600851475143)
puts prime_factor.array
