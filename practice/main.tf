provider "azurerm" {
   features {
     
   }
}



resource "azurerm_resource_group" "rg_1" {
   location = var.location
   name = var.name
}

resource "azurerm_storage_account" "SA_1" {
   account_replication_type = var.account_replication_type
   account_tier = var.account_tier
   location = var.sa_location
   name = var.sa_name
   resource_group_name = azurerm_resource_group.rg_1.name
  
}

