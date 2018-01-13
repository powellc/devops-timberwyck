resource "digitalocean_ssh_key" "personal" {
  name       = "personal"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
