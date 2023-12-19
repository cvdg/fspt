terraform {
  required_version = ">= 1.5"
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = ">= 0.7"
    }
  }
}

provider "libvirt" {
  # uri = "qemu:///system"
  uri = "qemu+ssh://root@192.168.129.64/system"
}
