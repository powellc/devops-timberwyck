resource "digitalocean_domain" "unblink" {
   name = "unbl.ink"
   ip_address = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "www-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "www"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "star-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "A"
   name = "*"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
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


