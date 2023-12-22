resource "random_string" "password" {
  length      = 8
  min_lower   = 2
  min_upper   = 2
  min_numeric = 2
  special     = false
}
