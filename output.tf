
output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "region" {
  value       = var.region_name
  description = "region"
}


output "How to Access" {
    description = "choco install gcloudsdk && gcloud init && gcloud auth application-default login && kubectl get pods"
}