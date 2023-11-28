module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}


policy "enforce-mandatory-labels" {
    source = "./enforce-mandatory-labels.sentinel"
    enforcement_level = "advisory"
}

policy "validate-delete-roles" {
    source = "./service_account_delete.sentinel"
    enforcement_level = "advisory"
}