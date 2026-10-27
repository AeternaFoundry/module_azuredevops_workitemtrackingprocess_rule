output "workitemtrackingprocess_rules_id" {
  description = "Map of id values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.id }
}
output "workitemtrackingprocess_rules_action" {
  description = "Map of action values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.action }
}
output "workitemtrackingprocess_rules_condition" {
  description = "Map of condition values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.condition }
}
output "workitemtrackingprocess_rules_is_enabled" {
  description = "Map of is_enabled values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.is_enabled }
}
output "workitemtrackingprocess_rules_name" {
  description = "Map of name values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.name }
}
output "workitemtrackingprocess_rules_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.process_id }
}
output "workitemtrackingprocess_rules_url" {
  description = "Map of url values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.url }
}
output "workitemtrackingprocess_rules_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_rules, keyed the same as var.workitemtrackingprocess_rules"
  value       = { for k, v in azuredevops_workitemtrackingprocess_rule.workitemtrackingprocess_rules : k => v.work_item_type_id }
}

