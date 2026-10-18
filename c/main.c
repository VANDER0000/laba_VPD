#include <stdio.h>
#ifdef _WIN32
#include <windows.h>
#endif

int main(void) {
#ifdef _WIN32
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);
#endif

    const char *student_name_ru = "Антропов Иван Олегович";
    const char *student_name_en = "Antropov Ivan Olegovich";
    const int student_number = 2;
    const char *group_name = "М3О-109БВ-26";
    const char *language_name = "C";

    const int base_value = 304;
    const int control_value = base_value * student_number;

    char student_id[64];
    snprintf(student_id, sizeof student_id, "%s/%02d", group_name, student_number);

    printf("Hello to %d from %s, number %d, group %s!\n",
           base_value, student_name_en, student_number, group_name);
    printf("Привет, %d! Это %s, номер %d, группа %s!\n",
           base_value, student_name_ru, student_number, group_name);
    printf("Student ID: %s | Language: %s | Control: %d\n",
           student_id, language_name, control_value);

    return 0;
}