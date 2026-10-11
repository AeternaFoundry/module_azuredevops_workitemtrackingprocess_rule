output "workitemtrackingprocess_rules_id" {
  description = "Map of id values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_rules_action" {
  description = "Map of action values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no action are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "workitemtrackingprocess_rules_condition" {
  description = "Map of condition values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no condition are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "workitemtrackingprocess_rules_is_enabled" {
  description = "Map of is_enabled values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no is_enabled are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.is_enabled if v.is_enabled != null }
}
output "workitemtrackingprocess_rules_name" {
  description = "Map of name values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no name are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workitemtrackingprocess_rules_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no process_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.process_id if v.process_id != null && length(v.process_id) > 0 }
}
output "workitemtrackingprocess_rules_url" {
  description = "Map of url values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no url are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.url if v.url != null && length(v.url) > 0 }
}
output "workitemtrackingprocess_rules_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules except keys with no work_item_type_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.work_item_type_id if v.work_item_type_id != null && length(v.work_item_type_id) > 0 }
}

