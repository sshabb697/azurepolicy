resource "azurerm_policy_assignment" "kubernetes" {
  name                 = "kubernetes"
  scope                = var.cust_scope
  policy_definition_id = var.kubernetes_policyset_id
  description          = "Assignment of the Kubernetes to subscription."
  display_name         = "Kubernetes custom Intiative test"
}