###########################################
## KopiCloud AD API - List DNS A Records ##
###########################################

# Filter DNS A Records with the Zone Name
data "kopicloud_dns_a_records_list" "test" {
  zone_name = var.zone_name
}

# Returns all DNS A Records that matches the Zone Name
output "OUTPUT_dns_a_records_list_zone_name" {
  description = "List existing DNS A Records filtered by Zone Name"
  value       = data.kopicloud_dns_a_records_list.test
}

