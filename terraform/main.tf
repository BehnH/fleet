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
      version = "2024.4.2"
    }

    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.48.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.4.0"
    }
  }
}

data "vault_generic_secret" "authentik" {
  path = "kv/external/authentik"
}

data "vault_generic_secret" "cloudflare" {
  path = "kv/external/cloudflare"
}

data "vault_kv_secret_v2" "hcloud" {
  mount = "kv"
  name = "external/hetzner"
}

provider "authentik" {
  token = data.vault_generic_secret.authentik.data["api_token"]
  url   = "https://id.behn.dev"
}

provider "cloudflare" {
  api_token = data.vault_generic_secret.cloudflare.data["api_token"]
}

provider "hcloud" {
  token = data.vault_kv_secret_v2.hcloud.data["api_token"]
}

variable "vault_role_id" {}
variable "vault_secret_id" {}

provider "vault" {
  address = "https://vault.svc.behn.dev/"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"
    parameters = {
      role_id   = var.vault_role_id
      secret_id = var.vault_secret_id
    }
  }
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