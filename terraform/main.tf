provider "google" {
  project = "cloud-observability-platform"
  region  = "europe-west2"
}

resource "google_container_cluster" "primary" {
  name     = "observability-cluster"
  location = "europe-west2-a"

  initial_node_count       = 1
  remove_default_node_pool = false

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 20
    disk_type    = "pd-standard"
  }
}
