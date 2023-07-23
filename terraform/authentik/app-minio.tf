resource "authentik_provider_oauth2" "oauth-provider_minio" {
  name               = "MinIO"
  authorization_flow = data.authentik_flow.default-authorization-flow.id

  client_id = "QeK4sLaowIn11fdmfPa6atsk2YW19ObOx4itVb0f"

  signing_key = "c30c6593-c9b3-46b3-a538-b8a8c3885367"
  redirect_uris = [
    "https://s3-console.behn.dev/oauth_callback"
  ]

  property_mappings = [
    "29821f19-e935-42ca-8339-10b234af36c2",
    "a430abec-cb70-462f-84d7-4bcd569fda5e",
    "92f365c4-36cd-4af0-81dc-fdaec134c49c",
    "fb30e55b-bfed-43a4-b2b3-d9108edb939b"
  ]

  access_token_validity = "minutes=30"
}

resource "authentik_application" "oauth-app_minio" {
  name  = "MinIO"
  slug  = "minio"
  group = "Storage"

  meta_description = "MinIO is a High-Performance Object Storage application, designed with S3 API compatibility."
  meta_icon        = "https://s3.behn.dev/public/authentik_images/MINIO_Bird.png"
  meta_publisher   = "MinIO"

  protocol_provider = authentik_provider_oauth2.oauth-provider_minio.id
}