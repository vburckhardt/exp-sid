
provider "ibm" {
  region           = "eu-gb"
}

terraform {
  required_version = ">=1.3.0"
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.51.0"
    }
  }
}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id   = "osco-exp"
  admin = true
}