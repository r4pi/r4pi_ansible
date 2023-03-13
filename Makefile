all:
	ansible-playbook --vault-password-file vault.key site.yml

lint:
	ansible-lint site.yml
