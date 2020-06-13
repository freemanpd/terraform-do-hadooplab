provider "digitalocean" {
  token             = "${var.DIGITALOCEAN_ACCESS_TOKEN}"
  spaces_access_id  = "${var.SPACES_ACCESS_KEY_ID}"
  spaces_secret_key = "${var.SPACES_SECRET_ACCESS_KEY}"
}