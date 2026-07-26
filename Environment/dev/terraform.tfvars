rg_p = {
  rg1 = {
    name     = "dev-rg"
    location = "uaenorth"
  }
  rg2 = {
    name     = "prod-rg"
    location = "centralindia"
  }
}
vnet_p = {
  vent1 = {
    virtual_network_name = "dev-vnet"
    resource_group_name  = "dev-rg"
    location             = "uaenorth"
    address_space        = ["10.0.0.0/16"]
  }
  vent2 = {
    virtual_network_name = "prod-vnet"
    resource_group_name  = "prod-rg"
    location             = "centralindia"
    address_space        = ["20.0.0.0/16"]
  }
}
snet_p = {
  sn1 = {
    name                 = "dev-subnet"
    virtual_network_name = "dev-vnet"
    resource_group_name  = "dev-rg"
    address_prefixes     = ["10.0.1.0/24"]
  }
  Sn2 = {
    name                 = "prod-subnet"
    virtual_network_name = "prod-vnet"
    resource_group_name  = "prod-rg"
    address_prefixes     = ["20.0.1.0/24"]
  }
}
pip_p = {
  pip1 = {

    name                = "dev-ip"
    resource_group_name = "dev-rg"
    location            = "uaenorth"
    allocation_method   = "Static"
  }
  pip2 = {

    name                = "prod-ip"
    resource_group_name = "prod-rg"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}
vm_p = {
  vm1 = {
    vm_name             = "dev-vm"
    resource_group_name = "dev-rg"
    location            = "uaenorth"
    size                = "Standard_D2s_v3"
    admin_username      = "test123"
    admin_password      = "Password@123"
    nic_name            = "dev-nic"
    pip_name            = "dev-ip"
    address_allocation  = "Dynamic"
    subnet_name         = "dev-subnet"
    venet_name          = "dev-vnet"
  }

  vm2 = {
    vm_name             = "prod-vm"
    resource_group_name = "prod-rg"
    location            = "centralindia"
    size                = "Standard_D2s_v3"
    admin_username      = "test123"
    admin_password      = "Password@123"
    nic_name            = "prod-nic"
    pip_name            = "prod-ip"
    address_allocation  = "Dynamic"
    subnet_name         = "prod-subnet"
    venet_name          = "prod-vnet"
  }
}

az_kv_p = {
  kv1 = {
    name                       = "amal-kv"
    location                   = "centralindia"
    resource_group_name        = "prod-rg"
    # tenant_id                  = "b4e113af-6735-4b69-af7d-2bc29e2c915f"
    sku_name                   = "standard"
    purge_protection_enabled   = false
    soft_delete_retention_days = 7

    enable_rbac_authorization = true
    # value                     = "test123"
    # password                  = "Password@123"
    admin_username = "test123"

  }
}