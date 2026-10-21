variable "name_prefix" {
  type = string
}
variable "location" {
  type = string
}
variable "environment" {
  type = string
}
variable "instance_count" {
  type = number
}
variable "admin_username" {
  type = string
}
variable "admin_password" {
  type      = string
  sensitive = true
}
