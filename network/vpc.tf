
terraform {
  backend "gcs" {
    bucket  = "ros-k8s-tf-state"
    prefix  = "terraform/state"
    #For env wise we want to use below but varaible is not allowed terrafrom resouce
    # prefix  = "${var.env}-terraform/state"
  }
}


provider "google" {
  credentials = file("config.json")
  project     = var.project_name
  region      = var.region_name
}


module "vpc" {
    source = "./modules/"
    env = var.env
    project_name = var.project_name
    region_name = var.region_name
}