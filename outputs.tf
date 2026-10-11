output "firebaserules_rulesets_id" {
  description = "Map of id values across all firebaserules_rulesets, keyed the same as var.firebaserules_rulesets except keys with no id are omitted"
  value       = { for k, v in google_firebaserules_ruleset.firebaserules_rulesets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firebaserules_rulesets_create_time" {
  description = "Map of create_time values across all firebaserules_rulesets, keyed the same as var.firebaserules_rulesets except keys with no create_time are omitted"
  value       = { for k, v in google_firebaserules_ruleset.firebaserules_rulesets : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "firebaserules_rulesets_deletion_policy" {
  description = "Map of deletion_policy values across all firebaserules_rulesets, keyed the same as var.firebaserules_rulesets except keys with no deletion_policy are omitted"
  value       = { for k, v in google_firebaserules_ruleset.firebaserules_rulesets : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "firebaserules_rulesets_metadata" {
  description = "Map of metadata values across all firebaserules_rulesets, keyed the same as var.firebaserules_rulesets except keys with no metadata are omitted"
  value       = { for k, v in google_firebaserules_ruleset.firebaserules_rulesets : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "firebaserules_rulesets_name" {
  description = "Map of name values across all firebaserules_rulesets, keyed the same as var.firebaserules_rulesets except keys with no name are omitted"
  value       = { for k, v in google_firebaserules_ruleset.firebaserules_rulesets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "firebaserules_rulesets_project" {
  description = "Map of project values across all firebaserules_rulesets, keyed the same as var.firebaserules_rulesets except keys with no project are omitted"
  value       = { for k, v in google_firebaserules_ruleset.firebaserules_rulesets : k => v.project if v.project != null && length(v.project) > 0 }
}
output "firebaserules_rulesets_source" {
  description = "Map of source values across all firebaserules_rulesets, keyed the same as var.firebaserules_rulesets except keys with no source are omitted"
  value       = { for k, v in google_firebaserules_ruleset.firebaserules_rulesets : k => one(v.source) if v.source != null && length(v.source) > 0 }
}

