module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
}

module "nsg" {
  source              = "./modules/nsg"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
}

module "vm" {
  source              = "./modules/vm"
  vm_name             = var.vm_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.vnet.subnet_id
  nsg_id              = module.nsg.nsg_id
  admin_username      = var.admin_username
  vm_size             = var.vm_size
  public_key_path     = var.public_key_path
}