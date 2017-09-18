resource "digitalocean_domain" "colinforcastine" {
   name = "colinforcastine.com"
   ip_address = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "www-colinforcastine" {
   domain = "${digitalocean_domain.colinforcastine.name}"
   type = "A"
   name = "www"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}
resource "digitalocean_record" "star-colinforcastine" {
   domain = "${digitalocean_domain.colinforcastine.name}"
   type = "A"
   name = "*"
   value = "${digitalocean_droplet.sovreign.ipv4_address}"
}
