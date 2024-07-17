resource "google_compute_global_address" "private_service_access_address" {
  name          = "${local.naming_prefix}-glbaddr-privsvccaccess-${var.naming_convention.suffix}"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.shared.id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network = google_compute_network.shared.id
  service = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [
    google_compute_global_address.private_service_access_address.name
  ]
}