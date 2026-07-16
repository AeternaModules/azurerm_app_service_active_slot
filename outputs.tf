output "app_service_active_slots_id" {
  description = "Map of id values across all app_service_active_slots, keyed the same as var.app_service_active_slots"
  value       = { for k, v in azurerm_app_service_active_slot.app_service_active_slots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_service_active_slots_app_service_name" {
  description = "Map of app_service_name values across all app_service_active_slots, keyed the same as var.app_service_active_slots"
  value       = { for k, v in azurerm_app_service_active_slot.app_service_active_slots : k => v.app_service_name if v.app_service_name != null && length(v.app_service_name) > 0 }
}
output "app_service_active_slots_app_service_slot_name" {
  description = "Map of app_service_slot_name values across all app_service_active_slots, keyed the same as var.app_service_active_slots"
  value       = { for k, v in azurerm_app_service_active_slot.app_service_active_slots : k => v.app_service_slot_name if v.app_service_slot_name != null && length(v.app_service_slot_name) > 0 }
}
output "app_service_active_slots_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_active_slots, keyed the same as var.app_service_active_slots"
  value       = { for k, v in azurerm_app_service_active_slot.app_service_active_slots : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

