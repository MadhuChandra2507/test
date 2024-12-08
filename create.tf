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
  api_id = "jbUw7JqkB4Mh7z9J6D37"
  api_key = "lma_3{xWk7dx7_9PD5)9dM~ETM2y}4C^cZn9425G(}{M9%c2Q35h8V52](nF5~fELYjQ2MzQ0YTUtYzdkOS00NjUyLWJkYjktODczODg2NTczODQ1L1rYenz"
  company = "festo"
}
# create a new LogicMonitor device
resource "logicmonitor_device_group" "group1" {
    name = "TerraformTEST"
}
