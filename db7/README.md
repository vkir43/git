# Домашнее задание к занятию "`Индексы`" - `Кириенко Виталий`


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

`Напишите запрос к учебной базе данных, который вернёт процентное отношение общего размера всех индексов к общему размеру всех таблиц.`

`Скриншот к заданию 1`

![Скриншот 1](https://github.com/vkir43/git/blob/main/db7/img/db19.jpg)


---

### Задание 2

```
Выполните explain analyze следующего запроса:
select distinct concat(c.last_name, ' ', c.first_name), sum(p.amount) over (partition by c.customer_id, f.title)
from payment p, rental r, customer c, inventory i, film f
where date(p.payment_date) = '2005-07-30' and p.payment_date = r.rental_date and r.customer_id = c.customer_id and 
i.inventory_id = r.inventory_id
    - перечислите узкие места;
    - оптимизируйте запрос: внесите корректировки по использованию операторов, при необходимости добавьте индексы.
```

```
1.Лишняя группировка по столбцу f.title, а соотвественно становятся ненужными выборка данных из таблицы film, 
  фильтр по условию i.inventory_id = r.inventory_id и выборка данных из таблицы inventory.
2.1.select distinct concat(c.last_name, ' ', c.first_name), sum(p.amount) over (partition by c.customer_id)
    from payment p, rental r, customer c
    where date(p.payment_date) = '2005-07-30' and p.payment_date = r.rental_date and r.customer_id = c.customer_id
2.2.select distinct concat(c.last_name, ' ', c.first_name), sum(p.amount) from payment p 
    join rental r on r.rental_date = p.payment_date join customer c on c.customer_id = p.customer_id where 
    p.payment_date >= '2005-07-30' and p.payment_date < DATE_ADD('2005-07-30', INTERVAL 1 DAY) group by c.customer_id;
```

`Скриншоты к заданию 2`

`Время выполнения оригинального запроса`

![Скриншот 1](https://github.com/vkir43/git/blob/main/db7/img/db20.jpg)

`Время выполнения запроса после оптимизации`

![Скриншот 2](https://github.com/vkir43/git/blob/main/db7/img/db21.jpg)

`План запроса после замены оконной функции на group by и cross join на inner join`

![Скриншот 3](https://github.com/vkir43/git/blob/main/db7/img/db22.jpg)

`План запроса после создания индекса на столбец payment_date`

![Скриншот 4](https://github.com/vkir43/git/blob/main/db7/img/db23.jpg)

---
## Дополнительные задания (со звездочкой*)

Эти задания дополнительные (не обязательные к выполнению) и никак не повлияют на получение вами зачета по этому домашнему заданию. Вы можете их выполнить, если хотите глубже и/или шире разобраться в материале.

### Задание 3

`Перечислите те индексы, которые используются в PostgreSQL, а в MySQL — нет.`

`Bitmap, Partial, Function based index`
