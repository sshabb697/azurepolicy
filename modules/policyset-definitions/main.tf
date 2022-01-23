

resource "azurerm_policy_set_definition" "kubernetes" {

  name         = "test123" # custom intoative name
  policy_type  = "Custom"
  display_name = "test123"
  description  = "Contains common kubernetes policies"

  metadata = <<METADATA
    {
    "category": "${var.policyset_definition_category}"
    }

METADATA

  dynamic "policy_definition_reference" {
    for_each = var.custom_policies_kubernetes
    content {
      policy_definition_id = policy_definition_reference.value["policyID"]
      reference_id         = policy_definition_reference.value["policyID"]
    }
  }

  dynamic "policy_definition_reference" {
    for_each = data.azurerm_policy_definition.builtin_policies_kubernetes
    content {
      policy_definition_id = policy_definition_reference.value["id"]
      reference_id         = policy_definition_reference.value["id"]
    }
  }
}



