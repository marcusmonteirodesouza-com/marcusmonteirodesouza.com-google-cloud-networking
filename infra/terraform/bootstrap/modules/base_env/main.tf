locals {
  naming_convention = {
    environment_code = var.naming_convention.environment_code
    prefix           = var.naming_convention.prefix
    suffix           = random_id.naming_suffix.hex
    project          = var.naming_convention.project
  }
}

resource "random_id" "naming_suffix" {
  byte_length = 2
}

module "cloudbuild" {
  source = "./modules/cloudbuild"

  admins_group_email   = var.admins_group_email
  cloudbuild_sa_email  = var.cloudbuild_sa_email
  github_repo_name     = var.github_repo_name
  github_repo_owner    = var.github_repo_owner
  github_tag           = var.github_tag
  is_approval_required = var.is_approval_required
  is_tag_deployment    = var.is_tag_deployment
  naming_convention    = local.naming_convention
  project_id           = var.project_id
  tfstate_bucket       = var.tfstate_bucket
}

