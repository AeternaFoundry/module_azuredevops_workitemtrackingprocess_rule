variable "workitemtrackingprocess_rules" {
  description = <<EOT
Map of workitemtrackingprocess_rules, attributes below
Required:
    - name
    - process_id
    - work_item_type_id
    - action (block):
        - action_type (required)
        - target_field (required)
        - value (optional)
    - condition (block):
        - condition_type (required)
        - field (optional)
        - value (optional)
Optional:
    - is_enabled
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name              = string
    process_id        = string
    work_item_type_id = string
    is_enabled        = optional(bool)
    action = list(object({
      action_type  = string
      target_field = string
      value        = optional(string)
    }))
    condition = list(object({
      condition_type = string
      field          = optional(string)
      value          = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_rules : (
        length(v.action) >= 1
      )
    ])
    error_message = "Each action list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_rules : (
        length(v.condition) >= 1
      )
    ])
    error_message = "Each condition list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_rules : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.process_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_rules : (
        length(trimspace(v.work_item_type_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_rules : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

