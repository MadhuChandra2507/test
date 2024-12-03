terraform {
  required_providers {
    logicmonitor = {
      source  = "logicmonitor/logicmonitor"
      version = "2.0.18"  # specify a version if needed
    }
  }
}

# Create a LogicMonitor device
resource "logicmonitor_device" "my_device" {
 
  custom_properties = [
        {
            name = "addr"
              value = "127.0.0.1"
        },
        {
            name = "host"
              value = "terraform"
        }
    ]
  description = "This is a test device"
  device_type = 0
  disable_alerting = true
  display_name = "TEST DEVICE"
  name = "collector.localhost"
  netflow_collector_id = 1
  preferred_collector_id = 2
  related_device_id = -1
}
