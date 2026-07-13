variable "api_management_custom_domains" {
  description = <<EOT
Map of api_management_custom_domains, attributes below
Required:
    - api_management_id
Optional:
    - developer_portal (block):
        - certificate (optional)
        - certificate_password (optional)
        - host_name (required)
        - key_vault_certificate_id (optional)
        - key_vault_id (optional)
        - negotiate_client_certificate (optional)
        - ssl_keyvault_identity_client_id (optional)
    - gateway (block):
        - certificate (optional)
        - certificate_password (optional)
        - default_ssl_binding (optional)
        - host_name (required)
        - key_vault_certificate_id (optional)
        - key_vault_id (optional)
        - negotiate_client_certificate (optional)
        - ssl_keyvault_identity_client_id (optional)
    - management (block):
        - certificate (optional)
        - certificate_password (optional)
        - host_name (required)
        - key_vault_certificate_id (optional)
        - key_vault_id (optional)
        - negotiate_client_certificate (optional)
        - ssl_keyvault_identity_client_id (optional)
    - portal (block):
        - certificate (optional)
        - certificate_password (optional)
        - host_name (required)
        - key_vault_certificate_id (optional)
        - key_vault_id (optional)
        - negotiate_client_certificate (optional)
        - ssl_keyvault_identity_client_id (optional)
    - scm (block):
        - certificate (optional)
        - certificate_password (optional)
        - host_name (required)
        - key_vault_certificate_id (optional)
        - key_vault_id (optional)
        - negotiate_client_certificate (optional)
        - ssl_keyvault_identity_client_id (optional)
EOT

  type = map(object({
    api_management_id = string
    developer_portal = optional(list(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool)
      ssl_keyvault_identity_client_id = optional(string)
    })))
    gateway = optional(list(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      default_ssl_binding             = optional(bool)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool)
      ssl_keyvault_identity_client_id = optional(string)
    })))
    management = optional(list(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool)
      ssl_keyvault_identity_client_id = optional(string)
    })))
    portal = optional(list(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool)
      ssl_keyvault_identity_client_id = optional(string)
    })))
    scm = optional(list(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool)
      ssl_keyvault_identity_client_id = optional(string)
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_custom_domain's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] !ok
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] err != nil
}

