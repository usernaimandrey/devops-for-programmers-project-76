export ANSIBLE_VAULT_PASSWORD_FILE=$(CURDIR)/vault-password

prepare-vault-password:
	touch vault-password

install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml

view-vault:
	ansible-vault view group_vars/webservers/vault.yml

configure-terraform:
	ansible-playbook terraform.yml -i inventory.ini --vault-password-file vault-password  -u $$USER

create-token:
	bin/create_token

