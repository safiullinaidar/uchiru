# функция, которая переводит градусы по Цельсию в градусы по Фаренгейту
def temperature_converter(temp)
  temp * 1.8 + 32
end

# консольная программа, которая просит юзера ввести число (градусы по Цельсию) 
# и переводит его в Фаренгейты
puts "Введите температуру в градусах по Цельсию:"
temp = STDIN.gets.to_f
puts "Значение температуры в градусах по Фаренгейту равно: #{temperature_converter(temp)}"

# обработка ошибок, если юзер ввел неправильные данные
temp = ""

until temp.match?(/\A-?\d+\z/)
  puts "Введите корректное значение температуры в градусах по Цельсию:"
  temp = STDIN.gets.chomp
end

puts "Значение температуры в градусах по Фаренгейту равно: #{temperature_converter(temp.to_f)}"
