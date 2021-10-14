# encoding: utf-8
#Вывод звезд на ваши погоны
def star(number)

  counter = 0

  while counter < number

    if number <= counter
      break
    end

    print "*"
    counter += 1
  end

end


# Спросим у пользователя, сколько элементов ему нужно и запишем это в переменную
# number, предварительно преобразовав к числу
puts 'Сколько звезд на погоны'
number = gets.to_i

# Выведем пользователю нужное количество элементов, используя наш метод
puts 'Вот ваши погоны:'
puts star(number)