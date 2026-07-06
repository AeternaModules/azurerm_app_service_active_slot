output "app_service_active_slots" {
  description = "All app_service_active_slot resources"
  value       = azurerm_app_service_active_slot.app_service_active_slots
}
output "app_service_active_slots_app_service_name" {
  description = "List of app_service_name values across all app_service_active_slots"
  value       = [for k, v in azurerm_app_service_active_slot.app_service_active_slots : v.app_service_name]
}
output "app_service_active_slots_app_service_slot_name" {
  description = "List of app_service_slot_name values across all app_service_active_slots"
  value       = [for k, v in azurerm_app_service_active_slot.app_service_active_slots : v.app_service_slot_name]
}
output "app_service_active_slots_resource_group_name" {
  description = "List of resource_group_name values across all app_service_active_slots"
  value       = [for k, v in azurerm_app_service_active_slot.app_service_active_slots : v.resource_group_name]
}

