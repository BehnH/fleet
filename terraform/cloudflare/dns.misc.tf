resource "cloudflare_record" "tfer--CNAME_r2-d2-002E-io_010c37ddd2dbe036714059b47f14e1f2" {
  name    = "www.r2-d2.io"
  proxied = "true"
  ttl     = "1"
  type    = "CNAME"
  value   = "r2-d2.io"
  zone_id = "c6806be9b42a80ee2c225bb51808030d"
}

resource "cloudflare_record" "tfer--CNAME_r2-d2-002E-io_1a117bcb6a7de5cfefc1788f62005a68" {
  name    = "fsdavhuvvnmrrzmlagzm7ph4pcp6qctm._domainkey.mail.r2-d2.io"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  value   = "fsdavhuvvnmrrzmlagzm7ph4pcp6qctm.dkim.amazonses.com"
  zone_id = "c6806be9b42a80ee2c225bb51808030d"
}

resource "cloudflare_record" "tfer--CNAME_r2-d2-002E-io_48ecf102d54f0c2bf52619213bd436c4" {
  name    = "r2-d2.io"
  proxied = "true"
  ttl     = "1"
  type    = "CNAME"
  value   = "e86e4a60-c01f-451e-ba13-b013f9895b36.cfargotunnel.com"
  zone_id = "c6806be9b42a80ee2c225bb51808030d"
}

resource "cloudflare_record" "tfer--CNAME_r2-d2-002E-io_5ec87a6182ed91ae493a485cafd4f3d2" {
  name    = "d6spct54tl2ft3n7kmk4ejqi4e3mmvzv._domainkey.mail.r2-d2.io"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  value   = "d6spct54tl2ft3n7kmk4ejqi4e3mmvzv.dkim.amazonses.com"
  zone_id = "c6806be9b42a80ee2c225bb51808030d"
}

resource "cloudflare_record" "tfer--CNAME_r2-d2-002E-io_c3058faede2da72e874df1ddbf60fac0" {
  name    = "mwg3maysmgtpzehfe65z4pqfcdqfoztx._domainkey.mail.r2-d2.io"
  proxied = "false"
  ttl     = "1"
  type    = "CNAME"
  value   = "mwg3maysmgtpzehfe65z4pqfcdqfoztx.dkim.amazonses.com"
  zone_id = "c6806be9b42a80ee2c225bb51808030d"
}

resource "cloudflare_record" "tfer--MX_forgetfully-002E-dev_0a3e6f136c3884fb9335e317a36ff7ed" {
  name     = "forgetfully.dev"
  priority = "89"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = "1bbff57af18b96d8674758b1e2c5940f"
}

resource "cloudflare_record" "tfer--MX_forgetfully-002E-dev_3d6e4e9efc3513fa4d6767002f73d992" {
  name     = "forgetfully.dev"
  priority = "7"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = "1bbff57af18b96d8674758b1e2c5940f"
}

resource "cloudflare_record" "tfer--MX_forgetfully-002E-dev_d054caa6e7bafcd3bca5b100f996bbca" {
  name     = "forgetfully.dev"
  priority = "43"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = "1bbff57af18b96d8674758b1e2c5940f"
}

resource "cloudflare_record" "tfer--MX_trapped-in-002E-space_1dcea786bf7605bbb240171d43e0de7c" {
  name     = "trapped-in.space"
  priority = "4"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route1.mx.cloudflare.net"
  zone_id  = "8d8f968680ce5096b4f0e20fba98826f"
}

resource "cloudflare_record" "tfer--MX_trapped-in-002E-space_9787c3ef9229e9782beb0c86c1f865ef" {
  name     = "trapped-in.space"
  priority = "63"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route3.mx.cloudflare.net"
  zone_id  = "8d8f968680ce5096b4f0e20fba98826f"
}

resource "cloudflare_record" "tfer--MX_trapped-in-002E-space_b010caafedb49aaea413b60e19de09fa" {
  name     = "trapped-in.space"
  priority = "34"
  proxied  = "false"
  ttl      = "1"
  type     = "MX"
  value    = "route2.mx.cloudflare.net"
  zone_id  = "8d8f968680ce5096b4f0e20fba98826f"
}

resource "cloudflare_record" "tfer--TXT_forgetfully-002E-dev_11667b03463fa8adfc26cd240de8bee0" {
  name    = "forgetfully.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = "1bbff57af18b96d8674758b1e2c5940f"
}

resource "cloudflare_record" "tfer--TXT_forgetfully-002E-dev_407be9625c00ce0071290c4aa4a7fce8" {
  name    = "_github-pages-challenge-waitrosedev.forgetfully.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "d0d39fc434412812e260a200eb9a57"
  zone_id = "1bbff57af18b96d8674758b1e2c5940f"
}

resource "cloudflare_record" "tfer--TXT_forgetfully-002E-dev_62032faea2c034dbbd554cbb372e8840" {
  name    = "forgetfully.dev"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "keybase-site-verification=IFcbYMGDg1DhN8m4RCems43Ex6X-DIMsR-aKqSsP61M"
  zone_id = "1bbff57af18b96d8674758b1e2c5940f"
}

resource "cloudflare_record" "tfer--TXT_trapped-in-002E-space_03d355621cc530ccbbc271202474d385" {
  name    = "trapped-in.space"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "keybase-site-verification=HvoVniUdU9QMaL-n4Euu3lYLIkLOyv6J1tJm8sixHo8"
  zone_id = "8d8f968680ce5096b4f0e20fba98826f"
}

resource "cloudflare_record" "tfer--TXT_trapped-in-002E-space_0f72ba2df2496a5367e965e696f61e39" {
  name    = "trapped-in.space"
  proxied = "false"
  ttl     = "1"
  type    = "TXT"
  value   = "v=spf1 include:_spf.mx.cloudflare.net ~all"
  zone_id = "8d8f968680ce5096b4f0e20fba98826f"
}
