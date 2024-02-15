# Домашнее задание к занятию "`Защита сети`" - `Кириенко Виталий`


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

`В качестве ответа пришлите события, которые попали в логи Suricata и Fail2Ban, прокомментируйте результат.`

```
В логи Suricata попали события сканирования портов, например:
ET SCAN Suspicious inbound to mySQL port 3306 [**] [Classification: Potentially Bad Traffic]
ET SCAN Suspicious inbound to PostgreSQL port 5432 [**] [Classification: Potentially Bad Traffic]
ET SCAN Suspicious inbound to MSSQL port 1433 [**] [Classification: Potentially Bad Traffic]
ET SCAN Potential VNC Scan 5800-5820 [**] [Classification: Attempted Information Leak]
ET SCAN Potential VNC Scan 5900-5920 [**] [Classification: Attempted Information Leak]
ET SCAN Suspicious inbound to Oracle SQL port 1521 [**] [Classification: Potentially Bad Traffic]
ET SCAN Nmap Scripting Engine User-Agent Detected (Nmap Scripting Engine) [**] [Classification: Web Application Attack]
ET SCAN Possible Nmap User-Agent Observed [**] [Classification: Web Application Attack]

В логи Fail2Ban ничего не попало т.к. мы не выполняли попыток аутентификации, а только сканировали порты.
```

---

### Задание 2

`В качестве ответа пришлите события, которые попали в логи Suricata и Fail2Ban, прокомментируйте результат.`

```
В логи Suricata попали события сканирования порта, на котором работает сервис SSH:
ET SCAN Potential SSH Scan OUTBOUND [**] [Classification: Attempted Information Leak]

В логи Fail2Ban попали события попыток аутентификации по SSH и бана IP адреса атакующего:
[528]: INFO    [sshd] Found 192.168.1.4 - 2024-02-15 19:36:31
[528]: NOTICE  [sshd] Ban 192.168.1.4
```
