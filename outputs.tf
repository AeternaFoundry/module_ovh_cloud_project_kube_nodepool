output "cloud_project_kube_nodepools_id" {
  description = "Map of id values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no id are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_project_kube_nodepools_anti_affinity" {
  description = "Map of anti_affinity values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no anti_affinity are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.anti_affinity if v.anti_affinity != null }
}
output "cloud_project_kube_nodepools_attach_floating_ips" {
  description = "Map of attach_floating_ips values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no attach_floating_ips are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => one(v.attach_floating_ips) if v.attach_floating_ips != null && length(v.attach_floating_ips) > 0 }
}
output "cloud_project_kube_nodepools_autoscale" {
  description = "Map of autoscale values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no autoscale are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.autoscale if v.autoscale != null }
}
output "cloud_project_kube_nodepools_autoscaling_scale_down_unneeded_time_seconds" {
  description = "Map of autoscaling_scale_down_unneeded_time_seconds values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no autoscaling_scale_down_unneeded_time_seconds are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.autoscaling_scale_down_unneeded_time_seconds if v.autoscaling_scale_down_unneeded_time_seconds != null }
}
output "cloud_project_kube_nodepools_autoscaling_scale_down_unready_time_seconds" {
  description = "Map of autoscaling_scale_down_unready_time_seconds values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no autoscaling_scale_down_unready_time_seconds are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.autoscaling_scale_down_unready_time_seconds if v.autoscaling_scale_down_unready_time_seconds != null }
}
output "cloud_project_kube_nodepools_autoscaling_scale_down_utilization_threshold" {
  description = "Map of autoscaling_scale_down_utilization_threshold values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no autoscaling_scale_down_utilization_threshold are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.autoscaling_scale_down_utilization_threshold if v.autoscaling_scale_down_utilization_threshold != null }
}
output "cloud_project_kube_nodepools_availability_zones" {
  description = "Map of availability_zones values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no availability_zones are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.availability_zones if v.availability_zones != null && length(v.availability_zones) > 0 }
}
output "cloud_project_kube_nodepools_available_nodes" {
  description = "Map of available_nodes values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no available_nodes are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.available_nodes if v.available_nodes != null }
}
output "cloud_project_kube_nodepools_created_at" {
  description = "Map of created_at values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no created_at are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "cloud_project_kube_nodepools_current_nodes" {
  description = "Map of current_nodes values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no current_nodes are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.current_nodes if v.current_nodes != null }
}
output "cloud_project_kube_nodepools_desired_nodes" {
  description = "Map of desired_nodes values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no desired_nodes are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.desired_nodes if v.desired_nodes != null }
}
output "cloud_project_kube_nodepools_flavor" {
  description = "Map of flavor values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no flavor are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.flavor if v.flavor != null && length(v.flavor) > 0 }
}
output "cloud_project_kube_nodepools_flavor_name" {
  description = "Map of flavor_name values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no flavor_name are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.flavor_name if v.flavor_name != null && length(v.flavor_name) > 0 }
}
output "cloud_project_kube_nodepools_kube_id" {
  description = "Map of kube_id values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no kube_id are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.kube_id if v.kube_id != null && length(v.kube_id) > 0 }
}
output "cloud_project_kube_nodepools_max_nodes" {
  description = "Map of max_nodes values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no max_nodes are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.max_nodes if v.max_nodes != null }
}
output "cloud_project_kube_nodepools_min_nodes" {
  description = "Map of min_nodes values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no min_nodes are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.min_nodes if v.min_nodes != null }
}
output "cloud_project_kube_nodepools_monthly_billed" {
  description = "Map of monthly_billed values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no monthly_billed are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.monthly_billed if v.monthly_billed != null }
}
output "cloud_project_kube_nodepools_name" {
  description = "Map of name values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no name are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_project_kube_nodepools_project_id" {
  description = "Map of project_id values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no project_id are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "cloud_project_kube_nodepools_service_name" {
  description = "Map of service_name values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no service_name are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "cloud_project_kube_nodepools_size_status" {
  description = "Map of size_status values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no size_status are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.size_status if v.size_status != null && length(v.size_status) > 0 }
}
output "cloud_project_kube_nodepools_status" {
  description = "Map of status values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no status are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.status if v.status != null && length(v.status) > 0 }
}
output "cloud_project_kube_nodepools_template" {
  description = "Map of template values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no template are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => one(v.template) if v.template != null && length(v.template) > 0 }
}
output "cloud_project_kube_nodepools_up_to_date_nodes" {
  description = "Map of up_to_date_nodes values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no up_to_date_nodes are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.up_to_date_nodes if v.up_to_date_nodes != null }
}
output "cloud_project_kube_nodepools_updated_at" {
  description = "Map of updated_at values across all cloud_project_kube_nodepools, keyed the same as var.cloud_project_kube_nodepools except keys with no updated_at are omitted"
  value       = { for k, v in ovh_cloud_project_kube_nodepool.cloud_project_kube_nodepools : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

