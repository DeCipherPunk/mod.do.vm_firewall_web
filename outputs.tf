output "web_firewall_vm_ids" {
  value = digitalocean_firewall.web.droplet_ids
}

output "web_firewall_name" {
  value = digitalocean_firewall.web.name
}

output "web_firewall_status" {
  value = digitalocean_firewall.web.status
}