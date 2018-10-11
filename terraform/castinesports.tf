resource "digitalocean_domain" "castinesports" {
   name = "castinesports.com"
   ip_address = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "www-castinesports" {
   domain = "${digitalocean_domain.castinesports.name}"
   type = "A"
   name = "www"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "star-castinesports" {
   domain = "${digitalocean_domain.castinesports.name}"
   type = "A"
   name = "*"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}
