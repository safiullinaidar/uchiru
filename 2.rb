arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

# массив всех ключей
arr.map(&:keys).flatten

# массив всех значений
arr.map(&:values).flatten

# сумма всех значений
arr.map(&:values).flatten.sum
