# Домашнее задание к занятию "`Типы и структура СУБД`" - `Кириенко Виталий`


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

`Выберите подходящие типы СУБД для каждой сущности и объясните свой выбор.`

1. `электронные чеки в json-виде - документоориентированная, т.к. в ней данные (в нашем случае чеки) хранятся в виде документов`
2. `склады и автомобильные дороги для логистической компании - графовая, т.к. склады и автомобильные дороги будут представлены в виде графа`
3. `генеалогические деревья - документоориентированная, т.к. в ней данные могут быть представлены в виде дерева`
4. `кэш идентификаторов клиентов с ограниченным временем жизни для движка аутенфикации - ключ-значение, т.к. в ней данные хранятся как совокупность пар "ключ-значение" и данным можно присваивать time-to-live`
5. `отношения клиент-покупка для интернет-магазина - реляционная, т.к. необходимы отношения клиент-покупка`

---

### Задание 2

`Какой классификации по CAP-теореме соответствует ваша система? Согласно PACELC-теореме как бы вы классифицировали эти реализации?`

1. `данные записываются на все узлы с задержкой до часа (асинхронная запись) - AP, PA/EL`
2. `при сетевых сбоях система может разделиться на 2 раздельных кластера - CP, PC/EC`
3. `система может не прислать корректный ответ или сбросить соединение - CP, PC/EC`

---

### Задание 3

`Могут ли в одной системе сочетаться принципы BASE и ACID? Почему?`

`Нет, т.к. эти принципы противопоставляют себя друг другу`


### Задание 4

`Вы слышали о key-value-хранилище, которое имеет механизм Pub/Sub. Что это за система? Какие минусы выбора этой системы?`

`Redis. Самый большой недостаток - если в момент публикации сообщения нет ни одного подписчика, то сообщение никто не получит и оно потеряется`