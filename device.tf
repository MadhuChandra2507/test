terraform {
  required_providers {
    logicmonitor = {
      source  = "logicmonitor/logicmonitor"
      version = "2.0.18"  # specify a version if needed
    }
  }
}

resource "logicmonitor_device" "my_device" {
  auto_balanced_collector_group_id = 0
  current_collector_id = 1
  custom_properties = [
        {
            name = "addr"
              value = "127.0.0.1"
        },
        {
            name = "host"
              value = "terrafrom test"
        }
    ]
  description = "This is a test device"
  device_type = 0
  disable_alerting = true
  display_name = "Cisco Router"
  enable_netflow = true
  host_group_ids = "16,4,3"
  link = "www.ciscorouter.com"
  name = "collector.localhost"
  netflow_collector_id = 1
  preferred_collector_id = 2
  related_device_id = -1
}
