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
  api_id = 9cgA2Gah99tGw55u4Ypt
  api_key = lma_rV4q9LG~Ra(%HNe^Y4GhH9}{Dt}n2{C8Hf~cWFYh^9_L66-{fQS[gH4NhF3jLYjQ2MzQ0YTUtYzdkOS00NjUyLWJkYjktODczODg2NTczODQ1L24Csqo
  company = "festo"
}
# create a new LogicMonitor device
resource "logicmonitor_device_group" "group1" {
    name = "TerraformTEST"
}
