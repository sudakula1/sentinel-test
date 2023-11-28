

policy "enforce-mandatory-labels" {
    source = "./IAM/enforce-mandatory-labels.sentinel"
    enforcement_level = "advisory"
}

policy "validate-delete-roles" {
    source = "./IAM/service_account_delete.sentinel"
    enforcement_level = "advisory"
}