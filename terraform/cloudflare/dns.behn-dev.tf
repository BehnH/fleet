resource "cloudflare_record" "A_behn-002E-dev_languagetool" {
  name    = "languagetool.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = "212.71.236.56"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_hashicorp_vault" {
  name    = "vault.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = "212.71.236.56"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_n8n" {
  name    = "flow.svc.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = "212.71.236.56"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_spotify-dash" {
  name    = "spotify.svc.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = "212.71.236.56"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_crt" {
  name    = "crt.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = "212.71.236.56"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_k8s-svc-behn-dev_hetzner" {
  name = "hetzner.k8s.svc.behn.dev"
  proxied = false
  ttl = "1"
  type = "A"
  value = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_grafana" {
  name    = "grafana.infra.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_idp" {
  name    = "id.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_svc-behn-dev_vault" {
  name    = "vault.svc.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_authentik" {
  name = "id.hetzner.k8s.behn.dev"
  proxied = false
  ttl = "1"
  type = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_s3" {
  name = "s3.hetzner.k8s.behn.dev"
  proxied = false
  ttl = "1"
  type = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_s3-console" {
  name = "s3-console.hetzner.k8s.behn.dev"
  proxied = false
  ttl = "1"
  type = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_kiali" {
  name = "kiali.hetzner.k8s.behn.dev"
  proxied = false
  ttl = "1"
  type = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_s3" {
  name    = "s3.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_s3-console" {
  name    = "s3-console.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_vpn" {
  name    = "vpn.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  value   = var.cluster_ip_address
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_behn-dev_root" {
  name    = "behn.dev"
  proxied = "true"
  ttl     = "1"
  type    = "CNAME"
  value   = "portfolio-b8w.pages.dev"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_behn-dev_www" {
  name    = "www.behn.dev"
  proxied = "true"
  ttl     = "1"
  type    = "CNAME"
  value   = "portfolio-b8w.pages.dev"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_services-behn-dev_aws-dkim-01" {
  name    = "5ifrbdbautxpo2qdbwzfni3debqn76of._domainkey.services.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  value   = "5ifrbdbautxpo2qdbwzfni3debqn76of.dkim.amazonses.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_services-behn-dev_aws-dkim-02" {
  name    = "hbw5cs4ti2vtx44cygnxjoxc4oi2ckld._domainkey.services.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  value   = "hbw5cs4ti2vtx44cygnxjoxc4oi2ckld.dkim.amazonses.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_services-behn-dev_aws-dkim-03" {
  name    = "oyucqrqdggsaahkqdd4b2mexrplhmssm._domainkey.services.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  value   = "oyucqrqdggsaahkqdd4b2mexrplhmssm.dkim.amazonses.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "TXT_behn-0023-dev_google-site-verification" {
  name    = "behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "google-site-verification=a5ia9VZ2q3rRxwVChlN07Aa8ssuXjNutsa737MxlmJc"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "TXT_behn-dev_keybase-verification" {
  name    = "behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "keybase-site-verification=iLIJ7fiVMBmiPOZ0JTb07W6DS8RC26OcCBsJtJrJk5E"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "TXT_behn-dev_bluesky-handle" {
  name    = "_atproto.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "did=did:plc:23k5nzcdjszudgk6sk5dtdxn"
  zone_id = cloudflare_zone.zone_behn-dev.id
}
