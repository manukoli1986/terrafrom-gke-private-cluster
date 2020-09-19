
output "vpc" {
    value = google_compute_network.k8-vpc.*
}

output "subnet" {
    value = google_compute_subnetwork.k8-private-ip-range.*
}