vip_config = {
  vip = "10.10.10.110"
}

backend_service_config = {
  clttimeout   = 40
  backend_port = 8080
}

backend_services = [
  "172.33.50.112",
  "172.33.50.113",
]
