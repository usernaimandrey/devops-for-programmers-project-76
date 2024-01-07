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
