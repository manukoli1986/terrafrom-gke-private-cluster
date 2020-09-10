
resource "google_container_node_pool" "mynodepool" {
  name       = "${var.project_id}-node-pool"
  location   = var.zone_name
  cluster    = google_container_cluster.primary.name
  project    = var.project_name
  node_count = 1
  node_config {
    machine_type = "e2-medium"
  }
  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }

  timeouts {
    create = "30m"
    update = "20m"
  }
}

resource "google_container_cluster" "primary" {
  name                     = "k8-${var.project_id}-gke"
  location                 = var.zone_name
  project                  = var.project_name
  network                  = google_compute_network.k8-vpc.name
  subnetwork               = google_compute_subnetwork.k8-private-ip-range.name
  remove_default_node_pool = true
  initial_node_count       = 1
  master_auth {
    username = ""
    password = ""
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}