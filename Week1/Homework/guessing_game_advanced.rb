#computer selects a number and user tries to guess the number
guess_counter = 4
all_user_guesses = []
last_guess_comment = ''

def get_computer_number
  available_numbers = (1..100).to_a
  random_number = available_numbers.sample
end

def is_numeric?(value)
  value.to_f.to_s == value.to_s || value.to_i.to_s == value.to_s
end

def evaluate_user_guess(user_guess, computers_number)
  if user_guess < computers_number
    return "lower"
  elsif user_guess > computers_number
    return "higher"
  else user_guess == computers_number
    return "right"
  end
end

def check_already_guessed(numeric_guess,all_user_guesses)
  all_user_guesses.include? numeric_guess
end

computers_number = get_computer_number
#puts "Computer Number: " + computers_number.to_s #testing

puts "Guess my number: Enter a whole number between 1 and 100:"

while guess_counter >= 0 && guess_counter <= 4 do
  user_guess = gets.chomp

  if not is_numeric?(user_guess)
    puts "Your entry was not a number. A turn was wasted. Please enter a number."
    if guess_counter > 0
      puts "You still have #{guess_counter} more guesses, so try again."
    end
    guess_counter -= 1
  end

  numeric_guess = user_guess.to_i

  guess_diff = computers_number - numeric_guess

  if guess_diff.abs >= 10 && guess_diff.abs <= 20
    close_factor = "Your guess is somewhat close +/- 20."
  elsif guess_diff.abs >= 1 && guess_diff.abs <= 9
    close_factor = "Your guess is extremely close +/- 9!"
  else
    close_factor = "Your guess in not close at all +/- 21."
  end

  if check_already_guessed(numeric_guess, all_user_guesses)
    puts "Maybe you should write your guesses down...you already guessed #{user_guess}"
    #guess_counter -= 1
  end

  all_user_guesses << numeric_guess

  if numeric_guess > 0
    if evaluate_user_guess(numeric_guess, computers_number) == "right"
      number_of_tries = 5 - guess_counter
      puts "Wow, you guessed it in #{number_of_tries} tries.  You have won and the game is over."
      break
    elsif evaluate_user_guess(numeric_guess, computers_number) == "lower" && guess_counter > 0
      puts "Your guess is lower than my number."
      puts "You still have #{guess_counter} more guesses, so try again."
      puts close_factor
      if last_guess_comment == "low"
        puts "The last guess was too low, try guessing a higher number."
      end
      last_guess_comment = "low"
      guess_counter -= 1
    elsif evaluate_user_guess(numeric_guess, computers_number) == "higher" && guess_counter > 0
      puts "Your guess is higher than my number."
      puts "You still have #{guess_counter} more guesses, so try again."
      puts close_factor
      if last_guess_comment == "high"
        puts "The last guess was too high, try guessing a lower number."
      end
      last_guess_comment = "high"
      guess_counter -= 1
    else
      puts "You did not guess my number.  My number was " + computers_number.to_s + "Game over, you have lost."
      puts "Better luck next time."
      break
    end
  end

end
