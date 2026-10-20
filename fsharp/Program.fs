open System
open System.Text

type Student =
    { NameRu: string
      NameEn: string
      Number: int
      Group: string
      Language: string }

[<EntryPoint>]
let main _ =
    Console.OutputEncoding <- UTF8Encoding(false)

    let student =
        { NameRu = "Антропов Иван Олегович"
          NameEn = "Antropov Ivan Olegovich"
          Number = 2
          Group = "М3О-109БВ-26"
          Language = "F#" }

    let baseValue = 304
    let controlValue = baseValue * student.Number
    let studentId = sprintf "%s/%02d" student.Group student.Number

    printfn "Hello to %d from %s, number %d, group %s!" baseValue student.NameEn student.Number student.Group
    printfn "Привет, %d! Это %s, номер %d, группа %s!" baseValue student.NameRu student.Number student.Group
    printfn "Student ID: %s | Language: %s | Control: %d" studentId student.Language controlValue

    let lengths =
        student.NameEn.Split(' ')
        |> Array.map String.length

    printfn "Word lengths: %A, total letters: %d" lengths (Array.sum lengths)
    0