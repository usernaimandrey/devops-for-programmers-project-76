install-role:
	ansible-galaxy install $(R)

install-pip-role:
	make install-role R='geerlingguy.pip'

setup:
	ansible-playbook playbook.yml -i inventory.ini
