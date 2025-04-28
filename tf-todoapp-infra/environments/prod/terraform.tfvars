prod_rgs = {
    "prodtodorgwestus" = {
        location = "westus" 
    }   
}

prod_acrs = {
    acr1 = {
        acr_name = "prodtodoacrwestus"
        resource_group_name = "prodtodorgwestus"
        location = "westus"
        sku = "Standard"
    }
}

prod_aks = {
    aks1 = {
        aks_name = "prodtodoakswestus"
        resource_group_name = "prodtodorgwestus"
        location = "westus"
        dns_prefix = "prodtodoaks"
        node_count = 1
        vm_size    = "Standard_DS2_V2"
        tags = {
            environment = "development"
            project = "todoapp"
        }
    }

}