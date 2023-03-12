all:
	ansible-playbook site.yml

lint:
	ansible-lint site.yml
