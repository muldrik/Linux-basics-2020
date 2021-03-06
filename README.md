# Linux-basics-2020
В этом репозитории хранятся задания по курсу "Основы Linux" (МКН-осень 2020)

Формат сдачи заданий: 
1) Делаете fork данного репозитория.
2) Создаете в своем репозитории ветку hw{номер дз}
3) В каталог, соответствующий текущей практике, добавляете решение задания
4) Выполняете в ней дз и создаете pull request
5) Называть pull request в формате 'HW{номер дз}, Имя Фамилия'
6) Добавляете меня в reviewer


Чтобы получить задания на новую практику алгоритм такой:

``` git remote add original_repo https://github.com/sloboegen98/Linux-basics-2020 ```

``` original_repo``` - это имя для remote-репозитория (имя может быть любым), а ```https://github.com/sloboegen98/Linux-basics-2020``` - ссылка на него

Теперь, чтобы получить свежие задания, вам необходимо сделать следующее:

Переключиться на master.

Выкачать изменения из original_repo репозитория.

Загрузить их в свою копию репозитория. Этот пункт важен, потому что иначе на каждый пулл-реквест у вас будет отражаться очень много изменений, которые есть у вас на локальной машине, но которых нет в вашем удаленном репозитории на гитхабе.

Для этого нужно выполнить такую последовательность команд:
```
$ git checkout master
$ git pull original_repo master
$ git push origin master
```