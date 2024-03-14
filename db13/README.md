# Домашнее задание к занятию "`SQL`" - `Кириенко Виталий`


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

`Приведите получившуюся команду или docker-compose-манифест.`

`docker run --name postgres -e POSTGRES_PASSWORD=password -d -v /home/kirienko/docker/volumes/postgres:/var/lib/postgresql/data -v /home/kirienko/docker/volumes/backup:/mnt/backup postgres:12`

---

### Задание 2

`Приведите:`

1. `итоговый список БД после выполнения пунктов выше;`
![Скриншот 1](https://github.com/vkir43/git/blob/main/db13/img/db37.jpg)

2. `описание таблиц (describe);`
![Скриншот 2](https://github.com/vkir43/git/blob/main/db13/img/db38.jpg)

3. `SQL-запрос для выдачи списка пользователей с правами над таблицами test_db;`
4. `список пользователей с правами над таблицами test_db.`
![Скриншот 3](https://github.com/vkir43/git/blob/main/db13/img/db39.jpg)

---

### Задание 3

`Используя SQL-синтаксис вычислите количество записей для каждой таблицы.`
![Скриншот 4](https://github.com/vkir43/git/blob/main/db13/img/db40.jpg)


### Задание 4

1. `Приведите SQL-запросы для выполнения этих операций.`
```
update clients set заказ = 3 where id=1;
update clients set заказ = 4 where id=2;
update clients set заказ = 5 where id=3;
```

2. `Приведите SQL-запрос для выдачи всех пользователей, которые совершили заказ, а также вывод этого запроса.`
![Скриншот 5](https://github.com/vkir43/git/blob/main/db13/img/db41.jpg)

---

### Задание 5

`Приведите получившийся результат и объясните, что значат полученные значения.`
![Скриншот 3](https://github.com/vkir43/git/blob/main/db13/img/db42.jpg)

```
Используется Seq Scan — последовательное, блок за блоком, чтение данных таблицы clients
cost=0.00 - затраты на получение 1ой строки
cost=1.05 - затраты на получение всех строк
rows — приблизительное количество возвращаемых строк при выполнении операции Seq Scan
width — средний размер одной строки в байтах
```

---

### Задание 6

`Приведите список операций, который вы применяли для бэкапа данных и восстановления.`
```
В первом контейнере:
pg_dump -U postgres test_db > /mnt/backup/test_db.bak
Во втором контейнере:
psql -U postgres create database test_db
psql -U postgres create user "test-admin-user" with password 'password1';
psql -U postgres create user "test-simple-user" with password 'password2';
psql -U postgres test_db < /mnt/backup/test_db.bak
```
