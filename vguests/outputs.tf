output "ips" {
  value = (zipmap(
    libvirt_domain.domain.*.name,
  libvirt_domain.domain.*.network_interface.0.addresses))
}

output "password" {
  value     = random_string.password.result
  sensitive = true
}
