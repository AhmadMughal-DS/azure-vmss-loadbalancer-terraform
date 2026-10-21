output "load_balancer_ip" {
  value = module.vmss.load_balancer_ip
}
output "application_url" {
  value = "http://${module.vmss.load_balancer_ip}"
}
output "vmss_name" {
  value = module.vmss.vmss_name
}
