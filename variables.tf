
# variable "project_name" {
#   default = "microservice-with-k8"
# }

# variable "project_id" {
#   default = "mycluster"
# }


# variable "region_name" {
#   default = "europe-west2"
# }

# variable "zone_name" {
#   default = "europe-west2-a"
# }

########
variable "env" {
  type    = string
  default = ""
}

variable "region_name" {
  type    = string
  default = "europe-west2"
}

variable "project_name" {
  type    = string
  default = ""
}

variable "min_node" {
  type    = number
}

variable "max_node" {
  type    = number
}

variable "node_machine_type" {
  type    = string
  default = ""
}


