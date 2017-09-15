plan:
	terraform plan \
		-var "do_token"=$(DO_TOKEN) \
		-var "pub_key"=$(HOME)/.ssh/id_rsa.pub \
		-var "pvt_key"=$(HOME)/.ssh/id_rsa \
		-var "ssh_fingerprint"=$(SSH_FINGERPRINT)
apply:
	terraform apply \
		-var "do_token"=$(DO_TOKEN) \
		-var "pub_key"=$(HOME)/.ssh/id_rsa.pub \
		-var "pvt_key"=$(HOME)/.ssh/id_rsa \
		-var "ssh_fingerprint"=$(SSH_FINGERPRINT)

import:
	terraform import \
		-var "do_token"=$(DO_TOKEN) \
		-var "pub_key"=$(HOME)/.ssh/id_rsa.pub \
		-var "pvt_key"=$(HOME)/.ssh/id_rsa \
		-var "ssh_fingerprint"=$(SSH_FINGERPRINT) \
		digitalocean_droplet.sovreign 10827459

import-ssh:
	terraform import \
		-var "do_token"=$(DO_TOKEN) \
		-var "pub_key"=$(HOME)/.ssh/id_rsa.pub \
		-var "pvt_key"=$(HOME)/.ssh/id_rsa \
		-var "ssh_fingerprint"=$(SSH_FINGERPRINT) \
		digitalocean_ssh_key.powellc 18051
