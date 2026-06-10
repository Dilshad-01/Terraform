variable "resource_group_name" {
  default = "RG-Static_Web"
}

variable "location" {
  default = "Central US"
}

variable "vnet_name" {
  default = "vnet-staticweb"
}

variable "subnet_name" {
  default = "subnet-web"
}

variable "vm_name" {
  default = "VMAgent"
}

variable "admin_username" {
  default = "azureuser"
}

variable "vm_size" {
  default = "Standard_B2s"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}