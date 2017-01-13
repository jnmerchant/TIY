numeric_input_count = 0
numeric_input_total = 0

total_input_count = 0
string_input_count = 0
combined_string = []
all_user_input = []

def total_length_of_strings(combined_string)
  string_length = 0
  combined_string.each do |string_element|
    string_length = string_length + string_element.length
  end
    return string_length
end

puts "Please enter a number or string (Press 'enter' to end input)"
user_input = gets.chomp

while user_input.length > 0
  all_user_input.push(user_input)
  puts "Please enter a number or string (Press 'enter' to end input)"
  user_input = gets.chomp
end

all_user_input.each do |array_value|
  if array_value == "0"
    numeric_input_count += 1
    numeric_input_total = numeric_input_total + array_value.to_f
  elsif array_value.to_f > 0 or array_value.to_f < 0
    numeric_input_count += 1
    numeric_input_total = numeric_input_total + array_value.to_f
  else
    combined_string.push(array_value)
    string_input_count += 1
  end
  total_input_count += 1

end

if numeric_input_count > 0
  average_of_numbers = numeric_input_total / numeric_input_count
else
  average_of_numbers = "No numeric input"
end
length_combined_string = combined_string.sort{|a,b| a.length <=> b.length }
count_e = combined_string.to_s.count("e")
avg_string_length = total_length_of_strings(combined_string) / string_input_count

p all_user_input
puts "Count of numbers entered: " + numeric_input_count.to_s
puts "Total of numbers entered: " + numeric_input_total.to_s
puts "The average of the numbers entered: " + average_of_numbers.to_s
puts "Combined strings: " + combined_string.join('')
puts "Count of strings entered: " + string_input_count.to_s
puts "Total items input: " + total_input_count.to_s
puts "The shortest string is: " + length_combined_string[0].to_s + ", " + length_combined_string[0].length.to_s  + " characters"
puts "and the longest string is: " + length_combined_string.last.to_s +  ", " + length_combined_string.last.length.to_s + " characters"
puts "E appears " + count_e.to_s + " times in the string input"
puts "The average string length is: " + avg_string_length.to_s
