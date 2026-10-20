using System.Text;

Console.OutputEncoding = new UTF8Encoding(false);

Student student = new(
    NameRu: "Антропов Иван Олегович",
    NameEn: "Antropov Ivan Olegovich",
    Number: 2,
    Group: "М3О-109БВ-26",
    Language: "C#");

const int baseValue = 304;
int controlValue = baseValue * student.Number;
string studentId = $"{student.Group}/{student.Number:D2}";

Console.WriteLine($"Hello to {baseValue} from {student.NameEn}, number {student.Number}, group {student.Group}!");
Console.WriteLine($"Привет, {baseValue}! Это {student.NameRu}, номер {student.Number}, группа {student.Group}!");
Console.WriteLine($"Student ID: {studentId} | Language: {student.Language} | Control: {controlValue}");

record Student(string NameRu, string NameEn, int Number, string Group, string Language);