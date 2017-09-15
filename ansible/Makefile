provision:
	ansible-playbook -i hosts site.yml --limit sovereign

provision-vault:
	ansible-playbook -i hosts site.yml --tags vault --limit

provision-docker:
	ansible-playbook -i hosts docker-site.yml --limit sovereign-docker
