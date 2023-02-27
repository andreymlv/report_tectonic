# Шаблон отчёта (ТвГТУ)
В этом проекте представлен шаблон отчёта по лабораторной или курсовой работе.
Это fork https://github.com/polytechnic-templates/report-template, переделанный
под меня. Может, и Вам будет удобнее.

Для настройки стиля оформления библиографии: https://github.com/odomanov/biblatex-gost/tree/master/tex/latex/biblatex-gost/bbx

### Сборка локально

Понадобится *nix система с TeX Live, Tectonic, biber.

Так же необходимо установить шрифты: 

- http://downloads.sourceforge.net/project/cm-unicode/cm-unicode/0.7.0/cm-unicode-0.7.0-ttf.tar.xz
- https://github.com/tonsky/FiraCode


```
./configure

make
```

## Заполнение шаблона

1. Изменить `config.tex`: имя студента, название предмета и пр. параметры
   указаны именно там
2. Заполнить `content.tex` - файл, который будет содержать весь текст отчёта,
   от вступления до заключения.
3. Добавить используемую литературу (если есть) в `refs.bib`. Для удобного
   поиска источников можно воспользоваться [Google
   Books](https://books.google.com/). Использованные источники можно указывать
   с помощью команды `\cite{name_of_ref}`
