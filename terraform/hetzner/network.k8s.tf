resource "hcloud_network" "kubernetes_network" {
  name     = "kubernetes"
  ip_range = "10.98.0.0/16"

  expose_routes_to_vswitch = false
}

resource "hcloud_firewall" "kubernetes_general_firewall" {
  name = "firewall-kubernetes-master"

  rule {
    description = "Allow all IPs in to kube management"
    direction   = "in"
    port        = "6443"
    protocol    = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}

resource "hcloud_firewall" "kubernetes_worker_firewall" {
  name = "firewall-kubernetes"

  rule {
    description = "Allow all IPs in to kube management"
    direction   = "in"
    port        = "6443"
    protocol    = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    description = "Allow Inbound ICMP "
    direction   = "in"
    protocol    = "icmp"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    description = "Allow Inbound SSH"
    direction   = "in"
    port        = "22"
    protocol    = "tcp"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    description = "Allow all ICMP Outbound"
    direction   = "out"
    protocol    = "icmp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    description = "Allow all ICMP Outbound"
    direction   = "out"
    protocol    = "icmp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    description = "Allow all TCP Outbound"
    direction   = "out"
    port        = "any"
    protocol    = "tcp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    description = "Allow all UDP Outbound"
    direction   = "out"
    port        = "any"
    protocol    = "udp"
    destination_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}