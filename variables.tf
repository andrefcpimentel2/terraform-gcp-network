variable "gcp_project" {
  description = "GCP project name"
}

variable "gcp_region" {
 description = "GCP region"
 default = "europe-west3"
}

variable "cust_name" {
  description = "Customer name"
  default = "demo"
}

variable "vpc_cidr_block" {
  description = "The top-level CIDR block for the VPC."
  default = "10.1.0.0/16"
}