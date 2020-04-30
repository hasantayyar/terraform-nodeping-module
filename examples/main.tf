module "http_check" {
  api_base_url  = ""
  api_token     = ""
  target        = "https://hasantayyar.net"
  contact_id    = "201804161909EEEY-G-ABCD"
  source        = "../http_check"
}

module "ssl_check" {
  api_base_url  = ""
  api_token     = ""
  target      = "https://hasantayyar.net"
  contact_id  = "201804161909EEEY-G-ABCD"
  warningdays = 10
  source      = "../ssl_check"
}

module "whois_check" {
  api_base_url  = ""
  api_token     = ""
  target        = "hasantayyar.net"
  contact_id    = "201804161909EEEY-G-ABCD"
  warningdays   = 10
  source        = "../whois_check"
}

module "whois_check2" {
  api_base_url  = ""
  api_token     = ""
  target        = "hasantayyar.net"
  contact_id    = "201804161909EEEY-G-ABCD"
  warningdays   = 10
  whois_server  = " whois.google.com"
  source        = "../whois_check"
}
