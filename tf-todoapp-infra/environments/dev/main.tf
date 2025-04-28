module "rg" {
  source = "../../module/azurerm-resourcegroup"
  rgs = var.dev_rgs
}

module "acr" {
    depends_on = [ module.rg ]
    source = "../../module/azurerm-acr"
    acrs = var.dev_acrs  
}

module "aks" {
    depends_on = [ module.rg ]
    source = "../../module/azurerm-aks"
    aks_var = var.dev_aks    
}

module "database" {
  depends_on  = [ module.rg ]
  source      = "../../module/azurerm-Database"
  servers_dbs = var.servers_dbs
}