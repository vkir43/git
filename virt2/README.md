# Домашнее задание к занятию "`Оркестрация группой Docker контейнеров на примере Docker Compose`" - `Кириенко Виталий`


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

### Задача 1

`Предоставьте ответ в виде ссылки на https://hub.docker.com/<username_repo>/custom-nginx/general.`

[custom-nginx](https://hub.docker.com/repository/docker/vkir43/custom-nginx/general)

---

### Задача 2

`В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод.`

![Скриншот 1](https://github.com/vkir43/git/blob/main/virt2/img/docker8.jpg)

![Скриншот 2](https://github.com/vkir43/git/blob/main/virt2/img/docker9.jpg)

![Скриншот 3](https://github.com/vkir43/git/blob/main/virt2/img/docker10.jpg)

![Скриншот 4](https://github.com/vkir43/git/blob/main/virt2/img/docker11.jpg)

---

### Задача 3

`В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод.`

![Скриншот 5](https://github.com/vkir43/git/blob/main/virt2/img/docker12.jpg)

`Потому что я с помощью docker attach подключил мой терминал к стандартному потоку ввода/вывода/ошибок запущенного контейнера, что позволило просматривать его текущий вывод и управлять им в интерактивном режиме, как если бы команды выполнялись непосредственно в моем терминале и, нажав комбинацию Ctrl-C, отправил SIGKILL в контейнер.`

![Скриншот 6](https://github.com/vkir43/git/blob/main/virt2/img/docker13.jpg)

![Скриншот 7](https://github.com/vkir43/git/blob/main/virt2/img/docker14.jpg)

`При запуске контейнера я указывал необходимость проброса трафика с порта 8080 хост системы (т.к. этот порт был укзан в задании) на порт 80 контейнера (т.к. на этом порту по умолчанию слушает трафик Nginx). Отредактировав конфигурационный файл Nginx, я заменил порт, который случшает Nginx (с 80 на 81). Но настройки проброса трафика с хост системы в контейнер остались прежними (с 8080 на 80), т.е. трафик пробрасывается на порт, который больше не слушает Nginx.`

![Скриншот 8](https://github.com/vkir43/git/blob/main/virt2/img/docker15.jpg)

![Скриншот 9](https://github.com/vkir43/git/blob/main/virt2/img/docker16.jpg)

---

### Задача 4

`В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод.`

![Скриншот 10](https://github.com/vkir43/git/blob/main/virt2/img/docker17.jpg)

---

### Задача 5

`В качестве ответа приложите скриншоты консоли, где видно все введенные команды и их вывод, файл compose.yaml, скриншот portainer c задеплоенным компоузом.`

![Скриншот 11](https://github.com/vkir43/git/blob/main/virt2/img/docker18.jpg)

`compose.yaml, т.к. это предпочтение по умолчанию для docker compose.`

![Скриншот 12](https://github.com/vkir43/git/blob/main/virt2/img/docker19.jpg)

![Скриншот 13](https://github.com/vkir43/git/blob/main/virt2/img/docker20.jpg)

![Скриншот 14](https://github.com/vkir43/git/blob/main/virt2/img/docker21.jpg)

![Скриншот 15](https://github.com/vkir43/git/blob/main/virt2/img/docker22.jpg)

![Скриншот 16](https://github.com/vkir43/git/blob/main/virt2/img/docker23.jpg)

`В предупреждении гворится о том что найден бесхозный контейнер, т.е. контейнер, запущенный docker compose, но не описанный в текущих compose файлах.`

![Скриншот 17](https://github.com/vkir43/git/blob/main/virt2/img/docker24.jpg)

[compose.yaml](https://github.com/vkir43/git/blob/main/virt2/compose.yaml)
