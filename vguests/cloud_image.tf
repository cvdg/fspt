
resource "libvirt_cloudinit_disk" "cloud_init" {
  pool           = var.guest_pool
  count          = var.guest_count
  name           = format("cloud_init_%02d.iso", count.index + 1)
  user_data      = templatefile("${path.module}/templates/cloud_init.cfg",
  {
    hostname = format("deb%02d", count.index + 1),
    fqdn = format("deb%02d.kade3.home", count.index + 1)
  })
  network_config = templatefile("${path.module}/templates/network.cfg",
  {
    ip = 65 + count.index
  })
}
