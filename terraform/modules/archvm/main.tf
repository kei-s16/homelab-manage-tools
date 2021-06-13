terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.7.1"
    }
  }
}

provider "proxmox" {
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "arch_vm" {
  name = var.vm_name
  vmid = var.vm_id

  onboot = false
  boot = "c"
  bios = "ovmf"

  target_node = "pmox01"

  clone = "base" # ArchLinux base VM
  full_clone = true

  disk {
    size            = "32G"
    type            = "iscsi"
    storage         = "VMStorage01"
  }

  network {
    model           = "virtio"
    bridge          = "vmbr1"
  }

  lifecycle {
    ignore_changes = [
      nameserver,
      searchdomain,
      ssh_host,
      network,
      disk,
      ssh_port,
      qemu_os,
      ipconfig0,
      network,
    ]
  }
}
