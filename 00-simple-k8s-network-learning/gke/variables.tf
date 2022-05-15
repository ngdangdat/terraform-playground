variable "gke_cluster_name" {
  type    = string
  default = "gke-cluster"
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}

variable "zone" {
  type    = string
  default = "asia-southeast1-a"
}

variable "project_id" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "ip_secondary_pods_range" {
  type = string
}

variable "ip_secondary_services_range" {
  type = string
}
