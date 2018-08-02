resource "digitalocean_domain" "el8delete" {
   name = "el8delete.club"
   ip_address = "185.199.108.153"
}
resource "digitalocean_record" "www-el8delete" {
   domain = "${digitalocean_domain.el8delete.name}"
   type = "CNAME"
   name = "el8delete"
   value = "powellc.github.io."
  
}

