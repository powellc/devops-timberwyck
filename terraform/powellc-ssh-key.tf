resource "digitalocean_ssh_key" "powellc" {
  name       = "powellc"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
