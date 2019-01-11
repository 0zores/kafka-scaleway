variable "SCALEWAY_TOKEN" {}
variable "SCALEWAY_ORGID" {}
variable "SCALEWAY_REGION" {
    default = "par1"
}

variable "SCALEWAY_IMAGE" {
  type = "map"
  default = {
    par1 = "37832f54-c18f-4338-a552-113e4302a236"
    ams1 = "e338d2ea-262d-45a1-95d2-300adce63cdd"
  }
}