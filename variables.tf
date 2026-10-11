variable "sfn_activities" {
  description = <<EOT
Map of sfn_activities, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - tags_all
    - encryption_configuration (block):
        - kms_data_key_reuse_period_seconds (optional)
        - kms_key_id (optional)
        - type (optional)
EOT

  type = map(object({
    name     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    encryption_configuration = optional(object({
      kms_data_key_reuse_period_seconds = optional(number)
      kms_key_id                        = optional(string)
      type                              = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

