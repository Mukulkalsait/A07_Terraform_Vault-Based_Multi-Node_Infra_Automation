terraform{
  required_providers {
    lxd {
      source  = "terrarform-lxd/lxc"
      version = ">= 1.7.0"
    }
  }
}

provider "lxd" {}
