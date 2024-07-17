provider "google" {
  project = var.project_id
  region  = "northamerica-northeast1"
}

provider "google-beta" {
  project = var.project_id
  region  = "northamerica-northeast1"
}

module "base_env" {
  source = "../../modules/base_env"

  admins_group_email  = var.admins_group_email
  cloudbuild_sa_email = var.cloudbuild_sa_email
  #   TODO(Marcus): Change to tag deployment when having multiple environments
  is_approval_required = false
  is_tag_deployment    = false
  naming_convention = {
    environment_code = "p"
    prefix           = "mms"
    project          = "networking"
  }
  project_id     = var.project_id
  tfstate_bucket = var.tfstate_bucket
}