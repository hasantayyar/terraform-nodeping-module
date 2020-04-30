variable "api_base_url" {
  description = "Nodeping Api base url"
}

variable "api_token" {
  description = "Nodeping Api token"
}

variable "target" {
  description = "Target url to be checked"
}

variable "warningdays" {
  default     = 5
  description = "number of days before certificate expiration to fail the check and send a notification."
}

variable "whois_server" {
  default     = ""
  description = "The WHOIS server FQDN or IPv(4/6) to query"
}

variable "contact_id" {
  description = "Contact or contact group id at Nodeping."
}
