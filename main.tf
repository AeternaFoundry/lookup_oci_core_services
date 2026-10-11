data "oci_core_services" "core_services_lookup" {
  for_each = var.core_services_lookup


  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

