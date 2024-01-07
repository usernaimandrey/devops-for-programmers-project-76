### Hexlet tests and linter status:
[![Actions Status](https://github.com/usernaimandrey/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/usernaimandrey/devops-for-programmers-project-76/actions)

* UNIX system
* Make
* Ansible 2.11+

Выполните установку и настройку [yc-cli](https://cloud.yandex.ru/docs/cli/operations/install-cli)

Инфраструктура:
- балансировщик
- 2 инстанса
- виртуальная сеть
- DNS записи

Конфигурируем terraform:

```bash
make configure-terraform

make create-token

terraform init

```

Разворачиваем инфраструктуру:

```bash
make setup-cloud
```

Удалить инфраструктуру:

```bash
make destroy
```

Setup && Deploy

1. Создайте файл vault-password и задайте пароль для релактирования переменных

```bash
make prepare-vault-password
```

2. Задайте необходиме переменные окружения для БД и Data Dog в файле group_vars/webservers/vault.yml и зашифруйте 
их

```bash
ansible-vault encrypt group_vars/webservers/vault.yml
```

3. Задайте переменные для терраформ в group_vars/all/vault.yml

```
cloud_id=
folder_id=
user_id=
domain=
token=
service_account_id=
db_user=
db_password=
```

4. Разверните инфраструктуру и задеплойте приложение

```bash
make configure-terraform

make create-token

cd terraform

terraform init

make setup-cloud

make deploy
```
