
output "kubernetes_assignment_id" {
  value       = azurerm_policy_assignment.kubernetes.id
  description = "The policy assignment id for kubernetes"
}
