terraform {
  backend "remote" {
    organization = "behnh"
    hostname     = "app.terraform.io"

    workspaces {
      name = "infrastructure"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }

    authentik = {
      source  = "goauthentik/authentik"
      version = "2023.1.1"
    }

    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.41.0"
    }
  }
}

variable "cloudflare_api_token" {}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

module "cloudflare" {
  source = "./cloudflare/"
}