terraform {
  required_providers {
    logicmonitor = {
      source  = "logicmonitor/logicmonitor"
      version = "2.0.18"  # specify a version if needed
    }
  }
}

resource "logicmonitor_device" {
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
}
