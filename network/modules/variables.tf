

variable "project_name" {
    type = string
    default = ""
}

variable "env" {
    type = string
    default = "dev"
}

variable "cidr_range" {
    type = string
    default = "10.0.0.0/16"
}

variable "region_name" {
    type = string
    default = "europe-west2"
}