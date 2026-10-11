output "core_services_lookup_id" {
  description = "Map of id values across all core_services_lookup, keyed the same as var.core_services_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_services.core_services_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_services_lookup_filter" {
  description = "Map of filter values across all core_services_lookup, keyed the same as var.core_services_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_services.core_services_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_services_lookup_services" {
  description = "Map of services values across all core_services_lookup, keyed the same as var.core_services_lookup except keys with no services are omitted"
  value       = { for k, v in data.oci_core_services.core_services_lookup : k => v.services if v.services != null && length(v.services) > 0 }
}

