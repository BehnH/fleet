resource "hcloud_server" "k8s_master-1" {
  name        = "master-1"
  location    = "fsn1"
  server_type = "cax11"
  image       = "ubuntu-22.04"

  labels = {
    "k8s-type" = "master"
  }
}

resource "hcloud_server" "k8s_master-2" {
  name        = "master-2"
  location    = "fsn1"
  server_type = "cax11"
  image       = "ubuntu-22.04"

  firewall_ids = [
    local.k8s_master_fw_id,
    local.k8s_worker_fw_id
  ]

  network {
    network_id = local.k8s_network_id
  }

  ssh_keys = [
    data.hcloud_ssh_key.personal_ssh_key.id
  ]

  labels = {
    "k8s-type" = "master"
  }
}

resource "hcloud_server" "k8s_worker-1" {
  name        = "worker-1"
  location    = "fsn1"
  server_type = "cax21"
  image       = "ubuntu-22.04"

  labels = {
    "k8s-type" = "worker"
  }
}

resource "hcloud_server" "k8s_worker-2" {
  name        = "worker-2"
  location    = "fsn1"
  server_type = "cax21"
  image       = "ubuntu-22.04"

  labels = {
    "k8s-type" = "worker"
  }
}

resource "hcloud_server" "k8s_worker-3" {
  name        = "worker-3"
  location    = "fsn1"
  server_type = "cax21"
  image       = "ubuntu-22.04"

  labels = {
    "k8s-type" = "worker"
  }
}