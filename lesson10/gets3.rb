puts "Какой тип валюты у вас"

puts "1. Доллары"
puts "2. Рубли"

type = gets.to_i

if type == 1 
  puts 'Сколько сейчас стоит 1 доллар?'
  usd_rate = gets.to_f
  puts 'Сколько у вас рублей?'
  rub = gets.to_f
  usd = (rub / usd_rate).round(2)
  puts 'Ваши запасы равны: ' + usd.to_s + ' $'
else 
  puts 'Сколько сейчас стоит 1 рубль по отношению к доллару?'
  rub = gets.to_f
  
  puts 'Сколько у вас долларов'
  usd_rate = gets.to_f
  rub = (usd_rate * rub).round(2)
  puts 'Ваши запасы равны: ' + rub.to_s + ' P'
end 