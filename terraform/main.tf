terraform{
  required_providers {
    lxd =  {
      source  = "terraform-lxd/lxd"
      version = ">= 1.7.0"
    }
  }
}

provider "lxd" {
  accept_remote_certificate = true

; each remote = 1 host
  remote{
    name = "ubuntu-server"
    address = "https://192.168.1.2:8443"
    default = true
    token = var.ubuntu_lxd_token
  }

  remote{
    name = "zorin-host"
    address = "https://192.168.1.3:8443"
    token = var.zorin_lxc_token
  }

  
}
