arr = [nil, 1, :foo]

# примеры удаления nil значений в Ruby массиве
arr.compact
arr.reject!(&:nil?)
arr - [nil]
