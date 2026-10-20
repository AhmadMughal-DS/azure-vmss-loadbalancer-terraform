output "load_balancer_ip" {
  description = "Public IP of the load balancer"
  value       = azurerm_public_ip.lb.ip_address
}

output "application_url" {
  description = "Open this once instances are healthy"
  value       = "http://${azurerm_public_ip.lb.ip_address}"
}

output "vmss_name" {
  description = "VM Scale Set name"
  value       = azurerm_linux_virtual_machine_scale_set.this.name
}
