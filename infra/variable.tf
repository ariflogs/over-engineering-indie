variable "instance_region" {
  description = "Value of AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "OverEngineeredVPS"
}


