provider "scaleway" {
  organization = "${var.SCALEWAY_ORGID}"
  token        = "${var.SCALEWAY_TOKEN}"
  region       = "${var.SCALEWAY_REGION}"
}