terraform {
  required_providers {
    logicmonitor = {
      source  = "logicmonitor/logicmonitor"
      version = "2.0.18"  # specify a version if needed
    }
  }
}
variable "logicmonitor_api_id" {
  description = "LogicMonitor API ID"
  type        = string
  default     = ""  
}

variable "logicmonitor_api_key" {
  description = "LogicMonitor API Key"
  type        = string
  default     = "" 
}
variable "logicmonitor_company" {
  description = "LogicMonitor company subdomain"
  type        = string
  default     = "festo"  
}
provider "logicmonitor" {
  api_id = var.logicmonitor_api_id
  api_key = var.logicmonitor_api_key
  company = var.logicmonitor_company
}
# create a new LogicMonitor device
resource "logicmonitor_device_group" "group1" {
    name = "TerraformTEST"
}
