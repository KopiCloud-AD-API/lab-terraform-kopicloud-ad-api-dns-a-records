#############################################
## KopiCloud AD API - Create DNS A Records ##
#############################################

# Create a DNS A Name
resource "random_string" "random" {
  length           = 4
  special          = false
}

# Create a IP Address
resource "random_integer" "ip1" {
  min = 2
  max = 254
}

resource "random_integer" "ip2" {
  min = 2
  max = 254
}

resource "random_integer" "ip3" {
  min = 2
  max = 254
}

resource "random_integer" "ip4" {
  min = 2
  max = 254
}

# Create a DNS A Record for a computer
resource "kopicloud_dns_a_record" "test_a" {
  hostname   = "labtest${random_string.random.result}"
  ip_address = "${random_integer.ip1.result}.${random_integer.ip2.result}.${random_integer.ip3.result}.${random_integer.ip4.result}"
  zone_name  = var.zone_name
}

# Output Created DNS A Record 
output "dns_a_record" {
  description = "Created DNS A Record"
  value       = resource.kopicloud_dns_a_record.test_a
}

output "dns_a_record_hostname" {
  description = "Hostname of Created DNS A Record"
  value       = resource.kopicloud_dns_a_record.test_a.hostname
}
