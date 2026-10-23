package main

import "fmt"

func main() {
	const studentNameRu = "Антропов Иван Олегович"
	const studentNameEn = "Antropov Ivan Olegovich"
	const studentNumber = 2
	const groupName = "М3О-109БВ-26"
	const languageName = "Go"

	const baseValue = 304
	controlValue := baseValue * studentNumber
	studentID := fmt.Sprintf("%s/%02d", groupName, studentNumber)

	fmt.Printf("Hello to %d from %s, number %d, group %s!\n", baseValue, studentNameEn, studentNumber, groupName)
	fmt.Printf("Привет, %d! Это %s, номер %d, группа %s!\n", baseValue, studentNameRu, studentNumber, groupName)
	fmt.Printf("Student ID: %s | Language: %s | Control: %d\n", studentID, languageName, controlValue)
}
