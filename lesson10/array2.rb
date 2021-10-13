arr = ["креста", "мерседес", "ваз", "таз", "газ"]

puts arr.size

puts "Вы выйграли автомобиль назовите номер?"
number = gets.to_i 

  if number <= -1 || number > arr.size 
    puts "Ошибка"
  else
    puts "Ваша машина " + arr[number]
  end 
