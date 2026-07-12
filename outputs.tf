output "api_management_custom_domains_api_management_id" {
  description = "Map of api_management_id values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.api_management_id }
}
output "api_management_custom_domains_developer_portal" {
  description = "Map of developer_portal values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.developer_portal }
  sensitive   = true
}
output "api_management_custom_domains_gateway" {
  description = "Map of gateway values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.gateway }
  sensitive   = true
}
output "api_management_custom_domains_management" {
  description = "Map of management values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.management }
  sensitive   = true
}
output "api_management_custom_domains_portal" {
  description = "Map of portal values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.portal }
  sensitive   = true
}
output "api_management_custom_domains_scm" {
  description = "Map of scm values across all api_management_custom_domains, keyed the same as var.api_management_custom_domains"
  value       = { for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : k => v.scm }
  sensitive   = true
}

