terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

locals {
  hcloud_lb_addr = "142.132.244.5"
  cf_account_id = "8aa0bba414db7214fef94e8a726826b9"
}