
puts "Please enter your age"
user_age_input = gets.chomp

user_age = user_age_input.to_i

case user_age
when 18
  puts "You can be young"
when 18..20
  puts "You can vote"
when 21..24
  puts "You can vote and drink alcohol"
when 25..29
  puts "You can vote and drink alcohol and be a representative"
when 30..34
  puts "You can vote and drink alcohol and be a representative or a senator"
when 35..100
  puts "You can vote and drink alcohol and be a representative or senator or president"
end
