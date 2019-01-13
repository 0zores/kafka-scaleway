resource "scaleway_server" "kafka_node" {
  count = 3
  name = "kafka-node${count.index}"
  image = "${lookup(var.SCALEWAY_IMAGE, var.SCALEWAY_REGION)}"
  type  = "START1-S"
  tags = [ "kafka-nodes", "kafka" ]
}

resource "scaleway_server" "kafka_tools" {
  name = "kafka-tools"
  image = "${lookup(var.SCALEWAY_IMAGE, var.SCALEWAY_REGION)}"
  type  = "START1-S"
  tags = [ "kafka-tools", "kafka" ]
}

resource "scaleway_ip" "kafka_tools_ip" {
  server = "${scaleway_server.kafka_tools.id}"
}

