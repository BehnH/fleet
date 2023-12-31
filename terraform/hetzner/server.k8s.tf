resource "hcloud_server" "k8s_master-1" {
  name        = "master-1"
  location    = "fsn1"
  server_type = "cax11"
  image       = "ubuntu-22.04"

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