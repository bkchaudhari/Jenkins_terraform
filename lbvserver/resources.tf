resource "citrixadc_lbvserver" "terraformlb" {
  name        = "terraformLB1"
  ipv46       = var.vip_config["vip"]
  port        = "80"
  servicetype = "HTTP"
}

resource "citrixadc_servicegroup" "backend" {
  servicegroupname = "terraformBackend1"
  lbvservers       = [citrixadc_lbvserver.terraformlb.name]
  servicetype      = "HTTP"
  clttimeout       = var.backend_service_config["clttimeout"]
  servicegroupmembers = formatlist(
    "%s:%s",
    var.backend_services,
    var.backend_service_config["backend_port"],
  )
}

