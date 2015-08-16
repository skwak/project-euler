#In the 20×20 grid below, four numbers along a diagonal line have been marked in red.

#08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
#49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
#81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
#52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
#22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
#24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
#32 98 81 28 64 23 67 10 *26 38 40 67 59 54 70 66 18 38 64 70
#67 26 20 68 02 62 12 20 95 *63 94 39 63 08 40 91 66 49 94 21
#24 55 58 05 66 73 99 26 97 17 *78 78 96 83 14 88 34 89 63 72
#21 36 23 09 75 00 76 44 20 45 35 *14 00 61 33 97 34 31 33 95
#78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
#16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
#86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
#19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
#04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
#88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
#04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
#20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
#20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
#01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48
#The product of these numbers is 26 × 63 × 78 × 14 = 1788696.

#What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

grid_number = 
"08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
 49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
 81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
 52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
 22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
 24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
 32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
 67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
 24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
 21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
 78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
 16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
 86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
 19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
 04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
 88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
 04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
 20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
 20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
 01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48"

#all the largest sums go here
@largest_sums = []

all_nums = grid_number.split(" ")

horizontal_nums = grid_number.split("/n")

i = 0
20.times do |array|
  name = "row_" + i.to_s
  instance_variable_set("@#{name}", [])
  i+=1
end

i = 0
20.times do |array|
  name = "col_" + i.to_s
  instance_variable_set("@#{name}", [])
  i+=1
end

(0...400).each do |index| 
  if (index < 20) 
    @row_0 << all_nums[index].to_i
  elsif (index < 40)
    @row_1 << all_nums[index].to_i 
  elsif (index < 60)
    @row_2 << all_nums[index].to_i
  elsif (index < 80) 
    @row_3 << all_nums[index].to_i
  elsif (index < 100)
    @row_4 << all_nums[index].to_i
  elsif (index < 120)
    @row_5 << all_nums[index].to_i
  elsif (index < 140)
    @row_6 << all_nums[index].to_i
  elsif (index < 160)
    @row_7 << all_nums[index].to_i
  elsif (index < 180)
    @row_8 << all_nums[index].to_i
  elsif (index < 200)
    @row_9 << all_nums[index].to_i
  elsif (index < 220)
    @row_10 << all_nums[index].to_i
  elsif (index < 240) 
    @row_11 << all_nums[index].to_i
  elsif (index < 260)
    @row_12 << all_nums[index].to_i
  elsif (index < 280)
    @row_13 << all_nums[index].to_i
  elsif (index < 300)
    @row_14 << all_nums[index].to_i
  elsif (index < 320)
    @row_15 << all_nums[index].to_i
  elsif (index < 340)
    @row_16 << all_nums[index].to_i
  elsif (index < 360)
    @row_17 << all_nums[index].to_i
  elsif (index < 380)
    @row_18 << all_nums[index].to_i
  elsif (index < 400)
    @row_19 << all_nums[index].to_i
  end
end


def add_row_nums_to_column(col, index)
  (0..19).each do |row_num|
    row_name = "@row_" + row_num.to_s
    col << eval(row_name)[index]
  end
end

index = 0
until index == 20
  if (index == 0)
    add_row_nums_to_column(@col_0, index)
  elsif (index == 1)
    add_row_nums_to_column(@col_1, index)
  elsif (index == 2)
    add_row_nums_to_column(@col_2, index)
  elsif (index == 3)
    add_row_nums_to_column(@col_3, index)
  elsif (index == 4)
    add_row_nums_to_column(@col_4, index)
  elsif (index == 5)
    add_row_nums_to_column(@col_5, index)
  elsif (index == 6)
    add_row_nums_to_column(@col_6, index)
  elsif (index == 7)
    add_row_nums_to_column(@col_7, index)
  elsif (index == 8)
    add_row_nums_to_column(@col_8, index)
  elsif (index == 9)
    add_row_nums_to_column(@col_9, index)
  elsif (index == 10)
    add_row_nums_to_column(@col_10, index)
  elsif (index == 11)
    add_row_nums_to_column(@col_11, index)
  elsif (index == 12)
    add_row_nums_to_column(@col_12, index)
  elsif (index == 13)
    add_row_nums_to_column(@col_13, index)
  elsif (index == 14)
    add_row_nums_to_column(@col_14, index)
  elsif (index == 15)
    add_row_nums_to_column(@col_15, index)
  elsif (index == 16)
    add_row_nums_to_column(@col_16, index)
  elsif (index == 17)
    add_row_nums_to_column(@col_17, index)
  elsif (index == 18)
    add_row_nums_to_column(@col_18, index)
  elsif (index == 19)
    add_row_nums_to_column(@col_19, index)
  end
  index += 1
end

def find_greatest(array)
  first_index = 0
  last_index = 3
  sum_arr = []
  until last_index == 20
    add_array = array[first_index..last_index]
    sum_arr << add_array.inject { |sum, n| sum + n }
    first_index += 1
    last_index += 1
  end
  sum_arr.max
end

def find_biggest_rows
  all_the_greats = []
  (0..19).each do |num|
    row_name = "@row_" + num.to_s
    all_the_greats[num] = find_greatest(eval(row_name))
  end
  all_the_greats.max
end
@largest_sums << find_biggest_rows

def find_biggest_cols
  all_the_col_greats = []
  (0..19).each do |num|
    col_name = "@col_" + num.to_s
    all_the_col_greats[num] = find_greatest(eval(col_name))
  end
  all_the_col_greats.max
end
@largest_sums << find_biggest_cols
