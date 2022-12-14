# объяснить разницу между двумя выражениями и сказать значения переменных el1, el2

el1 = true and false
el2 = true && false
# Оба выражения логические, разница применённых операторов влияет на порядок выполнения операций,
# а именно - присвоения: в первом выражении сначала выполнится присвоение, а потом логическая операция and;
# во втором выражении сначала произведётся операция логическое "И", а потом присвоение.
# Эти операции можно переписать с использованием скобок следующим образом:

(el1 = true) and false
el2 = (true && false)

# Таким образом, значение переменных будет равно:
el1 => true
el2 => false
