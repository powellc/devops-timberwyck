install:
	pipenv install
	pipenv shell `ansible-galaxy install aalaesar.install_nextcloud`
	pipenv shell `ansible-galaxy install jaywink.letsencrypt`

provision:
	ansible-playbook -i ansible/hosts ansible/site.yml --limit sovereign

provision-vault:
	ansible-playbook -i ansible/hosts ansible/site.yml --tags vault --limit

plan:
	terraform plan \
		-var "do_token="" \
		-var "pub_key=$HOME/.ssh/id_rsa.pub" \
		-var "pvt_key=$HOME/.ssh/id_rsa" \
		-var "ssh_fingerprint="$SSH_FINGERPRINT"
