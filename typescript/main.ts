interface Student {
  studentNameRu: string;
  studentNameEn: string;
  studentNumber: number;
  groupName: string;
  languageName: string;
}

const student: Student = {
  studentNameRu: "Антропов Иван Олегович",
  studentNameEn: "Antropov Ivan Olegovich",
  studentNumber: 2,
  groupName: "М3О-109БВ-26",
  languageName: "TypeScript",
};

const baseValue: number = 304;
const controlValue: number = baseValue * student.studentNumber;
const studentId: string = `${student.groupName}/${String(student.studentNumber).padStart(2, "0")}`;

console.log(`Hello to ${baseValue} from ${student.studentNameEn}, number ${student.studentNumber}, group ${student.groupName}!`);
console.log(`Привет, ${baseValue}! Это ${student.studentNameRu}, номер ${student.studentNumber}, группа ${student.groupName}!`);
console.log(`Student ID: ${studentId} | Language: ${student.languageName} | Control: ${controlValue}`);
export {};