public class Main {
    public static void main(String[] args) {
        final String studentNameRu = "Антропов Иван Олегович";
        final String studentNameEn = "Antropov Ivan Olegovich";
        final int studentNumber = 2;
        final String groupName = "М3О-109БВ-26";
        final String languageName = "Java";

        final int baseValue = 304;
        final int controlValue = baseValue * studentNumber;
        final String studentId = String.format("%s/%02d", groupName, studentNumber);

        System.out.printf("Hello to %d from %s, number %d, group %s!%n",
                baseValue, studentNameEn, studentNumber, groupName);
        System.out.printf("Привет, %d! Это %s, номер %d, группа %s!%n",
                baseValue, studentNameRu, studentNumber, groupName);
        System.out.printf("Student ID: %s | Language: %s | Control: %d%n",
                studentId, languageName, controlValue);
    }
}