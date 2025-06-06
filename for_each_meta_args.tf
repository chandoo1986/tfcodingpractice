//General syntax for using for_each

/*resource "<resource_type>" "<resource_name>" {
    for_each = var.instances

    tags = {
        Name = each.<value/key>
    }
}*/

// Using for_each with set of strings
