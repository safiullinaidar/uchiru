# есть таблица students с колонками
# id int
# name varchar
# created_at datetime
# parent_id int

# количество всех студентов
AR:  Student.all.count
SQL: SELECT COUNT(*) FROM students;

# количество студентов с именем Иван
AR:  Student.where(name: "Иван").count
SQL: SELECT COUNT(name) FROM students WHERE name = 'Иван';

# количество студентов созданных после 1 сентября 2020 года
AR:  Student.where("created_at > ?", 01.09.2020).count
SQL: SELECT COUNT(created_at) FROM students WHERE created_at > '1.09.2020';
