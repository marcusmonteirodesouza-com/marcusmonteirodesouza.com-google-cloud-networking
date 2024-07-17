terraform {
  backend "gcs" {
    prefix       = "networking"
    lock_timeout = "60m"
  }
}