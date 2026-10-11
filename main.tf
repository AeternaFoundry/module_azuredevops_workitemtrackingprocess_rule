resource "azuredevops_workitemtrackingprocess_rule" "workitemtrackingprocess_rules" {
  for_each = var.workitemtrackingprocess_rules

  name              = each.value.name
  process_id        = each.value.process_id
  work_item_type_id = each.value.work_item_type_id
  is_enabled        = each.value.is_enabled

  dynamic "action" {
    for_each = each.value.action
    content {
      action_type  = action.value.action_type
      target_field = action.value.target_field
      value        = action.value.value
    }
  }

  dynamic "condition" {
    for_each = each.value.condition
    content {
      condition_type = condition.value.condition_type
      field          = condition.value.field
      value          = condition.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

