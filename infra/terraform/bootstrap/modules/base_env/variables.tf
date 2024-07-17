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

variable "github_repo_owner" {
  type        = string
  description = "Github repository owner."
  default     = "marcusmonteirodesouza-com"
}

variable "github_repo_name" {
  type        = string
  description = "Github repository name."
  default     = "marcusmonteirodesouza.com-google-cloud-networking"
}

variable "github_tag" {
  type        = string
  description = "Github repository commit tag."
  default     = ""
}

variable "is_approval_required" {
  type        = bool
  description = "Is approval required."
}

variable "is_tag_deployment" {
  type        = bool
  description = "Is tag deployment."
}

variable "naming_convention" {
  type = object({
    environment_code = string
    prefix           = string
    project          = string
  })
  description = "Resource naming convention."
}

variable "project_id" {
  type        = string
  description = "The project ID."
  sensitive   = true
}

variable "tfstate_bucket" {
  type        = string
  description = "Terraform state GCS backend bucket name."
  sensitive   = true
}