class PalinDoom
  attr_accessor :final_array

  def initialize
    @final_array = []
    @first_array = [*100..999]
    @second_array = [*100..999]
  end

  def is_palindrome?(product)
    product.to_s == product.to_s.reverse ? true : false
  end


  def three_digits
    @first_array.each do |number|
      @second_array.each do |num|
        @test_pal = number * num
        if is_palindrome?(@test_pal)
          @final_array << @test_pal
        end
      end
    end
  end

end

palindrome = PalinDoom.new
palindrome.three_digits
puts palindrome.final_array.sort
