resource "cloudflare_zone" "zone_behn-cc" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "behn.cc"
}

resource "cloudflare_zone" "zone_behn-dev" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "behn.dev"
}

resource "cloudflare_zone" "zone_forgetfully-dev" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "forgetfully.dev"
}

resource "cloudflare_zone" "zone_trapped-in-space" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "trapped-in.space"
}