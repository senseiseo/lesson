def radius_kruga radius 
  3.14 * radius * radius
end 

rad = ARGV[0]

if rad == nil
  puts 'Введите радиус круга'
  rad = STDIN.gets.to_i
else
  rad = rad.to_i
end


otvet = radius_kruga(rad)
puts otvet
