def check_number(guess, number)
  if guess == number
    puts 'Ура, вы выиграли!'
    exit
  end

  if guess > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (guess - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end


number = rand(16)


puts 'Загадано число от 0 до 15, отгадайте какое?'
guess = gets.to_i


check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

guess = gets.to_i
check_number(guess, number)


puts 'В этот раз вам не повезло. Было загадано число ' + number.to_s
