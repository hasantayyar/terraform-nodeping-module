resource "null_resource" "uptime_check" {
  provisioner "local-exec" {
    command = "sh ${path.module}/create.sh ${var.api_base_url} ${var.api_token} ${var.target} ${var.contact_id} ${var.warningdays} '${var.whois_server}'"
  }
}
