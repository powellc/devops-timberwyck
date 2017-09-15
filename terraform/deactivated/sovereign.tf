resource "digitalocean_droplet" "sovereign" {
  image  = "debian-8-x64"
  name   = "sovereign"
  region = "nyc2"
  size   = "512mb"
  ssh_keys = [18051]
}
