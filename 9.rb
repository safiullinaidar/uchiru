# есть таблица parents
# id int
# name varchar
# created_at datetime

# количество студентов с родителями
AR:  Student.where.not(parent_id: nil).count
SQL: SELECT COUNT(*) FROM students WHERE parent_id IS NOT NULL;

# количество студентов с родителями при том что имя родителя Марина
AR:  Student.joins(:parents).where.not(parent_id: nil).where(name: "Марина").count
SQL: SELECT COUNT(*) FROM students INNER JOIN parents ON students.parent_id = parents.id WHERE parents.name = 'Марина';

# количество студентов без родителя
AR:  Student.where(parent_id: nil).count
SQL: SELECT COUNT(*) FROM students WHERE parent_id IS NULL;
