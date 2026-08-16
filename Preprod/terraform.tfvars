rgs = {
  rg1 = {
    name     = "rg-test"
    location = "central india"
  }

}

sta = {
  sta1 = {
    name                     = "statesting111"
    resource_group_name      = "rg-test"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}



cnt = {
  cnt1 = {
    name                  = "mycontainer111"
    container_access_type = "private"
    storage_account_name  = "statesting111"
    resource_group_name   = "rg-test"
  }

}

snets = {
  subnet1 = {
    name                 = "subnet1"
    resource_group_name  = "rg-test"
    virtual_network_name = "VNet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
vnets = {
  Vnet1 = {
    name                = "VNet1"
    location            = "centralindia"
    resource_group_name = "rg-test"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}