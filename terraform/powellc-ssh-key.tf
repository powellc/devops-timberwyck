resource "digitalocean_ssh_key" "personal" {
  name       = "personal"
  public_key = "${file("~/.ssh/powellc.pub")}"
}
