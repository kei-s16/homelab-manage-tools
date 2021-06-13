output "vm_mac_addresses" {
  value = [proxmox_vm_qemu.arch_vm.network.*.macaddr]
}
