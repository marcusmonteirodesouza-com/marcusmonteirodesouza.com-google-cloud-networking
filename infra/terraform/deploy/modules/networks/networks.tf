module "network_shared_naming" {
  source = "../../../modules/naming"

  description = "shared"
  environment = var.environment
  resource    = "network"
}

resource "google_compute_network" "shared" {
  name                            = module.network_shared_naming.name
  auto_create_subnetworks         = false
  delete_default_routes_on_create = true
}