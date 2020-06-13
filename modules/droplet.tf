resource "digitalocean_ssh_key" "default" {
  name       = "hadooplab"
  public_key = file("${var.ssh_public_key_path}hadooplab_private_key.pub")
}

// Droplet
resource "digitalocean_droplet" "droplet" {
  count              = var.droplet_count
  image              = var.image_name
  name               = "${var.droplet_name}-${var.region}-0${count.index + 1}"
  region             = var.region
  size               = var.do_slug
  tags               = var.tags
  backups            = var.backups
  monitoring         = var.monitoring
  private_networking = var.private_networking
  ssh_keys           = [digitalocean_ssh_key.default.id]
  provisioner "local-exec" {
    command = "mkdir -p ../ansible; git clone git@github.com:freemanpd/cloudera-playbook.git ../ansible"
  }
  provisioner "local-exec" {
    when    = "destroy"
    command = "rm -rf ../ansible"
  }
}

// Create Volume

// Attach Volume

// Public DNS A Record
# resource "digitalocean_record" "public_a" {
#   count = length(var.public_domain) > 0 ? var.droplet_count : 0

#   domain = var.public_domain
#   type   = "A"
#   ttl    = 60
#   name   = element(digitalocean_droplet.droplet.*.name, count.index)
#   value  = element(digitalocean_droplet.droplet.*.ipv4_address, count.index)
# }

// Public DNS AAAA Record
# resource "digitalocean_record" "public_aaaa" {
#   count = length(var.public_domain) > 0 ? var.droplet_count : 0

#   domain = var.public_domain
#   type   = "AAAA"
#   ttl    = 60
#   name   = element(digitalocean_droplet.droplet.*.name, count.index)
#   value  = element(digitalocean_droplet.droplet.*.ipv6_address, count.index)
# }
