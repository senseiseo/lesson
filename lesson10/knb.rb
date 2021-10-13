
names = ['Камень', 'Ножницы', 'Бумага']
computer_choice = rand(3)

puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'

user_choice = gets.to_i

puts 'Компьютер выбрал: ' + names[computer_choice]

puts 'Вы выбрали: ' + names[user_choice]


if user_choice == computer_choice
  puts 'Ничья'
elsif user_choice == 0 && computer_choice == 1 # у вас 0-камень И у компьютера 1-ножницы
  puts 'Победили Вы'
elsif user_choice == 1 && computer_choice == 2 # у вас ножницы И у компа бумага
  puts 'Победили Вы'
elsif user_choice == 2 && computer_choice == 0 # бумага И камень
  puts 'Победили Вы'
else # во ВСЕХ ОСТАЛЬНЫХ случаях победа за компом
  puts 'Победил Компьютер'
end