provider "google" {

  credentials = file("config.json")
  project     = var.project_name
  region      = "europe-west2"
  
}
