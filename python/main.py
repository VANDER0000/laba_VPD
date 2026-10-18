student_name_ru = "Антропов Иван Олегович"
student_name_en = "Antropov Ivan Olegovich"
student_number = 2
group_name = "М3О-109БВ-26"
language_name = "Python"

base_value = 304
control_value = base_value * student_number
student_id = f"{group_name}/{student_number:02d}"

print(f"Hello to {base_value} from {student_name_en}, number {student_number}, group {group_name}!")
print(f"Привет, {base_value}! Это {student_name_ru}, номер {student_number}, группа {group_name}!")
print(f"Student ID: {student_id} | Language: {language_name} | Control: {control_value}")
print(f"Words in student_name_en: {len(student_name_en.split())}")