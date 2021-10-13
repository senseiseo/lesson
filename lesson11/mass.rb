arr = []

puts "Введите Н"
n = gets.to_i 
s = 1 
while s <= n  
  arr << s  
  s += 1
end

p arr.sum
