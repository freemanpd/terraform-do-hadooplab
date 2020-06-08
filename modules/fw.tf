resource "digitalocean_firewall" "droplet-fw" {
  name = "hadooplab-fw-rules"

  droplet_ids = var.droplet_ids

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = var.firewall_sources
  }

  inbound_rule {
    protocol         = "icmp"
    source_addresses = var.firewall_sources
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "7183"
    source_addresses = var.firewall_sources
  }

}