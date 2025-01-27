//required variables
variable "name" {
  description = "The ID of the instance or a fully qualified identifier for the instance."
  type        = string
}

variable "memory_size_gb" {
  description = " Redis memory size in GiB."
  type        = number
}

variable "project_id" {
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used"
  type        = string
}

variable "reserved_ip_range" {
  description = "The CIDR range of internal addresses that are reserved for this instance. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be unique and non-overlapping with existing subnets in an authorized network."
  type        = string
}

variable "authorized_network" {
  description = "The full name of the Google Compute Engine network to which the instance is connected. If left unspecified, the default network will be used."
  type        = string
}

//optional variables

variable "region" {
  description = "The name of the Redis region of the instance."
  type        = string
  default     = "asia-south"
}

variable "redis_configs" {
  description = "Redis configuration parameters, according to http://redis.io/topics/config. Please check Memorystore documentation for the list of supported parameters"
  type        = map(string)
  default     = {}
}

variable "redis_version" {
  description = "The version of Redis software. If not provided, latest supported version will be used. Please check the API documentation linked at the top for the latest valid values."
  type        = string
  default     = "REDIS_6_X"
}

variable "tier" {
  description = "The service tier of the instance. Must be one of these values:Basic or Standard_ha"
  type        = string
  default     = "STANDARD_HA"
}

variable "auth_enabled" {
  description = "Indicates whether OSS Redis AUTH is enabled for the instance. If set to true AUTH is enabled on the instance."
  type        = bool
  default     = false
}

variable "transit_encryption_mode" {
  description = "The TLS mode of the Redis instance"
  type        = string
  default     = "SERVER_AUTHENTICATION"
}