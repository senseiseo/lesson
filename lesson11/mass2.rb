arr = []

puts "Введите Н"
n = gets.to_i 
s = 1 
while s <= n  
  arr << rand(0..100)  
  s += 1
end
p arr

max_value = 0 

for item in arr do 
  if item > max_value 
    max_value = item 
  end 
end 
puts max_value.to_s