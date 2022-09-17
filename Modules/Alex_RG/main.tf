resource "azurerm_resource_group" "RG" {
  name     = "${var.resource_group_name}-RG"
  location = var.resource_group_location
}