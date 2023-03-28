###########################################
## KopiCloud AD API - List DNS A Records ##
###########################################

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
output "OUPUT_dns_a_record_created" {
  description = "Created DNS A Record"
  value       = resource.kopicloud_dns_a_record.test_a
}

# Filter DNS A Records with an IP Address
data "kopicloud_dns_a_records_list" "test_a_ip" {
  depends_on = [kopicloud_dns_a_record.test_a]
  
  ip_address = "${random_integer.ip1.result}.${random_integer.ip2.result}.${random_integer.ip3.result}.${random_integer.ip4.result}"
}

# Returns all DNS A Records that matches the IP Address
output "OUTPUT_dns_a_records_list_ip_address" {
  description = "List existing DNS A Records filtered by IP Address"
  value       = data.kopicloud_dns_a_records_list.test_a_ip
}

