resource "null_resource" "uptime_check" {
  count = var.create ? 1 : 0
  provisioner "local-exec" {
    command = "sh ${path.module}/create.sh ${var.api_base_url} ${var.api_token} ${var.target} ${var.contact_id}"
  }
}
