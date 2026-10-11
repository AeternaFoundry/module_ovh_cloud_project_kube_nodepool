variable "cloud_project_kube_nodepools" {
  description = <<EOT
Map of cloud_project_kube_nodepools, attributes below
Required:
    - flavor_name
    - kube_id
    - service_name
Optional:
    - anti_affinity
    - autoscale
    - autoscaling_scale_down_unneeded_time_seconds
    - autoscaling_scale_down_unready_time_seconds
    - autoscaling_scale_down_utilization_threshold
    - availability_zones
    - desired_nodes
    - max_nodes
    - min_nodes
    - monthly_billed
    - name
    - attach_floating_ips (block):
        - enabled (optional)
    - template (block):
        - metadata (required, block):
            - annotations (required)
            - finalizers (required)
            - labels (required)
        - spec (required, block):
            - taints (required)
            - unschedulable (required)
    - timeouts (block):
        - create (optional)
        - default (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    flavor_name                                  = string
    kube_id                                      = string
    service_name                                 = string
    anti_affinity                                = optional(bool)
    autoscale                                    = optional(bool)
    autoscaling_scale_down_unneeded_time_seconds = optional(number)
    autoscaling_scale_down_unready_time_seconds  = optional(number)
    autoscaling_scale_down_utilization_threshold = optional(number)
    availability_zones                           = optional(list(string))
    desired_nodes                                = optional(number)
    max_nodes                                    = optional(number)
    min_nodes                                    = optional(number)
    monthly_billed                               = optional(bool)
    name                                         = optional(string)
    attach_floating_ips = optional(object({
      enabled = optional(bool)
    }))
    template = optional(object({
      metadata = object({
        annotations = map(string)
        finalizers  = list(string)
        labels      = map(string)
      })
      spec = object({
        taints        = list(any)
        unschedulable = bool
      })
    }))
    timeouts = optional(object({
      create  = optional(string)
      default = optional(string)
      delete  = optional(string)
      read    = optional(string)
      update  = optional(string)
    }))
  }))
}

