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
      version = "~> 3.0"
    }

    authentik = {
      source  = "goauthentik/authentik"
      version = "2023.1.1"
    }

    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.41.0"
    }

    vault = {
        source = "hashicorp/vault"
        version = "3.18.0"
    }
  }
}

data "vault_generic_secret" "cloudflare" {
    path = "kv/external/cloudflare"
}

provider "cloudflare" {
  api_token = data.vault_generic_secret.cloudflare.data["api_token"]
}

module "cloudflare" {
  source = "./cloudflare/"
}

data "vault_generic_secret" "hcloud" {
    path = "kv/external/hetzner"
}

provider "hcloud" {
  token = data.vault_generic_secret.hcloud.data["api_token"]
}

module "hcloud" {
  source = "./hetzner/"
}

variable "hashicorp_vault_token" {}

provider "vault" {
    address = "https://vault.svc.behn.dev/"
    token = var.hashicorp_vault_token
}