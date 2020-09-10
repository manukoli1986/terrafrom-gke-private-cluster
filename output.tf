
output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "region" {
  value       = var.region_name
  description = "region"
}

output "access_cluster" {
  value       = google_container_cluster.primary.name
  description = "gcloud container clusters get-credentials <cluster-name> --zone europe-west2-a --project microservice-with-k8"
}