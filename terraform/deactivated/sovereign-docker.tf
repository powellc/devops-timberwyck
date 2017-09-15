resource "digitalocean_volume" "sovereign-storage" {
  region      = "nyc1"
  name        = "sovereign-storage"
  size        = 35
  description = "Sovereign storage"
}

resource "digitalocean_droplet" "sovereign-docker" {
  image  = "docker"
  name   = "sovereign-docker"
  region = "nyc1"
  size   = "512mb"
  ssh_keys = [18051]
  volume_ids = ["${digitalocean_volume.sovereign-storage.id}"]
}
