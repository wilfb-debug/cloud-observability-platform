variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "cloud-observability-platform"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "europe-west2"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "europe-west2-a"
}
