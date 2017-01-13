numbers = [5,4,3,2,1,0,-1]

def greater_than_three(number)
  if number < 3
    puts number.to_s + " is LESS than 3."
  elsif number > 3
    puts number.to_s + " is GREATER than 3."
  else
    puts "The number is 3!"
  end
end

numbers.each do |number|
  greater_than_three(number)
end
