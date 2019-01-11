resource "scaleway_server" "kafka_server" {
  count = 3
  name = "kafka${count.index}"
  image = "${lookup(var.SCALEWAY_IMAGE, var.SCALEWAY_REGION)}"
  type  = "START1-S"
  tags = [ "kafka" ]
}

resource "scaleway_ip" "kafka_ip" {
  server = "${scaleway_server.kafka_server.id}"
}

resource "scaleway_volume" "kafka_volume" {
  name       = "kafka_vol"
  size_in_gb = 50
  type       = "l_ssd"
}

resource "scaleway_volume_attachment" "kafka_vattach" {
  server = "${scaleway_server.kafka_server.id}"
  volume = "${scaleway_volume.kafka_volume.id}"
}
