number1 = 10 
number2 = 112

puts number1
puts number2

if number1 > number2
  puts "Наибольшее число" + number1.to_s
end 

if number2 > number1
  puts "Наибольшее число" + number2.to_s
end 

if number1 == number2
  puts "Равны"
end 