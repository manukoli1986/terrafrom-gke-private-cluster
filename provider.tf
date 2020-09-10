provider "google" {
  credentials = file("config.json")
  project     = "	microservice-with-k8"
  region      = "europe-west1"
}