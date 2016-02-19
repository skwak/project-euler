# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

multiples_numbers = []
i = 1..999
i.each { |number| (multiples_numbers << number) if (number % 3 == 0) || (number % 5 == 0)}

sum_of_multiples = multiples_numbers.inject(0) { |sum, number| sum + number }
puts sum_of_multiples
