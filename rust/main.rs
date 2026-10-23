fn main() {
    let student_name_ru = "Антропов Иван Олегович";
    let student_name_en = "Antropov Ivan Olegovich";
    let student_number = 2;
    let group_name = "М3О-109БВ-26";
    let language_name = "Rust";

    let base_value = 304;
    let control_value = base_value * student_number;
    let student_id = format!("{}/{:02}", group_name, student_number);

    println!("Hello to {base_value} from {student_name_en}, number {student_number}, group {group_name}!");
    println!("Привет, {base_value}! Это {student_name_ru}, номер {student_number}, группа {group_name}!");
    println!("Student ID: {student_id} | Language: {language_name} | Control: {control_value}");
    println!("student_id = {student_id}");
}
