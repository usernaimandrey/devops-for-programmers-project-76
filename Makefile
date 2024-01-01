install-role:
	ansible-galaxy install $(R)

install-pip-role:
	make install-role R='geerlingguy.pip'

setup:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file pass -t setup

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file pass -t deploy

edit-secrets:
	ansible-vault edit group_vars/all/vault.yml

configure-terraform:
	ansible-playbook terraform.yml -i inventory.ini --vault-password-file pass  -u $$USER

create-token:
	bin/create_token

edit-secrets:
	ansible-vault edit group_vars/all/vault.yml
