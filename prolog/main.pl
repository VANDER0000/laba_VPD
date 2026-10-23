:- encoding(utf8).
% Данные студента как факты
student_name_ru('Антропов Иван Олегович').
student_name_en('Antropov Ivan Olegovich').
student_number(2).
group_name('М3О-109БВ-26').
language_name('Prolog').

base_value(304).

% Правило: контрольное значение вычисляется из номера студента
control_value(Value) :-
    base_value(Base),
    student_number(N),
    Value is Base * N.

% Правило: идентификатор студента вида группа/номер (номер минимум из двух цифр)
student_id(Id) :-
    group_name(Group),
    student_number(N),
    format(atom(Id), '~w/~|~`0t~d~2+', [Group, N]).

main :-
    student_name_ru(NameRu),
    student_name_en(NameEn),
    student_number(N),
    group_name(Group),
    language_name(Lang),
    base_value(Base),
    control_value(Control),
    student_id(Id),
    format("Hello to ~d from ~w, number ~d, group ~w!~n", [Base, NameEn, N, Group]),
    format("Привет, ~d! Это ~w, номер ~d, группа ~w!~n", [Base, NameRu, N, Group]),
    format("Student ID: ~w | Language: ~w | Control: ~d~n", [Id, Lang, Control]).