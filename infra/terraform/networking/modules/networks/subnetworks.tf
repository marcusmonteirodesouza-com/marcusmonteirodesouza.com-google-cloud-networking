resource "google_compute_subnetwork" "shared_us_central1_default" {
  name                     = "${local.naming_prefix}-subnet-us-ct1-default-${var.naming_convention.suffix}"
  ip_cidr_range            = "10.128.0.0/20"
  region                   = "us-central1"
  network                  = google_compute_network.shared.name
  private_ip_google_access = true

  log_config {
    filter_expr = "true"
  }
}

resource "google_compute_subnetwork" "shared_northamerica_northeast1_default" {
  name                     = "${local.naming_prefix}-subnet-na-ne1-default-${var.naming_convention.suffix}"
  ip_cidr_range            = "10.162.0.0/20"
  region                   = "northamerica-northeast1"
  network                  = google_compute_network.shared.name
  private_ip_google_access = true

  log_config {
    filter_expr = "true"
  }
}