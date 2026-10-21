output "load_balancer_ip" {
  value = azurerm_public_ip.lb.ip_address
}
output "vmss_name" {
  value = azurerm_linux_virtual_machine_scale_set.this.name
}
