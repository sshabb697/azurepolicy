/*data "azurerm_subscription" "current" {


}
*/



variable "cust_scope" {
    default = "/subscriptions/d4665e52-c01b-4bdf-aa11-3da2eac23394/resourceGroups/cmcaks-paas-poc-rgp-001/providers/Microsoft.ContainerService/managedClusters/cmcpoc-aks-007"
}
variable "kubernetes_policyset_id" {
  type        = string
  description = "The policy set definition id for kubernetes"
}