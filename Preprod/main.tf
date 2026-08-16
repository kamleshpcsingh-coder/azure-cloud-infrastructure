module "resource_group" {
  source = "../Module/Azurerm_Resource_Group"
  rgs    = var.rgs
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../Module/Azurerm_Storage_Account"
  sta        = var.sta
}

module "container" {
  depends_on = [module.storage_account]
  source     = "../Module/Azurerm_Container"
  cnt        = var.cnt
}

module "virtual_network" {
  depends_on = [module.storage_account]
  source     = "../Module/Azurerm_Virtual_Network"
  vnets      = var.vnets
}

module "subnets" {
  depends_on = [module.storage_account]
  source     = "../Module/Azurerm_Subnet"
  snets      = var.snets
}