#!/usr/bin/env bash

student_name_ru="Антропов Иван Олегович"
student_name_en="Antropov Ivan Olegovich"
student_number=2
group_name="М3О-109БВ-26"
language_name="Bash"

base_value=304
control_value=$((base_value * student_number))
student_id=$(printf "%s/%02d" "$group_name" "$student_number")

echo "Hello to $base_value from $student_name_en, number $student_number, group $group_name!"
echo "Привет, $base_value! Это $student_name_ru, номер $student_number, группа $group_name!"
echo "Student ID: $student_id | Language: $language_name | Control: $control_value"

words=$(echo "$student_name_en" | wc -w)
chars=$(echo -n "$student_name_en" | wc -m)
echo "Words: $words, chars: $chars"