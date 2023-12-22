resource "libvirt_domain" "domain" {
  count  = var.guest_count
  name   = format("deb%02d", count.index + 1)
  memory = var.guest_memory
  vcpu   = var.guest_cpus
  # machine = "pc-q35-5.2"
  qemu_agent = true

  disk {
    volume_id = libvirt_volume.guest_image[count.index].id
  }

  network_interface {
    network_name   = "nwbridge"
    wait_for_lease = true
  }

  cloudinit = libvirt_cloudinit_disk.cloud_init[count.index].id
  # IMPORTANT
  # Ubuntu can hang is a isa-serial is not present at boot time.
  # If you find your CPU 100% and never is available this is why
  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = "true"
  }
}
