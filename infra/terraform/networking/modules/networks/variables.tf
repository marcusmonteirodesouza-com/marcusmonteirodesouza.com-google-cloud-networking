variable "naming_convention" {
  type = object({
    environment_code = string
    prefix           = string
    suffix           = string
    project          = string
  })
  description = "Resource naming convention."
}