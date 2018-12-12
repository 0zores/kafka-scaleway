resource "scaleway_server" "kafka_server" {
  count = 3
  name = "kafka${count.index}"
  image = "aecaed73-51a5-4439-a127-6d8229847145"
  type  = "C2S"
  tags = "kafka"
}

resource "scaleway_ip" "kafka_ip" {
  server = "${scaleway_server.kafka_server.id}"
}