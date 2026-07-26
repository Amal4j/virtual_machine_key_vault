module "resource_group" {
  source = "../../module/azurerm_resource_group"
  rg_c   = var.rg_p
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_virtual_network"
  vnet_c     = var.vnet_p
}
module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../module/azurerm_subnet"
  snet_c     = var.snet_p
}

module "publicip" {
  depends_on = [module.resource_group]
  source     = "../../module/azurerm_public_ip"
  pip_c      = var.pip_p
}
module "virtual_machine" {
  depends_on = [module.subnet, module.publicip]
  source     = "../../module/azurerm_virtual_machine"
  vm_c       = var.vm_p
}
module "keyvalut" {
  depends_on = [module.resource_group]
  source     = "../../module/azuermr_key_valut"
  az_kv_c    = var.az_kv_p

}