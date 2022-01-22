/*data "azurerm_subscription" "current" {


}
*/



variable "cust_scope" {
    default = "/subscriptions/0c243b9b-004d-47b8-a72c-41cedf82ed47/resourcegroups/aks_terraform_rg/providers/Microsoft.ContainerService/managedClusters/terraform-aks"
}
variable "kubernetes_policyset_id" {
  type        = string
  description = "The policy set definition id for kubernetes"
}
