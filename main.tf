provider "azurerm" {
  features {}
}

module Alex_RG {
  source                  = "./modules/Alex_RG"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module Alex_VNet {
  source                  = "./modules/Alex_VNet"
  depends_on              = [module.Alex_RG]
  #module.ALex_RG.resource_group_name
  #var.resource_group_name
  resource_group_name     = var.resource_group_name
  virtual_network_name    = var.virtual_network_name
  vnet_address_space      = var.vnet_address_space
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}
