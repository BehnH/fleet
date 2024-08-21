resource "cloudflare_record" "A_ext-behn-dev_vpn" {
  name    = "vpn.ext.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = "65.21.246.236"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_k8s-behn-dev_hetzner" {
  name    = "hetzner.k8s.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = "49.12.17.239"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_languagetool" {
  name    = "languagetool.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_svc-behn-dev_registry-proxy" {
  name    = "registry-proxy.svc.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_alertmanager" {
  name    = "alertmanager.infra.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_grafana" {
  name    = "grafana.infra.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_mimir" {
  name    = "mimir.infra.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_prometheus" {
  name    = "prometheus.infra.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_idp" {
  name    = "id.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_svc-behn-dev_vault" {
  name    = "vault.svc.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_authentik" {
  name    = "id.hetzner.k8s.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_s3" {
  name    = "s3.hetzner.k8s.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_s3-console" {
  name    = "s3-console.hetzner.k8s.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_hetzner-k8s-svc-behn-dev_kiali" {
  name    = "kiali.hetzner.k8s.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_s3" {
  name    = "s3.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_s3-console" {
  name    = "s3-console.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_vpn" {
  name    = "vpn.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_infra-behn-dev_loki" {
  name    = "loki.infra.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "A_behn-dev_listen" {
  name    = "listen.behn.dev"
  proxied = false
  ttl     = "1"
  type    = "A"
  content = local.hcloud_lb_addr
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_behn-dev_root" {
  name    = "behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  content = "cname.vercel-dns.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_behn-dev_www" {
  name    = "www.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  content = "cname.vercel-dns.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_services-behn-dev_aws-dkim-01" {
  name    = "5ifrbdbautxpo2qdbwzfni3debqn76of._domainkey.services.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  content = "5ifrbdbautxpo2qdbwzfni3debqn76of.dkim.amazonses.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_services-behn-dev_aws-dkim-02" {
  name    = "hbw5cs4ti2vtx44cygnxjoxc4oi2ckld._domainkey.services.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  content = "hbw5cs4ti2vtx44cygnxjoxc4oi2ckld.dkim.amazonses.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "CNAME_services-behn-dev_aws-dkim-03" {
  name    = "oyucqrqdggsaahkqdd4b2mexrplhmssm._domainkey.services.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  content = "oyucqrqdggsaahkqdd4b2mexrplhmssm.dkim.amazonses.com"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "TXT_behn-dev_google-site-verification" {
  name    = "behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  content = "google-site-verification=0LOVOt5rZdmxVZ99XztErJbrejNFxWl-z2tx1hdMb-Y"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "TXT_behn-dev_keybase-verification" {
  name    = "behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  content = "keybase-site-verification=iLIJ7fiVMBmiPOZ0JTb07W6DS8RC26OcCBsJtJrJk5E"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "TXT_behn-dev_bluesky-handle" {
  name    = "_atproto.behn.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  content = "did=did:plc:23k5nzcdjszudgk6sk5dtdxn"
  zone_id = cloudflare_zone.zone_behn-dev.id
}

resource "cloudflare_record" "TXT_behn-dev_discord-dv" {
  name    = "_discord.behn.dev."
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  content = "dh=32d8d942ab681f9a49deabcf724af9e32caea364"
  zone_id = cloudflare_zone.zone_behn-dev.id
}
