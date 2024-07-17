variable "admins_group_email" {
  type        = string
  description = "Admins Google Cloud group email."
  sensitive   = true
}

variable "cloudbuild_sa_email" {
  type        = string
  description = "Cloud Build service account email."
  sensitive   = true
}

variable "project_id" {
  type        = string
  description = "The project ID."
}

variable "tfstate_bucket" {
  type        = string
  description = "Terraform state GCS backend bucket name."
  sensitive   = true
}