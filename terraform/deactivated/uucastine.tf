resource "digitalocean_droplet" "uucastine" {
  image  = "wordpress-16-04"
  name   = "uucastine"
  region = "nyc2"
  size   = "1gb"
  resize_disk = "true"
}

resource "digitalocean_domain" "uucastine" {
   name = "uucastine.org"
   ip_address = "${digitalocean_droplet.uucastine.ipv4_address}"
}
resource "digitalocean_record" "www-uucastine" {
   domain = "${digitalocean_domain.uucastine.name}"
   type = "A"
   name = "www"
   value = "${digitalocean_droplet.uucastine.ipv4_address}"
}
resource "digitalocean_record" "star-uucastine" {
   domain = "${digitalocean_domain.uucastine.name}"
   type = "A"
   name = "*"
   value = "${digitalocean_droplet.uucastine.ipv4_address}"
}
