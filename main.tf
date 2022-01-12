terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.33.0"
    }
  }
}

provider "azurerm" {

features {}
}

module "policy_assignments" {
  source = "./modules/policy-assignments"

  kubernetes_policyset_id = module.policyset_definitions.kubernetes_policyset_id

}


module "policyset_definitions" {
  source = "./modules/policyset-definitions"

}