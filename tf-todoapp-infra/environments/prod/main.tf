module "rg" {
  source = "../../module/azurerm-resourcegroup"
  rgs = var.prod_rgs
}

module "acr" {
    depends_on = [ module.rg ]
    source = "../../module/azurerm-acr"
    acrs = var.prod_acrs  
}

module "aks" {
    depends_on = [ module.rg ]
    source = "../../module/azurerm-aks"
    aks_var = var.prod_aks    
}