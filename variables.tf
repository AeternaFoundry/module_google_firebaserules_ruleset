variable "firebaserules_rulesets" {
  description = <<EOT
Map of firebaserules_rulesets, attributes below
Required:
    - source (block):
        - files (required, block):
            - content (required)
            - fingerprint (optional)
            - name (required)
        - language (optional)
Optional:
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    deletion_policy = optional(string)
    project         = optional(string)
    source = object({
      files = list(object({
        content     = string
        fingerprint = optional(string)
        name        = string
      }))
      language = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.firebaserules_rulesets : (
        length(v.source.files) >= 1
      )
    ])
    error_message = "Each files list must contain at least 1 items"
  }
}

