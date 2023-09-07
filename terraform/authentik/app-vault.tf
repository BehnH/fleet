resource "authentik_provider_oauth2" "oauth-provider_vault" {
  name                = "Hashicorp Vault"
  authentication_flow = data.authentik_flow.default-source-authentication.id
  authorization_flow  = data.authentik_flow.default-authorization-flow.id

  client_id   = "Aw4q3wXEYrFNSBgtna848pXwZKVIXODMFwTw7zyX"
  signing_key = "5fcfe879-a0e6-4365-8ac4-d742b59a95f9"

  redirect_uris = [
    "https://vault.svc.behn.dev/ui/vault/auth/oidc/oidc/callback",
    "https://vault.svc.behn.dev/oidc/callback",
    "http://localhost:8250/oidc/callback"
  ]

  property_mappings = [
    "29821f19-e935-42ca-8339-10b234af36c2",
    "92f365c4-36cd-4af0-81dc-fdaec134c49c",
    "fb30e55b-bfed-43a4-b2b3-d9108edb939b"
  ]

  access_token_validity = "minutes=30"
}

resource "authentik_application" "oauth-app_vault" {
  name  = "Hashicorp Vault"
  slug  = "vault"
  group = "Security"

  meta_description = "Vault secures, stores, and tightly controls access to tokens, passwords, certificates, API keys, and other secrets in modern computing."
  meta_icon        = "https://s3.behn.dev/public/authentik_images/vault.png"
  meta_publisher   = "Hashicorp"

  protocol_provider = authentik_provider_oauth2.oauth-provider_vault.id
}
