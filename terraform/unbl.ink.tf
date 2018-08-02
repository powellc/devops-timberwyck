resource "digitalocean_domain" "unblink" {
   name = "unbl.ink"
   ip_address = "${digitalocean_droplet.sovereign.ipv4_address}"
}
resource "digitalocean_record" "www-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "www"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}
resource "digitalocean_record" "star-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "*"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}

resource "digitalocean_record" "cloud-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "cloud"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}

resource "digitalocean_record" "mail-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "mail"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}

resource "digitalocean_record" "autoconfig-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "autoconfig"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}

resource "digitalocean_record" "news-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "news"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}

resource "digitalocean_record" "keybase-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "TXT"
   name = "@"
   value = "keybase-site-verification=VwL0aY-sNsum0d26tZy9UDH--GmNgjqBilte4S0y9pc"
}

resource "digitalocean_record" "spf" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "TXT"
   name = "@"
   value = "v=spf1 a include:unbl.ink ~all"
}

#resource "digitalocean_record" "dkim" {
#   domain = "${digitalocean_domain.unblink.name}"
#   type = "TXT"
#   name = "default._domainkey.unbl.ink"
#   value = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCyQYE7Y3saK9L/xGufGkeFxIQ2gGnU5napjYZSNHQ7KVQpptbupRKzr4CLTXKvBxE1yHniqDlnBP0k8QN3VaeVdV69+3+K1jwpImsakBrY+k06cD5ZCNT9RP1l2bBfmx3DWKbZ8ixnnZVKm6dzQuXR/V7C7pjG39OIvjk880f/MwIDAQAB"
#}
#
#resource "digitalocean_record" "dmarc" {
#   domain = "${digitalocean_domain.unblink.name}"
#   type = "TXT"
#   name = "_dmarc.unbl.ink"
#   value = "v=DMARC1; p=none; rua=mailto:colin@unbl.ink"
#}

resource "digitalocean_record" "read-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "read"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}

resource "digitalocean_record" "git-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "git"
   value = "${digitalocean_droplet.sovereign.ipv4_address}"
}

resource "digitalocean_record" "akepa-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "akepa"
   value = "75.127.4.125"
}

resource "digitalocean_record" "galah-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "galah"
   value = "45.46.94.151"
}
resource "digitalocean_record" "grackle-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "grackle"
   value = "45.46.94.151"
}

resource "digitalocean_record" "auklet-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "auklet"
   value = "45.46.94.151"
}

resource "digitalocean_record" "tern-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "tern"
   value = "45.46.94.151"
}

resource "digitalocean_record" "kestrel-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "kestrel"
   value = "45.46.94.151"
}
