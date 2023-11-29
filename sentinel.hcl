
import "module" "gcp-functions" {
    source = "./gcp-functions/gcp-functions.sentinel"
}

policy "enforce-mandatory-labels" {
    source = "./IAM/enforce-mandatory-labels.sentinel"
    enforcement_level = "advisory"
}

policy "validate-delete-roles" {
    source = "./IAM/service_account_delete.sentinel"
    enforcement_level = "advisory"
}

policy "validate-admin-roles" {
    source = "./IAM/service_account_admin.sentinel"
    enforcement_level = "soft-mandatory"
}