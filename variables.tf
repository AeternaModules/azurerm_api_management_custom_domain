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
    developer_portal = optional(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool) # Default: false
      ssl_keyvault_identity_client_id = optional(string)
    }))
    gateway = optional(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      default_ssl_binding             = optional(bool)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool) # Default: false
      ssl_keyvault_identity_client_id = optional(string)
    }))
    management = optional(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool) # Default: false
      ssl_keyvault_identity_client_id = optional(string)
    }))
    portal = optional(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool) # Default: false
      ssl_keyvault_identity_client_id = optional(string)
    }))
    scm = optional(object({
      certificate                     = optional(string)
      certificate_password            = optional(string)
      host_name                       = string
      key_vault_certificate_id        = optional(string)
      key_vault_id                    = optional(string)
      negotiate_client_certificate    = optional(bool) # Default: false
      ssl_keyvault_identity_client_id = optional(string)
    }))
  }))
}

