/*variable "policyset_definition_category" {
  type        = string
  description = "The category to use for all PolicySet defintions"
  default     = "Custom"
}

variable "custom_policies_kubernetes" {
  type        = list(map(string))
  description = "List of custom policy definitions for the Kubernetes policyset"
  default     = []
}

variable "builtin_policies_kubernetes" {
  type        = list
  description = "List of built-in policy definitions (display names) for the kubernetes policyset"
  default = [
    "Kubernetes cluster should not allow privileged containers",
    "Kubernetes cluster pod hostPath volumes should only use allowed host paths",
    "Kubernetes cluster pod FlexVolume volumes should only use allowed drivers",
    "Kubernetes cluster pods should only use allowed volume types",
    "Kubernetes cluster containers should run with a read only root file system",
  ]
}



data "azurerm_policy_definition" "builtin_policies_kubernetes" {
  count        = length(var.builtin_policies_kubernetes)
  display_name = var.builtin_policies_kubernetes[count.index]
}
*/
