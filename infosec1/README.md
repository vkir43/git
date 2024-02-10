# Домашнее задание к занятию "`Уязвимости и атаки на информационные системы`" - `Кириенко Виталий`


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

```
1. Какие сетевые службы в ней разрешены?
2. Какие уязвимости были вами обнаружены? (список со ссылками: достаточно трёх уязвимостей)
```

```
1. 21/tcp	ftp		vsftpd 2.3.4
   22/tcp	ssh		OpenSSH 4.7p1 Debian 8ubuntu1 (protocol 2.0)
   23/tcp	telnet		Linux telnetd
   25/tcp	smtp		Postfix smtpd
   53/tcp	domain		ISC BIND 9.4.2
   80/tcp	http		Apache httpd 2.2.8 ((Ubuntu) DAV/2)
   111/tcp	rpcbind		2 (RPC #100000)
   139/tcp	netbios-ssn	Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
   445/tcp	netbios-ssn	Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
   512/tcp	exec		netkit-rsh rexecd
   513/tcp	login		OpenBSD or Solaris rlogind
   514/tcp	tcpwrapped
   1099/tcp	java-rmi	GNU Classpath grmiregistry
   1524/tcp	bindshell	Metasploitable root shell
   2049/tcp	nfs		2-4 (RPC #100003)
   2121/tcp	ftp		ProFTPD 1.3.1
   3306/tcp	mysql		MySQL 5.0.51a-3ubuntu5
   5432/tcp	postgresql	PostgreSQL DB 8.3.0 - 8.3.7
   5900/tcp	vnc		VNC (protocol 3.3)
   6000/tcp	X11		(access denied)
   6667/tcp	irc		UnrealIRCd
   8009/tcp	ajp13		Apache Jserv (Protocol v1.3)
   8180/tcp	http		Apache Tomcat/Coyote JSP engine 1.1
```

`2. vsftpd 2.3.4 `	[https://www.exploit-db.com/exploits/49757](https://www.exploit-db.com/exploits/49757)

`   OpenSSH < 7.7`	[https://www.exploit-db.com/exploits/45939](https://www.exploit-db.com/exploits/45939)

`   ISC BIND 9   `	[https://www.exploit-db.com/exploits/40453](https://www.exploit-db.com/exploits/40453)

---

### Задание 2

```
- Чем отличаются эти режимы сканирования с точки зрения сетевого трафика?
- Как отвечает сервер?
```

```
1. SYN
   NMAP отправляет на сканируемый сервер пакеты с флагом SYN.
   Сервер на закрытых портах отвечает пакетами с флагами RST, ACK, а на открытых портах - SYN, ACK.
2. FIN
   NMAP отправляет на сканируемый сервер пакеты с флагом ACK.
   Сервер отвечает пакетами с флагом RST.
3. Xmas
   NMAP отправляет на сканируемый сервер пакеты с флагами FIN, PSH, URG.
   Сервер отвечает пакетами с флагами RST, ACK.
4. UDP
   NMAP отправляет на сканируемый сервер UDP пакеты.
   Сервер на закрытых портах отвечает ICMP пакетами.
```
