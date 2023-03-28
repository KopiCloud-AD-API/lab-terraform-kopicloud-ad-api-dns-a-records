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

# Filter DNS A Records with a Hostname
data "kopicloud_dns_a_records_list" "test" {
  depends_on = [kopicloud_dns_a_record.test_a]

  hostname = "labtest${random_string.random.result}"
}

# Returns all DNS A Records that matches the Hostname
output "dns_a_records_list_hostname" {
  description = "List Existing DNS A Records"
  value       = data.kopicloud_dns_a_records_list.test
}

# Returns the IP Address of the 1st DNS A Record
output "dns_a_records_list_hostname_record_1_ip_address" {
  description = "Show the IP Address of the 1st DNS A Record"
  value       = data.kopicloud_dns_a_records_list.test.result.0.data
}
