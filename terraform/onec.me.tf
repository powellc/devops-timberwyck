resource "digitalocean_domain" "onec" {
   name = "onec.me"
   ip_address = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "www" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "www"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "git" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "git"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "data" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "data"
   value = "159.203.71.162"
}


resource "digitalocean_record" "autoconfig" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "autoconfig"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "znc" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "znc"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "cloud" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "cloud"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "chickadee" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "chickadee"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "mail" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "mail"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "akepa" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "akepa"
   value = "75.127.4.125"
}
resource "digitalocean_record" "run" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "run"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}

resource "digitalocean_record" "vault" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "vault"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "galah" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "galah"
   value = "72.224.177.108"
}
resource "digitalocean_record" "grackle" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "grackle"
   value = "45.46.94.151"
}

resource "digitalocean_record" "auklet" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "auklet"
   value = "45.46.94.151"
}

resource "digitalocean_record" "tern" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "tern"
   value = "45.46.94.151"
}

resource "digitalocean_record" "kestrel" {
   domain = "${digitalocean_domain.onec.name}"
   type = "A"
   name = "kestrel"
   value = "45.46.94.151"
}

resource "digitalocean_record" "keybase-onec" {
   domain = "${digitalocean_domain.onec.name}"
   type = "TXT"
   name = "@"
   value = "keybase-site-verification=hxUNVno7luYTBW-2gmvVBf77Onp_SA3NKWYyCcSvrTs"
}

resource "digitalocean_record" "protonmail-txt" {
   domain = "${digitalocean_domain.onec.name}"
   type = "TXT"
   name = "@"
   value = "protonmail-verification=a49b5124986a7fe5c3d38e850f36eb3e86ebd11b"
}

resource "digitalocean_record" "protonmail-mx" {
   domain = "${digitalocean_domain.onec.name}"
   type = "MX"
   name = "@"
   priority = "10"
   value = "mail.protonmail.ch."
}

resource "digitalocean_record" "protonmail-spf" {
   domain = "${digitalocean_domain.onec.name}"
   type = "TXT"
   name = "@"
   value = "v=spf1 include:_spf.protonmail.ch mx ~all"
}

resource "digitalocean_record" "protonmail-dkim" {
   domain = "${digitalocean_domain.onec.name}"
   type = "TXT"
   name = "protonmail._domainkey"
   value = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC9Bn93yKzk31i9JtwIC+71QAaHi5fqZx9JCRdEZcWZVZouzx70mG0/zUKejLzDyO5BRBdG9MjbPPU+JhgKJj1d2ekDLR0MtxibkRlDud6jc4UjypHruuKcqr9FTZCQFI8yMLVp3nKGl6GlQ+aOO5PD2keogoatULBp+cILm/8wjQIDAQAB"
}

resource "digitalocean_record" "protonmail-dmarc" {
   domain = "${digitalocean_domain.onec.name}"
   type = "TXT"
   name = "_dmarc"
   value = "v=DMARC1; p=none; rua=mailto:colin@onec.me"
}
