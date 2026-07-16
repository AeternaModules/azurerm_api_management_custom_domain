output "api_management_custom_domains_id" {
  description = "Map of id values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_custom_domains_api_management_id" {
  description = "Map of api_management_id values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.api_management_id if v.api_management_id != null && length(v.api_management_id) > 0 }
}
output "api_management_custom_domains_developer_portal" {
  description = "Map of developer_portal values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.developer_portal if v.developer_portal != null && length(v.developer_portal) > 0 }
  sensitive   = true
}
output "api_management_custom_domains_gateway" {
  description = "Map of gateway values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.gateway if v.gateway != null && length(v.gateway) > 0 }
  sensitive   = true
}
output "api_management_custom_domains_management" {
  description = "Map of management values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.management if v.management != null && length(v.management) > 0 }
  sensitive   = true
}
output "api_management_custom_domains_portal" {
  description = "Map of portal values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.portal if v.portal != null && length(v.portal) > 0 }
  sensitive   = true
}
output "api_management_custom_domains_scm" {
  description = "Map of scm values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.scm if v.scm != null && length(v.scm) > 0 }
  sensitive   = true
}

