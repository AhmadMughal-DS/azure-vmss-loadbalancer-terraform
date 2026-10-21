locals {
  name_prefix = var.project_name
}

module "vmss" {
  source         = "./modules/vmss"
  name_prefix    = local.name_prefix
  location       = var.location
  environment    = var.environment
  instance_count = var.instance_count
  admin_username = var.admin_username
  admin_password = var.admin_password
}
