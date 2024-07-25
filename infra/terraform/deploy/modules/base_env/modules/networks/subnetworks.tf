module "subnetwork_shared_us_central1_default_naming" {
  source = "../../../../../modules/naming"

  description = "default"
  environment = var.environment
  location    = "us-central1"
  resource    = "subnetwork"
}

resource "google_compute_subnetwork" "shared_us_central1_default" {
  name                     = module.subnetwork_shared_us_central1_default_naming.name
  ip_cidr_range            = "10.128.0.0/20"
  region                   = "us-central1"
  network                  = google_compute_network.shared.name
  private_ip_google_access = true

  log_config {
    filter_expr = "true"
  }
}

module "subnetwork_shared_northamerica_northeast1_default_naming" {
  source = "../../../../../modules/naming"

  description = "default"
  environment = var.environment
  location    = "northamerica-northeast1"
  resource    = "subnetwork"
}

resource "google_compute_subnetwork" "shared_northamerica_northeast1_default" {
  name                     = module.subnetwork_shared_northamerica_northeast1_default_naming.name
  ip_cidr_range            = "10.162.0.0/20"
  region                   = "northamerica-northeast1"
  network                  = google_compute_network.shared.name
  private_ip_google_access = true

  log_config {
    filter_expr = "true"
  }
}