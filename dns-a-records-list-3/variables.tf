##############################################
## Kopicloud Terraform Provider - Variables ##
##############################################

variable "kopicloud_token" {
  type        = string
  description = "KopiCloud AD API Token"
}

variable "kopicloud_host" {
  type        = string
  description = "KopiCloud AD API Host"
}

variable "zone_name" {
  type        = string
  description = "DNS Zone Name"
  default     = ""
}
