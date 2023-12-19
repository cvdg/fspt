variable "debian_cloud_image" {
  default     = "https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-generic-amd64.qcow2"
  description = "URL Debian 12 (Bookworm) cloud-init image"
  type        = string
}

variable "guest_pool" {
  default     = "qcow2"
  description = "Default pool for images"
  type        = string
}

variable "guest_count" {
  default     = 2
  description = "number of guests"
  type        = number
}

variable "guest_disk_size" {
  default     = 32 * 1024 * 1024 * 1024
  description = "Disk size in bytes"
  type        = number
}

variable "guest_cpus" {
  default     = 2
  description = "Number of cpus"
  type        = number
}

variable "guest_memory" {
  default     = 2 * 1024
  description = "Memory in MiB"
  type        = number
}
