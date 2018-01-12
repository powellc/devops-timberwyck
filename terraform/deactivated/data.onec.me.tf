resource "digitalocean_droplet" "data-castine" {
  image  = "ubuntu-14-04"
  name   = "data.castine.me.us"
  region = "nyc3"
  size   = "1gb"
  resize_disk = "true"
}
