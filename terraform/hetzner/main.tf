terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.48.0"
    }
  }
}

locals {
  k8s_master_fw_id = "963602"
  k8s_worker_fw_id = "963599"
  k8s_network_id   = "3048210"
}

data "hcloud_ssh_key" "personal_ssh_key" {
  id = "12140287"
}