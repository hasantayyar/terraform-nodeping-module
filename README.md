# terraform-nodeping-module

Terraform nodeping module to create WHOIS, SSL and HTTP checks

### Parameters

- `target` : HTTP, WHOIS, SSL -  Target url to check. WHOIS checks should take url without a protocol. 
- `contact_id` : HTTP, WHOIS, SSL - Contact or contact group id.
- `warningdays` : WHOIS, SSL - Number of days before certificate (or domain for WHOIS) expiration to fail the check and send a notification.
- `whois_server` : WHOIS - optional WHOIS server to use

```
module "http_check" {
  api_base_url  = ""
  api_token     = ""
  target        = "https://hasantayyar.net"
  contact_id    = "201903210109AEJEB-G-ZE48Z"
  source        = "git::git@github.com:hasantayyar/terraform-nodeping-module.git//http_check?ref=1.0.0"
}

module "ssl_check" {
  api_base_url  = ""
  api_token     = ""
  target        = "https://hasantayyar.net"
  contact_id    = "201903210109AEJEB-G-ZE48Z"
  warningdays   = 10
  source        = "git::git@github.com:hasantayyar/terraform-nodeping-module.git//ssl_check?ref=1.0.0"
}

module "whois_check" {
  api_base_url  = ""
  api_token     = ""
  target        = "hasantayyar.net"
  contact_id    = "201903210109AEJEB-G-ZE48Z"
  warningdays   = 10
  source        = "git::git@github.com:hasantayyar/terraform-nodeping-module.git//whois_check?ref=1.0.0"
}

/*
* Whois check with a specific whopis server
*/
module "whois_check2" {
  api_base_url  = ""
  api_token     = ""
  target        = "hasantayyar.net"
  contact_id    = "201903210109AEJEB-G-ZE48Z"
  warningdays   = 10
  whois_server  = " whois.google.com"
  source        = "git::git@github.com:hasantayyar/terraform-nodeping-module.git//whois_check?ref=1.0.0"
}
```
