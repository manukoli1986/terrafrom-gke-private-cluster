
module "gke-k8s" {
  source       = "./clustergke/modules/"
  env          = var.env
  project_name = var.project_name
  region_name  = var.region_name
  min_node     = var.min_node
  max_node     = var.max_node
  node_machine_type = var.node_machine_type
}