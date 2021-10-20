resource "digitalocean_firewall" "web" {
  name = "${var.firewall_vm_name}"

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  droplet_ids = "${var.firewall_vm_ids}"
}