# VPD Lab 01: языки программирования, терминал и Git

- **ФИО:** Антропов Иван Олегович
- **Группа:** М3О-109БВ-26
- **Номер в списке:** 2
- **Status:** implementations finished, documentation in progress
## Цель проекта

Одна и та же программа реализована на 13 языках, чтобы сравнить способы описания данных, форматирования вывода, компиляции, интерпретации и транспиляции. Проект ведётся в Git (ветки, слияния, конфликт, тег).

## Языки

1. C
2. C++
3. Python
4. JavaScript
5. TypeScript
6. Java
7. C#
8. F#
9. Go
10. Rust
11. Bash
12. Prolog
13. Assembler (x86-64, GAS)

## Инструменты и команды сборки

| Язык | Версия инструмента | Команда сборки/запуска |
|---|---|---|
| C | gcc 16.2.0 | `gcc -Wall -Wextra -pedantic main.c -o main` и `.\main.exe` |
| C++ | g++ 16.2.0 | `g++ -Wall -Wextra -pedantic main.cpp -o main` и `.\main.exe` |
| Python | 3.14.7 | `python main.py` |
| JavaScript | Node.js 24.20.0 | `node main.js` |
| TypeScript | tsc 7.0.2 | `tsc main.ts --outDir dist` и `node dist/main.js` |
| Java | JDK 21.0.12.1 | `javac Main.java` и `java Main` |
| C# | .NET SDK 10.0.402 | `dotnet run` |
| F# | .NET SDK 10.0.402 | `dotnet run` |
| Go | 1.27.0 | `go run main.go` |
| Rust | rustc 1.99.1 | `rustc main.rs -o main.exe` и `.\main.exe` |
| Bash | 5.3.15 (Git Bash) | `bash main.sh` |
| Prolog | SWI-Prolog 10.0.2 | `swipl -q -s main.pl -g main -t halt` |
| Assembler | GNU as 2.47.20260726 | `as assembler.s -o assembler.o`, `gcc assembler.o -o assembler.exe`, `.\assembler.exe` |

Для Prolog в PowerShell перед запуском выполняется:

```powershell
chcp 65001
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$env:LANG = "en_US.UTF-8"
```

## Пример ожидаемого вывода

```
Hello to 304 from Antropov Ivan Olegovich, number 2, group М3О-109БВ-26!
Привет, 304! Это Антропов Иван Олегович, номер 2, группа М3О-109БВ-26!
Student ID: М3О-109БВ-26/02 | Language: C | Control: 608
```

## Кириллица в C и C++

Исходные файлы сохранены в UTF-8. В начале `main()` под условием `#ifdef _WIN32` вызываются `SetConsoleCP(CP_UTF8)` и `SetConsoleOutputCP(CP_UTF8)` (заголовок `<windows.h>`), поэтому консоль Windows корректно показывает русский текст.

## Assembler

- ОС: Windows x64
- Архитектура: x86_64 (`x86_64-w64-mingw32`)
- Язык ассемблера: x86-64, GNU Assembler (GAS), синтаксис Intel
- Toolchain: MinGW-w64, GCC 16.2.0, GNU as 2.47.20260726
- Команды: `as assembler.s -o assembler.o`, `gcc assembler.o -o assembler.exe`, `.\assembler.exe`