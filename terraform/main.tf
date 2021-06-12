terraform {
  required_providers {
    proxmox = {
      source = "danitso/proxmox"
    }
  }
}

provider "proxmox" {
  virtual_environment {}
}
