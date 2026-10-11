data "oci_blockchain_osns" "blockchain_osns_lookup" {
  for_each = var.blockchain_osns_lookup

  blockchain_platform_id = each.value.blockchain_platform_id
  display_name           = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

