variable nsgConfig{
    type = object({
        name = string
        location = string
        resource_group_name = string
    })
    default = {
        name = var.terrashopDefaultNsgName
        location = var.terrashopDefaultLocation
        resource_group_name = var.terrashopDefaultRgName

    }
}