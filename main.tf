resource "ovh_cloud_project_kube_nodepool" "cloud_project_kube_nodepools" {
  for_each = var.cloud_project_kube_nodepools

  flavor_name                                  = each.value.flavor_name
  kube_id                                      = each.value.kube_id
  service_name                                 = each.value.service_name
  anti_affinity                                = each.value.anti_affinity
  autoscale                                    = each.value.autoscale
  autoscaling_scale_down_unneeded_time_seconds = each.value.autoscaling_scale_down_unneeded_time_seconds
  autoscaling_scale_down_unready_time_seconds  = each.value.autoscaling_scale_down_unready_time_seconds
  autoscaling_scale_down_utilization_threshold = each.value.autoscaling_scale_down_utilization_threshold
  availability_zones                           = each.value.availability_zones
  desired_nodes                                = each.value.desired_nodes
  max_nodes                                    = each.value.max_nodes
  min_nodes                                    = each.value.min_nodes
  monthly_billed                               = each.value.monthly_billed
  name                                         = each.value.name

  dynamic "attach_floating_ips" {
    for_each = each.value.attach_floating_ips != null ? [each.value.attach_floating_ips] : []
    content {
      enabled = attach_floating_ips.value.enabled
    }
  }

  dynamic "template" {
    for_each = each.value.template != null ? [each.value.template] : []
    content {
      metadata {
        annotations = template.value.metadata.annotations
        finalizers  = template.value.metadata.finalizers
        labels      = template.value.metadata.labels
      }
      spec {
        taints        = template.value.spec.taints
        unschedulable = template.value.spec.unschedulable
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create  = timeouts.value.create
      default = timeouts.value.default
      delete  = timeouts.value.delete
      read    = timeouts.value.read
      update  = timeouts.value.update
    }
  }
}

