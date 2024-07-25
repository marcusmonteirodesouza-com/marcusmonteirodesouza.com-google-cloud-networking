module "global_address_private_service_access_naming" {
  source = "../../../modules/naming"

  description = "privsvccaccess"
  environment = var.environment
  resource    = "global-address"
}

resource "google_compute_global_address" "private_service_access_address" {
  name          = module.global_address_private_service_access_naming.name
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.shared.id
}

resource "google_service_networking_connection" "private_service_access" {
  network = google_compute_network.shared.id
  service = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [
    google_compute_global_address.private_service_access_address.name
  ]
}