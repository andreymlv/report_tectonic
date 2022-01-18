# Шаблон отчёта (ТвГТУ)
В этом проекте представлен шаблон отчёта по лабораторной или курсовой работе. Это форк https://github.com/polytechnic-templates/report-template, переделанный под меня. Может, и Вам будет удобнее.

**Важно!** Шаблон не идеален и соответствует не всем требованиям.
Если консультант по нормконтролю или преподаватель высказал замечания к работе, составленной по данному шаблону, то можно смело [заводить issue](https://github.com/andreymlv/xetex-template/issues/new). Попробуем исправить.

Также можно отправлять Pull Request. 

### Сборка локально

Понадобится *nix система с Docker и wget.

#### Автоматически

Один раз надо скачать дополнительные файлы:

```
make install
```

Скомпилировать:

```
make
```

Можно очистить от всех файлов (включая pdf):

```
make clean
```

#### Ручками

```
wget https://github.com/tiulpin/xelatex-docker/raw/master/.latexmkrc -O .latexmkrc
wget https://github.com/tiulpin/xelatex-docker/raw/master/latexdockercmd.sh -O latexdockercmd.sh
chmod a+x latexdockercmd.sh
./latexdockercmd.sh latexmk -cd -f -interaction=nonstopmode -pdf main.tex
```

## Заполнение шаблона

1. Изменить `config.tex`: имя студента, название предмета и пр. параметры указаны именно там
1. Заполнить `content.tex` - файл, который будет содержать весь текст отчёта, от вступления до заключения.
1. Добавить используемую литературу (если есть) в `refs.bib`. Для удобного поиска источников можно воспользоваться [Google Books](https://books.google.com/). Использованные источники можно указывать с помощью команды `\cite{name_of_ref}`
