terraform {
  required_providers {
    logicmonitor = {
      source  = "logicmonitor/logicmonitor"
      version = "2.0.18"  # specify a version if needed
    }
  }
}
provider "logicmonitor" {
  api_id = var.logicmonitor_api_id
  api_key = var.logicmonitor_api_key
  company = var.logicmonitor_company
}
# create a new LogicMonitor device
resource "logicmonitor_device" "my_device" {
      description = "TEST"
      display_name = "Terraform"
      name = "collector.localhost"
      preferred_collector_id = 2
}
