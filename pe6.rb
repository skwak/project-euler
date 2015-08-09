#The sum of the squares of the first ten natural numbers is,

  #12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,

  #(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

  #Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def calc_sum(array)
  sum = array.inject{ |sum, num| sum + num }
end

def sum_of_squares(arr)
  arr.map! { |n| n**2 }
  sum_of_squares_sum = calc_sum(arr)
end  

def find_difference(num1, num2)
  diff = num1 - num2
end

def diff_between_two_squares(arr)
  square_of_sum = calc_sum(arr)**2
  sum_of_all_squares = sum_of_squares(arr)
  difference = find_difference(square_of_sum, sum_of_all_squares)
  puts difference
end

diff_between_two_squares([*1..100])
