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

resource "digitalocean_record" "keybase-unblink" {
   domain = "${digitalocean_domain.unblink.name}"
   type = "TXT"
   name = "@"
   value = "keybase-site-verification=VwL0aY-sNsum0d26tZy9UDH--GmNgjqBilte4S0y9pc"
}

