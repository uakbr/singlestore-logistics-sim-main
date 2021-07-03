variable "region" {
  default = "us-west1"
}

variable "zone" {
  description = "The zone where resources will be deployed [a,b,...]"
  default     = "a"
}

variable "project_name" {
  description = "The project name on GCP."
}

variable "machine_image" {
  # see https://cloud.google.com/compute/docs/images#os-compute-support for
  # an updated list
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "storage_bucket" {
  default = "singlestore-logistics-sim"
}

# SingleStore vars prefixed with "s2_"
# Redpanda vars prefixed with "rp_"
# Dashboard vars prefixed with "dashboard_"
# Simulator vars prefixed with "sim_"

variable "dashboard_machine_type" {
  # https://cloud.google.com/compute/docs/machine-types
  default = "n2-standard-2"
}

variable "sim_machine_type" {
  # https://cloud.google.com/compute/docs/machine-types
  default = "c2-standard-16"
}

variable "sim_workers" {
  description = "The number of simulators to run."
  type        = number
  default     = 2
}

variable "s2_license" {
  description = "SingleStore license key"
  sensitive   = true
}

variable "s2_redundancy_level" {
  description = "SingleStore redundancy level (1 or 2)"
  type        = number
  default     = 2
}

variable "s2_version" {
  description = "The version of SingleStore to use"
  default     = "latest"
}

variable "s2_aggs" {
  description = "The number of aggregators in the SingleStore cluster."
  type        = number
  default     = 1
}

variable "s2_leaves" {
  description = "The number of leaves per availability group in the SingleStore cluster."
  type        = number
  default     = 2
}

variable "s2_machine_type_agg" {
  # https://cloud.google.com/compute/docs/machine-types
  default = "n2-standard-8"
}

variable "s2_machine_type_leaf" {
  # https://cloud.google.com/compute/docs/machine-types
  default = "c2-standard-16"
}

variable "s2_partitions_per_leaf" {
  description = "the number of partitions to allocate per SingleStore leaf node."
  type        = number
  default     = 16
}

variable "s2_scratch_disks" {
  description = "the number of scratch disks on each SingleStore leaf node."
  type        = number
  default     = 2
}

variable "rp_nodes" {
  description = "The size of the Redpanda cluster."
  type        = number
  default     = 2
}

variable "rp_machine_type" {
  # https://cloud.google.com/compute/docs/machine-types
  default = "n2-standard-16"
}

variable "rp_scratch_disks" {
  description = "the number of scratch disks on each Redpanda machine."
  type        = number
  default     = 2
}

variable "rp_partitions_per_topic" {
  description = "the number of partitions to allocate in each Redpanda topic."
  type        = number
  default     = 32
}
