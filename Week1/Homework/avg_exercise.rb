numbers = [1,2,3,4,8]

def average(numbers)
  average = sum(numbers) / numbers.count
  puts average.to_f
end

def sum(numbers)
  total = 0
  numbers.each do |number|
    total += number
  end
  return total
end

average(numbers)
