const studentNameRu = "Антропов Иван Олегович";
const studentNameEn = "Antropov Ivan Olegovich";
const studentNumber = 2;
const groupName = "М3О-109БВ-26";
const languageName = "JavaScript";

const baseValue = 304;
const controlValue = baseValue * studentNumber;
const studentId = `${groupName}/${String(studentNumber).padStart(2, "0")}`;

console.log(`Hello to ${baseValue} from ${studentNameEn}, number ${studentNumber}, group ${groupName}!`);
console.log(`Привет, ${baseValue}! Это ${studentNameRu}, номер ${studentNumber}, группа ${groupName}!`);
console.log(`Student ID: ${studentId} | Language: ${languageName} | Control: ${controlValue}`);
console.log(`Length of student_name_en: ${studentNameEn.length}`);