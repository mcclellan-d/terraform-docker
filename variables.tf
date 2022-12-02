# Replace with terraform.workspace
# variable "env" {
#   type = string
#   description = "Env to deploy to"
#   default = "dev"
# }

variable "image" {
  type = map
  description = "image for conatiner"
  default = {
  nodered = {
    dev = "nodered/node-red:latest"
    prod = "nodered/node-red:latest-minimal"
  }
  influxdb = {
    dev = "quay.io/influxdb/influxdb:v2.0.2"
    prod = "quay.io/influxdb/influxdb:v2.0.2"
  }
  grafana = {
    dev = "grafana/grafana-oss:latest"
    prod = "grafana/grafana-oss:latest"
  }
  }
}


variable "ext_port" {
  type = map

#   validation {
#     condition = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) > 0
#     error_message = "The external port must be in the valid port range 0 - 65535"
#   }
  
#     validation {
#     condition = max(var.ext_port["prod"]...) < 1980 && min(var.ext_port["prod"]...) >= 1880
#     error_message = "eeeThe external port must be in the valid port range 0 - 65535"
#   }
}

variable "int_port" {
  type = number
  default = 1880
  
  validation {
    condition = var.int_port == 1880
    error_message = "The internal port must be 1880!!!!🍆"
  }
}



# variable "container_count" {
#   type = number
#   default = 4
# }

