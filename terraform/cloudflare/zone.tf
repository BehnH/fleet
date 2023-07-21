resource "cloudflare_zone" "zone_agoodti-me" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "agoodti.me"
}

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

resource "cloudflare_zone" "zone_bento-bot-com" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "bento-bot.com"
}

resource "cloudflare_zone" "zone_forgetfully-dev" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "forgetfully.dev"
}

resource "cloudflare_zone" "zone_r2-d2-io" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "r2-d2.io"
}

resource "cloudflare_zone" "zone_trapped-in-space" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "trapped-in.space"
}

resource "cloudflare_zone" "zone_f1-boats" {
  account_id = local.cf_account_id
  paused     = "false"
  plan       = "free"
  type       = "full"
  zone       = "f1.boats"
}