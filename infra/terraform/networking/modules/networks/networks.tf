resource "google_compute_network" "shared" {
  name                            = "${local.naming_prefix}-vpc-shared-${var.naming_convention.suffix}"
  auto_create_subnetworks         = false
  delete_default_routes_on_create = true
}