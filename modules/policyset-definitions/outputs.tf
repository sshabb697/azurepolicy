
output "kubernetes_policyset_id" {
  value       = data.azurerm_policy_set_definition.kubernetes.id
  description = "The policy set definition id for kubernetes"
}

