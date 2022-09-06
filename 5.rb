# функция, которая имитирует работу светофора: на вход она получает один из цветов в виде строки,
# на выходе будет результат
def traffic_lights(color)
  case color
  when "Red" then "Стойте"
  when "Yellow" then "Ждите"
  when "Green" then "Идите"
  else "Это не цвет светофора!"
  end
end

# консольная программа, которая не прекращает работу после однократного вызова,
# а ждет следующих запросов
until false
  puts "Введите цвет светофора:"
  color = $stdin.gets.chomp

  puts traffic_lights(color)
end

# обработка некорректных данных + возможность юзеру завершить работу программы
color = ""

until false
  puts "Введите цвет светофора (для выхода нажмите 0):"
  color = $stdin.gets.capitalize.chomp

  if color.eql?("0")
    abort "Вы вышли из программы"
  end

  puts traffic_lights(color)
end
