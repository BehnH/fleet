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
      version = "2023.6.0"
    }

    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.41.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.18.0"
    }
  }
}

variable "hashicorp_vault_token" {}

data "vault_generic_secret" "authentik" {
  path = "kv/external/authentik"
}

data "vault_generic_secret" "cloudflare" {
  path = "kv/external/cloudflare"
}

data "vault_generic_secret" "hcloud" {
  path = "kv/external/hetzner"
}

provider "authentik" {
  token = data.vault_generic_secret.authentik.data["api_token"]
  url   = "https://id.behn.dev"
}

provider "cloudflare" {
  api_token = data.vault_generic_secret.cloudflare.data["api_token"]
}

provider "hcloud" {
  token = data.vault_generic_secret.hcloud.data["api_token"]
}

provider "vault" {
  address = "https://vault.svc.behn.dev/"
  token   = var.hashicorp_vault_token
}

module "authentik" {
  source = "./authentik/"
}

module "cloudflare" {
  source = "./cloudflare/"
}

module "hcloud" {
  source = "./hetzner/"
}