variable "blockchain_osns_lookup" {
  description = <<EOT
Map of blockchain_osns_lookup, attributes below
Required:
    - blockchain_platform_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    blockchain_platform_id = string
    display_name           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

