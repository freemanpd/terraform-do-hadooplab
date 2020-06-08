#outputs
output "droplet_addresses" {
  value = "${digitalocean_droplet.droplet.*.ipv4_address}"
}

output "Name" {
  value = "${digitalocean_droplet.droplet.*.name}"
}