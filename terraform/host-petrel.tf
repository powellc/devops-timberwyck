resource "digitalocean_volume" "petrel-storage" {
  region      = "nyc1"
  name        = "petrel-storage"
  size        = 100
  description = "storage for petrel"
}

resource "digitalocean_droplet" "petrel" {
  image  = "ubuntu-18-04-x64"
  name   = "unbl.ink"
  region = "nyc1"
  size   = "1gb"
  resize_disk = "true"
  ssh_keys = ["${digitalocean_ssh_key.personal.id}"]
  volume_ids = ["${digitalocean_volume.petrel-storage.id}"]
}
