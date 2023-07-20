# Домашнее задание к занятию "`Название занятия`" - `Фамилия и имя студента`


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

`В качестве ответа в репозиторий шаблона с решением добавьте скриншоты с настройками раннера в проекте.`

`Скриншоты к заданию 1:`
![Скриншот 1](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab1.jpg)
![Скриншот 2](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab2.jpg)
![Скриншот 3](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab3.jpg)


---

### Задание 2

```В качестве ответа в шаблон с решением добавьте:
 * файл gitlab-ci.yml для своего проекта или вставьте код в соответствующее поле в шаблоне;
 * скриншоты с успешно собранными сборками.```

```
Код к заданию 2:

stages:
  - test
  - build

test:
  stage: test
  image: golang:1.17
  script: 
   - go test .

build:
  stage: build
  image: docker:latest
  script:
   - docker build .
```

`Скриншоты к заданию 2:`
![Скриншот 1](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab4.jpg)
![Скриншот 2](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab5.jpg)
![Скриншот 3](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab6.jpg)
![Скриншот 4](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab7.jpg)
![Скриншот 5](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab8.jpg)
![Скриншот 6](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab9.jpg)
![Скриншот 7](https://github.com/vkir43/git/blob/main/gitlab/img/gitlab10.jpg)


---

## Дополнительные задания (со звездочкой*)

Эти задания дополнительные (не обязательные к выполнению) и никак не повлияют на получение вами зачета по этому домашнему заданию. Вы можете их выполнить, если хотите глубже и/или шире разобраться в материале.

### Задание 3

`В качестве ответа добавьте в шаблон с решением файл gitlab-ci.yml своего проекта или вставьте код в соответсвующее поле в шаблоне.`

```
Код к заданию 3:

stages:
  - test
  - build

test:
  stage: test
  image: golang:1.17
  script:
   - go test .

build:
  stage: build
  needs: []
  image: docker:latest
  script:
   - docker build .



stages:
  - test
  - build

test:
  stage: test
  rules:
   - changes:
      - "*.go"
  image: golang:1.17
  script:
   - go test .

build:
  stage: build
  image: docker:latest
  script:
   - docker build .
```
