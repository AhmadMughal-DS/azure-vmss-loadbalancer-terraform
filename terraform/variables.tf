variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "project_name" {
  description = "Name prefix applied to all resources"
  type        = string
  default     = "ahmad-vmss"
}

variable "instance_count" {
  description = "Initial number of VM instances"
  type        = number
  default     = 2
}

variable "admin_username" {
  description = "Admin username for the VMSS instances"
  type        = string
  default     = "azureadmin"
}

variable "admin_password" {
  description = "Admin password (pass via TF_VAR_admin_password)"
  type        = string
  sensitive   = true
}
