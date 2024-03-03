# Домашнее задание к занятию "`Инструменты Git`" - `Кириенко Виталий`


### Инструкция по выполнению домашнего задания

   1. Сделайте `fork` данного репозитория к себе в Github и переименуйте его по названию или номеру занятия, например, https://github.com/имя-вашего-репозитория/git-hw или  https://github.com/имя-вашего-репозитория/7-1-ansible-hw).
   2. Выполните клонирование данного репозитория к себе на ПК с помощью команды `git clone`.
   3. Выполните домашнее задание и заполните у себя локально этот файл README.md:
      - впишите вверху название занятия и вашу фамилию и имя
      - в каждом задании добавьте решение в требуемом виде (текст/код/скриншоты/ссылка)
      - для корректного добавления скриншотов воспользуйтесь [инструкцией "Как вставить скриншот в шаблон с решением](https://github.com/netology-code/sys-pattern-homework/blob/main/screen-instruction.md)
      - при оформлении используйте возможности языка разметки md (коротко об этом можно посмотреть в [инструкции  по MarkDown](https://github.com/netology-code/sys-pattern-homework/blob/main/md-instruction.md))
   4. После завершения работы над домашним заданием сделайте коммит (`git commit -m "comment"`) и отправьте его на Github (`git push origin`);
   5. Для проверки домашнего задания преподавателем в личном кабинете прикрепите и отправьте ссылку на решение в виде md-файла в вашем Github.
   6. Любые вопросы по выполнению заданий спрашивайте в чате учебной группы и/или в разделе “Вопросы по заданию” в личном кабинете.
   
Желаем успехов в выполнении домашнего задания!
   
### Дополнительные материалы, которые могут быть полезны для выполнения задания

1. [Руководство по оформлению Markdown файлов](https://gist.github.com/Jekins/2bf2d0638163f1294637#Code)

---

### Задание 1

`Найдите полный хеш и комментарий коммита, хеш которого начинается на aefea.`

```
aefead2207ef7e2aa5dc81a34aedf0cad4c32545 Update CHANGELOG.md
Ответ был получен с помощью команды:
git log --pretty=format:"%H %s" -1 aefea
```

---

### Задание 2

`2.1 Какому тегу соответствует коммит 85024d3?`

```
tag: v0.12.23
Ответ был получен с помощбю команды:
git show 85024d3
```

`2.2 Сколько родителей у коммита b8d720? Напишите их хеши.`

```
2 родителей
56cd7859e0 9ea88f22fc
Ответ был получен с помощью команды:
git log --pretty=format:"%p" -1 b8d720
```

`2.3 Перечислите хеши и комментарии всех коммитов, которые были сделаны между тегами v0.12.23 и v0.12.24.`

```
b14b74c493 [Website] vmc provider links
3f235065b9 Update CHANGELOG.md
6ae64e247b registry: Fix panic when server is unreachable
5c619ca1ba website: Remove links to the getting started guide's old location
06275647e2 Update CHANGELOG.md
d5f9411f51 command: Fix bug when using terraform login on Windows
4b6d06cc5d Update CHANGELOG.md
dd01a35078 Update CHANGELOG.md
225466bc3e Cleanup after v0.12.23 release
Ответ был получен с помощью команды:
git log --oneline v0.12.23..v0.12.24
```

```
2.4 Найдите коммит, в котором была создана функция func providerSource, её определение в коде выглядит так: 
func providerSource(...) (вместо троеточия перечислены аргументы).
```

```
8c928e83589d90a031f811fae52a81be7153e82f
Ответ был получен с помощью команд:
git log -S 'func providerSource'
git show 8c928e83589d90a031f811fae52a81be7153e82f
```

`2.5 Найдите все коммиты, в которых была изменена функция globalPluginDirs.`

```
78b12205587fe839f10d946ea3fdc06719decb05
52dbf94834cb970b510f2fba853a5b49ad9b1a46
41ab0aef7a0fe030e84018973a64135b11abcd70
66ebff90cdfaa6938f26f908c7ebad8d547fea17
8364383c359a6b738a436d1b7745ccdce178df47
Ответ был получен с помощью команд:
git grep -p 'func globalPluginDirs'
git log -L :'func globalPluginDirs':plugins.go
```

`2.6 Кто автор функции synchronizedWriters?`

```
Author: Martin Atkins <mart@degeneration.co.uk>
Ответ быо получен с помощью команд:
git log -S 'func synchronizedWriters'
git show 5ac311e2a91e381e2f52234668b49ba670aa0fe5
```
