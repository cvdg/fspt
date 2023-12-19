#
# Download Debian 12 (Bookworm) cloud-init image
#
resource "libvirt_volume" "master_image" {
  source = var.debian_cloud_image
  pool   = var.guest_pool
  name   = "debian-12-cloud-init.qcow2"
  format = "qcow2"
}

#
# Copy master image for each guest
#
resource "libvirt_volume" "guest_image" {
  pool           = var.guest_pool
  count          = var.guest_count
  name           = format("guest_%02d.qcow2", count.index + 1)
  base_volume_id = libvirt_volume.master_image.id
  size           = var.guest_disk_size
}

