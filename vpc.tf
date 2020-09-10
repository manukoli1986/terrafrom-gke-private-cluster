

#Creating VPC
resource "google_compute_network" "k8-vpc" {
  name                    = "${var.project_id}-myvpc"
  auto_create_subnetworks = false
  project                 = var.project_name
}


#Incase you want to create subnets in all regions then use "auto_create_subnetworks" as true in "google_compute_network" resource and if not then 
#add below resources.....

resource "google_compute_subnetwork" "k8-private-ip-range" {
  name          = "${var.project_id}-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region_name
  network       = google_compute_network.k8-vpc.id
  project       = var.project_name
}


#Creating Router to attach to Cloud NAT-GW
resource "google_compute_router" "k8-router" {
  name    = "${var.project_id}-router"
  region  = "europe-west2"
  project = var.project_name
  network = google_compute_network.k8-vpc.id
}

# Cloud Nat-GW attach to subnet
resource "google_compute_router_nat" "k8-nat" {
  name                               = "${var.project_id}-router-nat"
  router                             = google_compute_router.k8-router.name
  region                             = "europe-west2"
  project                            = "microservice-with-k8"
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

