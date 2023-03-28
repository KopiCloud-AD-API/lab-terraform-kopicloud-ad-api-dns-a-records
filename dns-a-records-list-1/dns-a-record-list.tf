###########################################
## KopiCloud AD API - List DNS A Records ##
###########################################

# List All DNS A Records
data "kopicloud_dns_a_records_list" "test_a_all" {
}

# Returns All DNS A Records
output "OUTPUT_dns_a_records_list_all" {
  description = "List Existing DNS A Records"
  value       = data.kopicloud_dns_a_records_list.test_a_all
}

