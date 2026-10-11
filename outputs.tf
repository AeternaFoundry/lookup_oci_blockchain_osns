output "blockchain_osns_lookup_id" {
  description = "Map of id values across all blockchain_osns_lookup, keyed the same as var.blockchain_osns_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_blockchain_osns.blockchain_osns_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "blockchain_osns_lookup_blockchain_platform_id" {
  description = "Map of blockchain_platform_id values across all blockchain_osns_lookup, keyed the same as var.blockchain_osns_lookup except keys with no blockchain_platform_id are omitted"
  value       = { for k, v in data.oci_blockchain_osns.blockchain_osns_lookup : k => v.blockchain_platform_id if v.blockchain_platform_id != null && length(v.blockchain_platform_id) > 0 }
}
output "blockchain_osns_lookup_display_name" {
  description = "Map of display_name values across all blockchain_osns_lookup, keyed the same as var.blockchain_osns_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_blockchain_osns.blockchain_osns_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "blockchain_osns_lookup_filter" {
  description = "Map of filter values across all blockchain_osns_lookup, keyed the same as var.blockchain_osns_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_blockchain_osns.blockchain_osns_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "blockchain_osns_lookup_osn_collection" {
  description = "Map of osn_collection values across all blockchain_osns_lookup, keyed the same as var.blockchain_osns_lookup except keys with no osn_collection are omitted"
  value       = { for k, v in data.oci_blockchain_osns.blockchain_osns_lookup : k => v.osn_collection if v.osn_collection != null && length(v.osn_collection) > 0 }
}

