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

resource "digitalocean_record" "MX-mail" {
   domain = "${digitalocean_domain.onec.name}"
   type = "MX"
   priority = "10"
   value = "mail.onec.me."
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
   value = "45.46.94.151"
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

