#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>
#ifdef _WIN32
#include <windows.h>
#endif

int main() {
#ifdef _WIN32
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);
#endif

    const std::string student_name_ru = "Антропов Иван Олегович";
    const std::string student_name_en = "Antropov Ivan Olegovich";
    const int student_number = 2;
    const std::string group_name = "М3О-109БВ-26";
    const std::string language_name = "C++";

    const int base_value = 304;
    const int control_value = base_value * student_number;

    std::ostringstream id;
    id << group_name << '/' << std::setw(2) << std::setfill('0') << student_number;
    const std::string student_id = id.str();

    std::cout << "Hello to " << base_value << " from " << student_name_en
              << ", number " << student_number << ", group " << group_name << "!\n";
    std::cout << "Привет, " << base_value << "! Это " << student_name_ru
              << ", номер " << student_number << ", группа " << group_name << "!\n";
    std::cout << "Student ID: " << student_id << " | Language: " << language_name
              << " | Control: " << control_value << '\n';

    return 0;
}