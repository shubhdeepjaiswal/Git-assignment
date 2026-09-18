variable "resource_group_name" {
  description = "Assignment-2 RG"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Assignment-2 Vnet"
  type        = string
}

variable "subnet_name" {
  description = "Name of Subnet"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "subnet_address_prefix" {
  description = "Subnet address prefix"
  type        = string
}

variable "vms" {
  description = "Virtual machine configuration"

  type = map(object({
    vm_size        = string
    os_disk_size   = number
    admin_username = string
  }))
}

variable "admin_password" {
  description = "Admin password for Linux VMs"
  type        = string
  sensitive   = true
}

