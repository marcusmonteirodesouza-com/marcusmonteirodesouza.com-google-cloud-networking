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

  environment = "production"
  project_id  = var.project_id
}