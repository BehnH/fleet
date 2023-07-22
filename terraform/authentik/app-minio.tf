resource "authentik_provider_oauth2" "oauth-provider_minio" {
  name               = "MinIO"
  authorization_flow = data.authentik_flow.default-authorization-flow.id

  client_id = "QeK4sLaowIn11fdmfPa6atsk2YW19ObOx4itVb0f"

  signing_key = "c30c6593-c9b3-46b3-a538-b8a8c3885367"
  redirect_uris = [
    "https://s3-console.behn.dev/oauth_callback"
  ]
}

resource "authentik_application" "oauth-app_minio" {
  name  = "MinIO"
  slug  = "minio"
  group = "Storage"

  meta_description = "MinIO is a High-Performance Object Storage application, designed with S3 API compatibility."
}