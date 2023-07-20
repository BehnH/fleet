resource "cloudflare_record" "tfer--A_bento-bot-002E-com_5b74ceba38c0c02a7fefc6089f37b985" {
  name    = "bento-bot.com"
  proxied = "false"
  ttl     = "1"
  type    = "A"
  value   = "76.76.21.21"
  zone_id = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--CNAME_bento-bot-002E-com_3bd64d4d64912051f1477a82f34d6bc8" {
  name    = "www.bento-bot.com"
  proxied = "true"
  ttl     = "1"
  type    = "CNAME"
  value   = "cname.vercel-dns.com"
  zone_id = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--CNAME_bento-bot-002E-com_8dc66b74aa8235290f80df73fa59092b" {
  name    = "docs.bento-bot.com"
  proxied = "true"
  ttl     = "1"
  type    = "CNAME"
  value   = "bentodevs.github.io"
  zone_id = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--MX_bento-bot-002E-com_2db81dc5f87d0f3e8e3f8dd6c8bfc7ec" {
  name     = "bento-bot.com"
  priority = "10"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--MX_bento-bot-002E-com_3d4c720ab387c3bc969204101d51d5f3" {
  name     = "bento-bot.com"
  priority = "57"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--MX_bento-bot-002E-com_a1f2f0f523b3b87315f8e323b56429a3" {
  name     = "bento-bot.com"
  priority = "87"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--TXT_bento-bot-002E-com_12acc30d017b7b797b79c7d5702754b8" {
  name    = "*._domainkey.bento-bot.com"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "v=DKIM1; p="
  zone_id = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--TXT_bento-bot-002E-com_290584a8906aadb0517452669f83e042" {
  name    = "_dmarc.bento-bot.com"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  zone_id = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}

resource "cloudflare_record" "tfer--TXT_bento-bot-002E-com_38fe2c5c01d49ddac3503f2d3da1e7a0" {
  name    = "bento-bot.com"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = "d5c193759b8b27ccfb7ebbadf1ec7c08"
}