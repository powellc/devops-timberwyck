resource "digitalocean_droplet" "sovreign" {
  image  = "wordpress-14-04"
  name   = "sovreign"
  region = "nyc2"
  size   = "1gb"
  resize_disk = "true"
}
