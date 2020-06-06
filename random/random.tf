resource "random_id" "server" {
  keepers = {
    ami_id = "${var.ami_id}"
  }

  byte_length = 16 
}

output "out_val_1" {
   value = random_id.server.dec
}
