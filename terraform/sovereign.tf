resource "digitalocean_volume" "sovereign-storage" {
  region      = "nyc1"
  name        = "sovereign-storage"
  size        = 100
  description = "storage for sovereign"
}

resource "digitalocean_droplet" "sovereign" {
  image  = "debian-8-x64"
  name   = "unbl.ink"
  region = "nyc1"
  size   = "1gb"
  resize_disk = "true"
  ssh_keys = ["${digitalocean_ssh_key.personal.id}"]
  volume_ids = ["${digitalocean_volume.sovereign-storage.id}"]
}
