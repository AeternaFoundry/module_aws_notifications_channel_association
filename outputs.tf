output "notifications_channel_associations_arn" {
  description = "Map of arn values across all notifications_channel_associations, keyed the same as var.notifications_channel_associations"
  value       = { for k, v in aws_notifications_channel_association.notifications_channel_associations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "notifications_channel_associations_notification_configuration_arn" {
  description = "Map of notification_configuration_arn values across all notifications_channel_associations, keyed the same as var.notifications_channel_associations"
  value       = { for k, v in aws_notifications_channel_association.notifications_channel_associations : k => v.notification_configuration_arn if v.notification_configuration_arn != null && length(v.notification_configuration_arn) > 0 }
}

