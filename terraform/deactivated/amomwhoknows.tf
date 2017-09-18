resource "digitalocean_droplet" "vault" {
  image  = "debian-8-x64"
  name   = "vault"
  region = "nyc2"
  size   = "512mb"
  ssh_keys = [18051]
}
