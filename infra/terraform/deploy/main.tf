locals {
  naming_convention = {
    environment_code = var.naming_convention_environment_code
    prefix           = var.naming_convention_prefix
    suffix           = var.naming_convention_suffix
    project          = var.naming_convention_project
  }
}

provider "google" {
  project = var.project_id
  region  = "northamerica-northeast1"
}

provider "google-beta" {
  project = var.project_id
  region  = "northamerica-northeast1"
}

module "networks" {
  source = "./modules/networks"

  naming_convention = local.naming_convention
}