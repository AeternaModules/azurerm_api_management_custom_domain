output "api_management_custom_domains" {
  description = "All api_management_custom_domain resources"
  value       = azurerm_api_management_custom_domain.api_management_custom_domains
  sensitive   = true
}
output "api_management_custom_domains_api_management_id" {
  description = "List of api_management_id values across all api_management_custom_domains"
  value       = [for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : v.api_management_id]
}
output "api_management_custom_domains_developer_portal" {
  description = "List of developer_portal values across all api_management_custom_domains"
  value       = [for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : v.developer_portal]
  sensitive   = true
}
output "api_management_custom_domains_gateway" {
  description = "List of gateway values across all api_management_custom_domains"
  value       = [for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : v.gateway]
  sensitive   = true
}
output "api_management_custom_domains_management" {
  description = "List of management values across all api_management_custom_domains"
  value       = [for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : v.management]
  sensitive   = true
}
output "api_management_custom_domains_portal" {
  description = "List of portal values across all api_management_custom_domains"
  value       = [for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : v.portal]
  sensitive   = true
}
output "api_management_custom_domains_scm" {
  description = "List of scm values across all api_management_custom_domains"
  value       = [for k, v in azurerm_api_management_custom_domain.api_management_custom_domains : v.scm]
  sensitive   = true
}

