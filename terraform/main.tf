terraform{
  required_providers {
    lxd =  {
      source  = "terraform-lxd/lxc"
      version = ">= 1.7.0"
    }
  }
}

provider "lxd" {}
