

policy "enforce-mandatory-labels" {
    source = "./enforce-mandatory-labels.sentinel"
    enforcement_level = "advisory"
}

policy "validate-delete-roles" {
    source = "./service_account_delete.sentinel"
    enforcement_level = "advisory"
}