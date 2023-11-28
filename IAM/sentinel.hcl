#import "module" "tfplan-functions" {
#    source = "./tfplan-functions.sentinel"
#}

sentinel {
  features = {
    terraform = true
  }
}

import "plugin" "tfplan/v2" {
  config = {
    "plan_path": "plan.json"
  }
}

policy "enforce-mandatory-labels" {
    source = "./enforce-mandatory-labels.sentinel"
    enforcement_level = "advisory"
}

policy "validate-delete-roles" {
    source = "./service_account_delete.sentinel"
    enforcement_level = "advisory"
}