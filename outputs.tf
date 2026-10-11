output "sfn_activities_id" {
  description = "Map of id values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sfn_activities_arn" {
  description = "Map of arn values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sfn_activities_creation_date" {
  description = "Map of creation_date values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => v.creation_date if v.creation_date != null && length(v.creation_date) > 0 }
}
output "sfn_activities_encryption_configuration" {
  description = "Map of encryption_configuration values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => one(v.encryption_configuration) if v.encryption_configuration != null && length(v.encryption_configuration) > 0 }
}
output "sfn_activities_name" {
  description = "Map of name values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sfn_activities_region" {
  description = "Map of region values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sfn_activities_tags" {
  description = "Map of tags values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sfn_activities_tags_all" {
  description = "Map of tags_all values across all sfn_activities, keyed the same as var.sfn_activities"
  value       = { for k, v in aws_sfn_activity.sfn_activities : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

