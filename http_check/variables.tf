variable "api_base_url" {
  description = "Nodeping Api base url"
}

variable "api_token" {
  description = "Nodeping Api token"
}

variable "target" {
  description = "Target url to be checked"
}

variable "contact_id" {
  description = "Contact or contact group id at Nodeping."
}

variable "create" {
  type        = bool
  default     = true
  description = "A flag to allow user to create a dry-run or pass conditional vars"
}
